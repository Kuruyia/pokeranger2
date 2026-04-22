    .include "macros.inc"
    .include "include/arm9.inc"
    .include "include/arm9_0202B8A4.inc"

    .text

	arm_func_start sub_0202B8A4
sub_0202B8A4: ; 0x0202B8A4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0202B5D0
	ldr r0, _0202B8D4 ; =ptr_FUN_0202b8d8_0208ccac
	mov r1, #0
	str r0, [r4]
	str r1, [r4, #0x10]
	str r1, [r4, #0x14]
	str r1, [r4, #0x18]
	mov r0, r4
	str r1, [r4, #0x1c]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202B8D4: .word ptr_FUN_0202b8d8_0208ccac
	arm_func_end sub_0202B8A4

	arm_func_start sub_0202B8D8
sub_0202B8D8: ; 0x0202B8D8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0202B64C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202B8D8

	arm_func_start sub_0202B8EC
sub_0202B8EC: ; 0x0202B8EC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0202B64C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202B8EC

	arm_func_start sub_0202B908
sub_0202B908: ; 0x0202B908
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x10]
	ldr ip, _0202B924 ; =sub_0202B674
	str r1, [r0, #0x1c]
	bx ip
	.align 2, 0
_0202B924: .word sub_0202B674
	arm_func_end sub_0202B908

	arm_func_start sub_0202B928
sub_0202B928: ; 0x0202B928
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr ip, [r7, #4]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp ip, #0
	bne _0202B960
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0202B928
_0202B960:
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #2
	str r0, [r7, #0x1c]
	str r5, [r7, #0x14]
	str r6, [r7, #0x18]
	str r4, [r7, #0x10]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0202B98C
sub_0202B98C: ; 0x0202B98C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr ip, [r7, #4]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp ip, #0
	bne _0202B9C4
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0202B98C
_0202B9C4:
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #1
	str r0, [r7, #0x1c]
	str r5, [r7, #0x14]
	str r6, [r7, #0x18]
	str r4, [r7, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0202B9EC
sub_0202B9EC: ; 0x0202B9EC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r7, r0
	ldr r0, [r7, #0x1c]
	mov r4, #0
	mov r5, r4
	cmp r0, #1
	beq _0202BA18
	cmp r0, #2
	beq _0202BB34
	b _0202BC58
	arm_func_end sub_0202B9EC
_0202BA18:
	ldr r0, [r7, #8]
	ldr r6, [r7, #0x10]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r6, #0x800
	movhs r6, #0x800
	bl CARD_LockBackup
	bl CARD_GetCurrentBackupType
	and r0, r0, #0xff
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _0202BA88
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x14]
	mov r2, r6
	bl CARDi_RequestStreamCommand
	mov r5, r0
	b _0202BAD8
_0202BA88:
	bl CARD_GetCurrentBackupType
	and r0, r0, #0xff
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _0202BAD8
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x14]
	mov r2, r6
	bl CARDi_RequestStreamCommand
	mov r5, r0
_0202BAD8:
	bl CARD_GetResultCode
	str r0, [r7, #0xc]
	ldr r0, [r7, #8]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_UnlockBackup
	cmp r5, #0
	beq _0202BB2C
	ldr r0, [r7, #0x10]
	sub r0, r0, r6
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x18]
	add r0, r0, r6
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x14]
	add r0, r0, r6
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x10]
	cmp r0, #0
	moveq r4, #1
	b _0202BC5C
_0202BB2C:
	mov r4, #1
	b _0202BC5C
_0202BB34:
	ldr r0, [r7, #8]
	ldr r6, [r7, #0x10]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r6, #0x800
	movhs r6, #0x800
	bl CARD_LockBackup
	bl CARD_GetCurrentBackupType
	and r0, r0, #0xff
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _0202BBA8
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	mov r2, r6
	bl CARDi_RequestStreamCommand
	mov r5, r0
	b _0202BBFC
_0202BBA8:
	bl CARD_GetCurrentBackupType
	and r0, r0, #0xff
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _0202BBFC
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	mov r2, r6
	bl CARDi_RequestStreamCommand
	mov r5, r0
_0202BBFC:
	bl CARD_GetResultCode
	str r0, [r7, #0xc]
	ldr r0, [r7, #8]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_UnlockBackup
	cmp r5, #0
	beq _0202BC50
	ldr r0, [r7, #0x10]
	sub r0, r0, r6
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x18]
	add r0, r0, r6
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x14]
	add r0, r0, r6
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x10]
	cmp r0, #0
	moveq r4, #1
	b _0202BC5C
_0202BC50:
	mov r4, #1
	b _0202BC5C
_0202BC58:
	mov r4, #1
_0202BC5C:
	cmp r4, #0
	movne r0, #0
	strne r0, [r7, #0x1c]
	mov r0, r4
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start sub_0202BC74
sub_0202BC74: ; 0x0202BC74
	stmdb sp!, {r3, lr}
	cmp r0, #0
	cmpne r1, #0
	mov ip, #0
	cmpne r2, #0
	beq _0202BCCC
	mov lr, ip
	ble _0202BCCC
	arm_func_end sub_0202BC74
_0202BC94:
	ldrsb r3, [r0, lr]
	strb r3, [r1, lr]
	cmp r3, #0x61
	blt _0202BCB0
	cmp r3, #0x7a
	suble r3, r3, #0x20
	strleb r3, [r1, lr]
_0202BCB0:
	ldrsb r3, [r1, lr]
	cmp r3, #0
	beq _0202BCCC
	add lr, lr, #1
	cmp lr, r2
	add ip, ip, #1
	blt _0202BC94
_0202BCCC:
	mov r0, ip
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202BCD4
sub_0202BCD4: ; 0x0202BCD4
	stmdb sp!, {r3, lr}
	ldr r2, _0202BCF8 ; =MAIN_BSS_0210CA40
	mov r1, r0
	ldr r0, [r2]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov0_02123060
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202BCF8: .word MAIN_BSS_0210CA40
	arm_func_end sub_0202BCD4

	arm_func_start sub_0202BCFC
sub_0202BCFC: ; 0x0202BCFC
	ldr r1, _0202BD58 ; =MAIN_BSS_0210CA5C
	ldr r1, [r1]
	cmp r1, #0
	beq _0202BD50
	ldr r3, [r1, #4]
	mov r2, #0
	cmp r3, #0
	ble _0202BD48
	ldr ip, [r1, #8]
	arm_func_end sub_0202BCFC
_0202BD20:
	ldr r1, [ip, r2, lsl #2]
	cmp r1, #0
	beq _0202BD3C
	ldr r1, [r1, #0x58]
	cmp r0, r1
	ldreq r0, [ip, r2, lsl #2]
	bxeq lr
_0202BD3C:
	add r2, r2, #1
	cmp r2, r3
	blt _0202BD20
_0202BD48:
	mov r0, #0
	bx lr
_0202BD50:
	mov r0, #0
	bx lr
	.align 2, 0
_0202BD58: .word MAIN_BSS_0210CA5C

	arm_func_start sub_0202BD5C
sub_0202BD5C: ; 0x0202BD5C
	ldr r1, _0202BDB8 ; =MAIN_BSS_0210CA50
	ldr r1, [r1]
	cmp r1, #0
	beq _0202BDB0
	ldr r3, [r1, #4]
	mov r2, #0
	cmp r3, #0
	ble _0202BDA8
	ldr ip, [r1, #8]
	arm_func_end sub_0202BD5C
_0202BD80:
	ldr r1, [ip, r2, lsl #2]
	cmp r1, #0
	beq _0202BD9C
	ldr r1, [r1, #0x58]
	cmp r0, r1
	ldreq r0, [ip, r2, lsl #2]
	bxeq lr
_0202BD9C:
	add r2, r2, #1
	cmp r2, r3
	blt _0202BD80
_0202BDA8:
	mov r0, #0
	bx lr
_0202BDB0:
	mov r0, #0
	bx lr
	.align 2, 0
_0202BDB8: .word MAIN_BSS_0210CA50

	arm_func_start sub_0202BDBC
sub_0202BDBC: ; 0x0202BDBC
	stmdb sp!, {r3, lr}
	ldr r1, _0202BDE0 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034604
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202BDE0: .word MAIN_BSS_0208F304
	arm_func_end sub_0202BDBC

	arm_func_start sub_0202BDE4
sub_0202BDE4: ; 0x0202BDE4
	stmdb sp!, {r3, lr}
	ldr r0, _0202BE08 ; =_0208F304
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034F4C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202BE08: .word MAIN_BSS_0208F304
	arm_func_end sub_0202BDE4

	arm_func_start sub_0202BE0C
sub_0202BE0C: ; 0x0202BE0C
	stmdb sp!, {r3, lr}
	ldr r0, _0202BE30 ; =_0208F304
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034F4C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202BE30: .word MAIN_BSS_0208F304
	arm_func_end sub_0202BE0C

	arm_func_start sub_0202BE34
sub_0202BE34: ; 0x0202BE34
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	cmp r1, #0xb1
	ldreq r0, _0202BE70 ; =MAIN_BSS_020B26A0
	ldreqb r0, [r0, #1]
	cmpeq r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	ldr r0, _0202BE74 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_0203499C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202BE70: .word MAIN_BSS_020B26A0
_0202BE74: .word MAIN_BSS_0208F304
	arm_func_end sub_0202BE34

	arm_func_start sub_0202BE78
sub_0202BE78: ; 0x0202BE78
	stmdb sp!, {r3, lr}
	ldr r1, _0202BE9C ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034A08
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202BE9C: .word MAIN_BSS_0208F304
	arm_func_end sub_0202BE78

	arm_func_start sub_0202BEA0
sub_0202BEA0: ; 0x0202BEA0
	mov r0, #0
	bx lr
	arm_func_end sub_0202BEA0

	arm_func_start sub_0202BEA8
sub_0202BEA8: ; 0x0202BEA8
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	cmp r1, #0x1a
	ldreq r2, _0202BEE8 ; =MAIN_BSS_020B26A0
	ldreqb r2, [r2, #1]
	cmpeq r2, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	ldr r3, _0202BEEC ; =_0208F304
	ldr r2, [r0, #4]
	ldr r0, [r3]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034A40
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202BEE8: .word MAIN_BSS_020B26A0
_0202BEEC: .word MAIN_BSS_0208F304
	arm_func_end sub_0202BEA8

	arm_func_start sub_0202BEF0
sub_0202BEF0: ; 0x0202BEF0
	stmdb sp!, {r3, lr}
	ldr r1, _0202BF14 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B58
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202BF14: .word MAIN_BSS_0208F304
	arm_func_end sub_0202BEF0

	arm_func_start sub_0202BF18
sub_0202BF18: ; 0x0202BF18
	stmdb sp!, {r3, lr}
	ldr r1, _0202BF3C ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B9C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202BF3C: .word MAIN_BSS_0208F304
	arm_func_end sub_0202BF18

	arm_func_start sub_0202BF40
sub_0202BF40: ; 0x0202BF40
	stmdb sp!, {r3, lr}
	ldr r1, _0202BF64 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034BB8
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202BF64: .word MAIN_BSS_0208F304
	arm_func_end sub_0202BF40

	arm_func_start sub_0202BF68
sub_0202BF68: ; 0x0202BF68
	stmdb sp!, {r3, lr}
	ldr r1, _0202BF8C ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034F10
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202BF8C: .word MAIN_BSS_0208F304
	arm_func_end sub_0202BF68

	arm_func_start sub_0202BF90
sub_0202BF90: ; 0x0202BF90
	stmdb sp!, {r3, lr}
	ldr r1, _0202BFB4 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034BCC
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202BFB4: .word MAIN_BSS_0208F304
	arm_func_end sub_0202BF90

	arm_func_start sub_0202BFB8
sub_0202BFB8: ; 0x0202BFB8
	stmdb sp!, {r3, lr}
	ldr r1, _0202BFDC ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034BF8
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202BFDC: .word MAIN_BSS_0208F304
	arm_func_end sub_0202BFB8

	arm_func_start sub_0202BFE0
sub_0202BFE0: ; 0x0202BFE0
	stmdb sp!, {r3, lr}
	ldr r1, _0202C004 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C2C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C004: .word MAIN_BSS_0208F304
	arm_func_end sub_0202BFE0

	arm_func_start sub_0202C008
sub_0202C008: ; 0x0202C008
	stmdb sp!, {r3, lr}
	ldr r1, _0202C02C ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034F20
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C02C: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C008

	arm_func_start sub_0202C030
sub_0202C030: ; 0x0202C030
	stmdb sp!, {r3, lr}
	ldr r1, _0202C054 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C054: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C030

	arm_func_start sub_0202C058
sub_0202C058: ; 0x0202C058
	stmdb sp!, {r3, lr}
	ldr r1, _0202C07C ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C5C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C07C: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C058

	arm_func_start sub_0202C080
sub_0202C080: ; 0x0202C080
	stmdb sp!, {r3, lr}
	ldr r1, _0202C0A4 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034F3C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C0A4: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C080

	arm_func_start sub_0202C0A8
sub_0202C0A8: ; 0x0202C0A8
	stmdb sp!, {r3, lr}
	ldr r1, _0202C0D4 ; =_0208F304
	mov r2, r0
	ldr r0, [r1]
	mov r3, #0x100
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	ldmia r2, {r1, r2}
	bl sub_02034DE8
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C0D4: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C0A8

	arm_func_start sub_0202C0D8
sub_0202C0D8: ; 0x0202C0D8
	stmdb sp!, {r3, lr}
	ldr r1, _0202C0FC ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034E38
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C0FC: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C0D8

	arm_func_start sub_0202C100
sub_0202C100: ; 0x0202C100
	stmdb sp!, {r3, lr}
	ldr r1, _0202C128 ; =_0208F304
	mov r2, r0
	ldr r0, [r1]
	ldmia r2, {r1, r2}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034CF4
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C128: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C100

	arm_func_start sub_0202C12C
sub_0202C12C: ; 0x0202C12C
	stmdb sp!, {r3, lr}
	ldr r1, _0202C154 ; =_0208F304
	mov r2, r0
	ldr r0, [r1]
	ldmia r2, {r1, r2}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034D54
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C154: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C12C

	arm_func_start sub_0202C158
sub_0202C158: ; 0x0202C158
	stmdb sp!, {r3, lr}
	ldr r1, _0202C17C ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034DC8
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C17C: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C158

	arm_func_start sub_0202C180
sub_0202C180: ; 0x0202C180
	stmdb sp!, {r3, lr}
	ldr r0, _0202C1C0 ; =_0208F304
	mov r1, #0x2b
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_0203499C
	ldr r0, _0202C1C0 ; =_0208F304
	mov r1, #8
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034A40
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C1C0: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C180

	arm_func_start sub_0202C1C4
sub_0202C1C4: ; 0x0202C1C4
	stmdb sp!, {r3, lr}
	ldr r0, _0202C204 ; =_0208F304
	mov r1, #0x2c
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_0203499C
	ldr r0, _0202C204 ; =_0208F304
	mov r1, #9
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034A40
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C204: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C1C4

	arm_func_start sub_0202C208
sub_0202C208: ; 0x0202C208
	ldr r1, _0202C228 ; =_0208F304
	ldr r2, [r0]
	ldr r1, [r1]
	mov r0, #0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x48c]
	str r2, [r1, #0x1a4]
	bx lr
	.align 2, 0
_0202C228: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C208

	arm_func_start sub_0202C22C
sub_0202C22C: ; 0x0202C22C
	ldr r0, _0202C244 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	ldr r0, [r0, #0x1a4]
	bx lr
	.align 2, 0
_0202C244: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C22C

	arm_func_start sub_0202C248
sub_0202C248: ; 0x0202C248
	stmdb sp!, {r3, lr}
	ldr r0, _0202C268 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020345D4
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C268: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C248

	arm_func_start sub_0202C26C
sub_0202C26C: ; 0x0202C26C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0202C364 ; =MAIN_BSS_0210CA78
	mov r5, r0
	ldr r0, [r1]
	mov r4, #0
	cmp r0, #0
	beq _0202C2E0
	mov r1, #9
	bl sub_02035ECC
	ldr r1, _0202C368 ; =_0208F304
	mov r4, r0
	ldr r0, [r1]
	mov r1, #0x18
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02019278
	cmp r0, #0
	ldr r0, _0202C36C ; =MAIN_BSS_0210CA6C
	moveq r4, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _0202C2E0
	ldr r1, _0202C370 ; =MAIN_BSS_020B26A0
	ldrh r1, [r1, #0x1a]
	bl sub_02041D80
	ldrb r0, [r0]
	sub r0, r0, #0x26
	cmp r0, #1
	movls r4, #0
	arm_func_end sub_0202C26C
_0202C2E0:
	cmp r4, #0
	beq _0202C320
	ldr r0, _0202C368 ; =_0208F304
	mov r1, #0xb1
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_0203499C
	ldr r0, _0202C368 ; =_0208F304
	mov r1, #0x1a
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034A40
	b _0202C35C
_0202C320:
	ldr r1, _0202C368 ; =_0208F304
	ldr r0, _0202C370 ; =MAIN_BSS_020B26A0
	ldr r2, [r1]
	ldrh r1, [r0, #0x1a]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	ldr r2, [r5]
	mov r3, #1
	bl sub_020346CC
	ldr r0, _0202C368 ; =_0208F304
	mov r1, #0x100
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034F20
_0202C35C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202C364: .word MAIN_BSS_0210CA78
_0202C368: .word MAIN_BSS_0208F304
_0202C36C: .word MAIN_BSS_0210CA6C
_0202C370: .word MAIN_BSS_020B26A0

	arm_func_start sub_0202C374
sub_0202C374: ; 0x0202C374
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0xa0
	mov r0, #1
	bl sub_0202BCD4
	cmp r0, #0
	addeq sp, sp, #0xa0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _0202C43C ; =MAIN_BSS_0210CA4C
	ldr r4, [r0]
	cmp r4, #0
	beq _0202C430
	ldr lr, _0202C440 ; =DAT_02084c80
	add ip, sp, #0x50
	mov r5, #5
	arm_func_end sub_0202C374
_0202C3B0:
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0202C3B0
	ldr lr, _0202C444 ; =DAT_02084cd0
	add ip, sp, #0
	mov r5, #5
_0202C3CC:
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0202C3CC
	mov r6, #0
	add r5, sp, #0x50
_0202C3E4:
	ldr r1, [r5, r6, lsl #2]
	mov r0, r4
	bl ov0_0213A520
	cmp r0, #0
	beq _0202C424
	ldr r0, _0202C448 ; =_0208F304
	add r1, sp, #0
	ldr r0, [r0]
	ldr r1, [r1, r6, lsl #2]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r2, #0x40
	bl sub_02034CF4
	add sp, sp, #0xa0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0202C424:
	add r6, r6, #1
	cmp r6, #0x14
	blt _0202C3E4
_0202C430:
	mov r0, #1
	add sp, sp, #0xa0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0202C43C: .word MAIN_BSS_0210CA4C
_0202C440: .word DAT_02084c80
_0202C444: .word DAT_02084cd0
_0202C448: .word MAIN_BSS_0208F304

	arm_func_start sub_0202C44C
sub_0202C44C: ; 0x0202C44C
	stmdb sp!, {r3, lr}
	ldr r1, _0202C474 ; =_0208F304
	mov r2, r0
	ldr r0, [r1]
	ldmia r2, {r1, r2}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034CA0
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C474: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C44C

	arm_func_start sub_0202C478
sub_0202C478: ; 0x0202C478
	stmdb sp!, {r3, lr}
	ldr ip, [r0]
	ldr r3, _0202C50C ; =MAIN_BSS_020B26A0
	cmp ip, #0
	blt _0202C504
	cmp ip, #0x1f4
	bge _0202C504
	cmp ip, #0
	blt _0202C4C8
	cmp ip, #0x1f4
	bge _0202C4C8
	mov r0, ip, asr #4
	add r0, r3, r0, lsl #2
	add r0, r0, #0x7000
	mov r1, ip, lsl #0x1c
	ldr r2, [r0, #0xc3c]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #3
	b _0202C4CC
	arm_func_end sub_0202C478
_0202C4C8:
	mov r0, #0
_0202C4CC:
	cmp r0, #1
	bhs _0202C504
	mov r1, ip, lsl #0x1c
	add r0, r3, #0x3c
	mov lr, r1, lsr #0x1b
	mov r1, #3
	add r3, r0, #0x7c00
	mov ip, ip, asr #4
	mvn r1, r1, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #1
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
_0202C504:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C50C: .word MAIN_BSS_020B26A0

	arm_func_start sub_0202C510
sub_0202C510: ; 0x0202C510
	stmdb sp!, {r3, lr}
	ldr ip, [r0]
	ldr r3, _0202C5A4 ; =MAIN_BSS_020B26A0
	cmp ip, #0
	blt _0202C59C
	cmp ip, #0x1f4
	bge _0202C59C
	cmp ip, #0
	blt _0202C560
	cmp ip, #0x1f4
	bge _0202C560
	mov r0, ip, asr #4
	add r0, r3, r0, lsl #2
	add r0, r0, #0x7000
	mov r1, ip, lsl #0x1c
	ldr r2, [r0, #0xc3c]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #3
	b _0202C564
	arm_func_end sub_0202C510
_0202C560:
	mov r0, #0
_0202C564:
	cmp r0, #2
	bhs _0202C59C
	mov r1, ip, lsl #0x1c
	add r0, r3, #0x3c
	mov lr, r1, lsr #0x1b
	mov r1, #3
	add r3, r0, #0x7c00
	mov ip, ip, asr #4
	mvn r1, r1, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #2
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
_0202C59C:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C5A4: .word MAIN_BSS_020B26A0

	arm_func_start sub_0202C5A8
sub_0202C5A8: ; 0x0202C5A8
	ldr r1, [r0]
	ldr r2, _0202C5EC ; =MAIN_BSS_020B26A0
	cmp r1, #0
	blt _0202C5E4
	cmp r1, #0x1f4
	bge _0202C5E4
	mov r0, r1, asr #4
	add r0, r2, r0, lsl #2
	add r0, r0, #0x7000
	mov r1, r1, lsl #0x1c
	ldr r2, [r0, #0xc3c]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #3
	bx lr
	arm_func_end sub_0202C5A8
_0202C5E4:
	mov r0, #0
	bx lr
	.align 2, 0
_0202C5EC: .word MAIN_BSS_020B26A0

	arm_func_start sub_0202C5F0
sub_0202C5F0: ; 0x0202C5F0
	stmdb sp!, {r4, lr}
	mov r0, #0
	ldr lr, _0202C654 ; =MAIN_BSS_020B26A0
	mov r4, r0
	mov r2, r0
	arm_func_end sub_0202C5F0
_0202C604:
	cmp r4, #0
	blt _0202C638
	cmp r4, #0x1f4
	bge _0202C638
	mov r1, r4, asr #4
	add r1, lr, r1, lsl #2
	add r1, r1, #0x7000
	mov r3, r4, lsl #0x1c
	ldr ip, [r1, #0xc3c]
	mov r1, r3, lsr #0x1b
	mov r1, ip, lsr r1
	and r1, r1, #3
	b _0202C63C
_0202C638:
	mov r1, r2
_0202C63C:
	add r4, r4, #1
	cmp r1, #2
	addhs r0, r0, #1
	cmp r4, #0x1f4
	blt _0202C604
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202C654: .word MAIN_BSS_020B26A0

	arm_func_start sub_0202C658
sub_0202C658: ; 0x0202C658
	ldr r2, [r0]
	ldr r0, _0202C6A0 ; =MAIN_BSS_020B26A0
	cmp r2, #0
	blt _0202C698
	cmp r2, #0x1f4
	bge _0202C698
	add r0, r0, #0x3c
	mov r1, r2, lsl #0x1c
	add r3, r0, #0x7c00
	mov r2, r2, asr #4
	mov r0, r1, lsr #0x1b
	mov r1, #3
	mvn r0, r1, lsl r0
	ldr r1, [r3, r2, lsl #2]
	and r0, r1, r0
	str r0, [r3, r2, lsl #2]
	arm_func_end sub_0202C658
_0202C698:
	mov r0, #0
	bx lr
	.align 2, 0
_0202C6A0: .word MAIN_BSS_020B26A0

	arm_func_start sub_0202C6A4
sub_0202C6A4: ; 0x0202C6A4
	stmdb sp!, {r4, lr}
	mov r0, #0
	ldr lr, _0202C760 ; =MAIN_BSS_020B26A0
	mov r4, r0
	mov r2, r0
	arm_func_end sub_0202C6A4
_0202C6B8:
	cmp r4, #0
	blt _0202C6EC
	cmp r4, #0x1f4
	bge _0202C6EC
	mov r1, r4, asr #4
	add r1, lr, r1, lsl #2
	add r1, r1, #0x7000
	mov r3, r4, lsl #0x1c
	ldr ip, [r1, #0xc3c]
	mov r1, r3, lsr #0x1b
	mov r1, ip, lsr r1
	and r1, r1, #3
	b _0202C6F0
_0202C6EC:
	mov r1, r2
_0202C6F0:
	add r4, r4, #1
	cmp r1, #2
	addhs r0, r0, #1
	cmp r4, #0x1f4
	blt _0202C6B8
	add r1, lr, #0x7000
	ldr r2, [r1, #0xcb4]
	mov r1, r2, lsr #6
	and r1, r1, #3
	cmp r1, #2
	mov r1, r2, lsr #8
	and r1, r1, #3
	subeq r0, r0, #1
	cmp r1, #2
	mov r1, r2, lsr #0x18
	and r1, r1, #3
	subeq r0, r0, #1
	cmp r1, #2
	ldr r1, _0202C764 ; =0x0000010A
	subeq r0, r0, #1
	cmp r0, r1
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	add r1, r1, #1
	cmp r0, r1
	moveq r0, #2
	movne r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202C760: .word MAIN_BSS_020B26A0
_0202C764: .word 0x0000010A

	arm_func_start sub_0202C768
sub_0202C768: ; 0x0202C768
	stmdb sp!, {r3, r4, r5, lr}
	mov r3, r0
	ldr r1, [r3, #4]
	ldr r0, _0202C864 ; =MAIN_BSS_020B26A0
	cmp r1, #0
	blt _0202C7F8
	cmp r1, #0x1f4
	bge _0202C7F8
	cmp r1, #0
	blt _0202C7BC
	cmp r1, #0x1f4
	bge _0202C7BC
	mov r2, r1, asr #4
	add r2, r0, r2, lsl #2
	add r2, r2, #0x7000
	mov r4, r1, lsl #0x1c
	ldr r5, [r2, #0xc3c]
	mov r2, r4, lsr #0x1b
	mov r2, r5, lsr r2
	and r2, r2, #3
	b _0202C7C0
	arm_func_end sub_0202C768
_0202C7BC:
	mov r2, #0
_0202C7C0:
	cmp r2, #1
	bhs _0202C7F8
	mov r4, r1, lsl #0x1c
	add r2, r0, #0x3c
	mov r5, r4, lsr #0x1b
	mov r4, r1, asr #4
	mov ip, #3
	add lr, r2, #0x7c00
	mvn r2, ip, lsl r5
	ldr ip, [lr, r4, lsl #2]
	mov r1, #1
	and r2, ip, r2
	orr r1, r2, r1, lsl r5
	str r1, [lr, r4, lsl #2]
_0202C7F8:
	ldr ip, [r3, #4]
	mov r2, #0
	cmp ip, #0
	blt _0202C834
	cmp ip, #0x1f4
	bge _0202C834
	mov r1, ip, asr #4
	add r0, r0, r1, lsl #2
	add r0, r0, #0x7000
	mov r1, ip, lsl #0x1c
	ldr ip, [r0, #0xc3c]
	mov r0, r1, lsr #0x1b
	mov r0, ip, lsr r0
	and r0, r0, #3
	b _0202C838
_0202C834:
	mov r0, #0
_0202C838:
	cmp r0, #2
	ldr r0, _0202C868 ; =MAIN_BSS_0210CA40
	movne r2, #1
	ldr r0, [r0]
	cmp r0, #0
	beq _0202C85C
	ldr r0, [r0, #0x54]
	ldr r1, [r3]
	bl sub_02022B60
_0202C85C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202C864: .word MAIN_BSS_020B26A0
_0202C868: .word MAIN_BSS_0210CA40

	arm_func_start sub_0202C86C
sub_0202C86C: ; 0x0202C86C
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	mov r3, r0
	ldr r1, [r3, #0xc]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _0202C8AC ; =_0208F304
	ldmia r3, {r1, r2, r3}
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C8AC: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C86C

	arm_func_start sub_0202C8B0
sub_0202C8B0: ; 0x0202C8B0
	ldr r0, _0202C8C8 ; =_0208F304
	ldr ip, _0202C8CC ; =sub_02009ECC
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bx ip
	.align 2, 0
_0202C8C8: .word MAIN_BSS_0208F304
_0202C8CC: .word sub_02009ECC
	arm_func_end sub_0202C8B0

	arm_func_start sub_0202C8D0
sub_0202C8D0: ; 0x0202C8D0
	stmdb sp!, {r3, lr}
	ldr r0, _0202C8F8 ; =_0208F304
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009FB0
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C8F8: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C8D0

	arm_func_start sub_0202C8FC
sub_0202C8FC: ; 0x0202C8FC
	stmdb sp!, {r3, lr}
	ldr r1, _0202C924 ; =_0208F304
	mov r2, r0
	ldr r0, [r1]
	ldmia r2, {r1, r2}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_020097FCEmm
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C924: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C8FC

	arm_func_start sub_0202C928
sub_0202C928: ; 0x0202C928
	stmdb sp!, {r3, lr}
	ldr r1, _0202C94C ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA04
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C94C: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C928

	arm_func_start sub_0202C950
sub_0202C950: ; 0x0202C950
	stmdb sp!, {r3, lr}
	ldr r0, _0202C970 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C970: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C950

	arm_func_start sub_0202C974
sub_0202C974: ; 0x0202C974
	stmdb sp!, {r3, lr}
	ldr r1, _0202C998 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA28
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C998: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C974

	arm_func_start sub_0202C99C
sub_0202C99C: ; 0x0202C99C
	stmdb sp!, {r3, lr}
	ldr r0, _0202C9BC ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA38
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C9BC: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C99C

	arm_func_start sub_0202C9C0
sub_0202C9C0: ; 0x0202C9C0
	stmdb sp!, {r3, lr}
	ldr r1, _0202C9E4 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA48
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202C9E4: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C9C0

	arm_func_start sub_0202C9E8
sub_0202C9E8: ; 0x0202C9E8
	stmdb sp!, {r3, lr}
	ldr r0, _0202CA08 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA58
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202CA08: .word MAIN_BSS_0208F304
	arm_func_end sub_0202C9E8

	arm_func_start sub_0202CA0C
sub_0202CA0C: ; 0x0202CA0C
	stmdb sp!, {r3, lr}
	ldr r0, _0202CA2C ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200B68C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202CA2C: .word MAIN_BSS_0208F304
	arm_func_end sub_0202CA0C

	arm_func_start sub_0202CA30
sub_0202CA30: ; 0x0202CA30
	ldr r0, _0202CA4C ; =_0208F304
	ldr ip, _0202CA50 ; =sub_0200B6A4
	ldr r0, [r0]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bx ip
	.align 2, 0
_0202CA4C: .word MAIN_BSS_0208F304
_0202CA50: .word sub_0200B6A4
	arm_func_end sub_0202CA30

	arm_func_start sub_0202CA54
sub_0202CA54: ; 0x0202CA54
	ldr r0, _0202CA6C ; =_0208F304
	ldr ip, _0202CA70 ; =sub_0200B6D4
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bx ip
	.align 2, 0
_0202CA6C: .word MAIN_BSS_0208F304
_0202CA70: .word sub_0200B6D4
	arm_func_end sub_0202CA54

	arm_func_start sub_0202CA74
sub_0202CA74: ; 0x0202CA74
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	mov r3, r0
	ldr r1, [r3, #0xc]
	ldr r0, _0202CAB4 ; =_0208F304
	str r1, [sp]
	ldr r1, [r3, #0x10]
	str r1, [sp, #4]
	ldr r0, [r0]
	ldmia r3, {r1, r2, r3}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202CAB4: .word MAIN_BSS_0208F304
	arm_func_end sub_0202CA74

	arm_func_start sub_0202CAB8
sub_0202CAB8: ; 0x0202CAB8
	stmdb sp!, {r3, lr}
	ldr r1, _0202CB10 ; =MAIN_BSS_0210CA40
	ldr r2, [r1]
	cmp r2, #0
	mvnne r1, #0
	strne r1, [r2, #0x8c]
	ldr r1, _0202CB14 ; =_0208F304
	ldr r2, [r0, #4]
	ldr ip, [r1]
	mov r2, r2, lsl #0xc
	ldr r3, [r0]
	ldr r1, [r0, #8]
	add r0, ip, #0x1000
	mov ip, r3, lsl #0xc
	mov r3, r1, lsl #0x10
	ldr r0, [r0, #0x4b8]
	rsb r1, ip, #0
	rsb r2, r2, #0
	mov r3, r3, lsr #0x10
	bl sub_0200D5FC
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202CB10: .word MAIN_BSS_0210CA40
_0202CB14: .word MAIN_BSS_0208F304
	arm_func_end sub_0202CAB8

	arm_func_start sub_0202CB18
sub_0202CB18: ; 0x0202CB18
	ldr r1, _0202CB34 ; =MAIN_BSS_0210CA40
	ldr r1, [r1]
	cmp r1, #0
	ldrne r0, [r0]
	strne r0, [r1, #0x8c]
	mov r0, #0
	bx lr
	.align 2, 0
_0202CB34: .word MAIN_BSS_0210CA40
	arm_func_end sub_0202CB18

	arm_func_start sub_0202CB38
sub_0202CB38: ; 0x0202CB38
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	mov r5, r0
	ldr r0, [r4, #4]
	bl sub_0202BCD4
	ldr r1, _0202CC50 ; =MAIN_BSS_0210CA40
	ldr r2, [r1]
	cmp r2, #0
	mvnne r1, #0
	strne r1, [r2, #0x8c]
	mov r1, #0
	cmp r5, #0
	mov r3, r1
	cmpne r0, #0
	beq _0202CC18
	ldr r3, [r5, #8]
	cmp r3, #0
	beq _0202CB94
	ldr r2, [r3, #0xc]
	cmp r2, #0
	ldrne r1, [r2, #0x20]
	arm_func_end sub_0202CB38
_0202CB94:
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _0202CBB4
	ldr r0, [r2, #0xc]
	cmp r0, #0
	ldrne r0, [r0, #0x20]
	moveq r0, #0
	b _0202CBB8
_0202CBB4:
	mov r0, #0
_0202CBB8:
	mov r0, r0, asr #0xc
	add r0, r0, r1, asr #12
	add r0, r0, r0, lsr #31
	cmp r3, #0
	mov r1, r0, asr #1
	beq _0202CBE4
	ldr r0, [r3, #0xc]
	cmp r0, #0
	ldrne r3, [r0, #0x24]
	moveq r3, #0
	b _0202CBE8
_0202CBE4:
	mov r3, #0
_0202CBE8:
	cmp r2, #0
	beq _0202CC04
	ldr r0, [r2, #0xc]
	cmp r0, #0
	ldrne r0, [r0, #0x24]
	moveq r0, #0
	b _0202CC08
_0202CC04:
	mov r0, #0
_0202CC08:
	mov r0, r0, asr #0xc
	add r0, r0, r3, asr #12
	add r0, r0, r0, lsr #31
	mov r3, r0, asr #1
_0202CC18:
	ldr r0, _0202CC54 ; =_0208F304
	ldr r2, [r4, #8]
	ldr r0, [r0]
	mov r1, r1, lsl #0xc
	add r0, r0, #0x1000
	mov r4, r3, lsl #0xc
	mov r3, r2, lsl #0x10
	ldr r0, [r0, #0x4b8]
	rsb r1, r1, #0
	rsb r2, r4, #0
	mov r3, r3, lsr #0x10
	bl sub_0200D5FC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202CC50: .word MAIN_BSS_0210CA40
_0202CC54: .word MAIN_BSS_0208F304

	arm_func_start sub_0202CC58
sub_0202CC58: ; 0x0202CC58
	stmdb sp!, {r3, lr}
	ldr r0, _0202CC80 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b8]
	bl sub_0200D9B8
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202CC80: .word MAIN_BSS_0208F304
	arm_func_end sub_0202CC58

	arm_func_start sub_0202CC84
sub_0202CC84: ; 0x0202CC84
	ldr r0, _0202CCA0 ; =MAIN_BSS_0210CA40
	ldr r1, [r0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x8c]
	mov r0, #0
	bx lr
	.align 2, 0
_0202CCA0: .word MAIN_BSS_0210CA40
	arm_func_end sub_0202CC84

	arm_func_start sub_0202CCA4
sub_0202CCA4: ; 0x0202CCA4
	ldr r0, _0202CCC0 ; =MAIN_BSS_0210CA40
	ldr r1, [r0]
	cmp r1, #0
	mvnne r0, #0
	strne r0, [r1, #0x8c]
	mov r0, #0
	bx lr
	.align 2, 0
_0202CCC0: .word MAIN_BSS_0210CA40
	arm_func_end sub_0202CCA4

	arm_func_start sub_0202CCC4
sub_0202CCC4: ; 0x0202CCC4
	ldr r0, _0202CCF4 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b8]
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0, #0x1c]
	mov r0, r0, asr #0xc
	rsb r0, r0, #0
	bx lr
	.align 2, 0
_0202CCF4: .word MAIN_BSS_0208F304
	arm_func_end sub_0202CCC4

	arm_func_start sub_0202CCF8
sub_0202CCF8: ; 0x0202CCF8
	ldr r0, _0202CD28 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b8]
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0, #0x20]
	mov r0, r0, asr #0xc
	rsb r0, r0, #0
	bx lr
	.align 2, 0
_0202CD28: .word MAIN_BSS_0208F304
	arm_func_end sub_0202CCF8

	arm_func_start sub_0202CD2C
sub_0202CD2C: ; 0x0202CD2C
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r0, [r0, #8]
	cmpne r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202CD54
	bl sub_020128D8
	arm_func_end sub_0202CD2C
_0202CD54:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202CD5C
sub_0202CD5C: ; 0x0202CD5C
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r0, [r0, #8]
	cmpne r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202CD84
	bl sub_0201287C
	arm_func_end sub_0202CD5C
_0202CD84:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202CD8C
sub_0202CD8C: ; 0x0202CD8C
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r5, r0
	ldr r0, [r5]
	bl sub_0202BCD4
	mov r4, r0
	ldr r0, [r5, #4]
	bl sub_0202BCD4
	mov r1, #0
	cmp r4, #0
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	cmpne r0, #0
	beq _0202CE64
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0202CE08
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0202CDF0
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	b _0202CE1C
	arm_func_end sub_0202CD8C
_0202CDF0:
	add r0, sp, #8
	str r1, [sp, #0x10]
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [sp, #0x14]
	b _0202CE1C
_0202CE08:
	add r0, sp, #0
	str r1, [sp, #0x10]
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [sp, #0x14]
_0202CE1C:
	ldr r0, [r4, #8]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	cmpne r0, #0
	beq _0202CE4C
	add r1, sp, #0x18
	ldmia r1, {r1, r2}
	bl sub_02012948
_0202CE4C:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202CE64
	bl sub_0201287C
_0202CE64:
	mov r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202CE70
sub_0202CE70: ; 0x0202CE70
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202CE98
	ldr r2, [r4, #4]
	mov r1, #1
	str r1, [r0, #0x5c]
	str r2, [r0, #0x60]
	arm_func_end sub_0202CE70
_0202CE98:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202CEA0
sub_0202CEA0: ; 0x0202CEA0
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202CED4
	mov r1, #0
	str r1, [r0, #0x5c]
	ldr r0, [r0, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202CED4
	bl sub_0201287C
	arm_func_end sub_0202CEA0
_0202CED4:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202CEDC
sub_0202CEDC: ; 0x0202CEDC
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x40
	mov r5, r0
	ldr r0, [r5]
	bl sub_0202BCD4
	mov r4, r0
	ldr r0, [r5, #4]
	bl sub_0202BCD4
	mov r1, #0
	mov r5, r0
	cmp r4, #0
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r1, [sp, #0x30]
	str r1, [sp, #0x34]
	cmpne r5, #0
	beq _0202D068
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0202CF64
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0202CF4C
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	b _0202CF78
	arm_func_end sub_0202CEDC
_0202CF4C:
	add r0, sp, #0x18
	str r1, [sp, #0x28]
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [sp, #0x2c]
	b _0202CF78
_0202CF64:
	add r0, sp, #0x10
	str r1, [sp, #0x28]
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [sp, #0x2c]
_0202CF78:
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r0, [r5, #8]
	str r2, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r0, #0
	beq _0202CFD0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0202CFB4
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	b _0202CFE8
_0202CFB4:
	mov r0, #0
	add r1, sp, #8
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	b _0202CFE8
_0202CFD0:
	mov r0, #0
	add r1, sp, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
_0202CFE8:
	ldr r0, [r4, #8]
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x24]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	str r2, [sp, #0x30]
	str r1, [sp, #0x34]
	cmpne r0, #0
	beq _0202D018
	add r1, sp, #0x30
	ldmia r1, {r1, r2}
	bl sub_02012948
_0202D018:
	ldr r0, [r5, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202D038
	add r1, sp, #0x38
	ldmia r1, {r1, r2}
	bl sub_02012948
_0202D038:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202D050
	bl sub_0201287C
_0202D050:
	ldr r0, [r5, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202D068
	bl sub_0201287C
_0202D068:
	mov r0, #0
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202D074
sub_0202D074: ; 0x0202D074
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	ldr r1, [r4, #4]
	movs r4, r0
	mov r0, r1, lsl #0x10
	mov r1, r0, lsr #0x10
	beq _0202D0C8
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202D0B0
	bl sub_020128EC
	arm_func_end sub_0202D074
_0202D0B0:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202D0C8
	bl sub_0201287C
_0202D0C8:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202D0D0
sub_0202D0D0: ; 0x0202D0D0
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	movs r4, r0
	mov r2, r2, lsl #0xc
	mov r0, r1, lsl #0xc
	str r2, [sp]
	str r0, [sp, #4]
	beq _0202D13C
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202D124
	add r1, sp, #0
	ldmia r1, {r1, r2}
	bl sub_02012948
	arm_func_end sub_0202D0D0
_0202D124:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202D13C
	bl sub_0201287C
_0202D13C:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202D148
sub_0202D148: ; 0x0202D148
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202D188
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0202D17C
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrne r0, [r0, #0x20]
	moveq r0, #0
	b _0202D180
	arm_func_end sub_0202D148
_0202D17C:
	mov r0, #0
_0202D180:
	mov r0, r0, asr #0xc
	ldmia sp!, {r3, pc}
_0202D188:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202D190
sub_0202D190: ; 0x0202D190
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202D1D0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0202D1C4
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrne r0, [r0, #0x24]
	moveq r0, #0
	b _0202D1C8
	arm_func_end sub_0202D190
_0202D1C4:
	mov r0, #0
_0202D1C8:
	mov r0, r0, asr #0xc
	ldmia sp!, {r3, pc}
_0202D1D0:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202D1D8
sub_0202D1D8: ; 0x0202D1D8
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202D22C
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0202D220
	ldr r2, [r0, #0xc]
	cmp r2, #0
	moveq r0, #0
	beq _0202D224
	ldr r1, [r2, #0x8c]
	ldr r0, [r2, #0xa0]
	ldr r2, [r2, #0xb0]
	add r0, r1, r0
	add r0, r2, r0
	b _0202D224
	arm_func_end sub_0202D1D8
_0202D220:
	mov r0, #0
_0202D224:
	mov r0, r0, asr #0xc
	ldmia sp!, {r3, pc}
_0202D22C:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202D234
sub_0202D234: ; 0x0202D234
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202D2D8
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0202D268
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrneh r0, [r0, #0x72]
	moveq r0, #0
	b _0202D26C
	arm_func_end sub_0202D234
_0202D268:
	mov r0, #0
_0202D26C:
	cmp r0, #0x1000
	blt _0202D27C
	cmp r0, #0xf000
	blt _0202D284
_0202D27C:
	mov r0, #0
	ldmia sp!, {r3, pc}
_0202D284:
	cmp r0, #0x3000
	movlt r0, #0x2000
	ldmltia sp!, {r3, pc}
	cmp r0, #0x5000
	movlt r0, #0x4000
	ldmltia sp!, {r3, pc}
	cmp r0, #0x7000
	movlt r0, #0x6000
	ldmltia sp!, {r3, pc}
	cmp r0, #0x9000
	movlt r0, #0x8000
	ldmltia sp!, {r3, pc}
	cmp r0, #0xb000
	movlt r0, #0xa000
	ldmltia sp!, {r3, pc}
	cmp r0, #0xd000
	movlt r0, #0xc000
	ldmltia sp!, {r3, pc}
	cmp r0, #0xf000
	movlt r0, #0xe000
	ldmltia sp!, {r3, pc}
_0202D2D8:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202D2E0
sub_0202D2E0: ; 0x0202D2E0
	stmdb sp!, {r3, r4, r5, lr}
	cmp r1, #1
	ldr r4, _0202D38C ; =MAIN_BSS_020B26A0
	blt _0202D384
	ldr r5, [r0]
	mov r0, r4
	mov r1, r5
	bl sub_0201597C
	ldr r0, _0202D390 ; =0x00000FFF
	ldrh r1, [r4, #0x1a]
	and r0, r0, r5, asr #12
	cmp r1, r0
	bne _0202D384
	mov r0, r5, asr #0x18
	and r0, r0, #0xff
	cmp r0, #1
	beq _0202D330
	cmp r0, #2
	beq _0202D340
	b _0202D350
	arm_func_end sub_0202D2E0
_0202D330:
	mov r0, r5
	bl sub_0202BCFC
	mov r4, r0
	b _0202D35C
_0202D340:
	mov r0, r5
	bl sub_0202BD5C
	mov r4, r0
	b _0202D35C
_0202D350:
	mov r0, r5
	bl sub_0202BCD4
	mov r4, r0
_0202D35C:
	cmp r4, #0
	beq _0202D384
	mov r0, r4
	bl sub_02041C1C
	mov r1, #0
	mov r0, r4
	strb r1, [r4, #0x20]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
_0202D384:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202D38C: .word MAIN_BSS_020B26A0
_0202D390: .word 0x00000FFF

	arm_func_start sub_0202D394
sub_0202D394: ; 0x0202D394
	bx lr
	arm_func_end sub_0202D394

	arm_func_start sub_0202D398
sub_0202D398: ; 0x0202D398
	stmdb sp!, {r3, r4, r5, lr}
	cmp r1, #1
	ldr r4, _0202D440 ; =MAIN_BSS_020B26A0
	blt _0202D438
	ldr r5, [r0]
	mov r0, r4
	mov r1, r5
	bl sub_020158BC
	ldr r0, _0202D444 ; =0x00000FFF
	ldrh r1, [r4, #0x1a]
	and r0, r0, r5, asr #12
	cmp r1, r0
	bne _0202D438
	mov r0, r5
	bl sub_0202BCD4
	mov r1, r5, asr #0x18
	and r1, r1, #0xff
	cmp r1, #1
	beq _0202D3F0
	cmp r1, #2
	beq _0202D410
	b _0202D42C
	arm_func_end sub_0202D398
_0202D3F0:
	cmp r0, #0
	beq _0202D42C
	ldr r1, [r0, #0x58]
	mov r1, r1, asr #0x18
	and r1, r1, #0xff
	cmp r1, #1
	movne r0, #0
	b _0202D42C
_0202D410:
	cmp r0, #0
	beq _0202D42C
	ldr r1, [r0, #0x58]
	mov r1, r1, asr #0x18
	and r1, r1, #0xff
	cmp r1, #2
	movne r0, #0
_0202D42C:
	cmp r0, #0
	movne r1, #2
	strneb r1, [r0, #0x20]
_0202D438:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202D440: .word MAIN_BSS_020B26A0
_0202D444: .word 0x00000FFF

	arm_func_start sub_0202D448
sub_0202D448: ; 0x0202D448
	stmdb sp!, {r3, r4, r5, lr}
	cmp r1, #2
	ldr r4, _0202D4F4 ; =MAIN_BSS_020B26A0
	blt _0202D4EC
	ldr r5, [r0, #4]
	mov r0, r4
	mov r1, r5
	bl sub_0201597C
	ldr r0, _0202D4F8 ; =0x00000FFF
	ldrh r1, [r4, #0x1a]
	and r0, r0, r5, asr #12
	cmp r1, r0
	bne _0202D4EC
	mov r0, r5, asr #0x18
	and r0, r0, #0xff
	cmp r0, #1
	beq _0202D498
	cmp r0, #2
	beq _0202D4A8
	b _0202D4B8
	arm_func_end sub_0202D448
_0202D498:
	mov r0, r5
	bl sub_0202BCFC
	mov r4, r0
	b _0202D4C4
_0202D4A8:
	mov r0, r5
	bl sub_0202BD5C
	mov r4, r0
	b _0202D4C4
_0202D4B8:
	mov r0, r5
	bl sub_0202BCD4
	mov r4, r0
_0202D4C4:
	cmp r4, #0
	beq _0202D4EC
	mov r0, r4
	bl sub_02041C1C
	mov r1, #0
	mov r0, r4
	strb r1, [r4, #0x20]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
_0202D4EC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202D4F4: .word MAIN_BSS_020B26A0
_0202D4F8: .word 0x00000FFF

	arm_func_start sub_0202D4FC
sub_0202D4FC: ; 0x0202D4FC
	stmdb sp!, {r3, r4, r5, lr}
	cmp r1, #2
	ldr r4, _0202D5A4 ; =MAIN_BSS_020B26A0
	blt _0202D59C
	ldr r5, [r0, #4]
	mov r0, r4
	mov r1, r5
	bl sub_020158BC
	ldr r0, _0202D5A8 ; =0x00000FFF
	ldrh r1, [r4, #0x1a]
	and r0, r0, r5, asr #12
	cmp r1, r0
	bne _0202D59C
	mov r0, r5
	bl sub_0202BCD4
	mov r1, r5, asr #0x18
	and r1, r1, #0xff
	cmp r1, #1
	beq _0202D554
	cmp r1, #2
	beq _0202D574
	b _0202D590
	arm_func_end sub_0202D4FC
_0202D554:
	cmp r0, #0
	beq _0202D590
	ldr r1, [r0, #0x58]
	mov r1, r1, asr #0x18
	and r1, r1, #0xff
	cmp r1, #1
	movne r0, #0
	b _0202D590
_0202D574:
	cmp r0, #0
	beq _0202D590
	ldr r1, [r0, #0x58]
	mov r1, r1, asr #0x18
	and r1, r1, #0xff
	cmp r1, #2
	movne r0, #0
_0202D590:
	cmp r0, #0
	movne r1, #2
	strneb r1, [r0, #0x20]
_0202D59C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202D5A4: .word MAIN_BSS_020B26A0
_0202D5A8: .word 0x00000FFF

	arm_func_start sub_0202D5AC
sub_0202D5AC: ; 0x0202D5AC
	stmdb sp!, {r3, lr}
	mov r2, r0
	ldr r0, _0202D5D0 ; =MAIN_BSS_020B26A0
	cmp r1, #1
	movlt r0, #0
	ldmltia sp!, {r3, pc}
	ldr r1, [r2]
	bl sub_020157E4
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202D5D0: .word MAIN_BSS_020B26A0
	arm_func_end sub_0202D5AC

	arm_func_start sub_0202D5D4
sub_0202D5D4: ; 0x0202D5D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	ldmib r4, {r1, r2}
	bl sub_02041A70
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202D5D4

	arm_func_start sub_0202D5F0
sub_0202D5F0: ; 0x0202D5F0
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	bl sub_02041C1C
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202D5F0

	arm_func_start sub_0202D608
sub_0202D608: ; 0x0202D608
	stmdb sp!, {r4, lr}
	ldr r1, _0202D67C ; =MAIN_BSS_0210CA5C
	ldr lr, [r0]
	ldr r3, [r1]
	ldmib r0, {r1, r2}
	cmp r3, #0
	beq _0202D674
	ldr r4, [r3, #4]
	mov ip, #0
	cmp r4, #0
	ble _0202D660
	ldr r3, [r3, #8]
	arm_func_end sub_0202D608
_0202D638:
	ldr r0, [r3, ip, lsl #2]
	cmp r0, #0
	beq _0202D654
	ldr r0, [r0, #0x58]
	cmp lr, r0
	ldreq r0, [r3, ip, lsl #2]
	beq _0202D664
_0202D654:
	add ip, ip, #1
	cmp ip, r4
	blt _0202D638
_0202D660:
	mov r0, #0
_0202D664:
	cmp r0, #0
	beq _0202D674
	bl sub_02041A70
	ldmia sp!, {r4, pc}
_0202D674:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202D67C: .word MAIN_BSS_0210CA5C

	arm_func_start sub_0202D680
sub_0202D680: ; 0x0202D680
	stmdb sp!, {r3, lr}
	ldr r1, _0202D6EC ; =MAIN_BSS_0210CA5C
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r0, #0
	beq _0202D6E4
	ldr r3, [r0, #4]
	mov r1, #0
	cmp r3, #0
	ble _0202D6D4
	ldr ip, [r0, #8]
	arm_func_end sub_0202D680
_0202D6AC:
	ldr r0, [ip, r1, lsl #2]
	cmp r0, #0
	beq _0202D6C8
	ldr r0, [r0, #0x58]
	cmp r2, r0
	ldreq r0, [ip, r1, lsl #2]
	beq _0202D6D8
_0202D6C8:
	add r1, r1, #1
	cmp r1, r3
	blt _0202D6AC
_0202D6D4:
	mov r0, #0
_0202D6D8:
	cmp r0, #0
	beq _0202D6E4
	bl sub_02041C1C
_0202D6E4:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202D6EC: .word MAIN_BSS_0210CA5C

	arm_func_start sub_0202D6F0
sub_0202D6F0: ; 0x0202D6F0
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r0, [r0, #8]
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	cmpne r0, #0
	ldrne r0, [r0, #0xc]
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	str r2, [sp]
	str r1, [sp, #4]
	cmpne r0, #0
	beq _0202D748
	add r1, sp, #0
	add r0, r0, #0xc
	mov r3, #0x1000
	ldmia r1, {r1, r2}
	bl sub_02011C20
	arm_func_end sub_0202D6F0
_0202D748:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202D754
sub_0202D754: ; 0x0202D754
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r0, [r0, #8]
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	cmpne r0, #0
	ldrne r0, [r0, #0xc]
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	str r2, [sp]
	str r1, [sp, #4]
	cmpne r0, #0
	beq _0202D7AC
	add r1, sp, #0
	add r0, r0, #0xc
	mov r3, #0x2000
	ldmia r1, {r1, r2}
	bl sub_02011C20
	arm_func_end sub_0202D754
_0202D7AC:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202D7B8
sub_0202D7B8: ; 0x0202D7B8
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202D7D8
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
	arm_func_end sub_0202D7B8
_0202D7D8:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202D7E0
sub_0202D7E0: ; 0x0202D7E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0202D828
	ldr r0, [r4, #4]
	tst r0, #8
	bne _0202D828
	orr r0, r0, #8
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r0, #0xc]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x1dc]
	strneb r0, [r1, #0x1e1]
	mov r0, #0
	str r0, [r4, #0x94]
	arm_func_end sub_0202D7E0
_0202D828:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202D840
	bl sub_0201287C
_0202D840:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrne r1, [r0, #0xc]
	cmpne r1, #0
	movne r0, #0
	strne r0, [r1, #0xc]
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202D85C
sub_0202D85C: ; 0x0202D85C
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202D8B4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0202D8A4
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0202D89C
	ldr r0, [r0, #0xc]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	b _0202D8A8
	arm_func_end sub_0202D85C
_0202D89C:
	mov r0, #0
	b _0202D8A8
_0202D8A4:
	mov r0, #0
_0202D8A8:
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
_0202D8B4:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202D8BC
sub_0202D8BC: ; 0x0202D8BC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202D920
	ldr r5, [r0, #8]
	ldmib r4, {r1, r2}
	cmp r5, #0
	ldrne r6, [r5, #0xc]
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	cmpne r6, #0
	beq _0202D920
	mov r1, r7
	add r0, r6, #0xc
	bl sub_02011D1C
	mov r1, r4
	add r0, r6, #0xc
	bl sub_02011D2C
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0xc4]
	cmp r0, #0
	strne r7, [r0, #0x18]
	strne r4, [r0, #0x1c]
	arm_func_end sub_0202D8BC
_0202D920:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0202D928
sub_0202D928: ; 0x0202D928
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202D95C
	ldr r0, [r0, #8]
	ldr r1, [r4, #4]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	mov r1, r1, lsl #0xc
	cmpne r0, #0
	strne r1, [r0, #0x8c]
	arm_func_end sub_0202D928
_0202D95C:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202D964
sub_0202D964: ; 0x0202D964
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	ldr r1, [r4, #4]
	movs r4, r0
	mov r0, r1, lsl #0x10
	mov r1, r0, lsr #0x10
	beq _0202D9B8
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202D9A0
	bl sub_020128EC
	arm_func_end sub_0202D964
_0202D9A0:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202D9B8
	bl sub_0201287C
_0202D9B8:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202D9C0
sub_0202D9C0: ; 0x0202D9C0
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202DA10
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0202DA08
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0202DA00
	ldr r0, [r0, #0xc]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202D9C0
_0202DA00:
	mov r0, #0
	ldmia sp!, {r3, pc}
_0202DA08:
	mov r0, #0
	ldmia sp!, {r3, pc}
_0202DA10:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202DA18
sub_0202DA18: ; 0x0202DA18
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5]
	bl sub_0202BCD4
	mov r4, r0
	ldr r0, [r5, #4]
	bl sub_0202BCD4
	cmp r4, #0
	cmpne r0, #0
	beq _0202DAF8
	ldr r4, [r4, #8]
	ldr r2, [r5, #8]
	cmp r4, #0
	beq _0202DA64
	ldr r1, [r4, #0xc]
	cmp r1, #0
	ldrne r3, [r1, #0x20]
	moveq r3, #0
	b _0202DA68
	arm_func_end sub_0202DA18
_0202DA64:
	mov r3, #0
_0202DA68:
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0202DA88
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r0, [r0, #0x20]
	moveq r0, #0
	b _0202DA8C
_0202DA88:
	mov r0, #0
_0202DA8C:
	sub r0, r3, r0
	cmp r4, #0
	mov r3, r0, asr #0xc
	beq _0202DAB0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldrne r4, [r0, #0x24]
	moveq r4, #0
	b _0202DAB4
_0202DAB0:
	mov r4, #0
_0202DAB4:
	cmp r1, #0
	beq _0202DAD0
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r0, [r0, #0x24]
	moveq r0, #0
	b _0202DAD4
_0202DAD0:
	mov r0, #0
_0202DAD4:
	sub r0, r4, r0
	mov r1, r0, asr #0xc
	mul r0, r1, r1
	mul r1, r2, r2
	mla r0, r3, r3, r0
	cmp r1, r0
	movgt r0, #0
	movle r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_0202DAF8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202DB00
sub_0202DB00: ; 0x0202DB00
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202DB68
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0202DB4C
	ldr r1, [r0, #4]
	bic r1, r1, #8
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	ldr r2, [r1, #0xc]
	cmp r2, #0
	beq _0202DB4C
	mov r1, #3
	str r1, [r2, #0x1dc]
	mov r1, #0
	strb r1, [r2, #0x1e1]
	arm_func_end sub_0202DB00
_0202DB4C:
	ldr r0, [r0, #8]
	cmp r0, #0
	ldrne r1, [r0, #0xc]
	cmpne r1, #0
	ldrneh r0, [r1, #4]
	bicne r0, r0, #8
	strneh r0, [r1, #4]
_0202DB68:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202DB70
sub_0202DB70: ; 0x0202DB70
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202DBE0
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0202DBC4
	ldr r1, [r0, #4]
	tst r1, #8
	bne _0202DBC4
	orr r1, r1, #8
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	ldr r2, [r1, #0xc]
	cmp r2, #0
	movne r1, #0
	strne r1, [r2, #0x1dc]
	strneb r1, [r2, #0x1e1]
	mov r1, #0
	str r1, [r0, #0x94]
	arm_func_end sub_0202DB70
_0202DBC4:
	ldr r0, [r0, #8]
	cmp r0, #0
	ldrne r1, [r0, #0xc]
	cmpne r1, #0
	ldrneh r0, [r1, #4]
	orrne r0, r0, #8
	strneh r0, [r1, #4]
_0202DBE0:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202DBE8
sub_0202DBE8: ; 0x0202DBE8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202DC4C
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0202DC38
	ldr r1, [r0, #4]
	bic r1, r1, #8
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	ldr r2, [r1, #0xc]
	cmp r2, #0
	beq _0202DC38
	mov r1, #3
	str r1, [r2, #0x1dc]
	mov r1, #0
	strb r1, [r2, #0x1e1]
	arm_func_end sub_0202DBE8
_0202DC38:
	ldr r3, [r0]
	ldr r1, [r4, #4]
	ldr r3, [r3, #0x38]
	mov r2, #0
	blx r3
_0202DC4C:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202DC54
sub_0202DC54: ; 0x0202DC54
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02012114
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202DC54

	arm_func_start sub_0202DC74
sub_0202DC74: ; 0x0202DC74
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r1, [r0, #8]
	cmpne r1, #0
	beq _0202DCC4
	ldr r1, [r0, #4]
	tst r1, #8
	bne _0202DCC4
	orr r1, r1, #8
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	ldr r2, [r1, #0xc]
	cmp r2, #0
	movne r1, #0
	strne r1, [r2, #0x1dc]
	strneb r1, [r2, #0x1e1]
	mov r1, #0
	str r1, [r0, #0x94]
	arm_func_end sub_0202DC74
_0202DCC4:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202DCCC
sub_0202DCCC: ; 0x0202DCCC
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202DD0C
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0202DD04
	ldr r0, [r0, #0xc]
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r3, pc}
	bl sub_02012AFC
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202DCCC
_0202DD04:
	mov r0, #2
	ldmia sp!, {r3, pc}
_0202DD0C:
	mov r0, #2
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202DD14
sub_0202DD14: ; 0x0202DD14
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r0, [r0, #8]
	ldrne r1, [r4, #4]
	cmpne r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	strne r1, [r0, #0x19c]
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202DD14

	arm_func_start sub_0202DD48
sub_0202DD48: ; 0x0202DD48
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r0, [r0, #8]
	ldr r1, [r4, #4]
	cmpne r0, #0
	ldrne r0, [r0, #0xc]
	mov r2, r1, lsl #0xc
	cmpne r0, #0
	beq _0202DD80
	mov r1, #0
	bl sub_02012808
	arm_func_end sub_0202DD48
_0202DD80:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202DD88
sub_0202DD88: ; 0x0202DD88
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r5, r0
	ldr r0, [r5]
	bl sub_0202BCD4
	movs r4, r0
	beq _0202DED8
	ldr r0, [r5, #8]
	ldr r1, [r4, #8]
	mov r0, r0, lsl #0xc
	cmp r1, #0
	beq _0202DDF8
	ldr r1, [r1, #0xc]
	cmp r1, #0
	beq _0202DDD8
	ldr r2, [r1, #0x20]
	ldr r1, [r1, #0x24]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	b _0202DDF0
	arm_func_end sub_0202DD88
_0202DDD8:
	mov r1, #0
	add r2, sp, #8
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
_0202DDF0:
	add r1, sp, #0x10
	b _0202DE14
_0202DDF8:
	mov r2, #0
	add r3, sp, #0
	add r1, sp, #0x10
	str r2, [r3]
	str r2, [r3, #4]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
_0202DE14:
	ldr r2, [r5, #4]
	ldr lr, [r1]
	mov r2, r2, asr #4
	mov ip, r2, lsl #1
	add r2, ip, #1
	mov r3, r2, lsl #1
	ldr r5, _0202DEE4 ; =FX_SinCosTable_
	mov r2, ip, lsl #1
	ldrsh r3, [r5, r3]
	ldrsh r2, [r5, r2]
	ldr r1, [r1, #4]
	smull ip, r5, r0, r3
	smull r3, r2, r0, r2
	mov ip, ip, lsr #0xc
	mov r3, r3, lsr #0xc
	orr ip, ip, r5, lsl #20
	orr r3, r3, r2, lsl #20
	add r5, lr, ip
	add r1, r1, r3
	cmp r0, #0
	str r5, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [r4, #8]
	bne _0202DE94
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202DED8
	mov r1, #0xf000
	mov r2, #0x1e
	bl sub_02012860
	b _0202DED8
_0202DE94:
	cmp r0, #0
	beq _0202DED8
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0202DEB4
	mov r1, #0xa000
	mov r2, #0x1e
	bl sub_02012860
_0202DEB4:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0202DED8
	add r1, sp, #0x18
	add r0, r0, #0xc
	mov r3, #0x1e
	ldmia r1, {r1, r2}
	bl sub_02011AB0
_0202DED8:
	mov r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202DEE4: .word FX_SinCosTable_

	arm_func_start sub_0202DEE8
sub_0202DEE8: ; 0x0202DEE8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r5, r0
	ldr r0, [r5]
	bl sub_0202BCD4
	movs r4, r0
	beq _0202E050
	ldr r0, [r5, #8]
	ldr r1, [r4, #8]
	mov r0, r0, lsl #0xc
	cmp r1, #0
	beq _0202DF58
	ldr r1, [r1, #0xc]
	cmp r1, #0
	beq _0202DF38
	ldr r2, [r1, #0x20]
	ldr r1, [r1, #0x24]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	b _0202DF50
	arm_func_end sub_0202DEE8
_0202DF38:
	mov r1, #0
	add r2, sp, #8
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
_0202DF50:
	add r1, sp, #0x10
	b _0202DF74
_0202DF58:
	mov r2, #0
	add r3, sp, #0
	add r1, sp, #0x10
	str r2, [r3]
	str r2, [r3, #4]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
_0202DF74:
	ldr r2, [r5, #4]
	ldr r6, [r1]
	mov r2, r2, asr #4
	mov lr, r2, lsl #1
	add r2, lr, #1
	mov r3, r2, lsl #1
	ldr ip, _0202E05C ; =FX_SinCosTable_
	mov r2, lr, lsl #1
	ldrsh r3, [ip, r3]
	ldrsh r2, [ip, r2]
	ldr r1, [r1, #4]
	smull lr, ip, r0, r3
	smull r3, r2, r0, r2
	mov lr, lr, lsr #0xc
	mov r3, r3, lsr #0xc
	orr lr, lr, ip, lsl #20
	orr r3, r3, r2, lsl #20
	add ip, r6, lr
	add r1, r1, r3
	str r1, [sp, #0x1c]
	cmp r0, #0
	str ip, [sp, #0x18]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	bne _0202E000
	ldr r3, [r4, #8]
	mov r0, r0, lsl #0x10
	cmp r3, #0
	mov r2, r0, lsr #0x10
	ldrne r0, [r3, #0xc]
	mov r1, r1, lsl #0xc
	cmpne r0, #0
	beq _0202E050
	bl sub_02012860
	b _0202E050
_0202E000:
	ldr r2, [r4, #8]
	mov r0, r0, lsl #0x10
	cmp r2, #0
	mov r5, r0, lsr #0x10
	mov r1, r1, lsl #0xc
	beq _0202E050
	ldr r0, [r2, #0xc]
	cmp r0, #0
	beq _0202E02C
	mov r2, r5
	bl sub_02012860
_0202E02C:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0202E050
	add r1, sp, #0x18
	mov r3, r5
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011AB0
_0202E050:
	mov r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0202E05C: .word FX_SinCosTable_

	arm_func_start sub_0202E060
sub_0202E060: ; 0x0202E060
	mov r0, #0
	bx lr
	arm_func_end sub_0202E060

	arm_func_start sub_0202E068
sub_0202E068: ; 0x0202E068
	mov r0, #0
	bx lr
	arm_func_end sub_0202E068

	arm_func_start sub_0202E070
sub_0202E070: ; 0x0202E070
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r1, [r0]
	mvn r0, #0
	mov r2, r1, asr #0x18
	and r3, r2, #0xff
	cmp r3, #1
	mov r2, #0
	beq _0202E0A0
	cmp r3, #2
	beq _0202E110
	b _0202E16C
	arm_func_end sub_0202E070
_0202E0A0:
	ldr r3, _0202E1DC ; =MAIN_BSS_0210CA5C
	ldr lr, [r3]
	cmp lr, #0
	beq _0202E16C
	ldr r5, [lr, #4]
	mov r4, r2
	cmp r5, #0
	ble _0202E16C
	mov ip, r2
_0202E0C4:
	cmp r5, r4
	ldrgt r3, [lr, #8]
	movle r6, ip
	ldrgt r6, [r3, r4, lsl #2]
	cmp r6, #0
	beq _0202E100
	ldr r3, [r6, #0x58]
	cmp r1, r3
	bne _0202E100
	ldr r2, [r6, #0xe8]
	mov r0, #1
	mov r2, r2, lsl #0x10
	strb r0, [r6, #0x20]
	mov r2, r2, lsr #0x10
	b _0202E16C
_0202E100:
	add r4, r4, #1
	cmp r4, r5
	blt _0202E0C4
	b _0202E16C
_0202E110:
	ldr r3, _0202E1E0 ; =MAIN_BSS_0210CA50
	ldr r5, [r3]
	cmp r5, #0
	beq _0202E16C
	ldr lr, [r5, #4]
	mov r4, r2
	cmp lr, #0
	ble _0202E16C
	mov ip, r2
_0202E134:
	cmp lr, r4
	ldrgt r3, [r5, #8]
	movle r6, ip
	ldrgt r6, [r3, r4, lsl #2]
	cmp r6, #0
	beq _0202E160
	ldr r3, [r6, #0x58]
	cmp r1, r3
	ldreq r0, [r6, #0xe8]
	ldreqh r2, [r6, #0xec]
	beq _0202E16C
_0202E160:
	add r4, r4, #1
	cmp r4, lr
	blt _0202E134
_0202E16C:
	mvn r3, #0
	cmp r0, r3
	beq _0202E1C8
	cmp r0, #0
	ldr r0, _0202E1E4 ; =MAIN_BSS_0210CA4C
	ldreq r3, _0202E1E8 ; =0x00001E16
	moveq r4, #1
	ldr r0, [r0]
	movne r4, #0
	movne r3, #0xe
	cmp r0, #0
	beq _0202E1AC
	str r4, [sp]
	mov ip, #1
	str ip, [sp, #4]
	bl ov0_0213A360
_0202E1AC:
	cmp r4, #0
	bne _0202E1D0
	bl sub_020233A4
	cmp r0, #0
	beq _0202E1D0
	bl sub_02022B20
	b _0202E1D0
_0202E1C8:
	ldr r0, _0202E1EC ; =s_syscall_actor_party_add_error_0208d3f8
	bl LogError
_0202E1D0:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0202E1DC: .word MAIN_BSS_0210CA5C
_0202E1E0: .word MAIN_BSS_0210CA50
_0202E1E4: .word MAIN_BSS_0210CA4C
_0202E1E8: .word 0x00001E16
_0202E1EC: .word s_syscall_actor_party_add_error_0208d3f8

	arm_func_start LogError
LogError: ; 0x0202E1F0
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	ldr r0, [sp, #8]
	add r1, sp, #0xc
	bl thunk_FUN_020442cc
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end LogError

	arm_func_start sub_0202E210
sub_0202E210: ; 0x0202E210
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r0, #1
	bl sub_0202BCD4
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
	ldr r0, [r4]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0202E2C4
_0202E244: ; jump table
	b _0202E264 ; case 0
	b _0202E270 ; case 1
	b _0202E27C ; case 2
	b _0202E288 ; case 3
	b _0202E294 ; case 4
	b _0202E2A0 ; case 5
	b _0202E2AC ; case 6
	b _0202E2B8 ; case 7
	arm_func_end sub_0202E210
_0202E264:
	ldr r1, _0202E308 ; =0x02032003
	mov r2, #0x63
	b _0202E2CC
_0202E270:
	ldr r1, _0202E30C ; =sub_02032004
	mov r2, #0xbc
	b _0202E2CC
_0202E27C:
	ldr r1, _0202E310 ; =0x02032005
	mov r2, #0xaa
	b _0202E2CC
_0202E288:
	ldr r1, _0202E314 ; =0x02032006
	mov r2, #0xb6
	b _0202E2CC
_0202E294:
	ldr r1, _0202E318 ; =0x02032007
	mov r2, #0x5c
	b _0202E2CC
_0202E2A0:
	ldr r1, _0202E31C ; =sub_02032008
	mov r2, #0xaf
	b _0202E2CC
_0202E2AC:
	ldr r1, _0202E320 ; =0x02032009
	mov r2, #0xb7
	b _0202E2CC
_0202E2B8:
	ldr r1, _0202E324 ; =0x0203200A
	mov r2, #0xd7
	b _0202E2CC
_0202E2C4:
	ldr r1, _0202E328 ; =0x0203200B
	mov r2, #0x1f
_0202E2CC:
	ldr r0, _0202E32C ; =MAIN_BSS_0210CA4C
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #8
	mvneq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r3, #0
	str r3, [sp]
	mov ip, #1
	mov r3, #0xe
	str ip, [sp, #4]
	bl ov0_0213A360
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202E308: .word 0x02032003
_0202E30C: .word 0x02032004
_0202E310: .word 0x02032005
_0202E314: .word 0x02032006
_0202E318: .word 0x02032007
_0202E31C: .word 0x02032008
_0202E320: .word 0x02032009
_0202E324: .word 0x0203200A
_0202E328: .word 0x0203200B
_0202E32C: .word MAIN_BSS_0210CA4C

	arm_func_start sub_0202E330
sub_0202E330: ; 0x0202E330
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r1, _0202E418 ; =MAIN_BSS_0210CA4C
	ldr r0, [r0, #4]
	ldr sb, [r1]
	str r0, [sp]
	cmp sb, #0
	beq _0202E404
	ldr r0, [sb, #4]
	mov r8, #0
	cmp r0, #0
	ble _0202E3D8
	ldr r6, _0202E41C ; =s_0208d418
	ldr r5, _0202E420 ; =s_NPC_d_0208d428
	ldr r4, _0202E424 ; =s_Id_x_0208d430
	ldr fp, _0202E428 ; =s_partnertype_d_0208d438
	mov r7, r8
	arm_func_end sub_0202E330
_0202E370:
	cmp r0, r8
	ldrgt r0, [sb, #8]
	movle sl, r7
	ldrgt sl, [r0, r8, lsl #2]
	cmp sl, #0
	beq _0202E3C8
	mov r0, r6
	bl LogInfo
	mov r0, r5
	mov r1, r8
	bl LogInfo
	ldr r1, [sl, #0x58]
	mov r0, r4
	bl LogInfo
	ldr r1, [sl, #0x1fc]
	mov r0, fp
	bl LogInfo
	ldr r1, [sl, #0x1e8]
	ldr r0, _0202E42C ; =s_linenumber_d_0208d448
	bl LogInfo
	mov r0, r6
	bl LogInfo
_0202E3C8:
	ldr r0, [sb, #4]
	add r8, r8, #1
	cmp r8, r0
	blt _0202E370
_0202E3D8:
	ldr r1, [sp]
	mov r0, sb
	bl ov0_0213A050
	ldr r0, _0202E430 ; =MAIN_BSS_020B26A0
	ldr r1, [sp]
	bl sub_02015E54
	ldr r0, _0202E434 ; =s_party_leave_x_0208d458
	ldr r1, [sp]
	bl LogInfo
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0202E404:
	ldr r0, _0202E438 ; =s_error_actor_party_add_id_x_0208d46c
	ldr r1, [sp]
	bl LogInfo
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0202E418: .word MAIN_BSS_0210CA4C
_0202E41C: .word s_0208d418
_0202E420: .word s_NPC_d_0208d428
_0202E424: .word s_Id_x_0208d430
_0202E428: .word s_partnertype_d_0208d438
_0202E42C: .word s_linenumber_d_0208d448
_0202E430: .word MAIN_BSS_020B26A0
_0202E434: .word s_party_leave_x_0208d458
_0202E438: .word s_error_actor_party_add_id_x_0208d46c

	arm_func_start sub_0202E43C
sub_0202E43C: ; 0x0202E43C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r1, _0202E524 ; =MAIN_BSS_0210CA4C
	ldr r0, [r0, #4]
	ldr sb, [r1]
	str r0, [sp]
	cmp sb, #0
	beq _0202E510
	ldr r0, [sb, #4]
	mov r8, #0
	cmp r0, #0
	ble _0202E4E4
	ldr r6, _0202E528 ; =s_0208d418
	ldr r5, _0202E52C ; =s_NPC_d_0208d428
	ldr r4, _0202E530 ; =s_Id_x_0208d430
	ldr fp, _0202E534 ; =s_partnertype_d_0208d438
	mov r7, r8
	arm_func_end sub_0202E43C
_0202E47C:
	cmp r0, r8
	ldrgt r0, [sb, #8]
	movle sl, r7
	ldrgt sl, [r0, r8, lsl #2]
	cmp sl, #0
	beq _0202E4D4
	mov r0, r6
	bl LogInfo
	mov r0, r5
	mov r1, r8
	bl LogInfo
	ldr r1, [sl, #0x58]
	mov r0, r4
	bl LogInfo
	ldr r1, [sl, #0x1fc]
	mov r0, fp
	bl LogInfo
	ldr r1, [sl, #0x1e8]
	ldr r0, _0202E538 ; =s_linenumber_d_0208d448
	bl LogInfo
	mov r0, r6
	bl LogInfo
_0202E4D4:
	ldr r0, [sb, #4]
	add r8, r8, #1
	cmp r8, r0
	blt _0202E47C
_0202E4E4:
	ldr r1, [sp]
	mov r0, sb
	bl ov0_0213A084
	ldr r0, _0202E53C ; =MAIN_BSS_020B26A0
	ldr r1, [sp]
	bl sub_02015E54
	ldr r0, _0202E540 ; =s_party_leave_x_0208d458
	ldr r1, [sp]
	bl LogInfo
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0202E510:
	ldr r0, _0202E544 ; =s_error_actor_party_add_id_x_0208d46c
	ldr r1, [sp]
	bl LogInfo
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0202E524: .word MAIN_BSS_0210CA4C
_0202E528: .word s_0208d418
_0202E52C: .word s_NPC_d_0208d428
_0202E530: .word s_Id_x_0208d430
_0202E534: .word s_partnertype_d_0208d438
_0202E538: .word s_linenumber_d_0208d448
_0202E53C: .word MAIN_BSS_020B26A0
_0202E540: .word s_party_leave_x_0208d458
_0202E544: .word s_error_actor_party_add_id_x_0208d46c

	arm_func_start sub_0202E548
sub_0202E548: ; 0x0202E548
	mov r0, #0
	bx lr
	arm_func_end sub_0202E548

	arm_func_start sub_0202E550
sub_0202E550: ; 0x0202E550
	mov r0, #0
	bx lr
	arm_func_end sub_0202E550

	arm_func_start sub_0202E558
sub_0202E558: ; 0x0202E558
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202E60C
	ldr r1, _0202E618 ; =_0208F304
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4b8]
	ldr r1, [r1]
	cmp r1, #0
	beq _0202E5A8
	ldr r2, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	rsb r2, r2, #0
	rsb r1, r1, #0
	str r2, [sp]
	str r1, [sp, #4]
	b _0202E5F4
	arm_func_end sub_0202E558
_0202E5A8:
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _0202E5C8
	ldr r1, [r2, #0xc]
	cmp r1, #0
	ldrne r1, [r1, #0x20]
	moveq r1, #0
	b _0202E5CC
_0202E5C8:
	mov r1, #0
_0202E5CC:
	str r1, [sp]
	cmp r2, #0
	beq _0202E5EC
	ldr r1, [r2, #0xc]
	cmp r1, #0
	ldrne r1, [r1, #0x24]
	moveq r1, #0
	b _0202E5F0
_0202E5EC:
	mov r1, #0
_0202E5F0:
	str r1, [sp, #4]
_0202E5F4:
	ldr r2, [r0, #4]
	add r1, sp, #0
	orr r2, r2, #0x100
	str r2, [r0, #4]
	ldmia r1, {r1, r2}
	bl sub_0203D404
_0202E60C:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202E618: .word MAIN_BSS_0208F304

	arm_func_start sub_0202E61C
sub_0202E61C: ; 0x0202E61C
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202E644
	ldr r0, [r0, #0xc8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202E61C
_0202E644:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202E64C
sub_0202E64C: ; 0x0202E64C
	stmdb sp!, {r3, r4, r5, lr}
	ldmia r0, {r4, r5}
	mov r0, r4
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202E674
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0x30]
	blx r2
	arm_func_end sub_0202E64C
_0202E674:
	cmp r4, #0
	ldreq r0, _0202E688 ; =MAIN_BSS_020B26A0
	streqh r5, [r0, #0x26]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202E688: .word MAIN_BSS_020B26A0

	arm_func_start sub_0202E68C
sub_0202E68C: ; 0x0202E68C
	str r1, [r0, #0x14]
	bx lr
	arm_func_end sub_0202E68C

	arm_func_start sub_0202E694
sub_0202E694: ; 0x0202E694
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r1, [r0, #4]
	orrne r1, r1, #0x80
	strne r1, [r0, #4]
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202E694

	arm_func_start sub_0202E6B8
sub_0202E6B8: ; 0x0202E6B8
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r1, [r0, #4]
	bicne r1, r1, #0x80
	strne r1, [r0, #4]
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202E6B8

	arm_func_start sub_0202E6DC
sub_0202E6DC: ; 0x0202E6DC
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r0, [r0, #8]
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	cmpne r0, #0
	ldrne r0, [r0, #0xc]
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	str r2, [sp]
	str r1, [sp, #4]
	cmpne r0, #0
	beq _0202E734
	add r1, sp, #0
	add r0, r0, #0xc
	mov r3, #0x800
	ldmia r1, {r1, r2}
	bl sub_02011C20
	arm_func_end sub_0202E6DC
_0202E734:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202E740
sub_0202E740: ; 0x0202E740
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r0
	ldr r0, [r5]
	bl sub_0202BCD4
	ldmib r5, {r4, lr}
	cmp r0, #0
	ldrne r0, [r0, #8]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	ldr r3, [r5, #0xc]
	ldr ip, [r5, #0x10]
	cmpne r0, #0
	ldrne r0, [r0, #0xc]
	mov r4, r4, lsl #0xc
	mov lr, lr, lsl #0xc
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	str r4, [sp, #0x10]
	str lr, [sp, #0x14]
	mov r3, r3, lsl #0xc
	mov ip, ip, lsl #0xc
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	cmpne r0, #0
	beq _0202E7CC
	str ip, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	add r1, sp, #0x10
	str r2, [sp, #0xc]
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011CB4
	arm_func_end sub_0202E740
_0202E7CC:
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202E7D8
sub_0202E7D8: ; 0x0202E7D8
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202E814
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0202E80C
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrne r0, [r0, #0xa4]
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202E7D8
_0202E80C:
	mov r0, #0
	ldmia sp!, {r3, pc}
_0202E814:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202E81C
sub_0202E81C: ; 0x0202E81C
	stmdb sp!, {r4, lr}
	ldr r4, [r0]
	mov r0, r4
	bl sub_0202BCD4
	cmp r0, #0
	ldrneb r0, [r0, #0x20]
	ldmneia sp!, {r4, pc}
	mov r0, r4, asr #0x18
	and r1, r0, #0xff
	cmp r1, #1
	ldr r0, _0202E9B4 ; =MAIN_BSS_020B26A0
	beq _0202E860
	cmp r1, #2
	beq _0202E8D0
	cmp r1, #3
	beq _0202E940
	b _0202E9AC
	arm_func_end sub_0202E81C
_0202E860:
	ldr r1, _0202E9B8 ; =0x00000FFF
	ldr r2, _0202E9BC ; =0x000001B9
	and ip, r1, r4, asr #12
	cmp ip, r2
	and r3, r4, r1
	movlt r1, #1
	movge r1, #0
	cmp r1, #0
	beq _0202E8BC
	cmp r3, #0x30
	bge _0202E8BC
	mov r1, r3, asr #2
	add r1, r3, r1, lsr #29
	add r2, r0, ip, lsl #4
	mov r0, r1, asr #3
	add r0, r2, r0, lsl #2
	add r0, r0, #0x2000
	mov r1, r3, lsl #0x1d
	ldr r2, [r0, #0x988]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #0xf
	b _0202E8C0
_0202E8BC:
	mov r0, #0
_0202E8C0:
	cmp r0, #0
	ble _0202E9AC
	sub r0, r0, #1
	ldmia sp!, {r4, pc}
_0202E8D0:
	ldr r1, _0202E9B8 ; =0x00000FFF
	ldr r2, _0202E9BC ; =0x000001B9
	and ip, r1, r4, asr #12
	cmp ip, r2
	and r3, r4, r1
	movlt r1, #1
	movge r1, #0
	cmp r1, #0
	beq _0202E92C
	cmp r3, #0x30
	bge _0202E92C
	mov r1, r3, asr #2
	add r1, r3, r1, lsr #29
	add r2, r0, ip, lsl #4
	mov r0, r1, asr #3
	add r0, r2, r0, lsl #2
	add r0, r0, #0x4000
	mov r1, r3, lsl #0x1d
	ldr r2, [r0, #0x518]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #0xf
	b _0202E930
_0202E92C:
	mov r0, #0
_0202E930:
	cmp r0, #0
	ble _0202E9AC
	sub r0, r0, #1
	ldmia sp!, {r4, pc}
_0202E940:
	ldr r1, _0202E9B8 ; =0x00000FFF
	ldr r2, _0202E9BC ; =0x000001B9
	and ip, r1, r4, asr #12
	cmp ip, r2
	and r3, r4, r1
	movlt r1, #1
	movge r1, #0
	cmp r1, #0
	beq _0202E99C
	cmp r3, #0x30
	bge _0202E99C
	mov r1, r3, asr #2
	add r1, r3, r1, lsr #29
	add r2, r0, ip, lsl #4
	mov r0, r1, asr #3
	add r0, r2, r0, lsl #2
	add r0, r0, #0x6000
	mov r1, r3, lsl #0x1d
	ldr r2, [r0, #0xa8]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #0xf
	b _0202E9A0
_0202E99C:
	mov r0, #0
_0202E9A0:
	cmp r0, #0
	subgt r0, r0, #1
	ldmgtia sp!, {r4, pc}
_0202E9AC:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202E9B4: .word MAIN_BSS_020B26A0
_0202E9B8: .word 0x00000FFF
_0202E9BC: .word 0x000001B9

	arm_func_start sub_0202E9C0
sub_0202E9C0: ; 0x0202E9C0
	stmdb sp!, {r4, lr}
	ldr r4, [r0]
	mov r0, r4
	bl sub_0202BCFC
	cmp r0, #0
	ldrneb r0, [r0, #0x20]
	ldmneia sp!, {r4, pc}
	ldr r0, _0202EA50 ; =0x00000FFF
	ldr r1, _0202EA54 ; =0x000001B9
	and r3, r0, r4, asr #12
	cmp r3, r1
	and r2, r4, r0
	movlt r0, #1
	movge r0, #0
	ldr r1, _0202EA58 ; =MAIN_BSS_020B26A0
	cmp r0, #0
	beq _0202EA3C
	cmp r2, #0x30
	bge _0202EA3C
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	add r1, r1, r3, lsl #4
	mov r0, r0, asr #3
	add r0, r1, r0, lsl #2
	add r0, r0, #0x2000
	mov r1, r2, lsl #0x1d
	ldr r2, [r0, #0x988]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #0xf
	b _0202EA40
	arm_func_end sub_0202E9C0
_0202EA3C:
	mov r0, #0
_0202EA40:
	cmp r0, #0
	subgt r0, r0, #1
	movle r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202EA50: .word 0x00000FFF
_0202EA54: .word 0x000001B9
_0202EA58: .word MAIN_BSS_020B26A0

	arm_func_start sub_0202EA5C
sub_0202EA5C: ; 0x0202EA5C
	stmdb sp!, {r3, r4, r5, lr}
	ldmia r0, {r4, r5}
	mov r0, r4
	bl sub_0202BCD4
	cmp r0, #0
	strneb r5, [r0, #0x20]
	mov r0, r4, asr #0x18
	and r1, r0, #0xff
	cmp r1, #1
	ldr r0, _0202EBFC ; =MAIN_BSS_020B26A0
	beq _0202EA9C
	cmp r1, #2
	beq _0202EB10
	cmp r1, #3
	beq _0202EB84
	b _0202EBF4
	arm_func_end sub_0202EA5C
_0202EA9C:
	ldr r2, _0202EC00 ; =0x00000FFF
	ldr r3, _0202EC04 ; =0x000001B9
	and r1, r2, r4, asr #12
	cmp r1, r3
	and r4, r4, r2
	movlt r2, #1
	movge r2, #0
	cmp r2, #0
	beq _0202EBF4
	cmp r4, #0x30
	bge _0202EBF4
	mov r2, r4, asr #2
	add r3, r0, #0x188
	mov ip, r4, lsl #0x1d
	add r0, r4, r2, lsr #29
	add r4, r3, #0x2800
	add r2, r5, #1
	mov ip, ip, lsr #0x1b
	mov r3, #0xf
	add r4, r4, r1, lsl #4
	mov r5, r0, asr #3
	mvn r1, r3, lsl ip
	ldr r3, [r4, r5, lsl #2]
	and r2, r2, #0xff
	and r0, r2, #0xf
	and r1, r3, r1
	orr r0, r1, r0, lsl ip
	str r0, [r4, r5, lsl #2]
	b _0202EBF4
_0202EB10:
	ldr r2, _0202EC00 ; =0x00000FFF
	ldr r3, _0202EC04 ; =0x000001B9
	and r1, r2, r4, asr #12
	cmp r1, r3
	and r4, r4, r2
	movlt r2, #1
	movge r2, #0
	cmp r2, #0
	beq _0202EBF4
	cmp r4, #0x30
	bge _0202EBF4
	mov r2, r4, asr #2
	add r3, r0, #0x118
	mov ip, r4, lsl #0x1d
	add r0, r4, r2, lsr #29
	add r4, r3, #0x4400
	add r2, r5, #1
	mov ip, ip, lsr #0x1b
	mov r3, #0xf
	add r4, r4, r1, lsl #4
	mov r5, r0, asr #3
	mvn r1, r3, lsl ip
	ldr r3, [r4, r5, lsl #2]
	and r2, r2, #0xff
	and r0, r2, #0xf
	and r1, r3, r1
	orr r0, r1, r0, lsl ip
	str r0, [r4, r5, lsl #2]
	b _0202EBF4
_0202EB84:
	ldr r2, _0202EC00 ; =0x00000FFF
	ldr r3, _0202EC04 ; =0x000001B9
	and r1, r2, r4, asr #12
	cmp r1, r3
	and r4, r4, r2
	movlt r2, #1
	movge r2, #0
	cmp r2, #0
	beq _0202EBF4
	cmp r4, #0x30
	bge _0202EBF4
	mov r2, r4, asr #2
	add r3, r0, #0xa8
	mov ip, r4, lsl #0x1d
	add r0, r4, r2, lsr #29
	add r4, r3, #0x6000
	add r2, r5, #1
	mov ip, ip, lsr #0x1b
	mov r3, #0xf
	add r4, r4, r1, lsl #4
	mov r5, r0, asr #3
	mvn r1, r3, lsl ip
	ldr r3, [r4, r5, lsl #2]
	and r2, r2, #0xff
	and r0, r2, #0xf
	and r1, r3, r1
	orr r0, r1, r0, lsl ip
	str r0, [r4, r5, lsl #2]
_0202EBF4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202EBFC: .word MAIN_BSS_020B26A0
_0202EC00: .word 0x00000FFF
_0202EC04: .word 0x000001B9

	arm_func_start sub_0202EC08
sub_0202EC08: ; 0x0202EC08
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202ED04
	ldr r1, [r0, #0x58]
	ldr r3, _0202ED0C ; =0x00007FFF
	mov r1, r1, asr #0x18
	and r1, r1, #0xff
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0202EC88
_0202EC38: ; jump table
	b _0202EC54 ; case 0
	b _0202EC5C ; case 1
	b _0202EC64 ; case 2
	b _0202EC6C ; case 3
	b _0202EC74 ; case 4
	b _0202EC7C ; case 5
	b _0202EC84 ; case 6
	arm_func_end sub_0202EC08
_0202EC54:
	sub r3, r3, #0x1f
	b _0202EC88
_0202EC5C:
	mov r3, #0x1f
	b _0202EC88
_0202EC64:
	mov r3, #0x3f0
	b _0202EC88
_0202EC6C:
	mov r3, #0x3f0
	b _0202EC88
_0202EC74:
	sub r3, r3, #0x1f
	b _0202EC88
_0202EC7C:
	sub r3, r3, #0x1f
	b _0202EC88
_0202EC84:
	sub r3, r3, #0x1f
_0202EC88:
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0202ED04
	ldr r2, [r1, #0xc]
	cmp r2, #0
	movne r1, #0
	strne r1, [r2, #0x1b0]
	ldr r1, [r0, #8]
	ldr r2, [r1, #0xc]
	cmp r2, #0
	beq _0202ECC4
	add r1, r2, #0x100
	strh r3, [r1, #0xac]
	mov r1, #0
	str r1, [r2, #0x1b0]
_0202ECC4:
	ldr r1, [r0, #8]
	ldr r2, [r1, #0xc]
	cmp r2, #0
	movne r1, #2
	strneb r1, [r2, #0x1c4]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0xc]
	cmp r2, #0
	beq _0202ED04
	ldr r1, [r2, #0x1a8]
	mvn r0, #0
	orr r1, r1, #1
	str r1, [r2, #0x1a8]
	str r0, [r2, #0x1b4]
	mov r0, #0
	str r0, [r2, #0x1b0]
_0202ED04:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202ED0C: .word 0x00007FFF

	arm_func_start sub_0202ED10
sub_0202ED10: ; 0x0202ED10
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202EDC0
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	ldr r3, [r4, #0xc]
	orr r1, r2, r1, lsl #5
	orr r1, r1, r3, lsl #10
	ldr r2, [r0, #8]
	mov r1, r1, lsl #0x10
	cmp r2, #0
	mov ip, r1, lsr #0x10
	ldr r1, [r4, #0x10]
	beq _0202EDC0
	ldr r3, [r2, #0xc]
	cmp r3, #0
	movne r2, #0
	strne r2, [r3, #0x1b0]
	ldr r2, [r0, #8]
	ldr r3, [r2, #0xc]
	cmp r3, #0
	beq _0202ED84
	add r2, r3, #0x100
	strh ip, [r2, #0xac]
	mov r2, #0
	str r2, [r3, #0x1b0]
	arm_func_end sub_0202ED10
_0202ED84:
	ldr r2, [r0, #8]
	ldr r3, [r2, #0xc]
	cmp r3, #0
	movne r2, #2
	strneb r2, [r3, #0x1c4]
	ldr r0, [r0, #8]
	ldr r3, [r0, #0xc]
	cmp r3, #0
	beq _0202EDC0
	ldr r2, [r3, #0x1a8]
	mov r0, #0
	orr r2, r2, #1
	str r2, [r3, #0x1a8]
	str r1, [r3, #0x1b4]
	str r0, [r3, #0x1b0]
_0202EDC0:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202EDC8
sub_0202EDC8: ; 0x0202EDC8
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r0, [r0, #8]
	cmpne r0, #0
	ldrne r1, [r0, #0xc]
	cmpne r1, #0
	ldrne r0, [r1, #0x1a8]
	bicne r0, r0, #1
	strne r0, [r1, #0x1a8]
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202EDC8

	arm_func_start sub_0202EDFC
sub_0202EDFC: ; 0x0202EDFC
	stmdb sp!, {r3, lr}
	ldr r0, _0202EE1C ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _0202EE14
	bl ov0_0212451C
	arm_func_end sub_0202EDFC
_0202EE14:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202EE1C: .word MAIN_BSS_0210CA40

	arm_func_start sub_0202EE20
sub_0202EE20: ; 0x0202EE20
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r1, [r0, #4]
	orrne r1, r1, #1
	strne r1, [r0, #4]
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202EE20

	arm_func_start sub_0202EE44
sub_0202EE44: ; 0x0202EE44
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r1, [r0, #4]
	bicne r1, r1, #1
	strne r1, [r0, #4]
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202EE44

	arm_func_start sub_0202EE68
sub_0202EE68: ; 0x0202EE68
	stmdb sp!, {r3, r4, r5, lr}
	ldmia r0, {r0, r4, r5}
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r0, [r0, #8]
	cmpne r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202EE98
	mov r1, r5
	and r2, r4, #0xff
	bl sub_020129F4
	arm_func_end sub_0202EE68
_0202EE98:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202EEA0
sub_0202EEA0: ; 0x0202EEA0
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #4]
	ldr r0, [r0]
	and r5, r2, #0xff
	and r6, r1, #0xff
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r0, [r0, #8]
	cmpne r0, #0
	ldrne r1, [r0, #0xc]
	cmpne r1, #0
	beq _0202EEF8
	ldr r0, [r1, #0x1a8]
	cmp r4, #0
	orr r0, r0, #4
	str r0, [r1, #0x1a8]
	strb r5, [r1, #0x1d4]
	strb r6, [r1, #0x1d5]
	mvnle r4, #0
	str r4, [r1, #0x1cc]
	arm_func_end sub_0202EEA0
_0202EEF8:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0202EF00
sub_0202EF00: ; 0x0202EF00
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r0, [r0, #8]
	cmpne r0, #0
	ldrne r2, [r0, #0xc]
	cmpne r2, #0
	beq _0202EF40
	ldr r1, [r2, #0x1a8]
	mov r0, #0
	bic r1, r1, #4
	str r1, [r2, #0x1a8]
	strb r0, [r2, #0x1d4]
	strb r0, [r2, #0x1d5]
	str r0, [r2, #0x1cc]
	arm_func_end sub_0202EF00
_0202EF40:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202EF48
sub_0202EF48: ; 0x0202EF48
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r1, [r0, #4]
	orrne r1, r1, #0x100
	strne r1, [r0, #4]
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202EF48

	arm_func_start sub_0202EF6C
sub_0202EF6C: ; 0x0202EF6C
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r1, [r0, #4]
	bicne r1, r1, #0x100
	strne r1, [r0, #4]
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202EF6C

	arm_func_start sub_0202EF90
sub_0202EF90: ; 0x0202EF90
	stmdb sp!, {r3, r4, r5, lr}
	ldmia r0, {r0, r4, r5}
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r0, [r0, #8]
	cmpne r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202EFC4
	mov r2, r4, lsl #0x10
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl sub_02012AA8
	arm_func_end sub_0202EF90
_0202EFC4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202EFCC
sub_0202EFCC: ; 0x0202EFCC
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	ldr r3, [r0, #0xc]
	orr r1, r2, r1, lsl #5
	orr r1, r1, r3, lsl #10
	ldr r2, [r0, #0x10]
	ldr r6, [r0, #0x14]
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r4, r1, lsr #0x10
	and r5, r2, #0xff
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r0, [r0, #8]
	cmpne r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202F028
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl sub_0203EEA8
	arm_func_end sub_0202EFCC
_0202F028:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0202F030
sub_0202F030: ; 0x0202F030
	stmdb sp!, {r4, lr}
	ldr r4, [r0, #4]
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r0, [r0, #8]
	cmpne r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202F060
	mov r1, r4
	bl sub_0203EEEC
	arm_func_end sub_0202F030
_0202F060:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202F068
sub_0202F068: ; 0x0202F068
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	movne r1, #0
	strne r1, [r0, #0x90]
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202F068

	arm_func_start sub_0202F088
sub_0202F088: ; 0x0202F088
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	movne r1, #1
	strne r1, [r0, #0x90]
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202F088

	arm_func_start sub_0202F0A8
sub_0202F0A8: ; 0x0202F0A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202F0DC
	ldr r3, [r4, #0xc]
	ldr r2, [r4, #0x10]
	ldmib r4, {r1, ip}
	strb r1, [r0, #0xbc]
	strb ip, [r0, #0xbd]
	strb r3, [r0, #0xbe]
	strb r2, [r0, #0xbf]
	arm_func_end sub_0202F0A8
_0202F0DC:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202F0E4
sub_0202F0E4: ; 0x0202F0E4
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	ldr r1, [r0, #0x58]
	mov r1, r1, asr #0x18
	and r1, r1, #0xff
	cmp r1, #6
	bne _0202F130
	ldr r1, _0202F138 ; =_0208F304
	ldr r0, [r0, #0x200]
	ldr r2, [r1]
	mov r1, r0, lsl #0x10
	add r0, r2, #0x1000
	ldr r0, [r0, #0x434]
	mov r1, r1, lsr #0x10
	bl sub_020107A8
	cmp r0, #0
	ldrneb r0, [r0, #6]
	ldmneia sp!, {r3, pc}
	arm_func_end sub_0202F0E4
_0202F130:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202F138: .word MAIN_BSS_0208F304

	arm_func_start sub_0202F13C
sub_0202F13C: ; 0x0202F13C
	stmdb sp!, {r3, lr}
	ldr r0, _0202F170 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x43c]
	bl sub_02010868
	ldr r0, _0202F170 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x444]
	bl sub_02010D04
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202F170: .word MAIN_BSS_0208F304
	arm_func_end sub_0202F13C

	arm_func_start sub_0202F174
sub_0202F174: ; 0x0202F174
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r0, _0202F1A8 ; =MAIN_BSS_020B26A0
	cmp r1, #0
	addeq r0, r0, #0x8000
	moveq r1, #0
	streqb r1, [r0, #0xb44]
	beq _0202F1A0
	add r0, r0, #0x344
	add r0, r0, #0x8800
	bl strcpy
	arm_func_end sub_0202F174
_0202F1A0:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202F1A8: .word MAIN_BSS_020B26A0

	arm_func_start sub_0202F1AC
sub_0202F1AC: ; 0x0202F1AC
	ldr r1, _0202F1BC ; =MAIN_BSS_020BA6A0
	mov r0, #0
	strb r0, [r1, #0xb44]
	bx lr
	.align 2, 0
_0202F1BC: .word MAIN_BSS_020BA6A0
	arm_func_end sub_0202F1AC

	arm_func_start sub_0202F1C0
sub_0202F1C0: ; 0x0202F1C0
	ldr r0, _0202F200 ; =_0208F304
	ldr r1, _0202F204 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	ldr r2, [r1]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x444]
	cmp r2, #0
	cmpne r1, #0
	beq _0202F1F8
	mov r0, #1
	strb r0, [r1, #0xc]
	ldr r0, [r2, #0xd0]
	orr r0, r0, #1
	str r0, [r2, #0xd0]
	arm_func_end sub_0202F1C0
_0202F1F8:
	mov r0, #0
	bx lr
	.align 2, 0
_0202F200: .word MAIN_BSS_0208F304
_0202F204: .word MAIN_BSS_0210CA40

	arm_func_start sub_0202F208
sub_0202F208: ; 0x0202F208
	stmdb sp!, {r3, lr}
	ldr r1, _0202F238 ; =MAIN_BSS_0210CA40
	mov r3, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0202F230
	mvn r2, #0
	ldr r1, [r3]
	mov r3, r2
	bl ov0_02122FEC
	arm_func_end sub_0202F208
_0202F230:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202F238: .word MAIN_BSS_0210CA40

	arm_func_start sub_0202F23C
sub_0202F23C: ; 0x0202F23C
	stmdb sp!, {r3, lr}
	ldr r1, _0202F264 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x43c]
	and r1, r1, #0xff
	bl sub_02010AB0
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202F264: .word MAIN_BSS_0208F304
	arm_func_end sub_0202F23C

	arm_func_start sub_0202F268
sub_0202F268: ; 0x0202F268
	stmdb sp!, {r3, lr}
	ldr r1, _0202F290 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x43c]
	and r1, r1, #0xff
	bl sub_02010A70
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202F290: .word MAIN_BSS_0208F304
	arm_func_end sub_0202F268

	arm_func_start sub_0202F294
sub_0202F294: ; 0x0202F294
	mov r0, #0
	bx lr
	arm_func_end sub_0202F294

	arm_func_start sub_0202F29C
sub_0202F29C: ; 0x0202F29C
	mov r0, #0
	bx lr
	arm_func_end sub_0202F29C

	arm_func_start sub_0202F2A4
sub_0202F2A4: ; 0x0202F2A4
	mov r0, #0
	bx lr
	arm_func_end sub_0202F2A4

	arm_func_start sub_0202F2AC
sub_0202F2AC: ; 0x0202F2AC
	mov r0, #0
	bx lr
	arm_func_end sub_0202F2AC

	arm_func_start sub_0202F2B4
sub_0202F2B4: ; 0x0202F2B4
	ldr r0, _0202F2D4 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x444]
	cmp r0, #0
	ldrne r0, [r0, #8]
	moveq r0, #0
	bx lr
	.align 2, 0
_0202F2D4: .word MAIN_BSS_0208F304
	arm_func_end sub_0202F2B4

	arm_func_start sub_0202F2D8
sub_0202F2D8: ; 0x0202F2D8
	stmdb sp!, {r3, lr}
	ldr r0, _0202F2FC ; =_0208F304
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x43c]
	bl sub_02010AD8
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202F2FC: .word MAIN_BSS_0208F304
	arm_func_end sub_0202F2D8

	arm_func_start sub_0202F300
sub_0202F300: ; 0x0202F300
	ldr r0, _0202F340 ; =_0208F304
	ldr r1, _0202F344 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	ldr r2, [r1]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x444]
	cmp r2, #0
	cmpne r1, #0
	beq _0202F338
	mov r0, #1
	strb r0, [r1, #0xc]
	ldr r0, [r2, #0xd0]
	orr r0, r0, #1
	str r0, [r2, #0xd0]
	arm_func_end sub_0202F300
_0202F338:
	mov r0, #0
	bx lr
	.align 2, 0
_0202F340: .word MAIN_BSS_0208F304
_0202F344: .word MAIN_BSS_0210CA40

	arm_func_start sub_0202F348
sub_0202F348: ; 0x0202F348
	stmdb sp!, {r3, lr}
	ldr r1, _0202F370 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x43c]
	and r1, r1, #0xff
	bl sub_02010B08
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202F370: .word MAIN_BSS_0208F304
	arm_func_end sub_0202F348

	arm_func_start sub_0202F374
sub_0202F374: ; 0x0202F374
	stmdb sp!, {r3, lr}
	ldr r1, _0202F39C ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x43c]
	and r1, r1, #0xff
	bl sub_02010A98
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202F39C: .word MAIN_BSS_0208F304
	arm_func_end sub_0202F374

	arm_func_start sub_0202F3A0
sub_0202F3A0: ; 0x0202F3A0
	stmdb sp!, {r3, lr}
	ldr r1, _0202F3C8 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x43c]
	and r1, r1, #0xff
	bl sub_02010AA0
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202F3C8: .word MAIN_BSS_0208F304
	arm_func_end sub_0202F3A0

	arm_func_start sub_0202F3CC
sub_0202F3CC: ; 0x0202F3CC
	stmdb sp!, {r3, lr}
	ldr r1, _0202F3F4 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x43c]
	and r1, r1, #0xff
	bl sub_02010AA8
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202F3F4: .word MAIN_BSS_0208F304
	arm_func_end sub_0202F3CC

	arm_func_start sub_0202F3F8
sub_0202F3F8: ; 0x0202F3F8
	stmdb sp!, {r3, lr}
	ldr r1, _0202F420 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x43c]
	and r1, r1, #0xff
	bl sub_0201095C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202F420: .word MAIN_BSS_0208F304
	arm_func_end sub_0202F3F8

	arm_func_start sub_0202F424
sub_0202F424: ; 0x0202F424
	stmdb sp!, {r3, lr}
	ldr r1, _0202F454 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #0x43c]
	mov r1, r1, lsr #0x10
	mov r2, #1
	bl sub_02010990
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202F454: .word MAIN_BSS_0208F304
	arm_func_end sub_0202F424

	arm_func_start sub_0202F458
sub_0202F458: ; 0x0202F458
	stmdb sp!, {r4, lr}
	ldr r1, _0202F4B8 ; =_0208F304
	mov r4, r0
	ldr r0, [r1]
	ldmia r4, {r1, r2}
	add r0, r0, #0x1000
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #0x43c]
	mov r1, r1, lsr #0x10
	and r2, r2, #0xff
	bl sub_020109C0
	ldr r1, _0202F4B8 ; =_0208F304
	mov r0, #0
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r3, [r1, #0x444]
	ldrb r2, [r3, #0x14]
	add r1, r2, #1
	strb r1, [r3, #0x14]
	add r2, r3, r2, lsl #2
	str r0, [r2, #0x18]
	ldr r1, [r4]
	str r1, [r2, #0x38]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202F4B8: .word MAIN_BSS_0208F304
	arm_func_end sub_0202F458

	arm_func_start sub_0202F4BC
sub_0202F4BC: ; 0x0202F4BC
	stmdb sp!, {r3, lr}
	ldr r1, _0202F4E4 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x43c]
	and r1, r1, #0xff
	bl sub_02010B10
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202F4E4: .word MAIN_BSS_0208F304
	arm_func_end sub_0202F4BC

	arm_func_start sub_0202F4E8
sub_0202F4E8: ; 0x0202F4E8
	stmdb sp!, {r3, lr}
	ldr r0, _0202F50C ; =_0208F304
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x43c]
	bl sub_02010AEC
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202F50C: .word MAIN_BSS_0208F304
	arm_func_end sub_0202F4E8

	arm_func_start sub_0202F510
sub_0202F510: ; 0x0202F510
	stmdb sp!, {r3, lr}
	ldr r0, _0202F524 ; =MAIN_BSS_020B26A0
	bl sub_020172D4
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202F524: .word MAIN_BSS_020B26A0
	arm_func_end sub_0202F510

	arm_func_start sub_0202F528
sub_0202F528: ; 0x0202F528
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	ldr r4, _0202F750 ; =MAIN_BSS_020B26A0
	mov r0, r4
	bl sub_02017520
	ldr r0, _0202F754 ; =MAIN_BSS_0210CA4C
	ldr r8, [r0]
	cmp r8, #0
	beq _0202F6F4
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
	add r0, r4, #0x2d4
	add r7, r0, #0x8800
	mov r5, #0
	mov fp, #1
	arm_func_end sub_0202F528
_0202F56C:
	cmp r5, #0
	blt _0202F580
	cmp r5, #2
	movlt r6, r7
	blt _0202F584
_0202F580:
	mov r6, #0
_0202F584:
	cmp r6, #0
	ldrne r0, [r6]
	cmpne r0, #0
	beq _0202F670
	str fp, [sp]
	str fp, [sp, #4]
	ldrh r2, [r6, #8]
	ldr r1, [r6, #4]
	ldr r3, _0202F758 ; =0x00001E16
	mov r0, r8
	bl ov0_02139920
	cmp r0, #0
	blt _0202F670
	ldr r1, [r8, #4]
	cmp r1, r0
	ldrgt r1, [r8, #8]
	movle sl, #0
	ldrgt sl, [r1, r0, lsl #2]
	cmp sl, #0
	beq _0202F670
	ldr r0, [r6, #0x10]
	ldr sb, [sl, #8]
	ldr r1, [r6, #0xc]
	str r0, [sp, #0x14]
	cmp sb, #0
	ldrne r0, [sb, #0xc]
	str r1, [sp, #0x10]
	cmpne r0, #0
	beq _0202F630
	add r1, sp, #0x10
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r0, [sb, #0xc]
	ldr r2, [r0, #0xc4]
	cmp r2, #0
	beq _0202F630
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r1, [sp, #8]
	str r1, [r2, #0x18]
	str r0, [sp, #0xc]
	str r0, [r2, #0x1c]
_0202F630:
	ldr r0, [sl, #8]
	ldrh r1, [r6, #0xa]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202F64C
	bl sub_020128EC
_0202F64C:
	ldr r0, [sl, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0202F664
	bl sub_0201287C
_0202F664:
	mov r0, sl
	add r1, r6, #0x14
	bl ov0_0213E158
_0202F670:
	add r5, r5, #1
	cmp r5, #2
	add r7, r7, #0x38
	blt _0202F56C
	mov r7, #0
	ldr sb, _0202F75C ; =0x00000FFF
	mov r6, r7
	mov r5, #1
	mov sl, #0xe
_0202F694:
	mov r0, r4
	mov r1, r7
	bl sub_020155FC
	cmp r0, #0
	beq _0202F6E8
	ldr r1, [r0, #8]
	tst r1, #1
	beq _0202F6E8
	str r6, [sp]
	str r5, [sp, #4]
	ldrh r1, [r0, #2]
	ldrh r3, [r0, #4]
	ldrh r2, [r0]
	mov r0, r1, lsl #0x14
	mov r0, r0, lsr #8
	and fp, r3, sb
	orr r1, r0, #0x6000000
	mov r0, r8
	mov r3, sl
	orr r1, fp, r1
	bl ov0_02139920
_0202F6E8:
	add r7, r7, #1
	cmp r7, #0xa
	blt _0202F694
_0202F6F4:
	ldr r0, _0202F760 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	ldrne r5, [r0, #0xd8]
	cmpne r5, #0
	beq _0202F734
	ldrb r1, [r4, #1]
	ldrb r2, [r4, #2]
	mov r0, r5
	bl sub_0201A000
	ldr r0, [r4, #4]
	ldrb r2, [r4, #8]
	mov r1, r0, lsl #4
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl sub_0201A220
_0202F734:
	bl sub_020233A4
	cmp r0, #0
	beq _0202F744
	bl sub_02022B20
_0202F744:
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0202F750: .word MAIN_BSS_020B26A0
_0202F754: .word MAIN_BSS_0210CA4C
_0202F758: .word 0x00001E16
_0202F75C: .word 0x00000FFF
_0202F760: .word MAIN_BSS_0210CA40

	arm_func_start sub_0202F764
sub_0202F764: ; 0x0202F764
	ldr r0, _0202F77C ; =_0208F304
	ldr ip, _0202F780 ; =sub_0203437C
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x49c]
	bx ip
	.align 2, 0
_0202F77C: .word MAIN_BSS_0208F304
_0202F780: .word sub_0203437C
	arm_func_end sub_0202F764

	arm_func_start sub_0202F784
sub_0202F784: ; 0x0202F784
	mov r0, #0
	bx lr
	arm_func_end sub_0202F784

	arm_func_start sub_0202F78C
sub_0202F78C: ; 0x0202F78C
	mov r0, #0
	bx lr
	arm_func_end sub_0202F78C

	arm_func_start sub_0202F794
sub_0202F794: ; 0x0202F794
	mov r0, #0
	bx lr
	arm_func_end sub_0202F794

	arm_func_start sub_0202F79C
sub_0202F79C: ; 0x0202F79C
	mov r0, #0
	bx lr
	arm_func_end sub_0202F79C

	arm_func_start sub_0202F7A4
sub_0202F7A4: ; 0x0202F7A4
	mov r0, #0
	bx lr
	arm_func_end sub_0202F7A4

	arm_func_start sub_0202F7AC
sub_0202F7AC: ; 0x0202F7AC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x38
	ldr r2, _0202F974 ; =MAIN_BSS_0210CA40
	ldr r3, [r2]
	cmp r3, #0
	ldrne r2, [r3, #0xd0]
	orrne r2, r2, #0x200000
	strne r2, [r3, #0xd0]
	bl sub_0202F764
	cmp r0, #0
	beq _0202F95C
	bl sub_0202BCD4
	ldr r8, _0202F978 ; =MAIN_BSS_020B26A0
	cmp r0, #0
	cmpne r8, #0
	beq _0202F95C
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0202F838
	ldr r1, [r1, #0xc]
	cmp r1, #0
	beq _0202F818
	ldr r2, [r1, #0x20]
	ldr r1, [r1, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	b _0202F830
	arm_func_end sub_0202F7AC
_0202F818:
	mov r1, #0
	add r2, sp, #0x20
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [sp, #0x28]
	str r1, [sp, #0x2c]
_0202F830:
	add r3, sp, #0x28
	b _0202F854
_0202F838:
	mov r1, #0
	add r2, sp, #0x18
	add r3, sp, #0x28
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [sp, #0x28]
	str r1, [sp, #0x2c]
_0202F854:
	ldr r1, [r3, #4]
	ldr r7, [r3]
	add r6, r1, #0x2c000
	ldr r1, _0202F97C ; =MAIN_BSS_0210CA4C
	ldr r3, [r0, #0x14]
	ldr sl, [r1]
	mov r2, r7, asr #0xc
	mov r1, r6, asr #0xc
	mov r0, #0x4000
	str r7, [sp, #0x30]
	str r6, [sp, #0x34]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	strh r2, [r8, #0x1c]
	strh r1, [r8, #0x1e]
	strh r0, [r8, #0x24]
	strh r3, [r8, #0x26]
	cmp sl, #0
	beq _0202F95C
	ldr r1, [sl, #4]
	mov sb, #0
	cmp r1, #0
	ble _0202F95C
	mov r0, r3, lsl #0x10
	mov fp, #0x4000
	mov r5, r0, lsr #0x10
	mov r4, fp
_0202F8C0:
	cmp r1, sb
	movle r0, #0
	ldrgt r0, [sl, #8]
	ldrgt r0, [r0, sb, lsl #2]
	cmp r0, #0
	beq _0202F94C
	ldr r1, [r0, #0x58]
	mov r0, r1, asr #0x18
	and r0, r0, #0xff
	cmp r0, #5
	beq _0202F8F8
	cmp r0, #6
	beq _0202F924
	b _0202F94C
_0202F8F8:
	mov r0, r8
	bl sub_0201549C
	cmp r0, #0
	beq _0202F94C
	str r7, [r0, #0xc]
	str r6, [r0, #0x10]
	strh r5, [r0, #0x34]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	strh r4, [r0, #0xa]
	b _0202F94C
_0202F924:
	mov r0, r8
	bl sub_02015520
	cmp r0, #0
	beq _0202F94C
	str r7, [r0, #0xc]
	str r6, [r0, #0x10]
	strh r5, [r0, #0x16]
	str r7, [sp]
	str r6, [sp, #4]
	strh fp, [r0, #0x14]
_0202F94C:
	ldr r1, [sl, #4]
	add sb, sb, #1
	cmp sb, r1
	blt _0202F8C0
_0202F95C:
	bl sub_02027754
	bl sub_0202779C
	bl sub_02027A2C
	mov r0, #0
	add sp, sp, #0x38
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0202F974: .word MAIN_BSS_0210CA40
_0202F978: .word MAIN_BSS_020B26A0
_0202F97C: .word MAIN_BSS_0210CA4C

	arm_func_start sub_0202F980
sub_0202F980: ; 0x0202F980
	stmdb sp!, {r3, r4, r5, lr}
	bl sub_0202779C
	cmp r0, #0
	mov r4, #0
	beq _0202F9EC
	bl sub_0202779C
	bl sub_0202780C
	movs r4, r0
	bne _0202F9EC
	ldr r0, _0202F9F4 ; =MAIN_BSS_0210C1BC
	ldr r5, [r0]
	cmp r5, #0
	beq _0202F9D4
	beq _0202F9C8
	mov r0, r5
	bl sub_020277AC
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_0202F980
_0202F9C8:
	ldr r0, _0202F9F4 ; =MAIN_BSS_0210C1BC
	mov r1, #0
	str r1, [r0]
_0202F9D4:
	ldr r0, _0202F9F8 ; =MAIN_BSS_0210CA40
	ldr r1, [r0]
	cmp r1, #0
	ldrne r0, [r1, #0xd0]
	bicne r0, r0, #0x200000
	strne r0, [r1, #0xd0]
_0202F9EC:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202F9F4: .word MAIN_BSS_0210C1BC
_0202F9F8: .word MAIN_BSS_0210CA40

	arm_func_start sub_0202F9FC
sub_0202F9FC: ; 0x0202F9FC
	stmdb sp!, {r3, lr}
	ldr r1, _0202FA20 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x49c]
	bl sub_0203421C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202FA20: .word MAIN_BSS_0208F304
	arm_func_end sub_0202F9FC

	arm_func_start sub_0202FA24
sub_0202FA24: ; 0x0202FA24
	ldr r0, _0202FA3C ; =MAIN_BSS_0210CA70
	ldr r0, [r0]
	cmp r0, #0
	ldrneh r0, [r0, #4]
	ldreq r0, _0202FA40 ; =0x0000FFFF
	bx lr
	.align 2, 0
_0202FA3C: .word MAIN_BSS_0210CA70
_0202FA40: .word 0x0000FFFF
	arm_func_end sub_0202FA24

	arm_func_start sub_0202FA44
sub_0202FA44: ; 0x0202FA44
	ldr r0, _0202FA50 ; =MAIN_BSS_020B26A0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0202FA50: .word MAIN_BSS_020B26A0
	arm_func_end sub_0202FA44

	arm_func_start sub_0202FA54
sub_0202FA54: ; 0x0202FA54
	ldr r0, _0202FA64 ; =MAIN_BSS_020B26A0
	ldrb r0, [r0, #3]
	and r0, r0, #0xf
	bx lr
	.align 2, 0
_0202FA64: .word MAIN_BSS_020B26A0
	arm_func_end sub_0202FA54

	arm_func_start sub_0202FA68
sub_0202FA68: ; 0x0202FA68
	ldr r0, _0202FA7C ; =MAIN_BSS_020B26A0
	ldrb r0, [r0, #3]
	mov r0, r0, asr #4
	and r0, r0, #0xf
	bx lr
	.align 2, 0
_0202FA7C: .word MAIN_BSS_020B26A0
	arm_func_end sub_0202FA68

	arm_func_start sub_0202FA80
sub_0202FA80: ; 0x0202FA80
	stmdb sp!, {r4, lr}
	ldr r1, _0202FB2C ; =_0208F304
	mov r4, r0
	ldr r0, [r1]
	mov r1, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B9C
	ldr r0, _0202FB2C ; =_0208F304
	mov r1, #0x1e
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C2C
	ldr r1, [r4, #4]
	ldr r0, _0202FB30 ; =MAIN_BSS_020B26A0
	cmp r1, #0
	addeq r0, r0, #0x8000
	moveq r1, #0
	streqb r1, [r0, #0xb44]
	beq _0202FAE0
	add r0, r0, #0x344
	add r0, r0, #0x8800
	bl strcpy
	arm_func_end sub_0202FA80
_0202FAE0:
	ldr r2, _0202FB2C ; =_0208F304
	mov r3, #1
	ldr r0, [r2]
	ldr r1, _0202FB34 ; =MAIN_BSS_0210CA40
	add r0, r0, #0x1000
	ldr r0, [r0, #0x49c]
	str r3, [r0, #0x18]
	ldr r0, [r2]
	ldr r2, [r4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	str r2, [r0, #0x10]
	ldr r1, [r1]
	cmp r1, #0
	ldrne r0, [r1, #0xd0]
	orrne r0, r0, #0x20
	strne r0, [r1, #0xd0]
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202FB2C: .word MAIN_BSS_0208F304
_0202FB30: .word MAIN_BSS_020B26A0
_0202FB34: .word MAIN_BSS_0210CA40

	arm_func_start sub_0202FB38
sub_0202FB38: ; 0x0202FB38
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	ldr r4, _0202FC6C ; =MAIN_BSS_020B26A0
	ldr r0, [r0]
	ldrb r1, [r4]
	and r0, r0, #0xff
	and r0, r0, #1
	strb r0, [r4]
	cmp r0, r1
	ldrne r0, _0202FC70 ; =MAIN_BSS_0210CA48
	ldrne r5, [r0]
	cmpne r5, #0
	beq _0202FC60
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0202FBB8
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0202FB98
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	b _0202FBB0
	arm_func_end sub_0202FB38
_0202FB98:
	mov r0, #0
	add r1, sp, #0x10
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
_0202FBB0:
	add r3, sp, #0x18
	b _0202FBD4
_0202FBB8:
	mov r0, #0
	add r1, sp, #8
	add r3, sp, #0x18
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
_0202FBD4:
	ldrb r1, [r4, #3]
	ldr lr, [r3]
	ldr ip, [r3, #4]
	add r0, r4, #0x8000
	mov r1, r1, asr #4
	and r2, r1, #0xf
	ldrb r3, [r0, #0xb64]
	ldrb r1, [r4]
	mov r0, r5
	str lr, [sp, #0x20]
	str ip, [sp, #0x24]
	bl ov0_02132F14
	add r0, r4, #0x8000
	ldrb r1, [r0, #0x802]
	mov r0, r5
	bl ov0_02132FA0
	ldr r4, [r5, #8]
	cmp r4, #0
	ldrne r0, [r4, #0xc]
	cmpne r0, #0
	beq _0202FC60
	add r1, sp, #0x20
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r0, [r4, #0xc]
	ldr r2, [r0, #0xc4]
	cmp r2, #0
	beq _0202FC60
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [r2, #0x18]
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [r2, #0x1c]
_0202FC60:
	mov r0, #0
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202FC6C: .word MAIN_BSS_020B26A0
_0202FC70: .word MAIN_BSS_0210CA48

	arm_func_start sub_0202FC74
sub_0202FC74: ; 0x0202FC74
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _0202FCD0 ; =MAIN_BSS_020B26A0
	mov r1, #0xff
	bl sub_02015658
	mov r4, r0
	ldr r0, _0202FCD0 ; =MAIN_BSS_020B26A0
	ldr r1, [r5]
	ldrb r3, [r0, #3]
	and r2, r1, #0xff
	mov r1, #0xff
	and r3, r3, #0xf0
	orr r2, r3, r2
	strb r2, [r0, #3]
	bl sub_02015658
	cmp r4, r0
	beq _0202FCC8
	bl sub_020233A4
	cmp r0, #0
	beq _0202FCC8
	bl sub_02022B20
	arm_func_end sub_0202FC74
_0202FCC8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202FCD0: .word MAIN_BSS_020B26A0

	arm_func_start sub_0202FCD4
sub_0202FCD4: ; 0x0202FCD4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	ldr r4, _0202FE20 ; =MAIN_BSS_020B26A0
	ldr r0, [r0]
	ldrb r3, [r4, #3]
	and r0, r0, #0xff
	and r1, r3, #0xf
	orr r2, r1, r0, lsl #4
	and r0, r2, #0xff
	mov r1, r0, asr #4
	mov r0, r3, asr #4
	and r1, r1, #0xf
	and r0, r0, #0xf
	cmp r1, r0
	ldrne r0, _0202FE24 ; =MAIN_BSS_0210CA48
	strb r2, [r4, #3]
	ldrne r5, [r0]
	cmpne r5, #0
	beq _0202FE14
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0202FD6C
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0202FD4C
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	b _0202FD64
	arm_func_end sub_0202FCD4
_0202FD4C:
	mov r0, #0
	add r1, sp, #0x10
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
_0202FD64:
	add r3, sp, #0x18
	b _0202FD88
_0202FD6C:
	mov r0, #0
	add r1, sp, #8
	add r3, sp, #0x18
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
_0202FD88:
	ldrb r1, [r4, #3]
	ldr lr, [r3]
	ldr ip, [r3, #4]
	add r0, r4, #0x8000
	mov r1, r1, asr #4
	and r2, r1, #0xf
	ldrb r3, [r0, #0xb64]
	ldrb r1, [r4]
	mov r0, r5
	str lr, [sp, #0x20]
	str ip, [sp, #0x24]
	bl ov0_02132F14
	add r0, r4, #0x8000
	ldrb r1, [r0, #0x802]
	mov r0, r5
	bl ov0_02132FA0
	ldr r4, [r5, #8]
	cmp r4, #0
	ldrne r0, [r4, #0xc]
	cmpne r0, #0
	beq _0202FE14
	add r1, sp, #0x20
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r0, [r4, #0xc]
	ldr r2, [r0, #0xc4]
	cmp r2, #0
	beq _0202FE14
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [r2, #0x18]
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [r2, #0x1c]
_0202FE14:
	mov r0, #0
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202FE20: .word MAIN_BSS_020B26A0
_0202FE24: .word MAIN_BSS_0210CA48

	arm_func_start sub_0202FE28
sub_0202FE28: ; 0x0202FE28
	mov r0, #0
	bx lr
	arm_func_end sub_0202FE28

	arm_func_start sub_0202FE30
sub_0202FE30: ; 0x0202FE30
	stmdb sp!, {r4, lr}
	ldr r0, [r0]
	ldr r4, _0202FE9C ; =MAIN_BSS_020B26A0
	and r1, r0, #0xff
	mov r0, r4
	bl sub_020160B8
	ldr r0, _0202FEA0 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _0202FE94
	ldr r0, [r0, #0xd8]
	ldrb r2, [r4, #2]
	cmp r0, #0
	ldrb r1, [r4, #1]
	beq _0202FE94
	cmp r2, #0
	mov r1, r1, lsl #0x10
	bne _0202FE84
	mov r1, r1, lsr #0x10
	bl sub_0201A018
	b _0202FE94
	arm_func_end sub_0202FE30
_0202FE84:
	mov r2, r2, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	bl sub_0201A000
_0202FE94:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202FE9C: .word MAIN_BSS_020B26A0
_0202FEA0: .word MAIN_BSS_0210CA40

	arm_func_start sub_0202FEA4
sub_0202FEA4: ; 0x0202FEA4
	ldr r0, _0202FEBC ; =MAIN_BSS_020B26A0
	cmp r0, #0
	addne r0, r0, #0x8000
	ldrneb r0, [r0, #0x7db]
	moveq r0, #0
	bx lr
	.align 2, 0
_0202FEBC: .word MAIN_BSS_020B26A0
	arm_func_end sub_0202FEA4

	arm_func_start sub_0202FEC0
sub_0202FEC0: ; 0x0202FEC0
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r0, _0202FF00 ; =MAIN_BSS_0210CA40
	ldr r2, _0202FF04 ; =MAIN_BSS_020B26A0
	cmp r1, #0
	ldreqb r1, [r2, #2]
	ldr r0, [r0]
	strb r1, [r2, #1]
	cmp r0, #0
	beq _0202FEF8
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #0xd8]
	mov r1, r1, lsr #0x10
	bl sub_0201A018
	arm_func_end sub_0202FEC0
_0202FEF8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202FF00: .word MAIN_BSS_0210CA40
_0202FF04: .word MAIN_BSS_020B26A0

	arm_func_start sub_0202FF08
sub_0202FF08: ; 0x0202FF08
	ldr r0, _0202FF1C ; =MAIN_BSS_020B26A0
	cmp r0, #0
	ldrneb r0, [r0, #2]
	moveq r0, #0
	bx lr
	.align 2, 0
_0202FF1C: .word MAIN_BSS_020B26A0
	arm_func_end sub_0202FF08

	arm_func_start sub_0202FF20
sub_0202FF20: ; 0x0202FF20
	ldr r0, _0202FF34 ; =MAIN_BSS_020B26A0
	cmp r0, #0
	ldrneb r0, [r0, #1]
	moveq r0, #0
	bx lr
	.align 2, 0
_0202FF34: .word MAIN_BSS_020B26A0
	arm_func_end sub_0202FF20

	arm_func_start sub_0202FF38
sub_0202FF38: ; 0x0202FF38
	stmdb sp!, {r3, lr}
	bl sub_020010E4
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202FF38

	arm_func_start sub_0202FF48
sub_0202FF48: ; 0x0202FF48
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _0202FFD8
	ldr r1, [r0, #0x58]
	mov r1, r1, asr #0x18
	and r1, r1, #0xff
	cmp r1, #1
	beq _0202FF7C
	cmp r1, #6
	beq _0202FFAC
	b _0202FFD8
	arm_func_end sub_0202FF48
_0202FF7C:
	ldr r1, _0202FFE0 ; =_0208F304
	ldr r0, [r0, #0xe8]
	ldr r2, [r1]
	mov r1, r0, lsl #0x10
	add r0, r2, #0x1000
	ldr r0, [r0, #0x434]
	mov r1, r1, lsr #0x10
	bl sub_020107A8
	cmp r0, #0
	beq _0202FFD8
	ldrh r0, [r0]
	ldmia sp!, {r3, pc}
_0202FFAC:
	ldr r1, _0202FFE0 ; =_0208F304
	ldr r0, [r0, #0x200]
	ldr r2, [r1]
	mov r1, r0, lsl #0x10
	add r0, r2, #0x1000
	ldr r0, [r0, #0x434]
	mov r1, r1, lsr #0x10
	bl sub_020107A8
	cmp r0, #0
	ldrneh r0, [r0]
	ldmneia sp!, {r3, pc}
_0202FFD8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202FFE0: .word MAIN_BSS_0208F304

	arm_func_start sub_0202FFE4
sub_0202FFE4: ; 0x0202FFE4
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	ldr r1, _0203003C ; =MAIN_BSS_0210CA6C
	cmp r0, #0
	ldr r1, [r1]
	cmpne r1, #0
	beq _02030034
	ldr r1, [r0, #0x58]
	mov r1, r1, asr #0x18
	and r1, r1, #0xff
	cmp r1, #1
	beq _02030024
	cmp r1, #6
	beq _0203002C
	b _02030034
	arm_func_end sub_0202FFE4
_02030024:
	ldr r0, [r0, #0xe8]
	ldmia sp!, {r3, pc}
_0203002C:
	ldr r0, [r0, #0x200]
	ldmia sp!, {r3, pc}
_02030034:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0203003C: .word MAIN_BSS_0210CA6C

	arm_func_start sub_02030040
sub_02030040: ; 0x02030040
	stmdb sp!, {r3, lr}
	ldr r1, _02030064 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x49c]
	bl sub_02034374
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02030064: .word MAIN_BSS_0208F304
	arm_func_end sub_02030040

	arm_func_start sub_02030068
sub_02030068: ; 0x02030068
	ldr r0, _02030090 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a4]
	add r0, r0, #0x8000
	ldrb r0, [r0, #0x802]
	cmp r0, #1
	movls r0, #0
	subhi r0, r0, #1
	bx lr
	.align 2, 0
_02030090: .word MAIN_BSS_0208F304
	arm_func_end sub_02030068

	arm_func_start sub_02030094
sub_02030094: ; 0x02030094
	ldr r0, _020300B4 ; =MAIN_BSS_0210CA40
	ldr r1, [r0]
	cmp r1, #0
	ldrne r0, [r1, #0xd0]
	orrne r0, r0, #0x2000
	strne r0, [r1, #0xd0]
	mov r0, #0
	bx lr
	.align 2, 0
_020300B4: .word MAIN_BSS_0210CA40
	arm_func_end sub_02030094

	arm_func_start sub_020300B8
sub_020300B8: ; 0x020300B8
	stmdb sp!, {r3, lr}
	ldr r1, _020300F8 ; =_0208F304
	ldr r2, [r0]
	ldr r1, [r1]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r1, #3
	bl sub_0201926C
	ldr r0, _020300F8 ; =_0208F304
	mov r1, #3
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AB28
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020300F8: .word MAIN_BSS_0208F304
	arm_func_end sub_020300B8

	arm_func_start sub_020300FC
sub_020300FC: ; 0x020300FC
	ldr r0, _0203011C ; =MAIN_BSS_0210CA40
	ldr r1, [r0]
	cmp r1, #0
	ldrne r0, [r1, #0xd0]
	orrne r0, r0, #0x800
	strne r0, [r1, #0xd0]
	mov r0, #0
	bx lr
	.align 2, 0
_0203011C: .word MAIN_BSS_0210CA40
	arm_func_end sub_020300FC

	arm_func_start sub_02030120
sub_02030120: ; 0x02030120
	ldr r0, _02030140 ; =MAIN_BSS_0210CA40
	ldr r1, [r0]
	cmp r1, #0
	ldrne r0, [r1, #0xd0]
	bicne r0, r0, #0x800
	strne r0, [r1, #0xd0]
	mov r0, #0
	bx lr
	.align 2, 0
_02030140: .word MAIN_BSS_0210CA40
	arm_func_end sub_02030120

	arm_func_start sub_02030144
sub_02030144: ; 0x02030144
	ldr r0, _02030164 ; =MAIN_BSS_0210CA40
	ldr r1, [r0]
	cmp r1, #0
	ldrne r0, [r1, #0xd0]
	orrne r0, r0, #0x1000
	strne r0, [r1, #0xd0]
	mov r0, #0
	bx lr
	.align 2, 0
_02030164: .word MAIN_BSS_0210CA40
	arm_func_end sub_02030144

	arm_func_start sub_02030168
sub_02030168: ; 0x02030168
	ldr r0, _02030188 ; =MAIN_BSS_0210CA40
	ldr r1, [r0]
	cmp r1, #0
	ldrne r0, [r1, #0xd0]
	bicne r0, r0, #0x1000
	strne r0, [r1, #0xd0]
	mov r0, #0
	bx lr
	.align 2, 0
_02030188: .word MAIN_BSS_0210CA40
	arm_func_end sub_02030168

	arm_func_start sub_0203018C
sub_0203018C: ; 0x0203018C
	ldr r0, _020301AC ; =MAIN_BSS_0210CA40
	ldr r1, [r0]
	cmp r1, #0
	ldrne r0, [r1, #0xd0]
	orrne r0, r0, #0x4000
	strne r0, [r1, #0xd0]
	mov r0, #0
	bx lr
	.align 2, 0
_020301AC: .word MAIN_BSS_0210CA40
	arm_func_end sub_0203018C

	arm_func_start sub_020301B0
sub_020301B0: ; 0x020301B0
	ldr r0, _020301D0 ; =MAIN_BSS_0210CA40
	ldr r1, [r0]
	cmp r1, #0
	ldrne r0, [r1, #0xd0]
	orrne r0, r0, #0x8000
	strne r0, [r1, #0xd0]
	mov r0, #0
	bx lr
	.align 2, 0
_020301D0: .word MAIN_BSS_0210CA40
	arm_func_end sub_020301B0

	arm_func_start sub_020301D4
sub_020301D4: ; 0x020301D4
	ldr r1, _02030204 ; =MAIN_BSS_0210CA40
	ldr r2, [r0]
	ldr r1, [r1]
	cmp r1, #0
	beq _020301FC
	ldr r0, _02030208 ; =MAIN_BSS_0210CAB0
	str r2, [r0]
	ldr r0, [r1, #0xd0]
	orr r0, r0, #0x10000
	str r0, [r1, #0xd0]
	arm_func_end sub_020301D4
_020301FC:
	mov r0, #0
	bx lr
	.align 2, 0
_02030204: .word MAIN_BSS_0210CA40
_02030208: .word MAIN_BSS_0210CAB0

	arm_func_start sub_0203020C
sub_0203020C: ; 0x0203020C
	ldr r0, _0203022C ; =MAIN_BSS_0210CA40
	ldr r1, [r0]
	cmp r1, #0
	ldrne r0, [r1, #0xd0]
	orrne r0, r0, #0x20000
	strne r0, [r1, #0xd0]
	mov r0, #0
	bx lr
	.align 2, 0
_0203022C: .word MAIN_BSS_0210CA40
	arm_func_end sub_0203020C

	arm_func_start sub_02030230
sub_02030230: ; 0x02030230
	stmdb sp!, {r4, lr}
	ldr r1, _02030318 ; =_0208F304
	mov r4, r0
	ldr r0, [r1]
	mov r1, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B9C
	ldr r0, _02030318 ; =_0208F304
	mov r1, #0x1e
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C2C
	ldr r0, _02030318 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E30
	ldr r0, _02030318 ; =_0208F304
	ldr r1, [r4]
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E94
	ldr r0, _02030318 ; =_0208F304
	ldr r1, [r4]
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_0201164C
	ldr r1, [r4]
	mov r0, #0x1c
	mul r0, r1, r0
	ldr r1, _0203031C ; =s_c000First_0208ac1c
	ldr r2, _02030320 ; =MAIN_BSS_020B26A0
	adds r1, r1, r0
	addeq r0, r2, #0x8000
	moveq r1, #0
	streqb r1, [r0, #0xb44]
	beq _020302E0
	add r0, r2, #0x344
	add r0, r0, #0x8800
	bl strcpy
	arm_func_end sub_02030230
_020302E0:
	ldr r0, _02030318 ; =_0208F304
	mov r2, #1
	ldr r0, [r0]
	ldr r1, _02030324 ; =MAIN_BSS_0210CA40
	add r0, r0, #0x1000
	ldr r0, [r0, #0x49c]
	str r2, [r0, #0x18]
	ldr r1, [r1]
	cmp r1, #0
	ldrne r0, [r1, #0xd0]
	orrne r0, r0, #0x40000
	strne r0, [r1, #0xd0]
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02030318: .word MAIN_BSS_0208F304
_0203031C: .word s_c000First_0208ac1c
_02030320: .word MAIN_BSS_020B26A0
_02030324: .word MAIN_BSS_0210CA40

	arm_func_start sub_02030328
sub_02030328: ; 0x02030328
	stmdb sp!, {r3, lr}
	ldr r0, _02030418 ; =_0208F304
	mov r1, #0x1e
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B9C
	ldr r0, _02030418 ; =_0208F304
	mov r1, #0x1e
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C2C
	ldr r0, _02030418 ; =_0208F304
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034F4C
	ldr r0, _02030418 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E30
	ldr r0, _02030418 ; =_0208F304
	mov r1, #4
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E94
	ldr r0, _02030418 ; =_0208F304
	mov r1, #4
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_0201164C
	ldr r1, _0203041C ; =s_c004First_0208ac8c
	ldr r0, _02030420 ; =MAIN_BSS_020B26A0
	cmp r1, #0
	addeq r0, r0, #0x8000
	moveq r1, #0
	streqb r1, [r0, #0xb44]
	beq _020303E0
	add r0, r0, #0x344
	add r0, r0, #0x8800
	bl strcpy
	arm_func_end sub_02030328
_020303E0:
	ldr r0, _02030418 ; =_0208F304
	mov r2, #1
	ldr r0, [r0]
	ldr r1, _02030424 ; =MAIN_BSS_0210CA40
	add r0, r0, #0x1000
	ldr r0, [r0, #0x49c]
	str r2, [r0, #0x18]
	ldr r1, [r1]
	cmp r1, #0
	ldrne r0, [r1, #0xd0]
	orrne r0, r0, #0x100000
	strne r0, [r1, #0xd0]
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02030418: .word MAIN_BSS_0208F304
_0203041C: .word s_c004First_0208ac8c
_02030420: .word MAIN_BSS_020B26A0
_02030424: .word MAIN_BSS_0210CA40

	arm_func_start sub_02030428
sub_02030428: ; 0x02030428
	ldr r0, _02030448 ; =MAIN_BSS_0210CA40
	ldr r1, [r0]
	cmp r1, #0
	ldrne r0, [r1, #0xd0]
	orrne r0, r0, #0x80000
	strne r0, [r1, #0xd0]
	mov r0, #0
	bx lr
	.align 2, 0
_02030448: .word MAIN_BSS_0210CA40
	arm_func_end sub_02030428

	arm_func_start sub_0203044C
sub_0203044C: ; 0x0203044C
	ldr r0, _02030464 ; =MAIN_BSS_020B26A0
	cmp r0, #0
	addne r0, r0, #0x8000
	ldrne r0, [r0, #0x1ac]
	moveq r0, #0
	bx lr
	.align 2, 0
_02030464: .word MAIN_BSS_020B26A0
	arm_func_end sub_0203044C

	arm_func_start sub_02030468
sub_02030468: ; 0x02030468
	stmdb sp!, {r3, lr}
	ldr r0, _02030490 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _02030488
	ldr r0, [r0, #0x60]
	mov r1, #0xc8
	bl sub_0202982C
	arm_func_end sub_02030468
_02030488:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02030490: .word MAIN_BSS_0210CA40

	arm_func_start sub_02030494
sub_02030494: ; 0x02030494
	stmdb sp!, {r3, lr}
	ldr r0, _020304C8 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _020304C0
	ldr r0, [r0, #0x60]
	bl sub_0202A1AC
	cmp r0, #8
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02030494
_020304C0:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020304C8: .word MAIN_BSS_0210CA40

	arm_func_start sub_020304CC
sub_020304CC: ; 0x020304CC
	stmdb sp!, {r3, lr}
	ldr r0, _020304F0 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _020304E8
	ldr r0, [r0, #0x60]
	bl sub_0202A1B4
	arm_func_end sub_020304CC
_020304E8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020304F0: .word MAIN_BSS_0210CA40

	arm_func_start sub_020304F4
sub_020304F4: ; 0x020304F4
	stmdb sp!, {r3, lr}
	ldr r0, _02030524 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _0203051C
	ldr r0, [r0, #0xd8]
	bl sub_0201A0F4
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
	arm_func_end sub_020304F4
_0203051C:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02030524: .word MAIN_BSS_0210CA40

	arm_func_start sub_02030528
sub_02030528: ; 0x02030528
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020233A4
	cmp r0, #0
	beq _02030544
	ldr r1, [r4]
	bl sub_02022E48
	arm_func_end sub_02030528
_02030544:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_0203054C
sub_0203054C: ; 0x0203054C
	stmdb sp!, {r4, lr}
	bl sub_020233A4
	movs r4, r0
	beq _02030568
	bl sub_02022EC4
	mov r0, r4
	bl sub_02022DD4
	arm_func_end sub_0203054C
_02030568:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02030570
sub_02030570: ; 0x02030570
	stmdb sp!, {r3, lr}
	bl sub_020233A4
	cmp r0, #0
	beq _02030594
	mov r1, #0x3e8
	rsb r1, r1, #0
	mov r2, r1
	mov r3, r1
	bl sub_020229F4
	arm_func_end sub_02030570
_02030594:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0203059C
sub_0203059C: ; 0x0203059C
	stmdb sp!, {r3, lr}
	ldr r0, _020305C0 ; =_0208F304
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020305C0: .word MAIN_BSS_0208F304
	arm_func_end sub_0203059C

	arm_func_start sub_020305C4
sub_020305C4: ; 0x020305C4
	stmdb sp!, {r3, lr}
	ldr r1, _020305EC ; =_0208F304
	ldr r3, [r1]
	ldmia r0, {r1, r2}
	ldr r0, [r3, #0x1c]
	mov r1, r1, lsl #0xc
	mov r2, r2, lsl #0xc
	bl sub_0200215C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020305EC: .word MAIN_BSS_0208F304
	arm_func_end sub_020305C4

	arm_func_start sub_020305F0
sub_020305F0: ; 0x020305F0
	stmdb sp!, {r3, lr}
	ldr r0, _0203060C ; =_0208F304
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	bl sub_02002178
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0203060C: .word MAIN_BSS_0208F304
	arm_func_end sub_020305F0

	arm_func_start sub_02030610
sub_02030610: ; 0x02030610
	stmdb sp!, {r3, lr}
	ldr r1, _02030648 ; =_0208F304
	ldr r2, [r0, #4]
	ldr lr, [r1]
	ldr r1, [r0, #8]
	ldr ip, [r0]
	mov r3, r1, lsl #0x10
	ldr r0, [lr, #0x1c]
	mov r1, ip, lsl #0xc
	mov r2, r2, lsl #0xc
	mov r3, r3, lsr #0x10
	bl sub_02002198
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02030648: .word MAIN_BSS_0208F304
	arm_func_end sub_02030610

	arm_func_start sub_0203064C
sub_0203064C: ; 0x0203064C
	ldr r0, _02030660 ; =_0208F304
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x30]
	bx lr
	.align 2, 0
_02030660: .word MAIN_BSS_0208F304
	arm_func_end sub_0203064C

	arm_func_start sub_02030664
sub_02030664: ; 0x02030664
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	cmp r0, #0
	bne _02030690
	ldr r0, _020306DC ; =_0208F304
	mov r1, #0
	ldr r0, [r0]
	bl sub_02010178
	ldr r0, _020306DC ; =_0208F304
	mov r2, #0
	b _020306A8
	arm_func_end sub_02030664
_02030690:
	ldr r0, _020306DC ; =_0208F304
	mov r1, #1
	ldr r0, [r0]
	bl sub_02010178
	ldr r0, _020306DC ; =_0208F304
	mov r2, #1
_020306A8:
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	strb r2, [r1, #0x2a]
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r1, [r1, #0x20]
	ldr r0, [r0, #0x490]
	str r1, [r0, #0x8c]
	ldr r0, [r0, #0x14c]
	add r0, r0, #0x1000
	str r1, [r0, #0x618]
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020306DC: .word MAIN_BSS_0208F304

	arm_func_start sub_020306E0
sub_020306E0: ; 0x020306E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020233A4
	cmp r0, #0
	beq _02030714
	ldr r1, [r4]
	cmp r1, #0
	bne _0203070C
	mov r1, #1
	bl sub_02023198
	b _02030714
	arm_func_end sub_020306E0
_0203070C:
	mov r1, #0
	bl sub_02023198
_02030714:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_0203071C
sub_0203071C: ; 0x0203071C
	stmdb sp!, {r4, lr}
	ldr r1, _02030750 ; =MAIN_BSS_0210CA40
	mov r2, r0
	ldr r4, [r1]
	cmp r4, #0
	beq _02030748
	ldr r0, [r4, #0x58]
	ldr r1, [r2]
	bl sub_0202350C
	ldr r0, [r4, #0x54]
	bl sub_02022C1C
	arm_func_end sub_0203071C
_02030748:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02030750: .word MAIN_BSS_0210CA40

	arm_func_start sub_02030754
sub_02030754: ; 0x02030754
	stmdb sp!, {r4, lr}
	ldr r1, _020307DC ; =MAIN_BSS_0210CA40
	mov r3, #1
	ldr r2, [r1]
	ldr r1, _020307E0 ; =_0208F304
	ldr r2, [r2, #0x54]
	mov r4, r0
	str r3, [r2, #0x60]
	ldr r0, [r1]
	ldr r1, [r4]
	add r0, r0, #0x1000
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #0x4bc]
	mov r2, r1, lsr #0x10
	mov r1, #4
	bl sub_0200E0E0
	ldr r0, _020307E0 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E324
	cmp r0, #4
	beq _020307D4
	ldr r0, _020307E0 ; =_0208F304
	ldr r1, [r4]
	ldr r0, [r0]
	mov r1, r1, lsl #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, r1, lsr #0x10
	mov r1, #4
	bl sub_0200E0E0
	arm_func_end sub_02030754
_020307D4:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_020307DC: .word MAIN_BSS_0210CA40
_020307E0: .word MAIN_BSS_0208F304

	arm_func_start sub_020307E4
sub_020307E4: ; 0x020307E4
	stmdb sp!, {r4, lr}
	ldr r1, _02030850 ; =MAIN_BSS_0210CA40
	mov r3, #1
	ldr r2, [r1]
	ldr r1, _02030854 ; =_0208F304
	ldr r2, [r2, #0x54]
	mov r4, r0
	str r3, [r2, #0x60]
	ldr r0, [r1]
	ldr r1, [r4]
	add r0, r0, #0x1000
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #0x4bc]
	mov r2, r1, lsr #0x10
	mov r1, #2
	bl sub_0200E0E0
	ldr r0, _02030854 ; =_0208F304
	ldr r1, [r4]
	ldr r0, [r0]
	mov r1, r1, lsl #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, r1, lsr #0x10
	mov r1, #2
	bl sub_0200E0E0
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02030850: .word MAIN_BSS_0210CA40
_02030854: .word MAIN_BSS_0208F304
	arm_func_end sub_020307E4

	arm_func_start sub_02030858
sub_02030858: ; 0x02030858
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _020308F4 ; =MAIN_BSS_0210CA40
	mov r3, #1
	ldr r2, [r1]
	ldr r1, _020308F8 ; =_0208F304
	ldr r2, [r2, #0x54]
	mov r4, r0
	str r3, [r2, #0x60]
	ldr r0, [r1]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E324
	cmp r0, #4
	beq _020308B8
	ldr r0, _020308F8 ; =_0208F304
	ldr r1, [r4]
	ldr r0, [r0]
	mov r1, r1, lsl #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, r1, lsr #0x10
	mov r1, #4
	bl sub_0200E0E0
	arm_func_end sub_02030858
_020308B8:
	mov r0, #2
	str r0, [sp]
	ldr r0, _020308F8 ; =_0208F304
	ldr r1, [r4]
	ldr r0, [r0]
	mov r1, r1, lsl #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c4]
	mov r3, r1, lsr #0x10
	mov r1, #0x7f
	mov r2, #0x5f
	bl sub_0200E378
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_020308F4: .word MAIN_BSS_0210CA40
_020308F8: .word MAIN_BSS_0208F304

	arm_func_start sub_020308FC
sub_020308FC: ; 0x020308FC
	stmdb sp!, {r4, lr}
	ldr r1, _02030954 ; =_0208F304
	mov r4, r0
	ldr r0, [r1]
	ldr r1, [r4]
	add r0, r0, #0x1000
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #0x4bc]
	mov r2, r1, lsr #0x10
	mov r1, #3
	bl sub_0200E0E0
	ldr r0, _02030954 ; =_0208F304
	ldr r1, [r4]
	ldr r0, [r0]
	mov r1, r1, lsl #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, r1, lsr #0x10
	mov r1, #3
	bl sub_0200E0E0
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02030954: .word MAIN_BSS_0208F304
	arm_func_end sub_020308FC

	arm_func_start sub_02030958
sub_02030958: ; 0x02030958
	stmdb sp!, {r4, lr}
	ldr r1, _020309B0 ; =_0208F304
	mov r4, r0
	ldr r0, [r1]
	ldr r1, [r4]
	add r0, r0, #0x1000
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #0x4bc]
	mov r2, r1, lsr #0x10
	mov r1, #1
	bl sub_0200E0E0
	ldr r0, _020309B0 ; =_0208F304
	ldr r1, [r4]
	ldr r0, [r0]
	mov r1, r1, lsl #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, r1, lsr #0x10
	mov r1, #1
	bl sub_0200E0E0
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_020309B0: .word MAIN_BSS_0208F304
	arm_func_end sub_02030958

	arm_func_start sub_020309B4
sub_020309B4: ; 0x020309B4
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _02030A3C ; =_0208F304
	mov r4, r0
	ldr r0, [r1]
	ldr r1, [r4]
	add r0, r0, #0x1000
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #0x4c0]
	mov r2, r1, lsr #0x10
	mov r1, #3
	bl sub_0200E0E0
	mov r0, #1
	str r0, [sp]
	ldr r0, _02030A3C ; =_0208F304
	ldr r1, [r4]
	ldr r0, [r0]
	mov r1, r1, lsl #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c4]
	mov r3, r1, lsr #0x10
	mov r1, #0x7f
	mov r2, #0x5f
	bl sub_0200E378
	ldr r0, _02030A3C ; =_0208F304
	mov r1, #3
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02030A3C: .word MAIN_BSS_0208F304
	arm_func_end sub_020309B4

	arm_func_start sub_02030A40
sub_02030A40: ; 0x02030A40
	stmdb sp!, {r3, lr}
	ldr r0, _02030ACC ; =_0208F304
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x4c4]
	ldrh r0, [r0]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _02030ABC
	add r0, r1, #0x1000
	ldr r0, [r0, #0x4c8]
	ldrh r0, [r0]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _02030ABC
	add r0, r1, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02030ABC
	ldr r0, _02030ACC ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	beq _02030AC4
	arm_func_end sub_02030A40
_02030ABC:
	mov r0, #1
	ldmia sp!, {r3, pc}
_02030AC4:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02030ACC: .word MAIN_BSS_0208F304

	arm_func_start sub_02030AD0
sub_02030AD0: ; 0x02030AD0
	mov r0, #0
	bx lr
	arm_func_end sub_02030AD0

	arm_func_start sub_02030AD8
sub_02030AD8: ; 0x02030AD8
	stmdb sp!, {r3, lr}
	ldr r1, _02030B14 ; =MAIN_BSS_0210CA40
	ldr r2, [r1]
	cmp r2, #0
	mvnne r1, #0
	strne r1, [r2, #0x8c]
	ldr r1, _02030B18 ; =_0208F304
	ldr r0, [r0]
	ldr r2, [r1]
	mov r1, r0, lsl #0xc
	add r0, r2, #0x1000
	ldr r0, [r0, #0x4b8]
	bl sub_0200D8C8
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02030B14: .word MAIN_BSS_0210CA40
_02030B18: .word MAIN_BSS_0208F304
	arm_func_end sub_02030AD8

	arm_func_start sub_02030B1C
sub_02030B1C: ; 0x02030B1C
	stmdb sp!, {r3, lr}
	ldr r0, _02030B3C ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b8]
	bl sub_0200D980
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02030B3C: .word MAIN_BSS_0208F304
	arm_func_end sub_02030B1C

	arm_func_start sub_02030B40
sub_02030B40: ; 0x02030B40
	stmdb sp!, {r4, lr}
	ldr r2, _02030BB4 ; =MAIN_BSS_0210CA40
	ldr r4, [r2]
	cmp r4, #0
	beq _02030BAC
	mov r2, #0
	mov r3, r2
	mov ip, r2
	cmp r1, #0
	sub lr, r2, #1
	ble _02030B90
	cmp r1, #1
	ldr r2, [r0]
	ble _02030B90
	cmp r1, #2
	ldr r3, [r0, #4]
	ble _02030B90
	cmp r1, #3
	ldr ip, [r0, #8]
	ldrgt lr, [r0, #0xc]
	arm_func_end sub_02030B40
_02030B90:
	ldr r0, [r4, #0xd0]
	orr r0, r0, #2
	str r0, [r4, #0xd0]
	str r2, [r4, #0x68]
	str r3, [r4, #0x6c]
	str ip, [r4, #0x70]
	str lr, [r4, #0x74]
_02030BAC:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02030BB4: .word MAIN_BSS_0210CA40

	arm_func_start sub_02030BB8
sub_02030BB8: ; 0x02030BB8
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r0, _02030BEC ; =MAIN_BSS_020B26A0
	cmp r1, #0
	addeq r0, r0, #0x8000
	moveq r1, #0
	streqb r1, [r0, #0xb44]
	beq _02030BE4
	add r0, r0, #0x344
	add r0, r0, #0x8800
	bl strcpy
	arm_func_end sub_02030BB8
_02030BE4:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02030BEC: .word MAIN_BSS_020B26A0

	arm_func_start sub_02030BF0
sub_02030BF0: ; 0x02030BF0
	ldr r0, _02030C18 ; =MAIN_BSS_020BA6A0
	add r0, r0, #0xb00
	ldrsb r0, [r0, #0x44]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_02030C18: .word MAIN_BSS_020BA6A0
	arm_func_end sub_02030BF0

	arm_func_start sub_02030C1C
sub_02030C1C: ; 0x02030C1C
	stmdb sp!, {r4, r5, r6, lr}
	cmp r1, #1
	ldr r5, _02030C94 ; =MAIN_BSS_020B26A0
	blt _02030C8C
	ldr r1, _02030C98 ; =0x00000FFF
	ldr r2, [r0]
	add r0, r1, #0xff000
	and r6, r1, r2, asr #20
	and r4, r2, r0
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl sub_02015714
	ldrh r0, [r5, #0x1a]
	cmp r6, r0
	bne _02030C8C
	ldr r0, _02030C9C ; =MAIN_BSS_0210CA58
	ldr r1, [r0]
	cmp r1, #0
	beq _02030C8C
	ldr r0, [r1]
	cmp r0, r4
	movlt r1, #0
	ldrge r0, [r1, #4]
	ldrge r1, [r0, r4, lsl #2]
	cmp r1, #0
	movne r0, #1
	strne r0, [r1, #0x18]
	arm_func_end sub_02030C1C
_02030C8C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02030C94: .word MAIN_BSS_020B26A0
_02030C98: .word 0x00000FFF
_02030C9C: .word MAIN_BSS_0210CA58

	arm_func_start sub_02030CA0
sub_02030CA0: ; 0x02030CA0
	stmdb sp!, {r4, r5, r6, lr}
	cmp r1, #1
	ldr r5, _02030D18 ; =MAIN_BSS_020B26A0
	blt _02030D10
	ldr r1, _02030D1C ; =0x00000FFF
	ldr r2, [r0]
	add r0, r1, #0xff000
	and r6, r1, r2, asr #20
	and r4, r2, r0
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl sub_0201577C
	ldrh r0, [r5, #0x1a]
	cmp r6, r0
	bne _02030D10
	ldr r0, _02030D20 ; =MAIN_BSS_0210CA58
	ldr r1, [r0]
	cmp r1, #0
	beq _02030D10
	ldr r0, [r1]
	cmp r0, r4
	movlt r1, #0
	ldrge r0, [r1, #4]
	ldrge r1, [r0, r4, lsl #2]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x18]
	arm_func_end sub_02030CA0
_02030D10:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02030D18: .word MAIN_BSS_020B26A0
_02030D1C: .word 0x00000FFF
_02030D20: .word MAIN_BSS_0210CA58

	arm_func_start sub_02030D24
sub_02030D24: ; 0x02030D24
	stmdb sp!, {r4, r5, r6, lr}
	cmp r1, #2
	ldr r5, _02030D9C ; =MAIN_BSS_020B26A0
	blt _02030D94
	ldr r1, _02030DA0 ; =0x00000FFF
	ldr r2, [r0, #4]
	add r0, r1, #0xff000
	and r6, r1, r2, asr #20
	and r4, r2, r0
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl sub_02015714
	ldrh r0, [r5, #0x1a]
	cmp r6, r0
	bne _02030D94
	ldr r0, _02030DA4 ; =MAIN_BSS_0210CA58
	ldr r1, [r0]
	cmp r1, #0
	beq _02030D94
	ldr r0, [r1]
	cmp r0, r4
	movlt r1, #0
	ldrge r0, [r1, #4]
	ldrge r1, [r0, r4, lsl #2]
	cmp r1, #0
	movne r0, #1
	strne r0, [r1, #0x18]
	arm_func_end sub_02030D24
_02030D94:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02030D9C: .word MAIN_BSS_020B26A0
_02030DA0: .word 0x00000FFF
_02030DA4: .word MAIN_BSS_0210CA58

	arm_func_start sub_02030DA8
sub_02030DA8: ; 0x02030DA8
	stmdb sp!, {r4, r5, r6, lr}
	cmp r1, #2
	ldr r5, _02030E20 ; =MAIN_BSS_020B26A0
	blt _02030E18
	ldr r1, _02030E24 ; =0x00000FFF
	ldr r2, [r0, #4]
	add r0, r1, #0xff000
	and r6, r1, r2, asr #20
	and r4, r2, r0
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl sub_0201577C
	ldrh r0, [r5, #0x1a]
	cmp r6, r0
	bne _02030E18
	ldr r0, _02030E28 ; =MAIN_BSS_0210CA58
	ldr r1, [r0]
	cmp r1, #0
	beq _02030E18
	ldr r0, [r1]
	cmp r0, r4
	movlt r1, #0
	ldrge r0, [r1, #4]
	ldrge r1, [r0, r4, lsl #2]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x18]
	arm_func_end sub_02030DA8
_02030E18:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02030E20: .word MAIN_BSS_020B26A0
_02030E24: .word 0x00000FFF
_02030E28: .word MAIN_BSS_0210CA58

	arm_func_start sub_02030E2C
sub_02030E2C: ; 0x02030E2C
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl ov0_02161FD4
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02030E2C

	arm_func_start sub_02030E40
sub_02030E40: ; 0x02030E40
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r1, _02030E8C ; =MAIN_BSS_0210CA78
	ldmia r0, {r4, r5, r6, r7}
	ldr r8, [r1]
	cmp r8, #0
	beq _02030E80
	mov r0, r8
	mov r1, r4
	bl sub_02035CA4
	mov r0, r8
	mov r1, r4
	mov r2, r5
	mov r3, r6
	str r7, [sp]
	bl sub_02035DA0
	arm_func_end sub_02030E40
_02030E80:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02030E8C: .word MAIN_BSS_0210CA78

	arm_func_start sub_02030E90
sub_02030E90: ; 0x02030E90
	stmdb sp!, {r3, lr}
	ldr r3, _02030EB4 ; =MAIN_BSS_0210CA78
	ldmia r0, {r1, r2}
	ldr r0, [r3]
	cmp r0, #0
	beq _02030EAC
	bl sub_02035E3C
	arm_func_end sub_02030E90
_02030EAC:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02030EB4: .word MAIN_BSS_0210CA78

	arm_func_start sub_02030EB8
sub_02030EB8: ; 0x02030EB8
	stmdb sp!, {r3, lr}
	ldr r2, _02030EDC ; =MAIN_BSS_0210CA78
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02035ECC
	ldmia sp!, {r3, pc}
	.align 2, 0
_02030EDC: .word MAIN_BSS_0210CA78
	arm_func_end sub_02030EB8

	arm_func_start sub_02030EE0
sub_02030EE0: ; 0x02030EE0
	stmdb sp!, {r3, lr}
	ldr r3, _02030F04 ; =MAIN_BSS_0210CA78
	ldmia r0, {r1, r2}
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02035F50
	ldmia sp!, {r3, pc}
	.align 2, 0
_02030F04: .word MAIN_BSS_0210CA78
	arm_func_end sub_02030EE0

	arm_func_start sub_02030F08
sub_02030F08: ; 0x02030F08
	stmdb sp!, {r3, lr}
	ldr r1, _02030F34 ; =MAIN_BSS_0210CA40
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02030F2C
	ldmia r2, {r1, r2}
	and r1, r1, #0xff
	bl ov0_02124588
	arm_func_end sub_02030F08
_02030F2C:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02030F34: .word MAIN_BSS_0210CA40

	arm_func_start sub_02030F38
sub_02030F38: ; 0x02030F38
	stmdb sp!, {r3, lr}
	ldr r1, _02030F64 ; =MAIN_BSS_0210CA40
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02030F5C
	ldr r1, [r2]
	and r1, r1, #0xff
	bl ov0_021245C4
	arm_func_end sub_02030F38
_02030F5C:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02030F64: .word MAIN_BSS_0210CA40

	arm_func_start sub_02030F68
sub_02030F68: ; 0x02030F68
	stmdb sp!, {r3, lr}
	ldr r0, _02030F88 ; =MAIN_BSS_0210CA7C
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov0_0213D564
	ldmia sp!, {r3, pc}
	.align 2, 0
_02030F88: .word MAIN_BSS_0210CA7C
	arm_func_end sub_02030F68

	arm_func_start sub_02030F8C
sub_02030F8C: ; 0x02030F8C
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r1, _02031074 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_020113B4
	ldr r0, _02031074 ; =_0208F304
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B9C
	ldr r0, _02031074 ; =_0208F304
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C2C
	ldr r0, _02031074 ; =_0208F304
	mov r1, #0x28
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_0203499C
	ldr r0, _02031074 ; =_0208F304
	mov r1, #0x12
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034A40
	ldr r0, _02031074 ; =_0208F304
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA04
	ldr r0, _02031074 ; =_0208F304
	mov r1, #0xb4
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA48
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	ldr r0, _02031074 ; =_0208F304
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031074: .word MAIN_BSS_0208F304
	arm_func_end sub_02030F8C

	arm_func_start sub_02031078
sub_02031078: ; 0x02031078
	stmdb sp!, {r4, lr}
	ldr r0, _0203116C ; =MAIN_BSS_0210CA78
	mov r4, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _020310E8
	mov r1, #9
	bl sub_02035ECC
	ldr r1, _02031170 ; =_0208F304
	mov r4, r0
	ldr r0, [r1]
	mov r1, #0x18
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02019278
	cmp r0, #0
	ldr r0, _02031174 ; =MAIN_BSS_0210CA6C
	moveq r4, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _020310E8
	ldr r1, _02031178 ; =MAIN_BSS_020B26A0
	ldrh r1, [r1, #0x1a]
	bl sub_02041D80
	ldrb r0, [r0]
	sub r0, r0, #0x26
	cmp r0, #1
	movls r4, #0
	arm_func_end sub_02031078
_020310E8:
	cmp r4, #0
	beq _02031128
	ldr r0, _02031170 ; =_0208F304
	mov r1, #0xb1
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_0203499C
	ldr r0, _02031170 ; =_0208F304
	mov r1, #0x1a
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034A40
	b _02031164
_02031128:
	ldr r1, _02031170 ; =_0208F304
	ldr r0, _02031178 ; =MAIN_BSS_020B26A0
	ldr r2, [r1]
	ldrh r1, [r0, #0x1a]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	mov r2, #0x3c
	mov r3, #1
	bl sub_020346CC
	ldr r0, _02031170 ; =_0208F304
	mov r1, #0x100
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034F20
_02031164:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203116C: .word MAIN_BSS_0210CA78
_02031170: .word MAIN_BSS_0208F304
_02031174: .word MAIN_BSS_0210CA6C
_02031178: .word MAIN_BSS_020B26A0

	arm_func_start sub_0203117C
sub_0203117C: ; 0x0203117C
	stmdb sp!, {r3, lr}
	ldr r1, _02031200 ; =MAIN_BSS_0210CA40
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _020311A0
	ldr r0, [r0, #0x60]
	ldr r1, [r2]
	bl sub_0202982C
	arm_func_end sub_0203117C
_020311A0:
	mov r1, #1
	ldr r0, _02031204 ; =0x04000050
	sub r2, r1, #9
	bl G2x_SetBlendBrightness_
	ldr r0, _02031208 ; =_0208F304
	mov r1, #0x29
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_0203499C
	ldr r0, _02031208 ; =_0208F304
	mov r1, #6
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034A40
	ldr r0, _02031208 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_0201140C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031200: .word MAIN_BSS_0210CA40
_02031204: .word 0x04000050
_02031208: .word MAIN_BSS_0208F304

	arm_func_start sub_0203120C
sub_0203120C: ; 0x0203120C
	stmdb sp!, {r3, lr}
	ldr r0, _02031240 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _02031238
	ldr r0, [r0, #0x60]
	bl sub_0202A1AC
	cmp r0, #2
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0203120C
_02031238:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031240: .word MAIN_BSS_0210CA40

	arm_func_start sub_02031244
sub_02031244: ; 0x02031244
	stmdb sp!, {r3, lr}
	ldr r0, _020312B4 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _02031260
	ldr r0, [r0, #0x60]
	bl sub_0202A1B4
	arm_func_end sub_02031244
_02031260:
	ldr r0, _020312B8 ; =0x04000050
	mov r1, #1
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r1, _020312BC ; =_0208F304
	ldr r0, _020312C0 ; =MAIN_BSS_020B26A0
	ldr r2, [r1]
	ldrh r1, [r0, #0x1a]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	mov r2, #0x3c
	mov r3, #0
	bl sub_020346CC
	ldr r0, _020312BC ; =_0208F304
	mov r1, #0x100
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034F20
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020312B4: .word MAIN_BSS_0210CA40
_020312B8: .word 0x04000050
_020312BC: .word MAIN_BSS_0208F304
_020312C0: .word MAIN_BSS_020B26A0

	arm_func_start sub_020312C4
sub_020312C4: ; 0x020312C4
	stmdb sp!, {r3, lr}
	ldr r0, _02031334 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _020312E4
	ldr r0, [r0, #0x60]
	mov r1, #0x64
	bl sub_0202982C
	arm_func_end sub_020312C4
_020312E4:
	ldr r0, _02031338 ; =_0208F304
	mov r1, #0x2a
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_0203499C
	ldr r0, _02031338 ; =_0208F304
	mov r1, #7
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034A40
	ldr r0, _02031338 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_02011464
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031334: .word MAIN_BSS_0210CA40
_02031338: .word MAIN_BSS_0208F304

	arm_func_start sub_0203133C
sub_0203133C: ; 0x0203133C
	stmdb sp!, {r3, lr}
	ldr r0, _02031370 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _02031368
	ldr r0, [r0, #0x60]
	bl sub_0202A1AC
	cmp r0, #9
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0203133C
_02031368:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031370: .word MAIN_BSS_0210CA40

	arm_func_start sub_02031374
sub_02031374: ; 0x02031374
	stmdb sp!, {r3, lr}
	ldr r0, _020313E4 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _02031390
	ldr r0, [r0, #0x60]
	bl sub_0202A1B4
	arm_func_end sub_02031374
_02031390:
	mov r0, #0
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r1, [r0, #8]
	cmpne r1, #0
	beq _020313DC
	ldr r1, [r0, #4]
	tst r1, #8
	bne _020313DC
	orr r1, r1, #8
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	ldr r2, [r1, #0xc]
	cmp r2, #0
	movne r1, #0
	strne r1, [r2, #0x1dc]
	strneb r1, [r2, #0x1e1]
	mov r1, #0
	str r1, [r0, #0x94]
_020313DC:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020313E4: .word MAIN_BSS_0210CA40

	arm_func_start sub_020313E8
sub_020313E8: ; 0x020313E8
	ldr r0, _02031400 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	ldrb r0, [r0, #2]
	bx lr
	.align 2, 0
_02031400: .word MAIN_BSS_0208F304
	arm_func_end sub_020313E8

	arm_func_start sub_02031404
sub_02031404: ; 0x02031404
	stmdb sp!, {r3, lr}
	ldr r0, _02031424 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_0201140C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031424: .word MAIN_BSS_0208F304
	arm_func_end sub_02031404

	arm_func_start sub_02031428
sub_02031428: ; 0x02031428
	stmdb sp!, {r3, lr}
	ldr r1, _0203144C ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_020113B4
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0203144C: .word MAIN_BSS_0208F304
	arm_func_end sub_02031428

	arm_func_start sub_02031450
sub_02031450: ; 0x02031450
	stmdb sp!, {r3, lr}
	ldr r0, _02031470 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_02011464
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031470: .word MAIN_BSS_0208F304
	arm_func_end sub_02031450

	arm_func_start sub_02031474
sub_02031474: ; 0x02031474
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r1, _02031570 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_02011540
	ldr r0, _02031570 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E5C
	ldr r0, _02031570 ; =_0208F304
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B9C
	ldr r0, _02031570 ; =_0208F304
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C2C
	ldr r0, _02031570 ; =_0208F304
	mov r1, #0x28
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_0203499C
	ldr r0, _02031570 ; =_0208F304
	mov r1, #0x12
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034A40
	ldr r0, _02031570 ; =_0208F304
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA04
	ldr r0, _02031570 ; =_0208F304
	mov r1, #0xb4
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA48
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	ldr r0, _02031570 ; =_0208F304
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, #0x1c
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031570: .word MAIN_BSS_0208F304
	arm_func_end sub_02031474

	arm_func_start sub_02031574
sub_02031574: ; 0x02031574
	stmdb sp!, {r3, lr}
	ldr r0, _020315D0 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _02031594
	ldr r0, [r0, #0x60]
	mov r1, #0x65
	bl sub_0202982C
	arm_func_end sub_02031574
_02031594:
	ldr r0, _020315D4 ; =_0208F304
	mov r1, #0x2a
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_0203499C
	ldr r0, _020315D4 ; =_0208F304
	mov r1, #7
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034A40
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020315D0: .word MAIN_BSS_0210CA40
_020315D4: .word MAIN_BSS_0208F304

	arm_func_start sub_020315D8
sub_020315D8: ; 0x020315D8
	stmdb sp!, {r3, lr}
	ldr r0, _0203160C ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _02031604
	ldr r0, [r0, #0x60]
	bl sub_0202A1AC
	cmp r0, #9
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020315D8
_02031604:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0203160C: .word MAIN_BSS_0210CA40

	arm_func_start sub_02031610
sub_02031610: ; 0x02031610
	stmdb sp!, {r3, lr}
	ldr r0, _02031680 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _0203162C
	ldr r0, [r0, #0x60]
	bl sub_0202A1B4
	arm_func_end sub_02031610
_0203162C:
	mov r0, #0
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r1, [r0, #8]
	cmpne r1, #0
	beq _02031678
	ldr r1, [r0, #4]
	tst r1, #8
	bne _02031678
	orr r1, r1, #8
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	ldr r2, [r1, #0xc]
	cmp r2, #0
	movne r1, #0
	strne r1, [r2, #0x1dc]
	strneb r1, [r2, #0x1e1]
	mov r1, #0
	str r1, [r0, #0x94]
_02031678:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031680: .word MAIN_BSS_0210CA40

	arm_func_start sub_02031684
sub_02031684: ; 0x02031684
	stmdb sp!, {r3, lr}
	ldr r0, _020316A4 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_020115A8
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020316A4: .word MAIN_BSS_0208F304
	arm_func_end sub_02031684

	arm_func_start sub_020316A8
sub_020316A8: ; 0x020316A8
	ldr r1, _020316C4 ; =_0208F304
	ldr ip, _020316C8 ; =sub_02011630
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x4a0]
	bx ip
	.align 2, 0
_020316C4: .word MAIN_BSS_0208F304
_020316C8: .word sub_02011630
	arm_func_end sub_020316A8

	arm_func_start sub_020316CC
sub_020316CC: ; 0x020316CC
	ldr r0, _020316E4 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	ldrb r0, [r0, #3]
	bx lr
	.align 2, 0
_020316E4: .word MAIN_BSS_0208F304
	arm_func_end sub_020316CC

	arm_func_start sub_020316E8
sub_020316E8: ; 0x020316E8
	stmdb sp!, {r3, lr}
	ldr r0, _02031708 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_020115F8
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031708: .word MAIN_BSS_0208F304
	arm_func_end sub_020316E8

	arm_func_start sub_0203170C
sub_0203170C: ; 0x0203170C
	stmdb sp!, {r3, lr}
	ldr r1, _02031730 ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_020114C4
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031730: .word MAIN_BSS_0208F304
	arm_func_end sub_0203170C

	arm_func_start sub_02031734
sub_02031734: ; 0x02031734
	ldr r1, _02031750 ; =_0208F304
	ldr ip, _02031754 ; =sub_020114F8
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x4a0]
	bx ip
	.align 2, 0
_02031750: .word MAIN_BSS_0208F304
_02031754: .word sub_020114F8
	arm_func_end sub_02031734

	arm_func_start sub_02031758
sub_02031758: ; 0x02031758
	stmdb sp!, {r3, lr}
	ldr r1, _0203177C ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_02011514
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0203177C: .word MAIN_BSS_0208F304
	arm_func_end sub_02031758

	arm_func_start sub_02031780
sub_02031780: ; 0x02031780
	ldr r1, _0203179C ; =_0208F304
	ldr ip, _020317A0 ; =sub_02011528
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x4a0]
	bx ip
	.align 2, 0
_0203179C: .word MAIN_BSS_0208F304
_020317A0: .word sub_02011528
	arm_func_end sub_02031780

	arm_func_start sub_020317A4
sub_020317A4: ; 0x020317A4
	stmdb sp!, {r3, lr}
	ldr r0, _02031800 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _020317C4
	ldr r0, [r0, #0x60]
	mov r1, #0x66
	bl sub_0202982C
	arm_func_end sub_020317A4
_020317C4:
	ldr r0, _02031804 ; =_0208F304
	mov r1, #0x32
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_0203499C
	ldr r0, _02031804 ; =_0208F304
	mov r1, #0x34
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034A40
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031800: .word MAIN_BSS_0210CA40
_02031804: .word MAIN_BSS_0208F304

	arm_func_start sub_02031808
sub_02031808: ; 0x02031808
	stmdb sp!, {r3, lr}
	ldr r0, _0203183C ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _02031834
	ldr r0, [r0, #0x60]
	bl sub_0202A1AC
	cmp r0, #9
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02031808
_02031834:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0203183C: .word MAIN_BSS_0210CA40

	arm_func_start sub_02031840
sub_02031840: ; 0x02031840
	stmdb sp!, {r3, lr}
	ldr r0, _020318B0 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	beq _0203185C
	ldr r0, [r0, #0x60]
	bl sub_0202A1B4
	arm_func_end sub_02031840
_0203185C:
	mov r0, #0
	bl sub_0202BCD4
	cmp r0, #0
	ldrne r1, [r0, #8]
	cmpne r1, #0
	beq _020318A8
	ldr r1, [r0, #4]
	tst r1, #8
	bne _020318A8
	orr r1, r1, #8
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	ldr r2, [r1, #0xc]
	cmp r2, #0
	movne r1, #0
	strne r1, [r2, #0x1dc]
	strneb r1, [r2, #0x1e1]
	mov r1, #0
	str r1, [r0, #0x94]
_020318A8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020318B0: .word MAIN_BSS_0210CA40

	arm_func_start sub_020318B4
sub_020318B4: ; 0x020318B4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	mov r0, #0x1c
	mul r0, r1, r0
	ldr r1, _020319A8 ; =s_c000First_0208ac1c
	ldr r2, _020319AC ; =MAIN_BSS_020B26A0
	adds r1, r1, r0
	addeq r0, r2, #0x8000
	moveq r1, #0
	streqb r1, [r0, #0xb44]
	beq _020318F0
	add r0, r2, #0x344
	add r0, r0, #0x8800
	bl strcpy
	arm_func_end sub_020318B4
_020318F0:
	ldr r0, _020319B0 ; =_0208F304
	mov r2, #1
	ldr r0, [r0]
	ldr r1, _020319B4 ; =MAIN_BSS_0210CA40
	add r0, r0, #0x1000
	ldr r0, [r0, #0x49c]
	str r2, [r0, #0x18]
	ldr r0, [r1]
	cmp r0, #0
	beq _0203195C
	ldr r2, [r4]
	mov r1, #0x1c
	mul r3, r2, r1
	ldr r2, [r0, #0xd0]
	ldr r1, _020319B8 ; =DAT_0208ac2c
	orr r2, r2, #2
	str r2, [r0, #0xd0]
	ldr r2, [r1, r3]
	ldr r1, _020319BC ; =DAT_0208ac30
	str r2, [r0, #0x68]
	ldr r2, [r1, r3]
	ldr r1, _020319C0 ; =DAT_0208ac34
	str r2, [r0, #0x6c]
	ldr r2, [r1, r3]
	mov r1, #0
	str r2, [r0, #0x70]
	str r1, [r0, #0x74]
_0203195C:
	ldr r0, _020319B0 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E30
	ldr r0, _020319B0 ; =_0208F304
	ldr r1, [r4]
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E94
	ldr r0, _020319B0 ; =_0208F304
	ldr r1, [r4]
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_0201164C
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_020319A8: .word s_c000First_0208ac1c
_020319AC: .word MAIN_BSS_020B26A0
_020319B0: .word MAIN_BSS_0208F304
_020319B4: .word MAIN_BSS_0210CA40
_020319B8: .word DAT_0208ac2c
_020319BC: .word DAT_0208ac30
_020319C0: .word DAT_0208ac34

	arm_func_start sub_020319C4
sub_020319C4: ; 0x020319C4
	mov r0, #0
	bx lr
	arm_func_end sub_020319C4

	arm_func_start sub_020319CC
sub_020319CC: ; 0x020319CC
	ldr r0, _020319E4 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_020319E4: .word MAIN_BSS_0208F304
	arm_func_end sub_020319CC

	arm_func_start sub_020319E8
sub_020319E8: ; 0x020319E8
	stmdb sp!, {r4, lr}
	ldr r1, _02031B28 ; =_0208F304
	mov r4, r0
	ldr r0, [r1]
	mov r1, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B9C
	ldr r0, _02031B28 ; =_0208F304
	mov r1, #0x1e
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C2C
	ldr r0, _02031B28 ; =_0208F304
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034F4C
	ldr r2, _02031B2C ; =MAIN_BSS_020B26A0
	ldr r0, _02031B30 ; =MAIN_BSS_0210CA40
	ldrb r1, [r2, #2]
	ldr r0, [r0]
	strb r1, [r2, #1]
	cmp r0, #0
	beq _02031A64
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #0xd8]
	mov r1, r1, lsr #0x10
	bl sub_0201A018
	arm_func_end sub_020319E8
_02031A64:
	ldr r0, _02031B28 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E30
	ldr r0, _02031B28 ; =_0208F304
	ldr r1, [r4]
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E94
	ldr r0, _02031B28 ; =_0208F304
	ldr r1, [r4]
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_0201164C
	ldr r1, [r4]
	mov r0, #0x1c
	mul r0, r1, r0
	ldr r1, _02031B34 ; =s_c000First_0208ac1c
	ldr r2, _02031B2C ; =MAIN_BSS_020B26A0
	adds r1, r1, r0
	addeq r0, r2, #0x8000
	moveq r1, #0
	streqb r1, [r0, #0xb44]
	beq _02031ADC
	add r0, r2, #0x344
	add r0, r0, #0x8800
	bl strcpy
_02031ADC:
	ldr r2, _02031B28 ; =_0208F304
	mov r3, #1
	ldr r0, [r2]
	ldr r1, _02031B30 ; =MAIN_BSS_0210CA40
	add r0, r0, #0x1000
	ldr r0, [r0, #0x49c]
	str r3, [r0, #0x18]
	ldr r0, [r2]
	add r0, r0, #0x1000
	ldr r2, [r0, #0x4a0]
	ldr r0, [r2, #8]
	str r0, [r2, #0x10]
	ldr r1, [r1]
	cmp r1, #0
	ldrne r0, [r1, #0xd0]
	orrne r0, r0, #0x20
	strne r0, [r1, #0xd0]
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02031B28: .word MAIN_BSS_0208F304
_02031B2C: .word MAIN_BSS_020B26A0
_02031B30: .word MAIN_BSS_0210CA40
_02031B34: .word s_c000First_0208ac1c

	arm_func_start sub_02031B38
sub_02031B38: ; 0x02031B38
	stmdb sp!, {r3, lr}
	ldr r1, _02031B5C ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_020116A8
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031B5C: .word MAIN_BSS_0208F304
	arm_func_end sub_02031B38

	arm_func_start sub_02031B60
sub_02031B60: ; 0x02031B60
	ldr r1, _02031B7C ; =_0208F304
	ldr ip, _02031B80 ; =sub_02018E54
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x4b4]
	bx ip
	.align 2, 0
_02031B7C: .word MAIN_BSS_0208F304
_02031B80: .word sub_02018E54
	arm_func_end sub_02031B60

	arm_func_start sub_02031B84
sub_02031B84: ; 0x02031B84
	stmdb sp!, {r3, lr}
	ldr r1, _02031BAC ; =_0208F304
	mov r2, r0
	ldr r0, [r1]
	ldmia r2, {r1, r2}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E4C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031BAC: .word MAIN_BSS_0208F304
	arm_func_end sub_02031B84

	arm_func_start sub_02031BB0
sub_02031BB0: ; 0x02031BB0
	ldr r1, _02031BCC ; =_0208F304
	ldr ip, _02031BD0 ; =sub_02019278
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x4b4]
	bx ip
	.align 2, 0
_02031BCC: .word MAIN_BSS_0208F304
_02031BD0: .word sub_02019278
	arm_func_end sub_02031BB0

	arm_func_start sub_02031BD4
sub_02031BD4: ; 0x02031BD4
	stmdb sp!, {r3, lr}
	ldr r1, _02031BFC ; =_0208F304
	mov r2, r0
	ldr r0, [r1]
	ldmia r2, {r1, r2}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_0201926C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031BFC: .word MAIN_BSS_0208F304
	arm_func_end sub_02031BD4

	arm_func_start sub_02031C00
sub_02031C00: ; 0x02031C00
	ldr r1, _02031C1C ; =_0208F304
	ldr ip, _02031C20 ; =sub_02018E88
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x4b4]
	bx ip
	.align 2, 0
_02031C1C: .word MAIN_BSS_0208F304
_02031C20: .word sub_02018E88
	arm_func_end sub_02031C00

	arm_func_start sub_02031C24
sub_02031C24: ; 0x02031C24
	stmdb sp!, {r3, lr}
	ldr r1, _02031C4C ; =_0208F304
	mov r2, r0
	ldr r0, [r1]
	ldmia r2, {r1, r2}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E7C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031C4C: .word MAIN_BSS_0208F304
	arm_func_end sub_02031C24

	arm_func_start sub_02031C50
sub_02031C50: ; 0x02031C50
	stmdb sp!, {r3, lr}
	ldr r0, _02031CB0 ; =MAIN_BSS_0210CA4C
	ldr ip, [r0]
	cmp ip, #0
	beq _02031CA8
	ldr r2, [ip, #4]
	mov r3, #0
	cmp r2, #0
	ble _02031CA8
	mov r1, r3
	arm_func_end sub_02031C50
_02031C78:
	ldr r0, [ip, #4]
	cmp r0, r3
	ldrgt r0, [ip, #8]
	movle lr, r1
	ldrgt lr, [r0, r3, lsl #2]
	add r3, r3, #1
	cmp lr, #0
	ldrne r0, [lr, #4]
	orrne r0, r0, #1
	strne r0, [lr, #4]
	cmp r3, r2
	blt _02031C78
_02031CA8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031CB0: .word MAIN_BSS_0210CA4C

	arm_func_start sub_02031CB4
sub_02031CB4: ; 0x02031CB4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	ldr r0, _02031DF8 ; =MAIN_BSS_0210CA4C
	ldr r8, [r0]
	cmp r8, #0
	beq _02031DEC
	ldr r0, _02031DFC ; =MAIN_BSS_0210CA48
	ldr r6, [r8, #4]
	ldr r0, [r0]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02031D24
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02031D04
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	b _02031D1C
	arm_func_end sub_02031CB4
_02031D04:
	mov r0, #0
	add r1, sp, #0x10
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
_02031D1C:
	add r2, sp, #0x18
	b _02031D40
_02031D24:
	mov r0, #0
	add r1, sp, #8
	add r2, sp, #0x18
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
_02031D40:
	ldr r5, [r2]
	ldr r4, [r2, #4]
	str r5, [sp, #0x20]
	str r4, [sp, #0x24]
	cmp r6, #0
	add fp, sp, #0x20
	mov r7, #0
	ble _02031DEC
_02031D60:
	ldr r0, [r8, #4]
	cmp r0, r7
	ldrgt r0, [r8, #8]
	movle sl, #0
	ldrgt sl, [r0, r7, lsl #2]
	cmp sl, #0
	beq _02031DE0
	ldr r0, [sl, #4]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02031DE0
	ldr sb, [sl, #8]
	cmp sb, #0
	ldrne r0, [sb, #0xc]
	cmpne r0, #0
	beq _02031DD4
	add r0, r0, #0xc
	ldmia fp, {r1, r2}
	bl sub_02011D3C
	ldr r0, [sb, #0xc]
	ldr r0, [r0, #0xc4]
	cmp r0, #0
	beq _02031DD4
	str r5, [r0, #0x18]
	str r5, [sp]
	str r4, [sp, #4]
	str r4, [r0, #0x1c]
_02031DD4:
	ldr r0, [sl, #4]
	bic r0, r0, #1
	str r0, [sl, #4]
_02031DE0:
	add r7, r7, #1
	cmp r7, r6
	blt _02031D60
_02031DEC:
	mov r0, #0
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02031DF8: .word MAIN_BSS_0210CA4C
_02031DFC: .word MAIN_BSS_0210CA48

	arm_func_start sub_02031E00
sub_02031E00: ; 0x02031E00
	stmdb sp!, {r3, lr}
	ldr r1, _02031E2C ; =MAIN_BSS_0210CA4C
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r0, #0
	beq _02031E24
	mov r1, #1
	mov r3, r1
	bl ov0_0213A96C
	arm_func_end sub_02031E00
_02031E24:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031E2C: .word MAIN_BSS_0210CA4C

	arm_func_start sub_02031E30
sub_02031E30: ; 0x02031E30
	stmdb sp!, {r3, lr}
	ldr r0, _02031E50 ; =MAIN_BSS_0210CA4C
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov0_0213B048
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031E50: .word MAIN_BSS_0210CA4C
	arm_func_end sub_02031E30

	arm_func_start sub_02031E54
sub_02031E54: ; 0x02031E54
	stmdb sp!, {r3, lr}
	ldr r0, _02031E74 ; =MAIN_BSS_0210CA4C
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov0_0213B0F0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031E74: .word MAIN_BSS_0210CA4C
	arm_func_end sub_02031E54

	arm_func_start sub_02031E78
sub_02031E78: ; 0x02031E78
	stmdb sp!, {r3, lr}
	ldr r1, _02031EA4 ; =MAIN_BSS_0210CA4C
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r0, #0
	beq _02031E9C
	mov r1, #0
	mov r3, #1
	bl ov0_0213A96C
	arm_func_end sub_02031E78
_02031E9C:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031EA4: .word MAIN_BSS_0210CA4C

	arm_func_start sub_02031EA8
sub_02031EA8: ; 0x02031EA8
	stmdb sp!, {r3, lr}
	ldr r1, _02031ED4 ; =MAIN_BSS_0210CA4C
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r0, #0
	beq _02031ECC
	mov r1, #0
	mov r3, r1
	bl ov0_0213A96C
	arm_func_end sub_02031EA8
_02031ECC:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031ED4: .word MAIN_BSS_0210CA4C

	arm_func_start sub_02031ED8
sub_02031ED8: ; 0x02031ED8
	stmdb sp!, {r3, lr}
	ldr r2, _02031EFC ; =MAIN_BSS_0210CA4C
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r0, #0
	beq _02031EF4
	bl ov0_0213AD8C
	arm_func_end sub_02031ED8
_02031EF4:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031EFC: .word MAIN_BSS_0210CA4C

	arm_func_start sub_02031F00
sub_02031F00: ; 0x02031F00
	stmdb sp!, {r3, lr}
	ldr r2, _02031F24 ; =MAIN_BSS_0210CA4C
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r0, #0
	beq _02031F1C
	bl ov0_0213B150
	arm_func_end sub_02031F00
_02031F1C:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031F24: .word MAIN_BSS_0210CA4C

	arm_func_start sub_02031F28
sub_02031F28: ; 0x02031F28
	stmdb sp!, {r3, lr}
	ldr r2, _02031F4C ; =MAIN_BSS_0210CA4C
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r0, #0
	beq _02031F44
	bl ov0_0213B184
	arm_func_end sub_02031F28
_02031F44:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02031F4C: .word MAIN_BSS_0210CA4C

	arm_func_start sub_02031F50
sub_02031F50: ; 0x02031F50
	ldr r0, _02031F60 ; =MAIN_BSS_0210CA4C
	ldr r0, [r0]
	ldr r0, [r0, #0x88]
	bx lr
	.align 2, 0
_02031F60: .word MAIN_BSS_0210CA4C
	arm_func_end sub_02031F50

	arm_func_start sub_02031F64
sub_02031F64: ; 0x02031F64
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02031FD0 ; =MAIN_BSS_0210CA4C
	ldr r3, [r0]
	ldr lr, [r1]
	mov r0, #0
	cmp lr, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r4, [lr, #4]
	mov ip, r0
	cmp r4, #0
	ldmleia sp!, {r3, r4, r5, pc}
	mov r2, r0
	arm_func_end sub_02031F64
_02031F94:
	cmp r4, ip
	ldrgt r1, [lr, #8]
	movle r5, r2
	ldrgt r5, [r1, ip, lsl #2]
	cmp r5, #0
	beq _02031FC0
	ldr r1, [r5, #0x200]
	cmp r3, r1
	ldreq r1, [r5, #0x1fc]
	cmpeq r1, #0
	addeq r0, r0, #1
_02031FC0:
	add ip, ip, #1
	cmp ip, r4
	blt _02031F94
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02031FD0: .word MAIN_BSS_0210CA4C

	arm_func_start sub_02031FD4
sub_02031FD4: ; 0x02031FD4
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	mov r0, r1, asr #0x18
	and r0, r0, #0xff
	cmp r0, #2
	moveq r2, #5
	beq _0203200C
	cmp r0, #1
	moveq r2, #6
	beq _0203200C
	ldr r0, _02032078 ; =s_error_actorid_x_is_not_enemy_o_0208d48c
	bl LogError
	arm_func_end sub_02031FD4

	arm_func_start sub_02032004
sub_02032004: ; 0x02032004
	mov r0, #0
	arm_func_end sub_02032004

	arm_func_start sub_02032008
sub_02032008: ; 0x02032008
	ldmia sp!, {r3, pc}
	arm_func_end sub_02032008
_0203200C:
	ldr r0, _0203207C ; =MAIN_BSS_0210CA4C
	bic r1, r1, #0xff000000
	ldr r0, [r0]
	orr r2, r1, r2, lsl #24
	cmp r0, #0
	beq _02032070
	ldr r3, [r0, #4]
	mov r1, #0
	cmp r3, #0
	ble _02032060
	ldr ip, [r0, #8]
_02032038:
	ldr r0, [ip, r1, lsl #2]
	cmp r0, #0
	beq _02032054
	ldr r0, [r0, #0x58]
	cmp r2, r0
	ldreq r0, [ip, r1, lsl #2]
	beq _02032064
_02032054:
	add r1, r1, #1
	cmp r1, r3
	blt _02032038
_02032060:
	mov r0, #0
_02032064:
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
_02032070:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02032078: .word s_error_actorid_x_is_not_enemy_o_0208d48c
_0203207C: .word MAIN_BSS_0210CA4C

	arm_func_start sub_02032080
sub_02032080: ; 0x02032080
	stmdb sp!, {r3, lr}
	ldr r2, _020320A4 ; =MAIN_BSS_0210CA4C
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov0_0213A4C4
	ldmia sp!, {r3, pc}
	.align 2, 0
_020320A4: .word MAIN_BSS_0210CA4C
	arm_func_end sub_02032080

	arm_func_start sub_020320A8
sub_020320A8: ; 0x020320A8
	stmdb sp!, {r3, lr}
	mov r0, #1
	bl sub_0202BCD4
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020320A8

	arm_func_start sub_020320C4
sub_020320C4: ; 0x020320C4
	stmdb sp!, {r3, lr}
	ldr r2, _020320E8 ; =MAIN_BSS_0210CA4C
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov0_0213A520
	ldmia sp!, {r3, pc}
	.align 2, 0
_020320E8: .word MAIN_BSS_0210CA4C
	arm_func_end sub_020320C4

	arm_func_start sub_020320EC
sub_020320EC: ; 0x020320EC
	stmdb sp!, {r3, r4, r5, lr}
	ldmia r0, {r4, r5}
	mov r0, r4
	bl sub_0202BCD4
	cmp r0, #0
	beq _02032120
	ldr r1, [r0, #0x58]
	mov r1, r1, asr #0x18
	and r1, r1, #0xff
	cmp r1, #5
	bne _02032120
	mov r1, r5
	bl ov0_0213E158
	arm_func_end sub_020320EC
_02032120:
	ldr r0, _02032144 ; =MAIN_BSS_020B26A0
	mov r1, r4
	bl sub_0201549C
	cmp r0, #0
	beq _0203213C
	mov r1, r5
	bl sub_02015164
_0203213C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02032144: .word MAIN_BSS_020B26A0

	arm_func_start sub_02032148
sub_02032148: ; 0x02032148
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r0, _02032170 ; =MAIN_BSS_020B26A0
	bl sub_02015520
	cmp r0, #0
	ldrne r1, [r0, #8]
	orrne r1, r1, #4
	strne r1, [r0, #8]
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02032170: .word MAIN_BSS_020B26A0
	arm_func_end sub_02032148

	arm_func_start sub_02032174
sub_02032174: ; 0x02032174
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r0, _0203219C ; =MAIN_BSS_020B26A0
	bl sub_02015520
	cmp r0, #0
	ldrne r1, [r0, #8]
	bicne r1, r1, #4
	strne r1, [r0, #8]
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0203219C: .word MAIN_BSS_020B26A0
	arm_func_end sub_02032174

	arm_func_start sub_020321A0
sub_020321A0: ; 0x020321A0
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r0, _020321C8 ; =MAIN_BSS_020B26A0
	bl sub_02015520
	cmp r0, #0
	ldrne r1, [r0, #8]
	orrne r1, r1, #2
	strne r1, [r0, #8]
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020321C8: .word MAIN_BSS_020B26A0
	arm_func_end sub_020321A0

	arm_func_start sub_020321CC
sub_020321CC: ; 0x020321CC
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r0, _020321F4 ; =MAIN_BSS_020B26A0
	bl sub_02015520
	cmp r0, #0
	ldrne r1, [r0, #8]
	bicne r1, r1, #2
	strne r1, [r0, #8]
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020321F4: .word MAIN_BSS_020B26A0
	arm_func_end sub_020321CC

	arm_func_start sub_020321F8
sub_020321F8: ; 0x020321F8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _020322A4 ; =MAIN_BSS_0210CA4C
	ldr r4, _020322A8 ; =MAIN_BSS_020B26A0
	ldr r8, [r0]
	cmp r8, #0
	cmpne r4, #0
	beq _0203229C
	mov r0, r4
	mvn r1, #0
	bl sub_02016138
	mov r5, r0
	mov r6, #0
	mov r7, r6
	cmp r5, #0
	ble _0203229C
	ldr sb, _020322AC ; =0x00000FFF
	arm_func_end sub_020321F8
_02032238:
	mov r0, r4
	mov r1, r6
	bl sub_020155FC
	cmp r0, #0
	beq _02032290
	ldr r1, [r0, #8]
	tst r1, #2
	addne r6, r6, #1
	bne _02032290
	ldrh r1, [r0, #2]
	ldrh r2, [r0, #4]
	mov r0, r8
	mov r1, r1, lsl #0x14
	mov r1, r1, lsr #8
	and r2, r2, sb
	orr r1, r1, #0x6000000
	orr sl, r2, r1
	mov r1, sl
	bl ov0_0213A050
	mov r0, r4
	mov r1, sl
	bl sub_02015E54
_02032290:
	add r7, r7, #1
	cmp r7, r5
	blt _02032238
_0203229C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_020322A4: .word MAIN_BSS_0210CA4C
_020322A8: .word MAIN_BSS_020B26A0
_020322AC: .word 0x00000FFF

	arm_func_start sub_020322B0
sub_020322B0: ; 0x020322B0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _02032384 ; =MAIN_BSS_0210CA4C
	mov r2, #0
	ldr r6, [r0]
	cmp r6, #0
	beq _02032354
	ldr r3, [r6, #0x88]
	mov lr, r2
	cmp r3, #0
	ldr ip, [r6, #0x84]
	ble _02032354
	ldr r7, [r6, #4]
	mov r0, r2
	mov sb, r2
	mov r1, r2
	arm_func_end sub_020322B0
_020322EC:
	mov r4, r1
	cmp r7, #0
	ble _0203232C
	add r5, ip, lr
_020322FC:
	cmp r7, r4
	movle r8, r0
	ldrgt r8, [r6, #8]
	ldrgt r8, [r8, r4, lsl #2]
	cmp r8, #0
	beq _02032320
	ldr sl, [r8, #0x1e8]
	cmp r5, sl
	beq _02032330
_02032320:
	add r4, r4, #1
	cmp r4, r7
	blt _020322FC
_0203232C:
	mov r8, sb
_02032330:
	cmp r8, #0
	beq _02032348
	ldr r4, [r8, #4]
	tst r4, #0x20
	ldrne r2, [r8, #0x200]
	bne _02032354
_02032348:
	add lr, lr, #1
	cmp lr, r3
	blt _020322EC
_02032354:
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _02032388 ; =_0208F304
	mov r0, r2, lsl #0x10
	ldr r2, [r1]
	mov r1, r0, lsr #0x10
	add r0, r2, #0x1000
	ldr r0, [r0, #0x434]
	bl sub_020107A8
	ldrh r0, [r0]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02032384: .word MAIN_BSS_0210CA4C
_02032388: .word MAIN_BSS_0208F304

	arm_func_start sub_0203238C
sub_0203238C: ; 0x0203238C
	stmdb sp!, {r3, lr}
	ldr r2, _020323B0 ; =MAIN_BSS_0210CA4C
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r0, #0
	beq _020323A8
	bl ov0_02139F10
	arm_func_end sub_0203238C
_020323A8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020323B0: .word MAIN_BSS_0210CA4C

	arm_func_start sub_020323B4
sub_020323B4: ; 0x020323B4
	ldr r0, _020323C4 ; =MAIN_BSS_0210CA4C
	ldr r0, [r0]
	ldr r0, [r0, #0x84]
	bx lr
	.align 2, 0
_020323C4: .word MAIN_BSS_0210CA4C
	arm_func_end sub_020323B4

	arm_func_start sub_020323C8
sub_020323C8: ; 0x020323C8
	stmdb sp!, {r3, lr}
	ldr r1, _020324A0 ; =MAIN_BSS_0210CA4C
	ldr r3, [r0]
	ldr r0, [r1]
	ldr r1, _020324A4 ; =MAIN_BSS_020B26A0
	cmp r0, #0
	cmpne r1, #0
	beq _02032498
	ldr ip, [r0, #4]
	mov r2, #0
	cmp ip, #0
	ble _02032424
	ldr lr, [r0, #8]
	arm_func_end sub_020323C8
_020323FC:
	ldr r0, [lr, r2, lsl #2]
	cmp r0, #0
	beq _02032418
	ldr r0, [r0, #0x58]
	cmp r3, r0
	ldreq r2, [lr, r2, lsl #2]
	beq _02032428
_02032418:
	add r2, r2, #1
	cmp r2, ip
	blt _020323FC
_02032424:
	mov r2, #0
_02032428:
	cmp r2, #0
	beq _02032498
	ldrb r0, [r2, #0x20]
	mov r3, #1
	cmp r0, #2
	cmpne r0, #3
	movne r3, #0
	cmp r3, #0
	beq _02032498
	ldr r0, [r2, #4]
	tst r0, #1
	movne r3, #1
	moveq r3, #0
	cmp r3, #0
	bne _02032498
	tst r0, #0x20
	bne _02032490
	ldr r0, [r2, #0x1fc]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	addeq r0, r1, #0x8000
	ldreqb r0, [r0, #0xb64]
	cmpeq r0, #4
	beq _02032498
_02032490:
	mov r0, #1
	ldmia sp!, {r3, pc}
_02032498:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020324A0: .word MAIN_BSS_0210CA4C
_020324A4: .word MAIN_BSS_020B26A0

	arm_func_start sub_020324A8
sub_020324A8: ; 0x020324A8
	stmdb sp!, {r3, lr}
	ldr r0, _020324D4 ; =MAIN_BSS_0210CA6C
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, _020324D8 ; =MAIN_BSS_020B26A0
	ldrh r1, [r1, #0x1a]
	bl sub_02041D80
	ldrb r0, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_020324D4: .word MAIN_BSS_0210CA6C
_020324D8: .word MAIN_BSS_020B26A0
	arm_func_end sub_020324A8

	arm_func_start sub_020324DC
sub_020324DC: ; 0x020324DC
	stmdb sp!, {r3, lr}
	ldr r1, _0203252C ; =MAIN_BSS_0210CA60
	ldr r3, [r1]
	cmp r3, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, [r0]
	cmp r2, #0
	blt _02032524
	cmp r2, #0x29
	bhs _02032524
	ldr r1, _02032530 ; =DAT_0208ccc8
	ldr r0, _02032534 ; =DAT_0208cccc
	ldr r1, [r1, r2, lsl #3]
	ldr r2, [r0, r2, lsl #3]
	mov r0, r3
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020324DC
_02032524:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0203252C: .word MAIN_BSS_0210CA60
_02032530: .word DAT_0208ccc8
_02032534: .word DAT_0208cccc

	arm_func_start sub_02032538
sub_02032538: ; 0x02032538
	stmdb sp!, {r4, lr}
	ldr r1, _02032580 ; =MAIN_BSS_0210CA60
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02032578
	ldr r1, [r4]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	cmp r0, #0
	beq _02032578
	ldr ip, [r0]
	ldmib r4, {r1, r2, r3}
	ldr ip, [ip, #0x1c]
	blx ip
	arm_func_end sub_02032538
_02032578:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02032580: .word MAIN_BSS_0210CA60

	arm_func_start sub_02032584
sub_02032584: ; 0x02032584
	stmdb sp!, {r3, lr}
	ldr r1, _020325BC ; =MAIN_BSS_0210CA60
	ldr r2, [r0]
	ldr r0, [r1]
	mov r1, r2, lsl #0x10
	cmp r0, #0
	mov r1, r1, lsr #0x10
	beq _020325B4
	bl ov0_02143088
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
	arm_func_end sub_02032584
_020325B4:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020325BC: .word MAIN_BSS_0210CA60

	arm_func_start sub_020325C0
sub_020325C0: ; 0x020325C0
	stmdb sp!, {r3, lr}
	ldr r1, _020325EC ; =MAIN_BSS_0210CA60
	ldr r2, [r0]
	ldr r0, [r1]
	mov r1, r2, lsl #0x10
	cmp r0, #0
	mov r1, r1, lsr #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov0_021430D8
	ldmia sp!, {r3, pc}
	.align 2, 0
_020325EC: .word MAIN_BSS_0210CA60
	arm_func_end sub_020325C0

	arm_func_start sub_020325F0
sub_020325F0: ; 0x020325F0
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r0, _02032620 ; =MAIN_BSS_0210CA60
	cmp r1, #1
	ldr r0, [r0]
	bne _02032618
	mov r1, #0x1f
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020325F0
_02032618:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02032620: .word MAIN_BSS_0210CA60

	arm_func_start sub_02032624
sub_02032624: ; 0x02032624
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	ldr r1, _020326C8 ; =MAIN_BSS_0210CA60
	ldr r4, [r0]
	ldr r3, [r0, #4]
	ldr r2, [r0, #8]
	ldr r7, [r1]
	mov r1, r4, lsl #0x10
	mov r3, r3, lsl #0xc
	mov r2, r2, lsl #0xc
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	cmp r7, #0
	mov r1, r1, lsr #0x10
	ldr r4, [r0, #0xc]
	ldr r5, [r0, #0x10]
	ldr r6, [r0, #0x14]
	beq _020326BC
	mov r0, r7
	bl ov0_02143088
	movs r7, r0
	beq _020326BC
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr ip, [r0]
	add r1, sp, #0xc
	ldr ip, [ip, #0x34]
	ldmia r1, {r1, r2}
	blx ip
	mov r0, r7
	ldr ip, [r0]
	mov r1, r4
	ldr ip, [ip, #0x1c]
	mov r2, r5
	mov r3, r6
	blx ip
	arm_func_end sub_02032624
_020326BC:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_020326C8: .word MAIN_BSS_0210CA60

	arm_func_start sub_020326CC
sub_020326CC: ; 0x020326CC
	stmdb sp!, {r3, lr}
	ldr r1, _02032704 ; =MAIN_BSS_0210CA60
	ldr r2, [r0]
	ldr r0, [r1]
	mov r1, r2, lsl #0x10
	cmp r0, #0
	mov r1, r1, lsr #0x10
	beq _020326FC
	bl ov0_02143088
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
	arm_func_end sub_020326CC
_020326FC:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02032704: .word MAIN_BSS_0210CA60

	arm_func_start sub_02032708
sub_02032708: ; 0x02032708
	stmdb sp!, {r4, lr}
	ldr r1, _02032764 ; =MAIN_BSS_0210CA60
	ldmia r0, {r2, r4}
	ldr r0, [r1]
	mov r1, r2, lsl #0x10
	cmp r0, #0
	mov r1, r1, lsr #0x10
	beq _0203275C
	mvn r2, #0
	cmp r4, r2
	bne _0203273C
	bl ov0_021430D8
	ldmia sp!, {r4, pc}
	arm_func_end sub_02032708
_0203273C:
	bl ov0_02143088
	cmp r0, #0
	beq _0203275C
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x20]
	blx r2
	ldmia sp!, {r4, pc}
_0203275C:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02032764: .word MAIN_BSS_0210CA60

	arm_func_start sub_02032768
sub_02032768: ; 0x02032768
	stmdb sp!, {r3, lr}
	ldr r1, _02032790 ; =MAIN_BSS_0210CA5C
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02032788
	ldmia r2, {r1, r2}
	bl ov0_0213690C
	arm_func_end sub_02032768
_02032788:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02032790: .word MAIN_BSS_0210CA5C

	arm_func_start sub_02032794
sub_02032794: ; 0x02032794
	stmdb sp!, {r3, lr}
	ldr r0, _020327B4 ; =MAIN_BSS_0210CA5C
	ldr r0, [r0]
	cmp r0, #0
	beq _020327AC
	bl ov0_02136968
	arm_func_end sub_02032794
_020327AC:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020327B4: .word MAIN_BSS_0210CA5C

	arm_func_start sub_020327B8
sub_020327B8: ; 0x020327B8
	ldr r1, _020327D8 ; =MAIN_BSS_020B26A0
	ldr r2, [r0]
	add r1, r1, #0x8000
	ldr r3, [r1, #0x7c8]
	mov r0, #0
	orr r2, r3, r2
	str r2, [r1, #0x7c8]
	bx lr
	.align 2, 0
_020327D8: .word MAIN_BSS_020B26A0
	arm_func_end sub_020327B8

	arm_func_start sub_020327DC
sub_020327DC: ; 0x020327DC
	ldr r1, _02032800 ; =MAIN_BSS_020B26A0
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	add r1, r1, #0x8000
	ldr r1, [r1, #0x7c8]
	ldr r0, [r0]
	and r0, r1, r0
	bx lr
	.align 2, 0
_02032800: .word MAIN_BSS_020B26A0
	arm_func_end sub_020327DC

	arm_func_start sub_02032804
sub_02032804: ; 0x02032804
	ldr r1, _02032824 ; =MAIN_BSS_020B26A0
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	add r0, r1, r0
	ldrb r0, [r0, #9]
	bx lr
	.align 2, 0
_02032824: .word MAIN_BSS_020B26A0
	arm_func_end sub_02032804

	arm_func_start sub_02032828
sub_02032828: ; 0x02032828
	stmdb sp!, {r3, lr}
	ldr r1, _0203284C ; =_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x43c]
	bl sub_02010988
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0203284C: .word MAIN_BSS_0208F304
	arm_func_end sub_02032828

	arm_func_start sub_02032850
sub_02032850: ; 0x02032850
	mov r0, #0
	bx lr
	arm_func_end sub_02032850

	arm_func_start sub_02032858
sub_02032858: ; 0x02032858
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	cmp r0, #0
	beq _02032894
	ldr r1, [r0, #0x58]
	mov r1, r1, asr #0x18
	and r1, r1, #0xff
	cmp r1, #3
	bne _02032894
	ldr r1, [r4, #4]
	str r1, [r0, #0xec]
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02032858
_02032894:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_0203289C
sub_0203289C: ; 0x0203289C
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _020328C8
	ldr r1, [r0, #0x58]
	mov r1, r1, asr #0x18
	and r1, r1, #0xff
	cmp r1, #3
	ldreq r0, [r0, #0xec]
	ldmeqia sp!, {r3, pc}
	arm_func_end sub_0203289C
_020328C8:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_020328D0
sub_020328D0: ; 0x020328D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	bl sub_0202BCD4
	cmp r0, #0
	beq _02032910
	ldr r1, [r0, #0x58]
	mov r1, r1, asr #0x18
	and r1, r1, #0xff
	cmp r1, #3
	bne _02032910
	ldmib r4, {r1, r2}
	mov r1, r1, lsl #0xc
	str r1, [r0, #0xf0]
	mov r1, r2, lsl #0xc
	str r1, [r0, #0xf4]
	arm_func_end sub_020328D0
_02032910:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02032918
sub_02032918: ; 0x02032918
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _02032974
	ldr r1, [r0, #0x58]
	mov r1, r1, asr #0x18
	and r1, r1, #0xff
	cmp r1, #3
	bne _02032974
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02032960
	ldr r1, [r1, #0xc]
	cmp r1, #0
	ldrne r1, [r1, #0x20]
	moveq r1, #0
	b _02032964
	arm_func_end sub_02032918
_02032960:
	mov r1, #0
_02032964:
	ldr r0, [r0, #0xf0]
	add r0, r1, r0
	mov r0, r0, asr #0xc
	ldmia sp!, {r3, pc}
_02032974:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0203297C
sub_0203297C: ; 0x0203297C
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _020329D8
	ldr r1, [r0, #0x58]
	mov r1, r1, asr #0x18
	and r1, r1, #0xff
	cmp r1, #3
	bne _020329D8
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _020329C4
	ldr r1, [r1, #0xc]
	cmp r1, #0
	ldrne r1, [r1, #0x24]
	moveq r1, #0
	b _020329C8
	arm_func_end sub_0203297C
_020329C4:
	mov r1, #0
_020329C8:
	ldr r0, [r0, #0xf4]
	add r0, r1, r0
	mov r0, r0, asr #0xc
	ldmia sp!, {r3, pc}
_020329D8:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_020329E0
sub_020329E0: ; 0x020329E0
	ldr r1, _020329F8 ; =MAIN_BSS_0210CA74
	mov r0, #0
	ldr r2, [r1]
	orr r2, r2, #1
	str r2, [r1]
	bx lr
	.align 2, 0
_020329F8: .word MAIN_BSS_0210CA74
	arm_func_end sub_020329E0

	arm_func_start sub_020329FC
sub_020329FC: ; 0x020329FC
	ldr r1, _02032A14 ; =MAIN_BSS_0210CA74
	mov r0, #0
	ldr r2, [r1]
	bic r2, r2, #1
	str r2, [r1]
	bx lr
	.align 2, 0
_02032A14: .word MAIN_BSS_0210CA74
	arm_func_end sub_020329FC

	arm_func_start sub_02032A18
sub_02032A18: ; 0x02032A18
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _02032A3C
	ldr r2, [r0]
	mov r1, #0x10
	ldr r2, [r2, #0x3c]
	blx r2
	arm_func_end sub_02032A18
_02032A3C:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_02032A44
sub_02032A44: ; 0x02032A44
	bx lr
	arm_func_end sub_02032A44

	arm_func_start sub_02032A48
sub_02032A48: ; 0x02032A48
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl sub_0202BCD4
	cmp r0, #0
	beq _02032A6C
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0x3c]
	blx r2
	arm_func_end sub_02032A48
_02032A6C:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_02032A74
sub_02032A74: ; 0x02032A74
	stmdb sp!, {r3, lr}
	ldr r1, _02032BA8 ; =MAIN_BSS_0210CA60
	ldr r1, [r1]
	cmp r1, #0
	beq _02032BA0
	ldr r0, [r0]
	cmp r0, #0xc8
	bgt _02032AC0
	bge _02032AF8
	cmp r0, #0x16
	bgt _02032BA0
	cmp r0, #0x10
	blt _02032BA0
	beq _02032B68
	cmp r0, #0x11
	beq _02032B7C
	cmp r0, #0x16
	beq _02032B90
	b _02032BA0
	arm_func_end sub_02032A74
_02032AC0:
	cmp r0, #0xc9
	bgt _02032AD0
	beq _02032B0C
	b _02032BA0
_02032AD0:
	cmp r0, #0xcc
	bgt _02032BA0
	cmp r0, #0xca
	blt _02032BA0
	beq _02032B20
	cmp r0, #0xcb
	beq _02032B38
	cmp r0, #0xcc
	beq _02032B50
	b _02032BA0
_02032AF8:
	ldr r0, [r1, #0x608]
	cmp r0, #0
	beq _02032BA0
	bl ov0_0215F410
	b _02032BA0
_02032B0C:
	ldr r0, [r1, #0x60c]
	cmp r0, #0
	beq _02032BA0
	bl ov0_02162988
	b _02032BA0
_02032B20:
	ldr r0, [r1, #0x620]
	cmp r0, #0
	beq _02032BA0
	mov r1, #0x84
	bl ov0_02163788
	b _02032BA0
_02032B38:
	ldr r0, [r1, #0x620]
	cmp r0, #0
	beq _02032BA0
	mov r1, #0x85
	bl ov0_02163788
	b _02032BA0
_02032B50:
	ldr r0, [r1, #0x620]
	cmp r0, #0
	beq _02032BA0
	mov r1, #0x86
	bl ov0_02163788
	b _02032BA0
_02032B68:
	ldr r0, [r1, #0x63c]
	cmp r0, #0
	beq _02032BA0
	bl ov0_0216EE1C
	b _02032BA0
_02032B7C:
	ldr r0, [r1, #0x640]
	cmp r0, #0
	beq _02032BA0
	bl ov0_0216FEA4
	b _02032BA0
_02032B90:
	ldr r0, [r1, #0x650]
	cmp r0, #0
	beq _02032BA0
	bl ov0_0217248C
_02032BA0:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02032BA8: .word MAIN_BSS_0210CA60

	arm_func_start sub_02032BAC
sub_02032BAC: ; 0x02032BAC
	stmdb sp!, {r3, lr}
	ldr r1, _02032F54 ; =MAIN_BSS_0210CA60
	ldr r3, [r1]
	cmp r3, #0
	beq _02032F4C
	ldr r0, [r0]
	cmp r0, #0x69
	bgt _02032C74
	bge _02032F38
	cmp r0, #0x66
	bgt _02032C58
	bge _02032E34
	cmp r0, #0x16
	bgt _02032C4C
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _02032F4C
_02032BF0: ; jump table
	b _02032CB8 ; case 0
	b _02032CCC ; case 1
	b _02032CE0 ; case 2
	b _02032E5C ; case 3
	b _02032E70 ; case 4
	b _02032E84 ; case 5
	b _02032E98 ; case 6
	b _02032EAC ; case 7
	b _02032CF4 ; case 8
	b _02032D08 ; case 9
	b _02032D1C ; case 10
	b _02032D30 ; case 11
	b _02032D44 ; case 12
	b _02032D58 ; case 13
	b _02032D6C ; case 14
	b _02032D80 ; case 15
	b _02032D94 ; case 16
	b _02032DA8 ; case 17
	b _02032DBC ; case 18
	b _02032E0C ; case 19
	b _02032DD0 ; case 20
	b _02032DE4 ; case 21
	b _02032DF8 ; case 22
	arm_func_end sub_02032BAC
_02032C4C:
	cmp r0, #0x64
	beq _02032E20
	b _02032F4C
_02032C58:
	cmp r0, #0x67
	bgt _02032C68
	beq _02032E48
	b _02032F4C
_02032C68:
	cmp r0, #0x68
	beq _02032F24
	b _02032F4C
_02032C74:
	cmp r0, #0xca
	bgt _02032C9C
	bge _02032EE8
	cmp r0, #0xc8
	bgt _02032C90
	beq _02032EC0
	b _02032F4C
_02032C90:
	cmp r0, #0xc9
	beq _02032ED4
	b _02032F4C
_02032C9C:
	cmp r0, #0xcb
	bgt _02032CAC
	beq _02032EFC
	b _02032F4C
_02032CAC:
	cmp r0, #0xcc
	beq _02032F10
	b _02032F4C
_02032CB8:
	mov r0, r3
	mov r1, #9
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032CCC:
	mov r0, r3
	mov r1, #0xb
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032CE0:
	mov r0, r3
	mov r1, #0xa
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032CF4:
	mov r0, r3
	mov r1, #0x26
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032D08:
	mov r0, r3
	mov r1, #0x13
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032D1C:
	mov r0, r3
	mov r1, #0x14
	mov r2, #1
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032D30:
	mov r0, r3
	mov r1, #0x15
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032D44:
	mov r0, r3
	mov r1, #0x16
	mov r2, #2
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032D58:
	mov r0, r3
	mov r1, #0x17
	mov r2, #1
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032D6C:
	mov r1, #0xe
	mov r0, r3
	sub r2, r1, #0x1a
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032D80:
	mov r0, r3
	mov r1, #0x18
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032D94:
	mov r0, r3
	mov r1, #0x19
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032DA8:
	mov r0, r3
	mov r1, #0x1a
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032DBC:
	mov r0, r3
	mov r1, #0x1b
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032DD0:
	mov r0, r3
	mov r1, #0x1c
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032DE4:
	mov r0, r3
	mov r1, #0x1c
	mov r2, #1
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032DF8:
	mov r0, r3
	mov r1, #0x1e
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032E0C:
	mov r0, r3
	mov r1, #9
	mov r2, #1
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032E20:
	mov r0, r3
	mov r1, #0x22
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032E34:
	mov r0, r3
	mov r1, #0x20
	mov r2, #0x79
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032E48:
	mov r0, r3
	mov r1, #0x20
	mov r2, #0x78
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032E5C:
	mov r0, r3
	mov r1, #0xe
	mov r2, #0xa
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032E70:
	mov r0, r3
	mov r1, #0xf
	mov r2, #0xc
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032E84:
	mov r0, r3
	mov r1, #0x10
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032E98:
	mov r0, r3
	mov r1, #0x11
	mov r2, #0xd
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032EAC:
	mov r1, #0xe
	mov r0, r3
	mov r2, r1
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032EC0:
	mov r0, r3
	mov r1, #0xc
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032ED4:
	mov r0, r3
	mov r1, #0xd
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032EE8:
	mov r0, r3
	mov r1, #0x12
	mov r2, #0x84
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032EFC:
	mov r0, r3
	mov r1, #0x12
	mov r2, #0x85
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032F10:
	ldr r2, _02032F58 ; =0x00000486
	mov r0, r3
	mov r1, #0x12
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032F24:
	mov r0, r3
	mov r1, #0x21
	mov r2, #0x6e
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032F38:
	mov r0, r3
	mov r1, #0x1d
	mov r2, #0
	bl ov0_02142F6C
	ldmia sp!, {r3, pc}
_02032F4C:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02032F54: .word MAIN_BSS_0210CA60
_02032F58: .word 0x00000486

	arm_func_start sub_02032F5C
sub_02032F5C: ; 0x02032F5C
	stmdb sp!, {r3, lr}
	ldr r1, _02032F88 ; =MAIN_BSS_0210CA60
	ldr r2, [r0]
	ldr r0, [r1]
	mov r1, r2, lsl #0x10
	cmp r0, #0
	mov r1, r1, lsr #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov0_021430D8
	ldmia sp!, {r3, pc}
	.align 2, 0
_02032F88: .word MAIN_BSS_0210CA60
	arm_func_end sub_02032F5C

	arm_func_start sub_02032F8C
sub_02032F8C: ; 0x02032F8C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _02033024 ; =MAIN_BSS_0210CA60
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0203301C
	ldr r1, [r2]
	ldmib r2, {r5, r6, r7}
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	movs r4, r0
	beq _0203301C
	ldr ip, [r0]
	mov r1, r5
	ldr ip, [ip, #0x1c]
	mov r2, r6
	mov r3, r7
	blx ip
	mov r0, r4
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0x24]
	blx r2
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	cmp r0, #0x12
	bne _0203301C
	ldr r0, [r4, #0x1ec]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r4
	bl ov0_021633CC
	arm_func_end sub_02032F8C
_0203301C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02033024: .word MAIN_BSS_0210CA60

	arm_func_start sub_02033028
sub_02033028: ; 0x02033028
	mov r0, #0
	bx lr
	arm_func_end sub_02033028

	arm_func_start sub_02033030
sub_02033030: ; 0x02033030
	stmdb sp!, {r4, lr}
	ldr r1, _02033078 ; =MAIN_BSS_0210CA60
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02033070
	ldmia r2, {r1, r4}
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	cmp r0, #0
	beq _02033070
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x20]
	blx r2
	arm_func_end sub_02033030
_02033070:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02033078: .word MAIN_BSS_0210CA60

	arm_func_start sub_0203307C
sub_0203307C: ; 0x0203307C
	stmdb sp!, {r3, lr}
	ldr r1, _020330B8 ; =MAIN_BSS_0210CA60
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _020330B0
	ldr r1, [r2]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
	arm_func_end sub_0203307C
_020330B0:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020330B8: .word MAIN_BSS_0210CA60

	arm_func_start sub_020330BC
sub_020330BC: ; 0x020330BC
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02033128 ; =MAIN_BSS_0210CA60
	mov r5, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02033120
	ldr r1, [r5]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	movs r4, r0
	beq _02033120
	ldr r3, [r0]
	ldr r2, [r5, #4]
	ldr r3, [r3, #0x38]
	mov r1, #1
	blx r3
	mov r0, r4
	ldr r3, [r0]
	ldr r2, [r5, #8]
	ldr r3, [r3, #0x38]
	mov r1, #2
	blx r3
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020330BC
_02033120:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02033128: .word MAIN_BSS_0210CA60

	arm_func_start sub_0203312C
sub_0203312C: ; 0x0203312C
	mov r0, #0
	bx lr
	arm_func_end sub_0203312C

	arm_func_start sub_02033134
sub_02033134: ; 0x02033134
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _020331A0 ; =MAIN_BSS_0210CA60
	mov r5, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02033198
	ldr r1, [r5]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	movs r4, r0
	beq _02033198
	ldr r3, [r0]
	ldr r2, [r5, #4]
	ldr r3, [r3, #0x38]
	mov r1, #3
	blx r3
	mov r0, r4
	ldr r3, [r0]
	ldr r2, [r5, #8]
	ldr r3, [r3, #0x38]
	mov r1, #4
	blx r3
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02033134
_02033198:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020331A0: .word MAIN_BSS_0210CA60

	arm_func_start sub_020331A4
sub_020331A4: ; 0x020331A4
	stmdb sp!, {r4, lr}
	ldr r1, _020331F0 ; =MAIN_BSS_0210CA60
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _020331E8
	ldr r1, [r4]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	cmp r0, #0
	beq _020331E8
	ldr r3, [r0]
	ldmib r4, {r1, r2}
	ldr r3, [r3, #0x38]
	blx r3
	ldmia sp!, {r4, pc}
	arm_func_end sub_020331A4
_020331E8:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_020331F0: .word MAIN_BSS_0210CA60

	arm_func_start sub_020331F4
sub_020331F4: ; 0x020331F4
	stmdb sp!, {r4, lr}
	ldr r1, _02033240 ; =MAIN_BSS_0210CA60
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02033238
	ldr r1, [r4]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	cmp r0, #0
	beq _02033238
	ldr ip, [r0]
	ldmib r4, {r1, r2, r3}
	ldr ip, [ip, #0x3c]
	blx ip
	ldmia sp!, {r4, pc}
	arm_func_end sub_020331F4
_02033238:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02033240: .word MAIN_BSS_0210CA60

	arm_func_start sub_02033244
sub_02033244: ; 0x02033244
	mov r0, #0
	bx lr
	arm_func_end sub_02033244

	arm_func_start sub_0203324C
sub_0203324C: ; 0x0203324C
	stmdb sp!, {r3, lr}
	ldr r1, _020332A0 ; =MAIN_BSS_0210CA60
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02033298
	ldr r1, [r2]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	cmp r0, #0
	beq _02033298
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0203324C
_02033298:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020332A0: .word MAIN_BSS_0210CA60

	arm_func_start sub_020332A4
sub_020332A4: ; 0x020332A4
	mov r0, #1
	bx lr
	arm_func_end sub_020332A4

	arm_func_start sub_020332AC
sub_020332AC: ; 0x020332AC
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _02033318 ; =MAIN_BSS_0210CA60
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0203330C
	ldr r1, [r4]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	cmp r0, #0
	beq _0203330C
	ldr r2, [r4, #4]
	add r1, sp, #0
	mov r2, r2, lsl #0xc
	str r2, [sp]
	ldr r2, [r4, #8]
	mov r2, r2, lsl #0xc
	str r2, [sp, #4]
	ldr r3, [r0]
	ldr r2, [r4, #0xc]
	ldr r3, [r3, #0x44]
	blx r3
	arm_func_end sub_020332AC
_0203330C:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02033318: .word MAIN_BSS_0210CA60

	arm_func_start sub_0203331C
sub_0203331C: ; 0x0203331C
	bx lr
	arm_func_end sub_0203331C

	arm_func_start sub_02033320
sub_02033320: ; 0x02033320
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _02033384 ; =MAIN_BSS_0210CA60
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02033378
	ldr r1, [r4]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	cmp r0, #0
	beq _02033378
	ldr r2, [r4, #4]
	add r1, sp, #0
	str r2, [sp]
	ldr r2, [r4, #8]
	str r2, [sp, #4]
	ldr r3, [r0]
	ldr r2, [r4, #0xc]
	ldr r3, [r3, #0x48]
	blx r3
	arm_func_end sub_02033320
_02033378:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02033384: .word MAIN_BSS_0210CA60

	arm_func_start sub_02033388
sub_02033388: ; 0x02033388
	bx lr
	arm_func_end sub_02033388

	arm_func_start sub_0203338C
sub_0203338C: ; 0x0203338C
	stmdb sp!, {r4, lr}
	ldr r1, _020333D4 ; =MAIN_BSS_0210CA60
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _020333CC
	ldr r1, [r4]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	cmp r0, #0
	beq _020333CC
	ldr r3, [r0]
	ldmib r4, {r1, r2}
	ldr r3, [r3, #0x4c]
	blx r3
	arm_func_end sub_0203338C
_020333CC:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_020333D4: .word MAIN_BSS_0210CA60

	arm_func_start sub_020333D8
sub_020333D8: ; 0x020333D8
	bx lr
	arm_func_end sub_020333D8

	arm_func_start sub_020333DC
sub_020333DC: ; 0x020333DC
	stmdb sp!, {r4, lr}
	ldr r1, _0203343C ; =MAIN_BSS_0210CA60
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02033434
	ldr r1, [r4]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	cmp r0, #0
	beq _02033434
	ldr r3, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r0]
	ldr ip, [r4, #0xc]
	orr r1, r3, r1, lsl #5
	orr r1, r1, ip, lsl #10
	mov r1, r1, lsl #0x10
	ldr r2, [r2, #0x40]
	mov r1, r1, lsr #0x10
	blx r2
	arm_func_end sub_020333DC
_02033434:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203343C: .word MAIN_BSS_0210CA60

	arm_func_start sub_02033440
sub_02033440: ; 0x02033440
	bx lr
	arm_func_end sub_02033440

	arm_func_start sub_02033444
sub_02033444: ; 0x02033444
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _020334B0 ; =MAIN_BSS_0210CA60
	mov r5, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _020334A8
	ldr r1, [r5]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	movs r4, r0
	beq _020334A8
	ldr r3, [r0]
	ldr r2, [r5, #4]
	ldr r3, [r3, #0x38]
	mov r1, #1
	blx r3
	mov r0, r4
	ldr r3, [r0]
	ldr r2, [r5, #8]
	ldr r3, [r3, #0x38]
	mov r1, #2
	blx r3
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02033444
_020334A8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020334B0: .word MAIN_BSS_0210CA60

	arm_func_start sub_020334B4
sub_020334B4: ; 0x020334B4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02033518 ; =MAIN_BSS_0210CA60
	mov r5, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02033510
	ldr r1, [r5]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	movs r4, r0
	beq _02033510
	ldr r3, [r0]
	ldr r2, [r5, #4]
	ldr r3, [r3, #0x38]
	mov r1, #9
	blx r3
	mov r0, r4
	ldr r3, [r0]
	ldr r2, [r5, #8]
	ldr r3, [r3, #0x38]
	mov r1, #0xa
	blx r3
	arm_func_end sub_020334B4
_02033510:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02033518: .word MAIN_BSS_0210CA60

	arm_func_start sub_0203351C
sub_0203351C: ; 0x0203351C
	stmdb sp!, {r4, lr}
	ldr r1, _02033568 ; =MAIN_BSS_0210CA60
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02033560
	ldr r1, [r4]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	cmp r0, #0
	beq _02033560
	ldr r3, [r0]
	ldmib r4, {r1, r2}
	ldr r3, [r3, #0x38]
	blx r3
	ldmia sp!, {r4, pc}
	arm_func_end sub_0203351C
_02033560:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02033568: .word MAIN_BSS_0210CA60

	arm_func_start sub_0203356C
sub_0203356C: ; 0x0203356C
	stmdb sp!, {r4, lr}
	ldr r1, _020335B4 ; =MAIN_BSS_0210CA60
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _020335AC
	ldmia r2, {r1, r4}
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	cmp r0, #0
	beq _020335AC
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x20]
	blx r2
	arm_func_end sub_0203356C
_020335AC:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_020335B4: .word MAIN_BSS_0210CA60

	arm_func_start sub_020335B8
sub_020335B8: ; 0x020335B8
	stmdb sp!, {r3, lr}
	ldr r1, _0203360C ; =MAIN_BSS_0210CA60
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02033604
	ldr r1, [r2]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	cmp r0, #0
	beq _02033604
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020335B8
_02033604:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0203360C: .word MAIN_BSS_0210CA60

	arm_func_start sub_02033610
sub_02033610: ; 0x02033610
	stmdb sp!, {r4, lr}
	ldr r1, _02033658 ; =MAIN_BSS_0210CA60
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02033650
	ldr r1, [r4]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov0_02143088
	cmp r0, #0
	beq _02033650
	ldr r2, [r0]
	ldr r1, [r4, #4]
	ldr r2, [r2, #0x50]
	blx r2
	arm_func_end sub_02033610
_02033650:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02033658: .word MAIN_BSS_0210CA60

	arm_func_start sub_0203365C
sub_0203365C: ; 0x0203365C
	bx lr
	arm_func_end sub_0203365C

	arm_func_start sub_02033660
sub_02033660: ; 0x02033660
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _020336DC ; =MAIN_BSS_0210CA40
	ldr r4, _020336E0 ; =MAIN_BSS_020B26A0
	ldr r1, [r1]
	cmp r1, #0
	cmpne r4, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, [r1, #0xd8]
	cmp r5, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r4, #1]
	ldr r1, [r0]
	ldrb r3, [r4, #2]
	add r6, r2, r1
	ldr r0, [r0, #4]
	cmp r6, r3
	mov r1, r0, lsl #0x10
	movgt r6, r3
	mov r2, r6, lsl #0x10
	mov r7, r1, lsr #0x10
	mov r0, r5
	mov r1, r2, lsr #0x10
	bl sub_0201A018
	mov r0, r5
	mov r1, r7
	strb r6, [r4, #1]
	bl sub_0201A024
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020336DC: .word MAIN_BSS_0210CA40
_020336E0: .word MAIN_BSS_020B26A0
	arm_func_end sub_02033660

	arm_func_start sub_020336E4
sub_020336E4: ; 0x020336E4
	stmdb sp!, {r3, lr}
	ldr r0, _02033714 ; =MAIN_BSS_0210CA40
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0xd8]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_0201A0DC
	ldmia sp!, {r3, pc}
	.align 2, 0
_02033714: .word MAIN_BSS_0210CA40
	arm_func_end sub_020336E4

	arm_func_start sub_02033718
sub_02033718: ; 0x02033718
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, #0
	ldr lr, _020337E8 ; =MAIN_BSS_020B26A0
	blt _02033778
	cmp r1, #3
	bge _02033778
	cmp r0, #0
	blt _02033778
	cmp r0, #0x40
	bge _02033778
	mov r2, r0, asr #3
	add r2, r0, r2, lsr #28
	add r3, lr, r1, lsl #4
	mov r2, r2, asr #4
	add r2, r3, r2, lsl #2
	add r2, r2, #0x7000
	mov r3, r0, lsl #0x1c
	ldr ip, [r2, #0xf30]
	mov r2, r3, lsr #0x1b
	mov r2, ip, lsr r2
	and r2, r2, #3
	b _0203377C
	arm_func_end sub_02033718
_02033778:
	mov r2, #0
_0203377C:
	cmp r2, #0
	bne _020337E0
	cmp r1, #0
	blt _020337E0
	cmp r1, #3
	bge _020337E0
	cmp r0, #0
	blt _020337E0
	cmp r0, #0x40
	bge _020337E0
	add r3, lr, #0xf30
	mov ip, r0, lsl #0x1c
	mov r2, r0, asr #3
	add r0, r0, r2, lsr #28
	add r3, r3, #0x7000
	mov lr, ip, lsr #0x1b
	mov ip, r0, asr #4
	mov r2, #3
	add r3, r3, r1, lsl #4
	mvn r1, r2, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #1
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
_020337E0:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020337E8: .word MAIN_BSS_020B26A0

	arm_func_start sub_020337EC
sub_020337EC: ; 0x020337EC
	ldr r1, _02033818 ; =MAIN_BSS_020B26A0
	mov r0, #0
	add r2, r1, #0x7000
	ldr r3, [r2, #0xf60]
	add r1, r1, #0x8000
	bic r3, r3, #2
	str r0, [r1, #0x7c0]
	strb r0, [r1, #0x7bf]
	str r0, [r1, #0x7c4]
	str r3, [r2, #0xf60]
	bx lr
	.align 2, 0
_02033818: .word MAIN_BSS_020B26A0
	arm_func_end sub_020337EC

	arm_func_start sub_0203381C
sub_0203381C: ; 0x0203381C
	ldr r1, _02033840 ; =MAIN_BSS_020B26A0
	ldr r3, [r0]
	add r1, r1, #0x8000
	mov r2, #1
	mov r0, #0
	str r3, [r1, #0x7c0]
	strb r2, [r1, #0x7bf]
	str r0, [r1, #0x7c4]
	bx lr
	.align 2, 0
_02033840: .word MAIN_BSS_020B26A0
	arm_func_end sub_0203381C

	arm_func_start sub_02033844
sub_02033844: ; 0x02033844
	ldr r1, _02033868 ; =MAIN_BSS_020B26A0
	ldr r3, [r0]
	add r1, r1, #0x8000
	mov r0, #0
	mov r2, #2
	str r0, [r1, #0x7c0]
	strb r2, [r1, #0x7bf]
	str r3, [r1, #0x7c4]
	bx lr
	.align 2, 0
_02033868: .word MAIN_BSS_020B26A0
	arm_func_end sub_02033844

	arm_func_start sub_0203386C
sub_0203386C: ; 0x0203386C
	ldr r1, _02033880 ; =MAIN_BSS_020B26A0
	mov r0, #0
	add r1, r1, #0x8000
	strb r0, [r1, #0x7bf]
	bx lr
	.align 2, 0
_02033880: .word MAIN_BSS_020B26A0
	arm_func_end sub_0203386C

	arm_func_start sub_02033884
sub_02033884: ; 0x02033884
	ldr r0, _0203389C ; =MAIN_BSS_020B26A0
	mov r1, #1
	add r0, r0, #0x8000
	strb r1, [r0, #0x7bf]
	mov r0, #0
	bx lr
	.align 2, 0
_0203389C: .word MAIN_BSS_020B26A0
	arm_func_end sub_02033884

	arm_func_start sub_020338A0
sub_020338A0: ; 0x020338A0
	ldr r0, _020338B8 ; =MAIN_BSS_020B26A0
	mov r1, #2
	add r0, r0, #0x8000
	strb r1, [r0, #0x7bf]
	mov r0, #0
	bx lr
	.align 2, 0
_020338B8: .word MAIN_BSS_020B26A0
	arm_func_end sub_020338A0

	arm_func_start sub_020338BC
sub_020338BC: ; 0x020338BC
	ldr r1, _020338D8 ; =MAIN_BSS_020B26A0
	mov r0, #0
	add r1, r1, #0x7000
	ldr r2, [r1, #0xf60]
	orr r2, r2, #2
	str r2, [r1, #0xf60]
	bx lr
	.align 2, 0
_020338D8: .word MAIN_BSS_020B26A0
	arm_func_end sub_020338BC

	arm_func_start sub_020338DC
sub_020338DC: ; 0x020338DC
	ldr r1, _020338F8 ; =MAIN_BSS_020B26A0
	mov r0, #0
	add r1, r1, #0x7000
	ldr r2, [r1, #0xf60]
	bic r2, r2, #2
	str r2, [r1, #0xf60]
	bx lr
	.align 2, 0
_020338F8: .word MAIN_BSS_020B26A0
	arm_func_end sub_020338DC

	arm_func_start sub_020338FC
sub_020338FC: ; 0x020338FC
	ldr r0, _02033914 ; =MAIN_BSS_020B26A0
	cmp r0, #0
	addne r0, r0, #0x8000
	ldrne r0, [r0, #0x7c0]
	moveq r0, #0
	bx lr
	.align 2, 0
_02033914: .word MAIN_BSS_020B26A0
	arm_func_end sub_020338FC

	arm_func_start sub_02033918
sub_02033918: ; 0x02033918
	ldr r2, _02033930 ; =MAIN_BSS_020B26A0
	ldr r1, [r0]
	add r0, r2, #0x8000
	str r1, [r0, #0x7c0]
	mov r0, #0
	bx lr
	.align 2, 0
_02033930: .word MAIN_BSS_020B26A0
	arm_func_end sub_02033918

	arm_func_start sub_02033934
sub_02033934: ; 0x02033934
	ldr r0, _02033964 ; =MAIN_BSS_020B26A0
	add r0, r0, #0x8000
	ldrb r0, [r0, #0x7bf]
	cmp r0, #0
	beq _02033954
	cmp r0, #1
	cmpne r0, #2
	beq _0203395C
	arm_func_end sub_02033934
_02033954:
	mov r0, #0
	bx lr
_0203395C:
	mov r0, #1
	bx lr
	.align 2, 0
_02033964: .word MAIN_BSS_020B26A0

	arm_func_start sub_02033968
sub_02033968: ; 0x02033968
	stmdb sp!, {r3, lr}
	ldr r0, _02033990 ; =_0208F304
	mov r1, #0x1b
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_0201926C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02033990: .word MAIN_BSS_0208F304
	arm_func_end sub_02033968

	arm_func_start sub_02033994
sub_02033994: ; 0x02033994
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #7
	movgt r0, #1
	ldmgtia sp!, {r4, pc}
	ldr r0, _020339D4 ; =_0208F304
	mov r1, #0x1b
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02019278
	ldr r1, [r4]
	mov r0, r0, asr r1
	and r0, r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_020339D4: .word MAIN_BSS_0208F304
	arm_func_end sub_02033994

	arm_func_start sub_020339D8
sub_020339D8: ; 0x020339D8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #7
	movgt r0, #1
	ldmgtia sp!, {r4, pc}
	ldr r0, _02033A34 ; =_0208F304
	mov r1, #0x1b
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02019278
	ldr r1, _02033A34 ; =_0208F304
	ldr r2, [r4]
	ldr r1, [r1]
	mov r3, #1
	add r1, r1, #0x1000
	orr r2, r0, r3, lsl r2
	ldr r0, [r1, #0x4b4]
	mov r1, #0x1b
	bl sub_0201926C
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02033A34: .word MAIN_BSS_0208F304
	arm_func_end sub_020339D8

	arm_func_start sub_02033A38
sub_02033A38: ; 0x02033A38
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	cmp r1, #3
	bge _02033A68
	ldr r0, _02033A78 ; =_0208F304
	add r1, r1, #0x1c
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_0201926C
	b _02033A70
	arm_func_end sub_02033A38
_02033A68:
	mov r0, #1
	ldmia sp!, {r3, pc}
_02033A70:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02033A78: .word MAIN_BSS_0208F304

	arm_func_start sub_02033A7C
sub_02033A7C: ; 0x02033A7C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	cmp r1, #3
	bge _02033AC8
	ldr r0, [r4, #4]
	cmp r0, #7
	movgt r0, #1
	ldmgtia sp!, {r4, pc}
	ldr r0, _02033AD0 ; =_0208F304
	add r1, r1, #0x1c
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02019278
	ldr r1, [r4, #4]
	mov r0, r0, asr r1
	and r0, r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02033A7C
_02033AC8:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02033AD0: .word MAIN_BSS_0208F304

	arm_func_start sub_02033AD4
sub_02033AD4: ; 0x02033AD4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	cmp r1, #3
	bge _02033B3C
	ldr r0, [r4, #4]
	cmp r0, #7
	movgt r0, #1
	ldmgtia sp!, {r4, pc}
	ldr r0, _02033B4C ; =_0208F304
	add r1, r1, #0x1c
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02019278
	ldr r1, _02033B4C ; =_0208F304
	ldr r3, [r4]
	ldr r1, [r1]
	ldr r2, [r4, #4]
	mov r4, #1
	add r1, r1, #0x1000
	orr r2, r0, r4, lsl r2
	ldr r0, [r1, #0x4b4]
	add r1, r3, #0x1c
	bl sub_0201926C
	b _02033B44
	arm_func_end sub_02033AD4
_02033B3C:
	mov r0, #1
	ldmia sp!, {r4, pc}
_02033B44:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02033B4C: .word MAIN_BSS_0208F304

	arm_func_start sub_02033B50
sub_02033B50: ; 0x02033B50
	stmdb sp!, {r3, lr}
	ldr r0, _02033B68 ; =MAIN_BSS_020B26A0
	mov r1, #1
	bl sub_02016EC4
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02033B68: .word MAIN_BSS_020B26A0
	arm_func_end sub_02033B50

	arm_func_start sub_02033B6C
sub_02033B6C: ; 0x02033B6C
	stmdb sp!, {r3, lr}
	ldr r0, _02033BB8 ; =MAIN_BSS_0210CA3C
	ldr r0, [r0]
	cmp r0, #0
	bne _02033BA0
	mov r0, #0x74
	bl _Znwm
	cmp r0, #0
	beq _02033B98
	mov r1, #1
	bl sub_02027FE8
	arm_func_end sub_02033B6C
_02033B98:
	ldr r1, _02033BB8 ; =MAIN_BSS_0210CA3C
	str r0, [r1]
_02033BA0:
	ldr r0, _02033BB8 ; =MAIN_BSS_0210CA3C
	mov r1, #0
	ldr r0, [r0]
	bl sub_02028408
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02033BB8: .word MAIN_BSS_0210CA3C

	arm_func_start sub_02033BBC
sub_02033BBC: ; 0x02033BBC
	stmdb sp!, {r3, r4, r5, lr}
	ldr r0, _02033C2C ; =MAIN_BSS_0210CA3C
	ldr r0, [r0]
	cmp r0, #0
	beq _02033C24
	bl sub_0202841C
	movs r4, r0
	beq _02033C1C
	ldr r0, _02033C2C ; =MAIN_BSS_0210CA3C
	ldr r5, [r0]
	cmp r5, #0
	beq _02033C0C
	beq _02033C00
	mov r0, r5
	bl sub_02028054
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_02033BBC
_02033C00:
	ldr r0, _02033C2C ; =MAIN_BSS_0210CA3C
	mov r1, #0
	str r1, [r0]
_02033C0C:
	tst r4, #0x80
	moveq r0, #1
	movne r0, #2
	ldmia sp!, {r3, r4, r5, pc}
_02033C1C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02033C24:
	mov r0, #2
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02033C2C: .word MAIN_BSS_0210CA3C

	arm_func_start sub_02033C30
sub_02033C30: ; 0x02033C30
	ldr r0, _02033C48 ; =MAIN_BSS_020B26A0
	cmp r0, #0
	addne r0, r0, #0x8000
	ldrne r0, [r0, #0x764]
	moveq r0, #0
	bx lr
	.align 2, 0
_02033C48: .word MAIN_BSS_020B26A0
	arm_func_end sub_02033C30

	arm_func_start sub_02033C4C
sub_02033C4C: ; 0x02033C4C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02033EB0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02033C4C

	arm_func_start sub_02033C60
sub_02033C60: ; 0x02033C60
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	mov r5, r2
	mov r4, r3
	bl OS_SPrintf
	mov r0, r6
	bl sub_02033ED4
	mov r0, r6
	bl sub_02033EB0
	mov r0, #0xb8
	bl _Znwm
	cmp r0, #0
	beq _02033CB4
	mov r2, #0
	ldr ip, [sp, #0x20]
	str r5, [sp]
	mov r1, r6
	mov r3, r2
	stmib sp, {r4, ip}
	bl sub_02002BC4
	arm_func_end sub_02033C60
_02033CB4:
	str r0, [r6, #0x28]
	ldr r0, [r0, #0x4c]
	str r0, [r6, #0x20]
	cmp r0, #0
	bne _02033CDC
	mov r0, r6
	bl sub_02033ED4
	add sp, sp, #0xc
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, pc}
_02033CDC:
	str r0, [r6, #0x24]
	bl sub_02044AC8
	add r0, r6, #0x3c
	add r1, r6, #0x60
	mov r2, #0x80
	bl sub_02044B48
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}

	arm_func_start sub_02033D00
sub_02033D00: ; 0x02033D00
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_02033ED4
	mov r0, r6
	bl sub_02033EB0
	cmp r5, #0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	str r5, [r6, #0x20]
	str r5, [r6, #0x24]
	cmp r4, #0
	bne _02033D40
	ldr r0, [r6, #0x24]
	bl sub_02044AC8
	arm_func_end sub_02033D00
_02033D40:
	add r0, r6, #0x3c
	add r1, r6, #0x60
	mov r2, #0x80
	bl sub_02044B48
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02033D58
sub_02033D58: ; 0x02033D58
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x20]
	mov r4, r1
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl strlen
	cmp r0, #0xc
	bls _02033D88
	bl OS_Terminate
	arm_func_end sub_02033D58
_02033D88:
	mov r1, r4
	add r0, r5, #0x2c
	mov r2, #0xd
	bl OS_SPrintf
	add r0, r5, #0x3c
	bl sub_02044B84
	ldr r1, [r5, #0x24]
	add r0, r5, #0x3c
	add r2, r5, #0x2c
	bl sub_02045A18
	mov r0, #1
	str r0, [r5, #0x260]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02033DC0
sub_02033DC0: ; 0x02033DC0
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl strlen
	cmp r0, #0xc
	bls _02033DE0
	bl OS_Terminate
	arm_func_end sub_02033DC0
_02033DE0:
	mov r1, r4
	add r0, r5, #0x264
	mov r2, #0xd
	bl OS_SPrintf
	mov r0, #1
	str r0, [r5, #0x274]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02033DFC
sub_02033DFC: ; 0x02033DFC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x2c
	add r1, r4, #0x264
	mov r2, #0xd
	bl OS_SPrintf
	add r0, r4, #0x3c
	bl sub_02044B84
	ldr r1, [r4, #0x24]
	add r0, r4, #0x3c
	add r2, r4, #0x2c
	bl sub_02045A18
	mov r0, #1
	str r0, [r4, #0x260]
	mov r0, #0
	str r0, [r4, #0x274]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02033DFC

	arm_func_start sub_02033E50
sub_02033E50: ; 0x02033E50
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02033ED4
	mov r0, r4
	bl sub_02033EB0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02033E50

	arm_func_start sub_02033E68
sub_02033E68: ; 0x02033E68
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x260]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _02033EAC ; =0x000FFFFF
	add r0, r4, #0x3c
	bl sub_02044C9C
	tst r0, #2
	movne r0, #0
	strne r0, [r4, #0x260]
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x260]
	cmp r0, #1
	moveq r0, #2
	streq r0, [r4, #0x260]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02033EAC: .word 0x000FFFFF
	arm_func_end sub_02033E68

	arm_func_start sub_02033EB0
sub_02033EB0: ; 0x02033EB0
	mov r1, #0
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x260]
	str r1, [r0, #0x274]
	sub r1, r1, #1
	str r1, [r0, #0x278]
	bx lr
	arm_func_end sub_02033EB0

	arm_func_start sub_02033ED4
sub_02033ED4: ; 0x02033ED4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	beq _02033EF8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_02033ED4
_02033EF8:
	mov r0, #0
	str r0, [r4, #0x28]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02033F04
sub_02033F04: ; 0x02033F04
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl _Z12sub_02044440v
	ldr r1, _02033F8C ; =PTR_LAB_0208ce10
	mov r0, #2
	str r4, [r5]
	bl sub_02044B38
	mov r0, #0x27c
	bl _Znwm
	cmp r0, #0
	beq _02033F38
	bl sub_02033C4C
	arm_func_end sub_02033F04
_02033F38:
	str r0, [r5, #4]
	mov r0, #0x27c
	bl _Znwm
	cmp r0, #0
	beq _02033F50
	bl sub_02033C4C
_02033F50:
	str r0, [r5, #8]
	mov r0, #0x27c
	bl _Znwm
	cmp r0, #0
	beq _02033F68
	bl sub_02033C4C
_02033F68:
	str r0, [r5, #0xc]
	mov r0, #0x27c
	bl _Znwm
	cmp r0, #0
	beq _02033F80
	bl sub_02033C4C
_02033F80:
	str r0, [r5, #0x10]
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02033F8C: .word PTR_LAB_0208ce10

	arm_func_start sub_02033F90
sub_02033F90: ; 0x02033F90
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x44
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	ldr r1, [r0, #0x278]
	mov r3, #0
	cmp r4, r1
	beq _02034008
	cmp r4, #0
	ble _02033FE8
	ldr r1, _02034014 ; =s_data_Script_system_system_03d_fs_0208d4b4
	add r0, sp, #4
	mov r2, r4
	bl OS_SPrintf
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #4]
	ldr r2, [r5]
	add r1, sp, #4
	bl sub_02033C60
	b _02033FF8
	arm_func_end sub_02033F90
_02033FE8:
	str r3, [sp]
	ldr r2, [r5]
	ldr r1, _02034018 ; =s_data_Script_system_system_fsb_0208d4d8
	bl sub_02033C60
_02033FF8:
	mov r3, r0
	cmp r3, #0
	ldreq r0, [r5, #4]
	streq r4, [r0, #0x278]
_02034008:
	mov r0, r3
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02034014: .word s_data_Script_system_system_03d_fs_0208d4b4
_02034018: .word s_data_Script_system_system_fsb_0208d4d8

	arm_func_start sub_0203401C
sub_0203401C: ; 0x0203401C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x44
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	ldr r1, [r0, #0x278]
	mov r0, #0
	cmp r4, r1
	addeq sp, sp, #0x44
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, _02034080 ; =s_data_Script_area_m_03d_fsb_0208d4f8
	add r0, sp, #4
	mov r2, r4
	bl OS_SPrintf
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #8]
	ldr r2, [r5]
	add r1, sp, #4
	bl sub_02033C60
	cmp r0, #0
	ldreq r1, [r5, #8]
	streq r4, [r1, #0x278]
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02034080: .word s_data_Script_area_m_03d_fsb_0208d4f8
	arm_func_end sub_0203401C

	arm_func_start sub_02034084
sub_02034084: ; 0x02034084
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x44
	mov r5, r0
	ldr r0, [r5, #0xc]
	mov r4, r1
	ldr r1, [r0, #0x278]
	mov r0, #0
	cmp r4, r1
	addeq sp, sp, #0x44
	ldmeqia sp!, {r4, r5, pc}
	cmp r4, #0x46
	add r0, sp, #4
	bge _020340F4
	ldr r1, _02034118 ; =s_data_Script_chapter_c_03d_fsb_0208d514
	mov r2, r4
	bl OS_SPrintf
	mov r0, #0x18800
	str r0, [sp]
	ldr r0, [r5, #0xc]
	ldr r2, [r5]
	add r1, sp, #4
	add r3, r5, #0x1c
	bl sub_02033C60
	cmp r0, #0
	ldreq r1, [r5, #0xc]
	add sp, sp, #0x44
	streq r4, [r1, #0x278]
	ldmia sp!, {r4, r5, pc}
	arm_func_end sub_02034084
_020340F4:
	ldr r1, _0203411C ; =s_data_Script_chapter_cx_02d_fsb_0208d534
	sub r2, r4, #0x45
	bl OS_SPrintf
	ldr r0, [r5, #0xc]
	add r1, r5, #0x1c
	mov r2, #1
	bl sub_02033D00
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02034118: .word s_data_Script_chapter_c_03d_fsb_0208d514
_0203411C: .word s_data_Script_chapter_cx_02d_fsb_0208d534

	arm_func_start sub_02034120
sub_02034120: ; 0x02034120
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x44
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r4, r1
	ldr r1, [r0, #0x278]
	mov r0, #0
	cmp r4, r1
	beq _0203416C
	ldr r1, _02034180 ; =s_data_Script_quest_q_03d_fsb_0208d554
	add r0, sp, #4
	mov r2, r4
	bl OS_SPrintf
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x10]
	ldr r2, [r5]
	add r1, sp, #4
	bl sub_02033C60
	arm_func_end sub_02034120
_0203416C:
	cmp r0, #0
	ldreq r1, [r5, #0x10]
	streq r4, [r1, #0x278]
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02034180: .word s_data_Script_quest_q_03d_fsb_0208d554

	arm_func_start sub_02034184
sub_02034184: ; 0x02034184
	stmdb sp!, {r3, lr}
	ldrsb r2, [r1]
	cmp r2, #0x71
	bgt _020341B8
	bge _020341FC
	cmp r2, #0x63
	bgt _02034210
	cmp r2, #0x61
	blt _02034210
	beq _020341D4
	cmp r2, #0x63
	beq _020341E8
	b _02034210
	arm_func_end sub_02034184
_020341B8:
	cmp r2, #0x73
	bne _02034210
	mov r2, #0
	str r2, [r0, #0x18]
	ldr r0, [r0, #4]
	bl sub_02033D58
	ldmia sp!, {r3, pc}
_020341D4:
	mov r2, #0
	str r2, [r0, #0x18]
	ldr r0, [r0, #8]
	bl sub_02033D58
	ldmia sp!, {r3, pc}
_020341E8:
	mov r2, #0
	str r2, [r0, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_02033D58
	ldmia sp!, {r3, pc}
_020341FC:
	mov r2, #0
	str r2, [r0, #0x18]
	ldr r0, [r0, #0x10]
	bl sub_02033D58
	ldmia sp!, {r3, pc}
_02034210:
	bl OS_Terminate
	mov r0, #1
	ldmia sp!, {r3, pc}

	arm_func_start sub_0203421C
sub_0203421C: ; 0x0203421C
	stmdb sp!, {r3, lr}
	ldrsb r2, [r1]
	cmp r2, #0x71
	bgt _02034250
	bge _0203427C
	cmp r2, #0x63
	bgt _02034288
	cmp r2, #0x61
	blt _02034288
	beq _02034264
	cmp r2, #0x63
	beq _02034270
	b _02034288
	arm_func_end sub_0203421C
_02034250:
	cmp r2, #0x73
	bne _02034288
	ldr r0, [r0, #4]
	bl sub_02033DC0
	ldmia sp!, {r3, pc}
_02034264:
	ldr r0, [r0, #8]
	bl sub_02033DC0
	ldmia sp!, {r3, pc}
_02034270:
	ldr r0, [r0, #0xc]
	bl sub_02033DC0
	ldmia sp!, {r3, pc}
_0203427C:
	ldr r0, [r0, #0x10]
	bl sub_02033DC0
	ldmia sp!, {r3, pc}
_02034288:
	bl OS_Terminate
	ldmia sp!, {r3, pc}

	arm_func_start sub_02034290
sub_02034290: ; 0x02034290
	ldr ip, _0203429C ; =sub_02033E50
	ldr r0, [r0, #4]
	bx ip
	.align 2, 0
_0203429C: .word sub_02033E50
	arm_func_end sub_02034290

	arm_func_start sub_020342A0
sub_020342A0: ; 0x020342A0
	ldr ip, _020342AC ; =sub_02033E50
	ldr r0, [r0, #8]
	bx ip
	.align 2, 0
_020342AC: .word sub_02033E50
	arm_func_end sub_020342A0

	arm_func_start sub_020342B0
sub_020342B0: ; 0x020342B0
	ldr ip, _020342BC ; =sub_02033E50
	ldr r0, [r0, #0xc]
	bx ip
	.align 2, 0
_020342BC: .word sub_02033E50
	arm_func_end sub_020342B0

	arm_func_start sub_020342C0
sub_020342C0: ; 0x020342C0
	ldr ip, _020342CC ; =sub_02033E50
	ldr r0, [r0, #0x10]
	bx ip
	.align 2, 0
_020342CC: .word sub_02033E50
	arm_func_end sub_020342C0

	arm_func_start sub_020342D0
sub_020342D0: ; 0x020342D0
	stmdb sp!, {r3, lr}
	ldmib r0, {r1, lr}
	ldr r2, [r1, #0x260]
	ldr r3, [r0, #0x18]
	ldr ip, [r0, #0xc]
	orr r2, r3, r2
	ldr r1, [r1, #0x274]
	ldr r3, [lr, #0x260]
	orr r1, r2, r1
	orr r1, r3, r1
	ldr r2, [lr, #0x274]
	ldr r0, [r0, #0x10]
	orr r1, r2, r1
	ldr r3, [ip, #0x260]
	ldr r2, [ip, #0x274]
	orr r1, r3, r1
	orr r1, r2, r1
	ldr r3, [r0, #0x260]
	ldr r2, [r0, #0x274]
	orr r0, r3, r1
	orr r0, r2, r0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020342D0

	arm_func_start sub_02034328
sub_02034328: ; 0x02034328
	stmdb sp!, {r4, lr}
	ldmib r0, {r1, r4, lr}
	ldr r2, [r1, #0x260]
	ldr r1, [r1, #0x274]
	ldr ip, [r0, #0x10]
	orr r0, r2, r1
	ldr r3, [r4, #0x260]
	ldr r1, [r4, #0x274]
	orr r0, r3, r0
	orr r0, r1, r0
	ldr r2, [lr, #0x260]
	ldr r1, [lr, #0x274]
	orr r0, r2, r0
	orr r0, r1, r0
	ldr r2, [ip, #0x260]
	ldr r1, [ip, #0x274]
	orr r0, r2, r0
	orr r0, r1, r0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02034328

	arm_func_start sub_02034374
sub_02034374: ; 0x02034374
	str r1, [r0, #0x14]
	bx lr
	arm_func_end sub_02034374

	arm_func_start sub_0203437C
sub_0203437C: ; 0x0203437C
	ldr r0, [r0, #0x14]
	bx lr
	arm_func_end sub_0203437C

	arm_func_start sub_02034384
sub_02034384: ; 0x02034384
	stmdb sp!, {r3, lr}
	ldr ip, [r0, #4]
	ldr r1, [ip, #0x260]
	cmp r1, #0
	beq _020343A4
	mov r0, ip
	bl sub_02033E68
	ldmia sp!, {r3, pc}
	arm_func_end sub_02034384
_020343A4:
	ldr r3, [r0, #8]
	ldr r1, [r3, #0x260]
	cmp r1, #0
	beq _020343C0
	mov r0, r3
	bl sub_02033E68
	ldmia sp!, {r3, pc}
_020343C0:
	ldr r2, [r0, #0xc]
	ldr r1, [r2, #0x260]
	cmp r1, #0
	beq _020343DC
	mov r0, r2
	bl sub_02033E68
	ldmia sp!, {r3, pc}
_020343DC:
	ldr r0, [r0, #0x10]
	ldr r1, [r0, #0x260]
	cmp r1, #0
	beq _020343F4
	bl sub_02033E68
	ldmia sp!, {r3, pc}
_020343F4:
	ldr r1, [ip, #0x274]
	cmp r1, #0
	beq _0203440C
	mov r0, ip
	bl sub_02033DFC
	ldmia sp!, {r3, pc}
_0203440C:
	ldr r1, [r3, #0x274]
	cmp r1, #0
	beq _02034424
	mov r0, r3
	bl sub_02033DFC
	ldmia sp!, {r3, pc}
_02034424:
	ldr r1, [r2, #0x274]
	cmp r1, #0
	beq _0203443C
	mov r0, r2
	bl sub_02033DFC
	ldmia sp!, {r3, pc}
_0203443C:
	ldr r1, [r0, #0x274]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02033DFC
	ldmia sp!, {r3, pc}

	arm_func_start sub_02034450
sub_02034450: ; 0x02034450
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02034290
	mov r0, r4
	bl sub_020342A0
	mov r0, r4
	bl sub_020342B0
	mov r0, r4
	bl sub_020342C0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02034450

	arm_func_start sub_02034478
sub_02034478: ; 0x02034478
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl NNS_SndInit
	mov r0, #0x64000
	bl _Z19Heap_AllocSecondarym
	str r0, [r4]
	mov r0, #0x30000
	bl _Z19Heap_AllocSecondarym
	str r0, [r4, #4]
	mov r0, #0xc000
	bl _Z19Heap_AllocSecondarym
	str r0, [r4, #8]
	ldr r0, [r4]
	mov r1, #0x64000
	bl NNS_SndHeapCreate
	str r0, [r4, #0x9c]
	ldr r0, [r4, #4]
	mov r1, #0x30000
	bl NNS_SndHeapCreate
	str r0, [r4, #0xa0]
	ldr r0, [r4, #8]
	mov r1, #0xc000
	bl NNS_SndHeapCreate
	str r0, [r4, #0xa4]
	add r0, r4, #0xc
	ldr r1, _02034598 ; =s_data_Sound_sound_data_sdat_0208d570
	ldr r2, [r4, #0xa4]
	mov r3, #0
	bl NNS_SndArcInit
	ldr r0, [r4, #0x9c]
	bl NNS_SndArcPlayerSetup
	ldr r0, [r4, #0xa0]
	bl NNS_SndArcPlayerSetup
	ldr r0, [r4, #0xa4]
	bl NNS_SndArcPlayerSetup
	mov r0, #0xa
	ldr r1, [r4, #0xa4]
	bl NNS_SndArcStrmInit
	mov r0, #0x63
	str r0, [r4, #0xc4]
	str r0, [r4, #0xd0]
	str r0, [r4, #0xdc]
	mov r1, #0
	str r1, [r4, #0x1a0]
	str r1, [r4, #0xf0]
	str r1, [r4, #0xf8]
	mov r0, #0x100
	str r0, [r4, #0xf4]
	str r1, [r4, #0xfc]
	str r1, [r4, #0xe4]
	add r0, r4, #0xa8
	bl NNS_SndStrmHandleInit
	add r0, r4, #0xac
	bl NNS_SndStrmHandleInit
	add r0, r4, #0xb0
	bl NNS_SndHandleInit
	add r0, r4, #0xb4
	bl NNS_SndHandleInit
	add r0, r4, #0xb8
	bl NNS_SndHandleInit
	add r0, r4, #0xbc
	bl NNS_SndHandleInit
	add r0, r4, #0xc0
	bl NNS_SndHandleInit
	mov r0, r4
	bl sub_020345A8
	mov r0, r4
	bl sub_020345B8
	mov r0, r4
	bl sub_02034EEC
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02034598: .word s_data_Sound_sound_data_sdat_0208d570
	arm_func_end sub_02034478

	arm_func_start thunk_FUN_0205b9f0
thunk_FUN_0205b9f0: ; 0x0203459C
	ldr ip, _020345A4 ; =NNS_SndMain
	bx ip
	.align 2, 0
_020345A4: .word NNS_SndMain
	arm_func_end thunk_FUN_0205b9f0

	arm_func_start sub_020345A8
sub_020345A8: ; 0x020345A8
	ldr ip, _020345B4 ; =NNS_SndHeapClear
	ldr r0, [r0, #0xa0]
	bx ip
	.align 2, 0
_020345B4: .word NNS_SndHeapClear
	arm_func_end sub_020345A8

	arm_func_start sub_020345B8
sub_020345B8: ; 0x020345B8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x9c]
	bl NNS_SndHeapClear
	mov r0, #0
	str r0, [r4, #0xe4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020345B8

	arm_func_start sub_020345D4
sub_020345D4: ; 0x020345D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020345B8
	ldr r1, [r4, #0x9c]
	mov r0, #0
	bl NNS_SndArcLoadGroup
	ldr r0, [r4, #0x9c]
	bl NNS_SndHeapSaveState
	str r0, [r4, #0x1a8]
	mov r0, r4
	bl sub_02034EEC
	ldmia sp!, {r4, pc}
	arm_func_end sub_020345D4

	arm_func_start sub_02034604
sub_02034604: ; 0x02034604
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _020346C4 ; =MAIN_BSS_0210CA6C
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	cmp r0, #0
	mov r2, #0
	beq _02034658
	bl sub_02041D80
	ldr r1, _020346C8 ; =MAIN_BSS_020B26A0
	ldrh r2, [r0, #0x4a]
	ldrb r1, [r1, #3]
	mov r0, r1, asr #4
	and r0, r0, #0xf
	cmp r0, #2
	cmpeq r2, #4
	and r1, r1, #0xf
	moveq r2, #7
	cmp r1, #0xa
	cmpeq r2, #0x1a
	moveq r2, #0x19
	arm_func_end sub_02034604
_02034658:
	ldr r0, [r5, #0xc4]
	cmp r0, r2
	bne _02034674
	mov r0, r5
	bl sub_020345D4
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_02034674:
	ldr r0, [r5, #0xf0]
	cmp r0, #1
	bne _02034690
	mov r0, r5
	bl sub_020345D4
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_02034690:
	str r2, [r5, #0xc4]
	mov r0, r5
	str r4, [r5, #0xe8]
	bl sub_020345A8
	ldr r0, [r5, #0xc4]
	ldr r1, [r5, #0xa0]
	bl NNS_SndArcLoadGroup
	mov r0, r5
	bl sub_020345D4
	mov r0, r5
	bl sub_02034EEC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020346C4: .word MAIN_BSS_0210CA6C
_020346C8: .word MAIN_BSS_020B26A0

	arm_func_start sub_020346CC
sub_020346CC: ; 0x020346CC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r7, r1
	mov r5, r2
	cmp r3, #0
	beq _0203471C
	ldr r0, [r6, #0xf0]
	cmp r0, #1
	bne _0203471C
	ldr r1, [r6, #0xcc]
	cmp r1, #5
	cmpne r1, #8
	bne _0203471C
	mov r0, r6
	bl sub_0203499C
	ldr r1, [r6, #0xd8]
	mov r0, r6
	mov r2, r5
	bl sub_02034A40
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020346CC
_0203471C:
	mov r0, r6
	mov r1, r7
	bl sub_02034604
	cmp r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020347BC ; =MAIN_BSS_0210CA6C
	mov r4, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _0203477C
	mov r1, r7
	bl sub_02041D80
	ldr r1, _020347C0 ; =MAIN_BSS_020B26A0
	ldrh r4, [r0, #0x4c]
	ldrb r1, [r1, #3]
	mov r0, r1, asr #4
	and r0, r0, #0xf
	cmp r0, #2
	cmpeq r4, #0xd
	and r1, r1, #0xf
	moveq r4, #0x21
	cmp r1, #0xa
	cmpeq r4, #0x1d
	moveq r4, #0x1c
_0203477C:
	mov r0, r6
	mov r1, #0
	bl sub_02034B58
	mov r1, r4
	add r0, r6, #0xb0
	bl NNS_SndArcPlayerStartSeq
	cmp r5, #0
	beq _020347AC
	mov r2, r5
	add r0, r6, #0xb0
	mov r1, #0x7f
	bl NNS_SndPlayerMoveVolume
_020347AC:
	str r4, [r6, #0xd0]
	mov r0, #0
	str r0, [r6, #0xec]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020347BC: .word MAIN_BSS_0210CA6C
_020347C0: .word MAIN_BSS_020B26A0

	arm_func_start sub_020347C4
sub_020347C4: ; 0x020347C4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xd0]
	str r1, [r4, #0xd4]
	ldr r1, [r4, #0xdc]
	str r1, [r4, #0xe0]
	ldr r1, [r4, #0xc4]
	str r1, [r4, #0xc8]
	bl sub_020345B8
	ldr r1, [r4, #0x9c]
	mov r0, #0x24
	bl NNS_SndArcLoadGroup
	mov r2, #0
	mov r1, #0xff
	arm_func_end sub_020347C4
_020347FC:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x100]
	cmp r2, #0x28
	blt _020347FC
	mov r0, r4
	bl sub_02034EEC
	ldmia sp!, {r4, pc}

	arm_func_start sub_0203481C
sub_0203481C: ; 0x0203481C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	ldr lr, _0203486C ; =DAT_02084d20
	add ip, sp, #0
	mov r5, r0
	mov r4, r1
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	mov r0, r5
	bl sub_020345A8
	add r0, sp, #0
	ldr r1, [r5, #0xa0]
	ldr r0, [r0, r4, lsl #2]
	bl NNS_SndArcLoadGroup
	mov r0, r5
	bl sub_02034EEC
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0203486C: .word DAT_02084d20
	arm_func_end sub_0203481C

	arm_func_start sub_02034870
sub_02034870: ; 0x02034870
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r3, #0
	arm_func_end sub_02034870
_0203487C:
	add r2, r4, r3, lsl #2
	ldr r0, [r2, #0x100]
	cmp r1, r0
	ldmeqia sp!, {r4, pc}
	cmp r0, #0xff
	bne _020348CC
	mov r0, r1
	str r1, [r2, #0x100]
	ldr r1, [r4, #0x9c]
	bl NNS_SndArcLoadGroup
	cmp r0, #0
	bne _020348B4
	mov r0, r4
	bl sub_02034EEC
_020348B4:
	mov r0, r4
	bl sub_02034EEC
	ldr r0, [r4, #0x9c]
	bl NNS_SndHeapSaveState
	str r0, [r4, #0x1a8]
	ldmia sp!, {r4, pc}
_020348CC:
	add r3, r3, #1
	cmp r3, #0x28
	blt _0203487C
	ldmia sp!, {r4, pc}

	arm_func_start sub_020348DC
sub_020348DC: ; 0x020348DC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r0, [r5, #0x9c]
	ldr r1, [r5, #0x1a8]
	bl NNS_SndHeapLoadState
	ldr r1, [r5, #0x9c]
	mov r0, r4
	bl NNS_SndArcLoadGroup
	cmp r0, #0
	bne _02034910
	mov r0, r5
	bl sub_02034EEC
	arm_func_end sub_020348DC
_02034910:
	mov r0, r5
	bl sub_02034EEC
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0203491C
sub_0203491C: ; 0x0203491C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020345A8
	mov r0, r4
	bl sub_020345B8
	ldr r1, [r4, #0xa0]
	mov r0, #0x25
	bl NNS_SndArcLoadGroup
	ldr r1, [r4, #0x9c]
	mov r0, #0x26
	bl NNS_SndArcLoadGroup
	mov r0, r4
	bl sub_02034EEC
	ldmia sp!, {r4, pc}
	arm_func_end sub_0203491C

	arm_func_start sub_02034954
sub_02034954: ; 0x02034954
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020345A8
	ldr r0, [r4, #0xc8]
	ldr r1, [r4, #0xa0]
	bl NNS_SndArcLoadGroup
	ldr r1, [r4, #0xc8]
	mov r0, r4
	str r1, [r4, #0xc4]
	bl sub_020345D4
	mov r0, r4
	bl sub_02034EEC
	ldr r1, [r4, #0xd4]
	add r0, r4, #0xb0
	bl NNS_SndArcPlayerStartSeq
	ldr r0, [r4, #0xd4]
	str r0, [r4, #0xd0]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02034954

	arm_func_start sub_0203499C
sub_0203499C: ; 0x0203499C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	str r4, [r5, #0xc4]
	ldr r0, [r5, #0xf0]
	cmp r0, #1
	bne _020349C8
	cmp r4, #5
	cmpne r4, #8
	ldreq r0, [r5, #0xc4]
	streq r0, [r5, #0xcc]
	arm_func_end sub_0203499C
_020349C8:
	mov r0, r5
	bl sub_020345A8
	ldr r1, [r5, #0xa0]
	mov r0, r4
	bl NNS_SndArcLoadGroup
	mov r0, r5
	bl sub_02034EEC
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020349E8
sub_020349E8: ; 0x020349E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	ldr r1, [r4, #0x9c]
	bl NNS_SndArcLoadGroup
	mov r0, r4
	bl sub_02034EEC
	ldmia sp!, {r4, pc}
	arm_func_end sub_020349E8

	arm_func_start sub_02034A08
sub_02034A08: ; 0x02034A08
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r0, [r5, #0x9c]
	ldr r1, [r5, #0x1a8]
	bl NNS_SndHeapLoadState
	mov r0, #0
	str r0, [r5, #0xe4]
	ldr r1, [r5, #0x9c]
	mov r0, r4
	bl NNS_SndArcLoadGroup
	mov r0, r5
	bl sub_02034EEC
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02034A08

	arm_func_start sub_02034A40
sub_02034A40: ; 0x02034A40
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r1, #0
	mov r4, r2
	bl sub_02034B58
	mov r1, r5
	add r0, r6, #0xb0
	bl NNS_SndArcPlayerStartSeq
	cmp r4, #0
	beq _02034A7C
	mov r2, r4
	add r0, r6, #0xb0
	mov r1, #0x7f
	bl NNS_SndPlayerMoveVolume
	arm_func_end sub_02034A40
_02034A7C:
	str r5, [r6, #0xd0]
	mov r0, #0
	str r0, [r6, #0xec]
	ldr r0, [r6, #0xf0]
	cmp r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	cmp r5, #0
	cmpne r5, #0x27
	ldreq r0, [r6, #0xd0]
	streq r0, [r6, #0xd8]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02034AA8
sub_02034AA8: ; 0x02034AA8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020345A8
	ldr r1, [r4, #0xa0]
	mov r0, #0x44
	bl NNS_SndArcLoadGroup
	mov r0, r4
	bl sub_02034EEC
	mov r0, r4
	mov r1, #0
	bl sub_02034B58
	add r0, r4, #0xb0
	mov r1, #1
	bl NNS_SndArcPlayerStartSeq
	ldmia sp!, {r4, pc}
	arm_func_end sub_02034AA8

	arm_func_start sub_02034AE4
sub_02034AE4: ; 0x02034AE4
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	ldr lr, _02034B54 ; =DAT_02084d3c
	add ip, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	mov r0, r6
	mov r1, #0
	bl sub_02034B58
	add r1, sp, #0
	ldr r1, [r1, r5, lsl #2]
	add r0, r6, #0xb0
	bl NNS_SndArcPlayerStartSeq
	cmp r4, #0
	beq _02034B44
	mov r2, r4
	add r0, r6, #0xb0
	mov r1, #0x7f
	bl NNS_SndPlayerMoveVolume
	arm_func_end sub_02034AE4
_02034B44:
	mov r0, #0
	str r0, [r6, #0xec]
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02034B54: .word DAT_02084d3c

	arm_func_start sub_02034B58
sub_02034B58: ; 0x02034B58
	ldr ip, _02034B64 ; =NNS_SndPlayerStopSeq
	add r0, r0, #0xb0
	bx ip
	.align 2, 0
_02034B64: .word NNS_SndPlayerStopSeq
	arm_func_end sub_02034B58

	arm_func_start sub_02034B68
sub_02034B68: ; 0x02034B68
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r1, [r5, #0xd0]
	add r0, r5, #0xb0
	bl NNS_SndArcPlayerStartSeq
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r2, r4
	add r0, r5, #0xb0
	mov r1, #0x7f
	bl NNS_SndPlayerMoveVolume
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02034B68

	arm_func_start sub_02034B9C
sub_02034B9C: ; 0x02034B9C
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xb0
	bl NNS_SndPlayerStopSeq
	mov r0, #0x63
	str r0, [r4, #0xc4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02034B9C

	arm_func_start sub_02034BB8
sub_02034BB8: ; 0x02034BB8
	ldr ip, _02034BC8 ; =NNS_SndPlayerSetTempoRatio
	str r1, [r0, #0xf4]
	add r0, r0, #0xb0
	bx ip
	.align 2, 0
_02034BC8: .word NNS_SndPlayerSetTempoRatio
	arm_func_end sub_02034BB8

	arm_func_start sub_02034BCC
sub_02034BCC: ; 0x02034BCC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r1, #0
	bl sub_02034C2C
	ldr r1, [r5, #0xa0]
	mov r0, r4
	bl NNS_SndArcLoadGroup
	mov r0, r5
	bl sub_02034EEC
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02034BCC

	arm_func_start sub_02034BF8
sub_02034BF8: ; 0x02034BF8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0
	mov r5, r0
	bl sub_02034C2C
	cmp r4, #0
	beq _02034C24
	mov r2, r4
	add r0, r5, #0xb8
	mov r1, #0
	bl NNS_SndArcPlayerStartSeqArc
	arm_func_end sub_02034BF8
_02034C24:
	str r4, [r5, #0xdc]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02034C2C
sub_02034C2C: ; 0x02034C2C
	ldr ip, _02034C40 ; =NNS_SndPlayerStopSeqBySeqArcIdx
	mov r2, r1
	ldr r1, [r0, #0xdc]
	mov r0, #0
	bx ip
	.align 2, 0
_02034C40: .word NNS_SndPlayerStopSeqBySeqArcIdx
	arm_func_end sub_02034C2C

	arm_func_start sub_02034C44
sub_02034C44: ; 0x02034C44
	ldr ip, _02034C58 ; =NNS_SndArcPlayerStartSeqArc
	mov r2, r1
	add r0, r0, #0xb4
	mov r1, #0
	bx ip
	.align 2, 0
_02034C58: .word NNS_SndArcPlayerStartSeqArc
	arm_func_end sub_02034C44

	arm_func_start sub_02034C5C
sub_02034C5C: ; 0x02034C5C
	ldr ip, _02034C6C ; =NNS_SndPlayerStopSeqBySeqArcIdx
	mov r0, #0
	mov r2, r0
	bx ip
	.align 2, 0
_02034C6C: .word NNS_SndPlayerStopSeqBySeqArcIdx
	arm_func_end sub_02034C5C

	arm_func_start sub_02034C70
sub_02034C70: ; 0x02034C70
	ldr ip, _02034C80 ; =NNS_SndPlayerStopSeq
	add r0, r0, #0xb4
	mov r1, #0
	bx ip
	.align 2, 0
_02034C80: .word NNS_SndPlayerStopSeq
	arm_func_end sub_02034C70

	arm_func_start sub_02034C84
sub_02034C84: ; 0x02034C84
	stmdb sp!, {r3, lr}
	mov r0, #0
	bl NNS_SndPlayerCountPlayingSeqBySeqArcIdx
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02034C84

	arm_func_start sub_02034CA0
sub_02034CA0: ; 0x02034CA0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xe4]
	mov r5, r1
	mov r4, r2
	cmp r0, r5
	beq _02034CE0
	str r5, [r6, #0xe4]
	ldr r0, [r6, #0x9c]
	ldr r1, [r6, #0x1a8]
	bl NNS_SndHeapLoadState
	ldr r1, [r6, #0x9c]
	mov r0, r5
	bl NNS_SndArcLoadGroup
	mov r0, r6
	bl sub_02034EEC
	arm_func_end sub_02034CA0
_02034CE0:
	mov r2, r4
	add r0, r6, #0xb4
	mov r1, #0
	bl NNS_SndArcPlayerStartSeqArc
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02034CF4
sub_02034CF4: ; 0x02034CF4
	stmdb sp!, {r3, r4, r5, lr}
	mov ip, #0
	mov r5, r0
	str ip, [sp]
	mov r3, r1
	mov r4, r2
	ldr r1, [r5, #0xfc]
	add r0, r5, #0xa8
	sub r2, ip, #1
	bl NNS_SndArcStrmStartEx
	mov r2, r4
	add r0, r5, #0xa8
	mov r1, #0
	bl NNS_SndArcStrmSetChannelPan
	ldr r0, [r5, #0xfc]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	str r0, [r5, #0xfc]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02034CF4

	arm_func_start sub_02034D44
sub_02034D44: ; 0x02034D44
	ldr ip, _02034D50 ; =sub_02034CF4
	mov r1, #0
	bx ip
	.align 2, 0
_02034D50: .word sub_02034CF4
	arm_func_end sub_02034D44

	arm_func_start sub_02034D54
sub_02034D54: ; 0x02034D54
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	add r0, r6, #0xa8
	mov r5, r1
	mov r4, r2
	bl NNS_SndArcStrmGetCurrentPlayingPos
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, pc}
	mov r2, #0
	str r2, [sp]
	ldr r1, [r6, #0xfc]
	mov r3, r5
	add r0, r6, #0xac
	sub r2, r2, #1
	bl NNS_SndArcStrmStartEx
	mov r2, r4
	add r0, r6, #0xac
	mov r1, #0
	bl NNS_SndArcStrmSetChannelPan
	ldr r0, [r6, #0xfc]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r6, #0xfc]
	movne r0, #0
	strne r0, [r6, #0xfc]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end sub_02034D54

	arm_func_start sub_02034DC8
sub_02034DC8: ; 0x02034DC8
	ldr ip, _02034DD4 ; =NNS_SndArcStrmStop
	add r0, r0, #0xac
	bx ip
	.align 2, 0
_02034DD4: .word NNS_SndArcStrmStop
	arm_func_end sub_02034DC8

	arm_func_start sub_02034DD8
sub_02034DD8: ; 0x02034DD8
	ldr ip, _02034DE4 ; =NNS_SndArcStrmStop
	add r0, r0, #0xa8
	bx ip
	.align 2, 0
_02034DE4: .word NNS_SndArcStrmStop
	arm_func_end sub_02034DD8

	arm_func_start sub_02034DE8
sub_02034DE8: ; 0x02034DE8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r1, #0
	mov r5, r2
	mov r4, r3
	bl sub_02034E38
	mov r1, r6
	add r0, r7, #0xc0
	bl NNS_SndArcPlayerStartSeq
	mov r1, r4
	add r0, r7, #0xc0
	bl NNS_SndPlayerSetTempoRatio
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r2, r5
	add r0, r7, #0xc0
	mov r1, #0x7f
	bl NNS_SndPlayerMoveVolume
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_02034DE8

	arm_func_start sub_02034E38
sub_02034E38: ; 0x02034E38
	ldr ip, _02034E44 ; =NNS_SndPlayerStopSeq
	add r0, r0, #0xc0
	bx ip
	.align 2, 0
_02034E44: .word NNS_SndPlayerStopSeq
	arm_func_end sub_02034E38

	arm_func_start sub_02034E48
sub_02034E48: ; 0x02034E48
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xbc
	mov r1, #0
	mov r2, #0x19
	bl NNS_SndArcPlayerStartSeqArc
	add r0, r4, #0xbc
	mov r1, #0
	mov r2, #0xb
	bl NNS_SndArcPlayerStartSeqArc
	mov r0, r4
	mov r1, #0
	bl sub_02034E80
	ldmia sp!, {r4, pc}
	arm_func_end sub_02034E48

	arm_func_start sub_02034E80
sub_02034E80: ; 0x02034E80
	cmp r1, #0
	beq _02034EB4
	ldr r3, [r0, #0xf8]
	ldr r2, _02034ECC ; =0x000003FF
	add r1, r3, r1
	str r1, [r0, #0xf8]
	cmp r1, r2
	strgt r2, [r0, #0xf8]
	bgt _02034EB8
	cmp r1, #0
	movlt r1, #0
	strlt r1, [r0, #0xf8]
	b _02034EB8
	arm_func_end sub_02034E80
_02034EB4:
	str r1, [r0, #0xf8]
_02034EB8:
	ldr ip, _02034ED0 ; =NNS_SndPlayerSetTrackPitch
	ldr r2, [r0, #0xf8]
	ldr r1, _02034ED4 ; =0x0000FFFF
	add r0, r0, #0xbc
	bx ip
	.align 2, 0
_02034ECC: .word 0x000003FF
_02034ED0: .word NNS_SndPlayerSetTrackPitch
_02034ED4: .word 0x0000FFFF

	arm_func_start sub_02034ED8
sub_02034ED8: ; 0x02034ED8
	ldr ip, _02034EE8 ; =NNS_SndPlayerStopSeq
	add r0, r0, #0xbc
	mov r1, #0
	bx ip
	.align 2, 0
_02034EE8: .word NNS_SndPlayerStopSeq
	arm_func_end sub_02034ED8

	arm_func_start sub_02034EEC
sub_02034EEC: ; 0x02034EEC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xa0]
	bl NNS_SndHeapGetSize
	ldr r0, [r4, #0x9c]
	bl NNS_SndHeapGetSize
	ldr r0, [r4, #0xa4]
	bl NNS_SndHeapGetSize
	ldmia sp!, {r4, pc}
	arm_func_end sub_02034EEC

	arm_func_start sub_02034F10
sub_02034F10: ; 0x02034F10
	ldr ip, _02034F1C ; =NNS_SndPlayerSetVolume
	add r0, r0, #0xb0
	bx ip
	.align 2, 0
_02034F1C: .word NNS_SndPlayerSetVolume
	arm_func_end sub_02034F10

	arm_func_start sub_02034F20
sub_02034F20: ; 0x02034F20
	ldr ip, _02034F38 ; =NNS_SndPlayerSetVolume
	cmp r1, #0x100
	strne r1, [r0, #0x1a0]
	ldr r1, [r0, #0x1a0]
	add r0, r0, #0xb8
	bx ip
	.align 2, 0
_02034F38: .word NNS_SndPlayerSetVolume
	arm_func_end sub_02034F20

	arm_func_start sub_02034F3C
sub_02034F3C: ; 0x02034F3C
	ldr ip, _02034F48 ; =NNS_SndPlayerSetVolume
	add r0, r0, #0xb4
	bx ip
	.align 2, 0
_02034F48: .word NNS_SndPlayerSetVolume
	arm_func_end sub_02034F3C

	arm_func_start sub_02034F4C
sub_02034F4C: ; 0x02034F4C
	str r1, [r0, #0xf0]
	cmp r1, #1
	bne _02034F8C
	ldr r1, [r0, #0xc4]
	cmp r1, #5
	cmpne r1, #8
	streq r1, [r0, #0xcc]
	movne r1, #0
	strne r1, [r0, #0xcc]
	ldr r1, [r0, #0xd0]
	cmp r1, #0
	cmpne r1, #0x27
	streq r1, [r0, #0xd8]
	movne r1, #0
	strne r1, [r0, #0xd8]
	bx lr
	arm_func_end sub_02034F4C
_02034F8C:
	mov r1, #0
	str r1, [r0, #0xcc]
	str r1, [r0, #0xd8]
	bx lr

	arm_func_start sub_02034F9C
sub_02034F9C: ; 0x02034F9C
	cmp r0, #0xb7
	bgt _02035020
	bge _02035078
	cmp r0, #0x63
	bgt _02034FD0
	bge _02035078
	cmp r0, #0x1f
	bgt _02034FC4
	beq _02035078
	b _02035080
	arm_func_end sub_02034F9C
_02034FC4:
	cmp r0, #0x5c
	beq _02035078
	b _02035080
_02034FD0:
	cmp r0, #0xaf
	bgt _02035014
	bge _02035078
	sub r1, r0, #0xa1
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _02035080
_02034FEC: ; jump table
	b _02035078 ; case 0
	b _02035080 ; case 1
	b _02035080 ; case 2
	b _02035078 ; case 3
	b _02035080 ; case 4
	b _02035080 ; case 5
	b _02035078 ; case 6
	b _02035080 ; case 7
	b _02035080 ; case 8
	b _02035078 ; case 9
_02035014:
	cmp r0, #0xb6
	beq _02035078
	b _02035080
_02035020:
	cmp r0, #0xd5
	bgt _02035048
	bge _02035078
	cmp r0, #0xbc
	bgt _0203503C
	beq _02035078
	b _02035080
_0203503C:
	cmp r0, #0xd2
	beq _02035078
	b _02035080
_02035048:
	cmp r0, #0xdc
	bgt _02035070
	cmp r0, #0xd9
	blt _02035064
	cmpne r0, #0xdc
	beq _02035078
	b _02035080
_02035064:
	cmp r0, #0xd7
	beq _02035078
	b _02035080
_02035070:
	cmp r0, #0xe2
	bne _02035080
_02035078:
	mov r0, #1
	bx lr
_02035080:
	mov r0, #0
	bx lr

	arm_func_start sub_02035088
sub_02035088: ; 0x02035088
	stmdb sp!, {r3, lr}
	mov r1, r0
	cmp r1, #0xbc
	bgt _02035120
	bge _020351C0
	cmp r1, #0xaa
	bgt _020350FC
	subs r0, r1, #0xa1
	addpl pc, pc, r0, lsl #2
	b _020350D8
_020350B0: ; jump table
	b _020351B8 ; case 0
	b _02035228 ; case 1
	b _02035228 ; case 2
	b _020351A8 ; case 3
	b _02035228 ; case 4
	b _02035228 ; case 5
	b _020351B0 ; case 6
	b _02035228 ; case 7
	b _02035228 ; case 8
	b _020351E8 ; case 9
	arm_func_end sub_02035088
_020350D8:
	cmp r1, #0x5c
	bgt _020350F0
	bge _02035208
	cmp r1, #0x1f
	beq _020351D0
	b _02035228
_020350F0:
	cmp r1, #0x63
	beq _02035218
	b _02035228
_020350FC:
	cmp r1, #0xb6
	bgt _02035114
	bge _02035200
	cmp r1, #0xaf
	beq _020351F8
	b _02035228
_02035114:
	cmp r1, #0xb7
	beq _02035220
	b _02035228
_02035120:
	cmp r1, #0xdc
	bgt _02035164
	cmp r1, #0xd9
	blt _02035140
	beq _020351E0
	cmp r1, #0xdc
	beq _020351D8
	b _02035228
_02035140:
	cmp r1, #0xd5
	bgt _02035158
	bge _02035210
	cmp r1, #0xd2
	beq _020351F0
	b _02035228
_02035158:
	cmp r1, #0xd7
	beq _020351A0
	b _02035228
_02035164:
	ldr r2, _02035238 ; =0x00000101
	cmp r1, r2
	bgt _02035180
	bge _020351E8
	cmp r1, #0xe2
	beq _020351C8
	b _02035228
_02035180:
	add r0, r2, #1
	cmp r1, r0
	bgt _02035194
	beq _020351C0
	b _02035228
_02035194:
	add r0, r2, #2
	cmp r1, r0
	bne _02035228
_020351A0:
	mov r0, #0
	ldmia sp!, {r3, pc}
_020351A8:
	mov r0, #1
	ldmia sp!, {r3, pc}
_020351B0:
	mov r0, #2
	ldmia sp!, {r3, pc}
_020351B8:
	mov r0, #3
	ldmia sp!, {r3, pc}
_020351C0:
	mov r0, #4
	ldmia sp!, {r3, pc}
_020351C8:
	mov r0, #5
	ldmia sp!, {r3, pc}
_020351D0:
	mov r0, #6
	ldmia sp!, {r3, pc}
_020351D8:
	mov r0, #7
	ldmia sp!, {r3, pc}
_020351E0:
	mov r0, #8
	ldmia sp!, {r3, pc}
_020351E8:
	mov r0, #9
	ldmia sp!, {r3, pc}
_020351F0:
	mov r0, #0xa
	ldmia sp!, {r3, pc}
_020351F8:
	mov r0, #0xb
	ldmia sp!, {r3, pc}
_02035200:
	mov r0, #0xc
	ldmia sp!, {r3, pc}
_02035208:
	mov r0, #0xd
	ldmia sp!, {r3, pc}
_02035210:
	mov r0, #0xe
	ldmia sp!, {r3, pc}
_02035218:
	mov r0, #0xf
	ldmia sp!, {r3, pc}
_02035220:
	mov r0, #0x10
	ldmia sp!, {r3, pc}
_02035228:
	ldr r0, _0203523C ; =s_GetEnemyLabel2PartnerIndex_index_0208d590
	bl LogError
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02035238: .word 0x00000101
_0203523C: .word s_GetEnemyLabel2PartnerIndex_index_0208d590

	arm_func_start sub_02035240
sub_02035240: ; 0x02035240
	stmdb sp!, {r3, lr}
	mov r1, r0
	cmp r1, #0x10
	addls pc, pc, r1, lsl #2
	b _02035320
_02035254: ; jump table
	b _02035298 ; case 0
	b _020352A0 ; case 1
	b _020352A8 ; case 2
	b _020352B0 ; case 3
	b _020352B8 ; case 4
	b _020352C0 ; case 5
	b _020352C8 ; case 6
	b _020352D0 ; case 7
	b _020352D8 ; case 8
	b _020352E0 ; case 9
	b _020352E8 ; case 10
	b _020352F0 ; case 11
	b _020352F8 ; case 12
	b _02035300 ; case 13
	b _02035308 ; case 14
	b _02035310 ; case 15
	b _02035318 ; case 16
	arm_func_end sub_02035240
_02035298:
	mov r0, #0xd7
	ldmia sp!, {r3, pc}
_020352A0:
	mov r0, #0xa4
	ldmia sp!, {r3, pc}
_020352A8:
	mov r0, #0xa7
	ldmia sp!, {r3, pc}
_020352B0:
	mov r0, #0xa1
	ldmia sp!, {r3, pc}
_020352B8:
	mov r0, #0xbc
	ldmia sp!, {r3, pc}
_020352C0:
	mov r0, #0xe2
	ldmia sp!, {r3, pc}
_020352C8:
	mov r0, #0x1f
	ldmia sp!, {r3, pc}
_020352D0:
	mov r0, #0xdc
	ldmia sp!, {r3, pc}
_020352D8:
	mov r0, #0xd9
	ldmia sp!, {r3, pc}
_020352E0:
	mov r0, #0xaa
	ldmia sp!, {r3, pc}
_020352E8:
	mov r0, #0xd2
	ldmia sp!, {r3, pc}
_020352F0:
	mov r0, #0xaf
	ldmia sp!, {r3, pc}
_020352F8:
	mov r0, #0xb6
	ldmia sp!, {r3, pc}
_02035300:
	mov r0, #0x5c
	ldmia sp!, {r3, pc}
_02035308:
	mov r0, #0xd5
	ldmia sp!, {r3, pc}
_02035310:
	mov r0, #0x63
	ldmia sp!, {r3, pc}
_02035318:
	mov r0, #0xb7
	ldmia sp!, {r3, pc}
_02035320:
	ldr r0, _02035330 ; =s_GetPartnerIndex2EnemyLabel_index_0208d5b8
	bl LogError
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02035330: .word s_GetPartnerIndex2EnemyLabel_index_0208d5b8

	arm_func_start sub_02035334
sub_02035334: ; 0x02035334
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02035478
_0203534C: ; jump table
	b _02035478 ; case 0
	b _02035478 ; case 1
	b _0203536C ; case 2
	b _020353C8 ; case 3
	b _020353FC ; case 4
	b _0203543C ; case 5
	b _02035470 ; case 6
	b _02035478 ; case 7
	arm_func_end sub_02035334
_0203536C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	movgt r0, #3
	strgt r0, [r4, #4]
	bgt _020353C8
	mov r0, #4
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ble _02035478
	ldr r0, _020354DC ; =MAIN_BSS_0210CA84
	ldr r1, [r4, #8]
	ldr r0, [r0]
	add r1, r1, r0
	str r1, [r4, #8]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	blt _02035478
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #5
	str r0, [r4, #4]
	b _02035478
_020353C8:
	ldr r0, _020354DC ; =MAIN_BSS_0210CA84
	ldr r1, [r4, #8]
	ldr r0, [r0]
	add r1, r1, r0
	str r1, [r4, #8]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	blt _02035478
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #4
	str r0, [r4, #4]
	b _02035478
_020353FC:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ble _02035478
	ldr r0, _020354DC ; =MAIN_BSS_0210CA84
	ldr r1, [r4, #8]
	ldr r0, [r0]
	add r1, r1, r0
	str r1, [r4, #8]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	blt _02035478
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #5
	str r0, [r4, #4]
	b _02035478
_0203543C:
	ldr r0, _020354DC ; =MAIN_BSS_0210CA84
	ldr r1, [r4, #8]
	ldr r0, [r0]
	add r1, r1, r0
	str r1, [r4, #8]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	blt _02035478
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #6
	str r0, [r4, #4]
	b _02035478
_02035470:
	mov r0, #7
	str r0, [r4, #4]
_02035478:
	ldr r0, [r4, #4]
	cmp r0, #4
	moveq r0, #0x1000
	streq r0, [r4, #0x18]
	beq _020354D4
	cmp r0, #3
	bne _020354AC
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	mov r0, r0, lsl #0xc
	bl _s32_div_f
	str r0, [r4, #0x18]
	b _020354D4
_020354AC:
	cmp r0, #5
	movne r0, #0
	strne r0, [r4, #0x18]
	bne _020354D4
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #8]
	sub r0, r1, r0
	mov r0, r0, lsl #0xc
	bl _s32_div_f
	str r0, [r4, #0x18]
_020354D4:
	ldr r0, [r4, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_020354DC: .word MAIN_BSS_0210CA84

	arm_func_start sub_020354E0
sub_020354E0: ; 0x020354E0
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	str r3, [r0, #0x14]
	ldr r2, [r0, #4]
	cmp r2, #3
	moveq r0, #1
	bxeq lr
	cmp r2, #4
	bne _02035514
	mov r1, #0
	str r1, [r0, #8]
	mov r0, #1
	bx lr
	arm_func_end sub_020354E0
_02035514:
	cmp r2, #5
	bne _0203555C
	cmp r1, #0
	ble _02035544
	mov r2, #3
	str r2, [r0, #4]
	str r1, [r0, #0xc]
	ldr r2, [r0, #0x18]
	mul r2, r1, r2
	mov r1, r2, asr #0xc
	str r1, [r0, #8]
	b _02035554
_02035544:
	mov r1, #4
	str r1, [r0, #4]
	mov r1, #0x1000
	str r1, [r0, #0x18]
_02035554:
	mov r0, #1
	bx lr
_0203555C:
	cmp r1, #0
	movle r1, #4
	strle r1, [r0, #4]
	movle r1, #0x1000
	ble _0203557C
	mov r1, #2
	str r1, [r0, #4]
	mov r1, #0
_0203557C:
	str r1, [r0, #0x18]
	mov r1, #0
	str r1, [r0, #8]
	mov r0, #1
	bx lr

	arm_func_start sub_02035590
sub_02035590: ; 0x02035590
	cmp r1, #0
	movgt r2, #5
	movle r2, #7
	str r2, [r0, #4]
	mov r2, #0
	str r2, [r0, #8]
	str r1, [r0, #0x14]
	mov r0, #1
	bx lr
	arm_func_end sub_02035590

	arm_func_start sub_020355B4
sub_020355B4: ; 0x020355B4
	ldr r2, _020355F4 ; =0x04000450
	mov r3, #0
	str r3, [r2]
	str r3, [r2, #4]
	mov r0, #0x80000
	str r0, [r2, #0x20]
	mov r0, #0x60000
	str r0, [r2, #0x20]
	str r3, [r2, #0x20]
	ldrh r0, [r1, #0x26]
	mov r1, #1
	mov r0, r1, lsl r0
	str r0, [r2, #0x1c]
	str r0, [r2, #0x1c]
	str r0, [r2, #0x1c]
	bx lr
	.align 2, 0
_020355F4: .word 0x04000450
	arm_func_end sub_020355B4

	arm_func_start sub_020355F8
sub_020355F8: ; 0x020355F8
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r1, [r0, #0x4b8]
	ldr r0, _0203565C ; =MAIN_BSS_0210CA84
	ldr r1, [r1]
	str r1, [r0, #4]
	cmp r1, #0
	beq _02035640
	ldr r2, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	str r2, [sp]
	str r2, [r0, #0x10]
	str r1, [sp, #4]
	str r1, [r0, #0x14]
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	arm_func_end sub_020355F8
_02035640:
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0203565C: .word MAIN_BSS_0210CA84

	arm_func_start sub_02035660
sub_02035660: ; 0x02035660
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x20
	ldr r0, _0203571C ; =MAIN_BSS_0210CA84
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _020356B0
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r1, [r0, #0x4b8]
	ldr r0, _0203571C ; =MAIN_BSS_0210CA84
	ldr r1, [r1]
	str r1, [r0, #4]
	cmp r1, #0
	beq _020356B0
	ldr r2, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	str r2, [sp, #0x18]
	str r2, [r0, #0x10]
	str r1, [sp, #0x1c]
	str r1, [r0, #0x14]
	arm_func_end sub_02035660
_020356B0:
	ldr r0, _0203571C ; =MAIN_BSS_0210CA84
	ldr r4, [r0, #4]
	cmp r4, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0x1c]
	ldr lr, [r4, #0x20]
	str r1, [sp, #0x10]
	str r1, [r0, #0x18]
	str lr, [r0, #0x1c]
	ldr ip, [r0, #0x10]
	ldr r3, [r0, #0x14]
	sub r1, r1, ip
	str r1, [r0, #0x18]
	sub r1, lr, r3
	str r1, [r0, #0x1c]
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	str lr, [sp, #0x14]
	str r2, [r0, #0x10]
	str ip, [sp]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [r0, #0x14]
	add sp, sp, #0x20
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203571C: .word MAIN_BSS_0210CA84

	arm_func_start sub_02035720
sub_02035720: ; 0x02035720
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl sub_02035774
	str r4, [r5]
	mov r0, r4, lsl #2
	bl _Znam
	str r0, [r5, #4]
	ldr r0, [r5]
	mov r2, #0
	cmp r0, #0
	ble _0203576C
	mov r1, r2
	arm_func_end sub_02035720
_02035754:
	ldr r0, [r5, #4]
	str r1, [r0, r2, lsl #2]
	ldr r0, [r5]
	add r2, r2, #1
	cmp r2, r0
	blt _02035754
_0203576C:
	bl sub_020355F8
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02035774
sub_02035774: ; 0x02035774
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020357EC
	ldr r0, [r5]
	mov r4, #0
	cmp r0, #0
	ble _020357D4
	mov r6, r4
	arm_func_end sub_02035774
_0203579C:
	ldr r0, [r5, #4]
	ldr r0, [r0, r4, lsl #2]
	cmp r0, #0
	beq _020357C4
	beq _020357BC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020357BC:
	ldr r0, [r5, #4]
	str r6, [r0, r4, lsl #2]
_020357C4:
	ldr r0, [r5]
	add r4, r4, #1
	cmp r4, r0
	blt _0203579C
_020357D4:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020357EC
	bl _ZdaPv
	mov r0, #0
	str r0, [r5, #4]
_020357EC:
	mov r0, #0
	str r0, [r5]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_020357F8
sub_020357F8: ; 0x020357F8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020357F8

	arm_func_start sub_0203580C
sub_0203580C: ; 0x0203580C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r6, r0
	bl sub_02035660
	mov r1, r5
	mov r0, #0x3c
	bl _s32_div_f
	ldr r1, _020358A8 ; =MAIN_BSS_0210CA84
	mov r4, #0
	str r0, [r1]
	ldr r0, [r6]
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, r4
	arm_func_end sub_0203580C
_02035844:
	ldr r0, [r6, #4]
	ldr r0, [r0, r4, lsl #2]
	cmp r0, #0
	beq _02035894
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #7
	bne _02035894
	ldr r0, [r6, #4]
	ldr r0, [r0, r4, lsl #2]
	cmp r0, #0
	beq _02035894
	beq _0203588C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0203588C:
	ldr r0, [r6, #4]
	str r7, [r0, r4, lsl #2]
_02035894:
	ldr r0, [r6]
	add r4, r4, #1
	cmp r4, r0
	blt _02035844
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020358A8: .word MAIN_BSS_0210CA84

	arm_func_start sub_020358AC
sub_020358AC: ; 0x020358AC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020358AC
_020358C8:
	ldr r0, [r6, #4]
	ldr r0, [r0, r4, lsl #2]
	cmp r0, #0
	beq _020358E8
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0x10]
	blx r2
_020358E8:
	ldr r0, [r6]
	add r4, r4, #1
	cmp r4, r0
	blt _020358C8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_020358FC
sub_020358FC: ; 0x020358FC
	bx lr
	arm_func_end sub_020358FC

	arm_func_start sub_02035900
sub_02035900: ; 0x02035900
	ldr r3, [r0, #4]
	cmp r3, #0
	beq _02035938
	ldr ip, [r0]
	mov r0, #1
	cmp ip, #1
	ble _02035938
	arm_func_end sub_02035900
_0203591C:
	ldr r2, [r3, r0, lsl #2]
	cmp r2, #0
	streq r1, [r3, r0, lsl #2]
	bxeq lr
	add r0, r0, #1
	cmp r0, ip
	blt _0203591C
_02035938:
	mvn r0, #0
	bx lr

	arm_func_start sub_02035940
sub_02035940: ; 0x02035940
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	cmp r0, #0
	beq _02035990
	ldr r0, [r0]
	cmp r0, #0
	beq _02035980
	beq _02035974
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_02035940
_02035974:
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0]
_02035980:
	ldr r1, [r5, #4]
	mov r0, #0
	str r4, [r1]
	ldmia sp!, {r3, r4, r5, pc}
_02035990:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02035998
sub_02035998: ; 0x02035998
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r5]
	mov r4, #1
	cmp r0, #1
	ldmleia sp!, {r4, r5, r6, pc}
	mov r6, #0
	arm_func_end sub_02035998
_020359C0:
	ldr r0, [r5, #4]
	ldr r0, [r0, r4, lsl #2]
	cmp r0, #0
	beq _020359E8
	beq _020359E0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020359E0:
	ldr r0, [r5, #4]
	str r6, [r0, r4, lsl #2]
_020359E8:
	ldr r0, [r5]
	add r4, r4, #1
	cmp r4, r0
	blt _020359C0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_020359FC
sub_020359FC: ; 0x020359FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #0
	ldmeqia sp!, {r4, pc}
	beq _02035A28
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_020359FC
_02035A28:
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02035A38
sub_02035A38: ; 0x02035A38
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r1
	cmp r4, #0
	ble _02035C48
	cmp r4, #0x10
	addls pc, pc, r4, lsl #2
	b _02035C48
_02035A58: ; jump table
	b _02035C48 ; case 0
	b _02035A9C ; case 1
	b _02035AC0 ; case 2
	b _02035B18 ; case 3
	b _02035B38 ; case 4
	b _02035B38 ; case 5
	b _02035B38 ; case 6
	b _02035B38 ; case 7
	b _02035B5C ; case 8
	b _02035B7C ; case 9
	b _02035B9C ; case 10
	b _02035C24 ; case 11
	b _02035BC0 ; case 12
	b _02035BE4 ; case 13
	b _02035C04 ; case 14
	b _02035C24 ; case 15
	b _02035B38 ; case 16
	arm_func_end sub_02035A38
_02035A9C:
	ldr r0, _02035C54 ; =0x00000428
	bl _Znwm
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r1, #1
	bl sub_02038D04
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02035AC0:
	ldr r0, _02035C58 ; =0x00000678
	bl _Znwm
	movs r4, r0
	beq _02035B0C
	ldr r0, _02035C5C ; =PTR_LAB_0208d610
	mov r1, #4
	str r0, [r4]
	ldr r0, _02035C60 ; =ptr_FUN_0203a734_0208db24
	str r1, [r4, #0x1c]
	ldr ip, _02035C64 ; =sub_02035C8C
	str r0, [r4]
	ldr r3, _02035C68 ; =sub_02035C74
	add r0, r4, #0x20
	mov r1, #0x20
	mov r2, #0x2c
	str ip, [sp]
	bl __cxa_vec_ctor
	mov r0, r4
	bl sub_02039E20
_02035B0C:
	add sp, sp, #4
	mov r0, r4
	ldmia sp!, {r3, r4, pc}
_02035B18:
	mov r0, #0x110
	bl _Znwm
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	bl sub_02036930
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02035B38:
	mov r0, #0xb4
	bl _Znwm
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r1, r4
	bl sub_02037388
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02035B5C:
	mov r0, #0xd4
	bl _Znwm
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	bl sub_020379C8
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02035B7C:
	ldr r0, _02035C6C ; =0x0000066C
	bl _Znwm
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	bl sub_02038018
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02035B9C:
	mov r0, #0x80
	bl _Znwm
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r1, r4
	bl sub_020389E8
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02035BC0:
	ldr r0, _02035C54 ; =0x00000428
	bl _Znwm
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r1, #0
	bl sub_02038D04
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02035BE4:
	mov r0, #0x88
	bl _Znwm
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	bl sub_0203A76C
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02035C04:
	ldr r0, _02035C70 ; =0x0000059C
	bl _Znwm
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	bl sub_0203AA44
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02035C24:
	ldr r0, _02035C6C ; =0x0000066C
	bl _Znwm
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r1, r4
	bl sub_0203B34C
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02035C48:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02035C54: .word 0x00000428
_02035C58: .word 0x00000678
_02035C5C: .word PTR_LAB_0208d610
_02035C60: .word ptr_FUN_0203a734_0208db24
_02035C64: .word sub_02035C8C
_02035C68: .word sub_02035C74
_02035C6C: .word 0x0000066C
_02035C70: .word 0x0000059C

	arm_func_start sub_02035C74
sub_02035C74: ; 0x02035C74
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl sub_020039B8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02035C74

	arm_func_start sub_02035C8C
sub_02035C8C: ; 0x02035C8C
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl sub_020039E8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02035C8C

	arm_func_start sub_02035CA4
sub_02035CA4: ; 0x02035CA4
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0
	ble _02035D28
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02035D28
	ldr r0, [r5]
	mov r6, #0
	cmp r0, #0
	ble _02035D0C
	arm_func_end sub_02035CA4
_02035CD4:
	ldr r0, [r5, #4]
	ldr r0, [r0, r6, lsl #2]
	cmp r0, #0
	beq _02035CFC
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r4, r0
	moveq r0, r6
	ldmeqia sp!, {r4, r5, r6, pc}
_02035CFC:
	ldr r0, [r5]
	add r6, r6, #1
	cmp r6, r0
	blt _02035CD4
_02035D0C:
	mov r0, r5
	mov r1, r4
	bl sub_02035A38
	mov r1, r0
	mov r0, r5
	bl sub_02035900
	ldmia sp!, {r4, r5, r6, pc}
_02035D28:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02035D30
sub_02035D30: ; 0x02035D30
	mov r0, #0
	bx lr
	arm_func_end sub_02035D30

	arm_func_start sub_02035D38
sub_02035D38: ; 0x02035D38
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0
	ble _02035D98
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02035D98
	ldr r0, [r0]
	cmp r0, #0
	beq _02035D7C
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02035D38
_02035D7C:
	mov r0, r5
	mov r1, r4
	bl sub_02035A38
	mov r1, r0
	mov r0, r5
	bl sub_02035940
	ldmia sp!, {r3, r4, r5, pc}
_02035D98:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02035DA0
sub_02035DA0: ; 0x02035DA0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	cmp r7, #0
	ble _02035E34
	ldr r0, [r8, #4]
	cmp r0, #0
	beq _02035E34
	ldr r0, [r8]
	mov r4, #0
	cmp r0, #0
	ble _02035E34
	arm_func_end sub_02035DA0
_02035DD8:
	ldr r0, [r8, #4]
	ldr r0, [r0, r4, lsl #2]
	cmp r0, #0
	beq _02035E24
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r7, r0
	bne _02035E24
	ldr r0, [r8, #4]
	ldr r3, [sp, #0x18]
	ldr r0, [r0, r4, lsl #2]
	mov r1, r6
	ldr r4, [r0]
	mov r2, r5
	ldr r4, [r4, #0x14]
	blx r4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02035E24:
	ldr r0, [r8]
	add r4, r4, #1
	cmp r4, r0
	blt _02035DD8
_02035E34:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start sub_02035E3C
sub_02035E3C: ; 0x02035E3C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r5, r2
	cmp r6, #0
	ble _02035EC4
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _02035EC4
	ldr r0, [r7]
	mov r4, #0
	cmp r0, #0
	ble _02035EC4
	arm_func_end sub_02035E3C
_02035E70:
	ldr r0, [r7, #4]
	ldr r0, [r0, r4, lsl #2]
	cmp r0, #0
	beq _02035EB4
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r6, r0
	bne _02035EB4
	ldr r0, [r7, #4]
	mov r1, r5
	ldr r0, [r0, r4, lsl #2]
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02035EB4:
	ldr r0, [r7]
	add r4, r4, #1
	cmp r4, r0
	blt _02035E70
_02035EC4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02035ECC
sub_02035ECC: ; 0x02035ECC
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0
	ble _02035F48
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _02035F48
	ldr r0, [r6]
	mov r4, #0
	cmp r0, #0
	ble _02035F48
	arm_func_end sub_02035ECC
_02035EFC:
	ldr r0, [r6, #4]
	ldr r0, [r0, r4, lsl #2]
	cmp r0, #0
	beq _02035F38
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r5, r0
	bne _02035F38
	ldr r0, [r6, #4]
	ldr r0, [r0, r4, lsl #2]
	ldr r0, [r0, #4]
	cmp r0, #7
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
_02035F38:
	ldr r0, [r6]
	add r4, r4, #1
	cmp r4, r0
	blt _02035EFC
_02035F48:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02035F50
sub_02035F50: ; 0x02035F50
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	cmp r6, #3
	mov r5, r2
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	ble _02035FDC
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _02035FDC
	ldr r0, [r7]
	mov r4, #0
	cmp r0, #0
	ble _02035FDC
	arm_func_end sub_02035F50
_02035F90:
	ldr r0, [r7, #4]
	ldr r0, [r0, r4, lsl #2]
	cmp r0, #0
	beq _02035FCC
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r6, r0
	bne _02035FCC
	ldr r0, [r7, #4]
	mov r1, r5
	ldr r0, [r0, r4, lsl #2]
	bl sub_02037330
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02035FCC:
	ldr r0, [r7]
	add r4, r4, #1
	cmp r4, r0
	blt _02035F90
_02035FDC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02035FE4
sub_02035FE4: ; 0x02035FE4
	bx lr
	arm_func_end sub_02035FE4

	arm_func_start sub_02035FE8
sub_02035FE8: ; 0x02035FE8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xdc
	mov r5, r1
	mov r4, r0
	ldr r1, _0203614C ; =s_data_Field_Effect_ew_03d_LZ_bin_0208d73c
	add r0, sp, #0x7c
	mov r2, r5
	bl OS_SPrintf
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _02036150 ; =DAT_0208d75c
	add r0, sp, #0x10
	add r2, sp, #0x7c
	str ip, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	ldr r1, _02036154 ; =s_MEF_ew_03d_NCLR_0208d760
	add r0, sp, #0x7c
	mov r2, r5
	bl OS_SPrintf
	mov r2, #0
	add r0, r4, #4
	add r1, sp, #0x7c
	mov r3, r2
	bl sub_02007B60
	mov r0, #1
	ldr r3, _02036158 ; =sub_0203616C
	str r0, [r4, #0x30]
	mov r2, #0
	mov r1, #0x10
	str r2, [sp]
	bl __cxa_vec_new
	str r0, [r4, #0x2c]
	ldr r1, _0203615C ; =s_MEF_ew_03d_NCBR_0208d770
	add r0, sp, #0x7c
	mov r2, r5
	bl OS_SPrintf
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _020360A8
	mov r2, #0
	add r1, sp, #0x7c
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
	arm_func_end sub_02035FE8
_020360A8:
	ldr r2, [r4, #0x2c]
	ldr r1, _02036160 ; =s_MEF_ew_03d_NCER_0208d780
	str r0, [r2]
	add r0, sp, #0x7c
	mov r2, r5
	bl OS_SPrintf
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _020360E4
	mov r2, #0
	add r1, sp, #0x7c
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_020360E4:
	ldr r2, [r4, #0x2c]
	ldr r1, _02036164 ; =s_MEF_ew_03d_cac_0208d790
	str r0, [r2, #4]
	add r0, sp, #0x7c
	mov r2, r5
	bl OS_SPrintf
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _02036114
	add r1, sp, #0x7c
	bl sub_0200879C
_02036114:
	ldr r2, [r4, #0x2c]
	ldr r1, _02036168 ; =0x04000210
	str r0, [r2, #8]
	ldr r0, [r1]
	tst r0, #1
	moveq r1, #1
	movne r1, #0
	mov r0, r4
	bl sub_020295B0
	add r0, sp, #0x10
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, #1
	add sp, sp, #0xdc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0203614C: .word s_data_Field_Effect_ew_03d_LZ_bin_0208d73c
_02036150: .word DAT_0208d75c
_02036154: .word s_MEF_ew_03d_NCLR_0208d760
_02036158: .word sub_0203616C
_0203615C: .word s_MEF_ew_03d_NCBR_0208d770
_02036160: .word s_MEF_ew_03d_NCER_0208d780
_02036164: .word s_MEF_ew_03d_cac_0208d790
_02036168: .word 0x04000210

	arm_func_start sub_0203616C
sub_0203616C: ; 0x0203616C
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end sub_0203616C

	arm_func_start sub_02036184
sub_02036184: ; 0x02036184
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r5, _020362E8 ; =DAT_0208d694
	mov r4, #0x1c
	mla r4, r3, r4, r5
	mov r7, r0
	mov r0, #0xb8
	mov r5, r1
	mov r6, r2
	str r4, [r7, #0x10]
	bl _Znwm
	movs r4, r0
	beq _020361D8
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r1, r5
	mov r2, #1
	str r3, [sp, #8]
	bl sub_02002BC4
	mov r4, r0
	arm_func_end sub_02036184
_020361D8:
	mov r0, #0xb8
	bl _Znwm
	movs r5, r0
	beq _02036208
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r1, r6
	mov r2, #1
	str r3, [sp, #8]
	bl sub_02002BC4
	mov r5, r0
_02036208:
	ldr r0, [r5, #0x50]
	mov r1, #0
	mov r0, r0, lsr #1
	bic r3, r0, #7
	ldr r0, [r4, #0x50]
	mov r2, r1
	add r6, r3, #8
	bl NNS_GfdAllocLnkTexVram
	mov r1, #0
	mov r6, r6, lsl #1
	str r0, [r7]
	mov r0, r6
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	str r0, [r7, #4]
	ldr r0, [r7]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0xd
	str r0, [r7, #8]
	ldr r0, [r7, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0xd
	str r0, [r7, #0xc]
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x50]
	bl DC_FlushRange
	bl GX_BeginLoadTexPltt
	ldr r0, [r5, #0x4c]
	ldr r1, [r7, #0xc]
	mov r2, r6
	bl GX_LoadTexPltt
	bl GX_EndLoadTexPltt
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	bl DC_FlushRange
	bl GX_BeginLoadTex
	ldr r1, [r7, #8]
	ldr r0, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	bl GX_LoadTex
	bl GX_EndLoadTex
	cmp r4, #0
	beq _020362C4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020362C4:
	cmp r5, #0
	beq _020362DC
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020362DC:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_020362E8: .word DAT_0208d694

	arm_func_start sub_020362EC
sub_020362EC: ; 0x020362EC
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr ip, _02036430 ; =DAT_0208d694
	mov r4, #0x1c
	mla ip, r3, r4, ip
	mov r4, r0
	mov r0, #0xb8
	mov r6, r1
	mov r5, r2
	str ip, [r4, #0x10]
	bl _Znwm
	cmp r0, #0
	beq _0203633C
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r1, r6
	mov r2, #1
	str r3, [sp, #8]
	bl sub_02002BC4
	arm_func_end sub_020362EC
_0203633C:
	str r0, [r4, #0x14]
	mov r0, #0xb8
	bl _Znwm
	cmp r0, #0
	beq _0203636C
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r1, r5
	mov r2, #1
	str r3, [sp, #8]
	bl sub_02002BC4
_0203636C:
	str r0, [r4, #0x18]
	ldr r2, [r4, #0x14]
	ldr r5, [r0, #0x50]
	mov r1, #0
	ldr r0, [r2, #0x50]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r5, lsr #1
	add r2, r1, #7
	mov r1, #0
	bic r3, r2, #7
	str r0, [r4]
	mov r2, r1
	mov r0, r3, lsl #1
	bl NNS_GfdAllocLnkPlttVram
	str r0, [r4, #4]
	ldr r0, [r4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0xd
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0xd
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x18]
	ldr r0, [r1, #0x4c]
	ldr r1, [r1, #0x50]
	bl DC_FlushRange
	ldr r1, [r4, #0x14]
	ldr r0, [r1, #0x4c]
	ldr r1, [r1, #0x50]
	bl DC_FlushRange
	ldr r3, [r4, #0x18]
	ldr r1, [r4, #0xc]
	ldr r2, [r3, #0x4c]
	ldr r3, [r3, #0x50]
	mov r0, #1
	add r3, r3, #3
	bic r3, r3, #3
	bl NNS_GfdRegisterNewVramTransferTask
	ldr r3, [r4, #0x14]
	ldr r1, [r4, #8]
	ldr r2, [r3, #0x4c]
	ldr r3, [r3, #0x50]
	mov r0, #0
	bl NNS_GfdRegisterNewVramTransferTask
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02036430: .word DAT_0208d694

	arm_func_start sub_02036434
sub_02036434: ; 0x02036434
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02036460
	beq _02036458
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_02036434
_02036458:
	mov r0, #0
	str r0, [r4, #0x14]
_02036460:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	beq _0203647C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0203647C:
	mov r0, #0
	str r0, [r4, #0x18]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02036488
sub_02036488: ; 0x02036488
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _020364A8
	bl NNS_GfdFreeLnkTexVram
	mov r0, #0
	str r0, [r4]
	arm_func_end sub_02036488
_020364A8:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020364C0
	bl NNS_GfdFreeLnkPlttVram
	mov r0, #0
	str r0, [r4, #4]
_020364C0:
	mov r1, #0
	str r1, [r4, #8]
	mov r0, r4
	str r1, [r4, #0xc]
	bl sub_02036434
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_020364DC
sub_020364DC: ; 0x020364DC
	ldr r1, [r0, #0x10]
	ldr r3, [r0, #8]
	ldmia r1, {r2, ip}
	mov r2, r2, lsl #0x1a
	orr r2, r2, r3, lsr #3
	orr r2, r2, ip, lsl #30
	ldr r3, [r1, #8]
	ldr ip, [r1, #0xc]
	orr r2, r2, r3, lsl #20
	orr r2, r2, ip, lsl #23
	ldr r3, [r1, #0x10]
	ldr ip, [r1, #0x14]
	orr r2, r2, r3, lsl #16
	ldr r3, [r1, #0x18]
	orr r2, r2, ip, lsl #18
	ldr r1, _02036550 ; =0x040004A8
	orr r2, r2, r3, lsl #29
	str r2, [r1]
	ldr r1, [r0, #0x10]
	ldr r1, [r1]
	cmp r1, #2
	moveq r2, #1
	movne r2, #0
	ldr r1, [r0, #0xc]
	rsb r0, r2, #4
	mov r1, r1, lsr r0
	ldr r0, _02036554 ; =0x040004AC
	str r1, [r0]
	bx lr
	.align 2, 0
_02036550: .word 0x040004A8
_02036554: .word 0x040004AC
	arm_func_end sub_020364DC

	arm_func_start sub_02036558
sub_02036558: ; 0x02036558
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, [r0, #0x14]
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh lr, [r1, #0x28]
	ldrh r4, [r0, #8]
	ldr ip, [r0, #0x24]
	ldr r3, [r0, #0x28]
	ldr r2, _020367B4 ; =0x04000480
	mov r1, #1
	str r4, [r2]
	ldr r4, [r0, #0xc]
	ldr r5, [r0, #0x10]
	mov r4, r4, lsl #4
	orr r4, r4, #0xc0
	ldr r6, [r0, #0x14]
	orr r4, r4, r5, lsl #24
	orr r4, r4, r6, lsl #16
	str r4, [r2, #0x24]
	str r1, [r2, #0x80]
	ldr r4, [r0, #0x30]
	ldr r6, [r0, #0x2c]
	mov r4, r4, lsl #8
	mov r5, r4, asr #0x10
	mov r4, r6, lsl #8
	mov r5, r5, lsl #0x10
	mov r4, r4, asr #0x10
	mov r5, r5, lsr #0x10
	mov r4, r4, lsl #0x10
	mov r5, r5, lsl #0x10
	orr r4, r5, r4, lsr #16
	str r4, [r2, #8]
	ldr r4, [r0, #0x20]
	ldr r5, [r0, #0x1c]
	sub r4, r4, r3, asr #1
	mov r4, r4, asr #0xc
	sub r5, r5, ip, asr #1
	mov r4, r4, lsl lr
	mov r5, r5, asr #0xc
	mov r5, r5, lsl lr
	mov r4, r4, lsl #0x10
	mov r4, r4, asr #0x10
	ldr r7, [r0, #4]
	mov r5, r5, lsl #0x10
	mov r6, r4, lsl #0x10
	mov r4, r7, lsl #0x10
	mov r7, r5, asr #0x10
	mov r6, r6, lsr #0x10
	mov r4, r4, asr #0x10
	mov r5, r4, lsl #0x10
	mov r4, r7, lsl #0x10
	mov r6, r6, lsl #0x10
	orr r4, r6, r4, lsr #16
	str r4, [r2, #0xc]
	mov r4, r5, lsr #0x10
	str r4, [r2, #0xc]
	ldr r4, [r0, #0x38]
	ldr r6, [r0, #0x2c]
	mov r4, r4, lsl #8
	mov r5, r4, asr #0x10
	mov r4, r6, lsl #8
	mov r5, r5, lsl #0x10
	mov r4, r4, asr #0x10
	mov r5, r5, lsr #0x10
	mov r4, r4, lsl #0x10
	mov r5, r5, lsl #0x10
	orr r4, r5, r4, lsr #16
	str r4, [r2, #8]
	ldr r4, [r0, #0x20]
	ldr r5, [r0, #0x1c]
	add r4, r4, r3, asr #1
	mov r4, r4, asr #0xc
	sub r5, r5, ip, asr #1
	mov r4, r4, lsl lr
	mov r5, r5, asr #0xc
	mov r6, r5, lsl lr
	mov r4, r4, lsl #0x10
	mov r5, r4, asr #0x10
	mov r4, r6, lsl #0x10
	mov r5, r5, lsl #0x10
	mov r4, r4, asr #0x10
	mov r5, r5, lsr #0x10
	mov r4, r4, lsl #0x10
	mov r5, r5, lsl #0x10
	orr r4, r5, r4, lsr #16
	str r4, [r2, #0x14]
	ldr r4, [r0, #0x38]
	ldr r6, [r0, #0x34]
	mov r4, r4, lsl #8
	mov r5, r4, asr #0x10
	mov r4, r6, lsl #8
	mov r5, r5, lsl #0x10
	mov r4, r4, asr #0x10
	mov r5, r5, lsr #0x10
	mov r4, r4, lsl #0x10
	mov r5, r5, lsl #0x10
	orr r4, r5, r4, lsr #16
	str r4, [r2, #8]
	ldr r4, [r0, #0x20]
	ldr r5, [r0, #0x1c]
	add r4, r4, r3, asr #1
	mov r4, r4, asr #0xc
	add r5, r5, ip, asr #1
	mov r4, r4, lsl lr
	mov r5, r5, asr #0xc
	mov r6, r5, lsl lr
	mov r4, r4, lsl #0x10
	mov r5, r4, asr #0x10
	mov r4, r6, lsl #0x10
	mov r5, r5, lsl #0x10
	mov r4, r4, asr #0x10
	mov r5, r5, lsr #0x10
	mov r4, r4, lsl #0x10
	mov r5, r5, lsl #0x10
	orr r4, r5, r4, lsr #16
	str r4, [r2, #0x14]
	ldr r4, [r0, #0x30]
	ldr r6, [r0, #0x34]
	mov r4, r4, lsl #8
	mov r5, r4, asr #0x10
	mov r4, r6, lsl #8
	mov r5, r5, lsl #0x10
	mov r4, r4, asr #0x10
	mov r5, r5, lsr #0x10
	mov r4, r4, lsl #0x10
	mov r5, r5, lsl #0x10
	orr r4, r5, r4, lsr #16
	str r4, [r2, #8]
	ldr r4, [r0, #0x20]
	ldr r5, [r0, #0x1c]
	sub r0, r4, r3, asr #1
	mov r0, r0, asr #0xc
	add r3, r5, ip, asr #1
	mov r0, r0, lsl lr
	mov r3, r3, asr #0xc
	mov r4, r3, lsl lr
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	mov r0, r4, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r3, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r3, r3, lsl #0x10
	orr r0, r3, r0, lsr #16
	str r0, [r2, #0x14]
	mov r3, #0
	mov r0, r1
	str r3, [r2, #0x84]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020367B4: .word 0x04000480
	arm_func_end sub_02036558

	arm_func_start sub_020367B8
sub_020367B8: ; 0x020367B8
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, [r0, #0x14]
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh ip, [r1, #0x28]
	ldrh r3, [r0, #8]
	ldr r2, _020368B4 ; =0x04000480
	mov r1, #1
	str r3, [r2]
	ldr r3, [r0, #0xc]
	ldr r4, [r0, #0x10]
	mov r3, r3, lsl #4
	orr r3, r3, #0xc0
	ldr r5, [r0, #0x14]
	orr r3, r3, r4, lsl #24
	orr r3, r3, r5, lsl #16
	str r3, [r2, #0x24]
	str r1, [r2, #0x80]
	mov r3, #0
	arm_func_end sub_020367B8
_02036808:
	add r1, r0, r3, lsl #3
	ldr r4, [r1, #0x40]
	ldr r5, [r1, #0x3c]
	mov lr, r4, lsl #8
	mov r4, lr, asr #0x10
	mov lr, r5, lsl #8
	mov r4, r4, lsl #0x10
	mov r5, lr, asr #0x10
	mov r4, r4, lsr #0x10
	mov lr, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	orr r4, r4, lr, lsr #16
	str r4, [r2, #8]
	ldr r4, [r1, #0x20]
	ldr r5, [r1, #0x1c]
	mov r1, r4, asr #0xc
	mov r1, r1, lsl ip
	mov r4, r5, asr #0xc
	mov r4, r4, lsl ip
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	ldr r5, [r0, #4]
	mov r4, r4, lsl #0x10
	mov lr, r1, lsl #0x10
	mov r1, r5, lsl #0x10
	mov r5, r4, asr #0x10
	mov lr, lr, lsr #0x10
	mov r1, r1, asr #0x10
	mov r4, r1, lsl #0x10
	add r3, r3, #1
	mov r1, r5, lsl #0x10
	mov lr, lr, lsl #0x10
	orr r1, lr, r1, lsr #16
	str r1, [r2, #0xc]
	mov r1, r4, lsr #0x10
	str r1, [r2, #0xc]
	cmp r3, #4
	blt _02036808
	ldr r0, _020368B8 ; =0x04000504
	mov r1, #0
	str r1, [r0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020368B4: .word 0x04000480
_020368B8: .word 0x04000504

	arm_func_start sub_020368BC
sub_020368BC: ; 0x020368BC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020368BC

	arm_func_start sub_020368D8
sub_020368D8: ; 0x020368D8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020368D8

	arm_func_start sub_020368EC
sub_020368EC: ; 0x020368EC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020368EC

	arm_func_start sub_02036908
sub_02036908: ; 0x02036908
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02036908

	arm_func_start sub_0203691C
sub_0203691C: ; 0x0203691C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02036488
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0203691C

	arm_func_start sub_02036930
sub_02036930: ; 0x02036930
	stmdb sp!, {r4, lr}
	ldr r1, _020369A4 ; =PTR_LAB_0208d610
	mov r4, r0
	str r1, [r4]
	mov r1, #4
	ldr r0, _020369A8 ; =ptr_FUN_020369b4_0208d7c8
	str r1, [r4, #0x1c]
	str r0, [r4]
	mov r1, #0
	str r1, [r4, #0x2c]
	str r1, [r4, #0x30]
	str r1, [r4, #0x34]
	ldr r0, _020369AC ; =DAT_0208d694
	str r1, [r4, #0x38]
	str r0, [r4, #0x3c]
	str r1, [r4, #0x40]
	add r0, r4, #0x48
	str r1, [r4, #0x44]
	bl sub_02003938
	ldr r1, _020369B0 ; =ptr_FUN_020368d8_0208d688
	mov r0, r4
	str r1, [r4, #0x48]
	mov r1, #0
	str r1, [r4, #0x60]
	bl sub_0203724C
	mov r1, #0x1f
	mov r0, r4
	str r1, [r4, #0x20]
	ldmia sp!, {r4, pc}
	.align 2, 0
_020369A4: .word PTR_LAB_0208d610
_020369A8: .word ptr_FUN_020369b4_0208d7c8
_020369AC: .word DAT_0208d694
_020369B0: .word ptr_FUN_020368d8_0208d688
	arm_func_end sub_02036930

	arm_func_start sub_020369B4
sub_020369B4: ; 0x020369B4
	stmdb sp!, {r4, lr}
	ldr r1, _020369E0 ; =ptr_FUN_020369b4_0208d7c8
	mov r4, r0
	str r1, [r4]
	bl sub_0203731C
	add r0, r4, #0x48
	bl sub_02003984
	add r0, r4, #0x2c
	bl sub_02036488
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_020369E0: .word ptr_FUN_020369b4_0208d7c8
	arm_func_end sub_020369B4

	arm_func_start sub_020369E4
sub_020369E4: ; 0x020369E4
	stmdb sp!, {r4, lr}
	ldr r1, _02036A18 ; =ptr_FUN_020369b4_0208d7c8
	mov r4, r0
	str r1, [r4]
	bl sub_0203731C
	add r0, r4, #0x48
	bl sub_02003984
	add r0, r4, #0x2c
	bl sub_02036488
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02036A18: .word ptr_FUN_020369b4_0208d7c8
	arm_func_end sub_020369E4

	arm_func_start sub_02036A1C
sub_02036A1C: ; 0x02036A1C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	mov r5, r1
	cmp r0, #0
	beq _02036A48
	subs r0, r0, #1
	str r0, [r4, #0x28]
	bne _02036A48
	add r0, r4, #0x2c
	bl sub_02036434
	arm_func_end sub_02036A1C
_02036A48:
	mov r0, r4
	mov r1, r5
	bl sub_02035334
	ldr r3, _02036B18 ; =FX_SinCosTable_
	mov r1, r4
	mov r0, #0
_02036A60:
	ldrh ip, [r1, #0xaa]
	ldrh r2, [r1, #0xac]
	add r0, r0, #1
	add r2, ip, r2
	strh r2, [r1, #0xaa]
	ldrh r2, [r1, #0xaa]
	mov r2, r2, asr #4
	add r2, r3, r2, lsl #2
	ldrsh r2, [r2, #2]
	movs r2, r2, lsl #4
	rsbmi r2, r2, #0
	mov r2, r2, asr #0xc
	add r2, r2, #0xf
	strh r2, [r1, #0xa8]
	ldrh r2, [r1, #0xaa]
	mov r2, r2, asr #4
	add r2, r3, r2, lsl #2
	ldrsh r2, [r2, #2]
	cmp r2, #0
	rsblt r2, r2, #0
	rsb r2, r2, #0x1800
	str r2, [r1, #0xa4]
	cmp r0, #9
	add r1, r1, #0xc
	blt _02036A60
	ldr r0, [r4, #4]
	cmp r0, #3
	beq _02036AE4
	cmp r0, #4
	beq _02036AF0
	cmp r0, #5
	beq _02036AFC
	b _02036B08
_02036AE4:
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x24]
	b _02036B10
_02036AF0:
	mov r0, #0x1000
	str r0, [r4, #0x24]
	b _02036B10
_02036AFC:
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x24]
	b _02036B10
_02036B08:
	mov r0, #0
	str r0, [r4, #0x24]
_02036B10:
	ldr r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02036B18: .word FX_SinCosTable_

	arm_func_start sub_02036B1C
sub_02036B1C: ; 0x02036B1C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r5, r0
	ldr r2, [r5, #0x24]
	mov r4, r1
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl sub_020355B4
	ldr r2, [r5, #0x1c]
	mov r1, #0
	str r2, [r5, #0x58]
	str r1, [r5, #0x8c]
	mov r0, #0x20000
	str r1, [r5, #0x84]
	str r0, [r5, #0x9c]
	str r0, [r5, #0x94]
	str r1, [r5, #0xa0]
	str r1, [r5, #0x88]
	str r0, [r5, #0x98]
	str r0, [r5, #0x90]
	add r0, r5, #0x2c
	bl sub_020364DC
	ldr r1, [r5, #0xa4]
	mov r0, #0x60000
	umull r3, r2, r1, r0
	mov r1, r1, asr #0x1f
	mov r6, #0x19000
	ldrh r7, [r5, #0xa8]
	ldr r8, [r5, #0x24]
	mla r2, r1, r0, r2
	mul r0, r8, r7
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [r5, #0x5c]
	ldrh r1, [r5, #0xae]
	mov r0, r3, lsr #0xc
	rsb r6, r6, #0
	strh r1, [r5, #0x50]
	orr r0, r0, r2, lsl #20
	sub r1, r0, #0x60000
	str r6, [r5, #0x64]
	sub r2, r6, #0x47000
	str r2, [r5, #0x68]
	str r6, [r5, #0x6c]
	str r1, [r5, #0x70]
	mov r0, #0x19000
	str r0, [r5, #0x74]
	str r1, [r5, #0x78]
	str r0, [r5, #0x7c]
	add r0, r5, #0x48
	str r2, [r5, #0x80]
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	mov r1, #0x4b000
	rsb r1, r1, #0
	ldr ip, [r5, #0xb0]
	mov lr, #0x58000
	ldrh r0, [r5, #0xb4]
	ldr r2, [r5, #0x24]
	mov r3, r1, asr #0x13
	mul r0, r2, r0
	add r2, r1, #0x41000
	umull sb, r8, ip, r2
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [r5, #0x5c]
	ldrh r0, [r5, #0xba]
	mla r8, ip, r3, r8
	strh r0, [r5, #0x50]
	mov sl, ip, asr #0x1f
	mla r8, sl, r2, r8
	mov r2, sb, lsr #0xc
	orr r2, r2, r8, lsl #20
	sub fp, r1, #0x15000
	str r1, [r5, #0x64]
	str fp, [r5, #0x68]
	sub r2, r2, #0x4b000
	str r2, [r5, #0x6c]
	umull r3, r2, ip, lr
	mla r2, sl, lr, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	sub r2, r3, #0x60000
	mov r6, #0x60000
	str r2, [r5, #0x70]
	umull r3, r2, ip, r6
	sub r7, lr, #0x71000
	mla r2, sl, r6, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r7, [r5, #0x74]
	sub r2, r3, #0x60000
	str r2, [r5, #0x78]
	str r7, [r5, #0x7c]
	add r0, r5, #0x48
	str fp, [r5, #0x80]
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	ldrh r0, [r5, #0xc0]
	ldr r1, [r5, #0x24]
	mov r7, #0
	mul r3, r1, r0
	mov r1, #0x50000
	mov r3, r3, lsl #4
	mov sb, #0x7d000
	rsb sb, sb, #0
	ldr r2, [r5, #0xbc]
	mov r3, r3, lsr #0x10
	add r0, sb, #0x69000
	sub r1, r1, #0x5a000
	str r3, [r5, #0x5c]
	umull r8, r3, r2, r1
	sub r7, r7, #1
	mla r3, r2, r7, r3
	mov r7, r2, asr #0x1f
	mla r3, r7, r1, r3
	mov ip, r8, lsr #0xc
	orr ip, ip, r3, lsl #20
	umull sl, lr, r2, r0
	mov r6, sb, asr #0x13
	mla lr, r2, r6, lr
	mov r6, sl, lsr #0xc
	ldrh sl, [r5, #0xc6]
	mla lr, r7, r0, lr
	strh sl, [r5, #0x50]
	orr r6, r6, lr, lsl #20
	mov r3, #0x50000
	add r8, sb, #0x1d000
	str sb, [r5, #0x64]
	sub sb, ip, #0x4b000
	umull ip, sl, r2, r3
	mla sl, r7, r3, sl
	mov r3, ip, lsr #0xc
	orr r3, r3, sl, lsl #20
	sub r0, r6, #0x7d000
	str r8, [r5, #0x68]
	str r0, [r5, #0x6c]
	sub r3, r3, #0x60000
	mov fp, #0x58000
	str r3, [r5, #0x70]
	str sb, [r5, #0x74]
	umull sb, r3, r2, fp
	mla r3, r7, fp, r3
	mov r2, sb, lsr #0xc
	orr r2, r2, r3, lsl #20
	sub r2, r2, #0x60000
	sub r6, fp, #0xa3000
	str r2, [r5, #0x78]
	str r6, [r5, #0x7c]
	add r0, r5, #0x48
	str r8, [r5, #0x80]
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	mov r1, #0x19000
	ldrh r0, [r5, #0xcc]
	ldr r2, [r5, #0x24]
	ldr r6, [r5, #0xc8]
	mul r0, r2, r0
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [r5, #0x5c]
	ldrh r0, [r5, #0xd2]
	mov r7, #0x60000
	mov sb, fp
	strh r0, [r5, #0x50]
	umull ip, fp, r6, r7
	mov r2, r6, asr #0x1f
	mla fp, r2, r7, fp
	mov r7, ip, lsr #0xc
	orr r7, r7, fp, lsl #20
	sub r3, r1, #0x79000
	str r1, [r5, #0x64]
	str r3, [r5, #0x68]
	str r1, [r5, #0x6c]
	sub r7, r7, #0x60000
	mov r8, #0xa000
	str r7, [r5, #0x70]
	umull fp, r7, r6, r8
	mla r7, r2, r8, r7
	mov r8, fp, lsr #0xc
	orr r8, r8, r7, lsl #20
	add r7, r8, #0x4b000
	str r7, [r5, #0x74]
	umull r8, r7, r6, sb
	mla r7, r2, sb, r7
	mov r2, r8, lsr #0xc
	orr r2, r2, r7, lsl #20
	sub r2, r2, #0x60000
	mov sl, #0x4b000
	str r2, [r5, #0x78]
	str sl, [r5, #0x7c]
	add r0, r5, #0x48
	str r3, [r5, #0x80]
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	mov r1, sl
	ldr ip, [r5, #0xd4]
	ldrh r0, [r5, #0xd8]
	ldr r2, [r5, #0x24]
	sub fp, r1, #0xab000
	mul r0, r2, r0
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [r5, #0x5c]
	ldrh r0, [r5, #0xde]
	mov sl, ip, asr #0x1f
	strh r0, [r5, #0x50]
	str r1, [r5, #0x64]
	str fp, [r5, #0x68]
	mov r0, #0xa000
	umull sb, r8, ip, r0
	mov lr, #0x58000
	umull r7, r6, ip, lr
	mla r8, sl, r0, r8
	mov r0, sb, lsr #0xc
	orr r0, r0, r8, lsl #20
	mov r1, #0x14000
	add r0, r0, #0x4b000
	umull r3, r2, ip, r1
	str r0, [r5, #0x6c]
	mla r2, sl, r1, r2
	mov r1, r3, lsr #0xc
	orr r1, r1, r2, lsl #20
	mla r6, sl, lr, r6
	mov r7, r7, lsr #0xc
	orr r7, r7, r6, lsl #20
	sub r6, r7, #0x60000
	mov r0, #0x50000
	str r6, [r5, #0x70]
	umull r7, r6, ip, r0
	mla r6, sl, r0, r6
	mov r0, r7, lsr #0xc
	add r1, r1, #0x7d000
	orr r0, r0, r6, lsl #20
	str r1, [r5, #0x74]
	sub r0, r0, #0x60000
	str r0, [r5, #0x78]
	mov r0, #0x7d000
	str r0, [r5, #0x7c]
	str fp, [r5, #0x80]
	add r0, r5, #0x48
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	ldr r0, [r5, #0x1c]
	mov r1, #0x32000
	rsb r1, r1, #0
	add r0, r0, #1
	str r0, [r5, #0x58]
	ldr ip, [r5, #0xe0]
	ldrh r0, [r5, #0xe4]
	ldr r2, [r5, #0x24]
	mov r3, r1, asr #0x12
	mul r0, r2, r0
	add r2, r1, #0x2d000
	umull sb, r8, ip, r2
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [r5, #0x5c]
	ldrh r0, [r5, #0xea]
	mla r8, ip, r3, r8
	strh r0, [r5, #0x50]
	mov sl, ip, asr #0x1f
	mla r8, sl, r2, r8
	mov r2, sb, lsr #0xc
	orr r2, r2, r8, lsl #20
	sub fp, r1, #0x2e000
	str r1, [r5, #0x64]
	str fp, [r5, #0x68]
	sub r2, r2, #0x32000
	mov lr, #0x5c000
	str r2, [r5, #0x6c]
	umull r3, r2, ip, lr
	mla r2, sl, lr, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	sub r2, r3, #0x60000
	mov r6, #0x60000
	str r2, [r5, #0x70]
	umull r3, r2, ip, r6
	mov r7, #0
	mla r2, sl, r6, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r7, [r5, #0x74]
	sub r2, r3, #0x60000
	str r2, [r5, #0x78]
	str r7, [r5, #0x7c]
	add r0, r5, #0x48
	str fp, [r5, #0x80]
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	mov r8, r7
	mov r3, #0x64000
	mov r7, #0x54000
	ldrh r0, [r5, #0xf0]
	ldr r1, [r5, #0x24]
	ldr r2, [r5, #0xec]
	mul r0, r1, r0
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [r5, #0x5c]
	ldrh r6, [r5, #0xf6]
	rsb r3, r3, #0
	add r1, r3, #0x4000
	strh r6, [r5, #0x50]
	str r3, [r5, #0x64]
	mov r6, r3, asr #0x13
	add r3, r3, #0x55000
	umull ip, fp, r2, r3
	mla fp, r2, r6, fp
	mov r0, r2, asr #0x1f
	mla fp, r0, r3, fp
	mov r3, ip, lsr #0xc
	orr r3, r3, fp, lsl #20
	str r1, [r5, #0x68]
	sub r3, r3, #0x64000
	str r3, [r5, #0x6c]
	umull r6, r3, r2, r7
	mla r3, r0, r7, r3
	mov r6, r6, lsr #0xc
	orr r6, r6, r3, lsl #20
	sub r3, r6, #0x60000
	sub sl, r8, #1
	sub sb, r7, #0x59000
	str r3, [r5, #0x70]
	umull r6, r3, r2, sb
	mla r3, r2, sl, r3
	mla r3, r0, sb, r3
	mov r6, r6, lsr #0xc
	orr r6, r6, r3, lsl #20
	sub r3, r6, #0x32000
	str r3, [r5, #0x74]
	mov r3, #0x5c000
	umull r7, r6, r2, r3
	mla r6, r2, r8, r6
	mla r6, r0, r3, r6
	mov r0, r7, lsr #0xc
	orr r0, r0, r6, lsl #20
	sub r0, r0, #0x60000
	str r0, [r5, #0x78]
	sub r0, r3, #0x8e000
	str r0, [r5, #0x7c]
	str r1, [r5, #0x80]
	add r0, r5, #0x48
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	ldr r6, [r5, #0xf8]
	mov r0, #0x60000
	umull r3, r1, r6, r0
	mov r2, r6, asr #0x1f
	mla r1, r2, r0, r1
	mov r0, r3, lsr #0xc
	orr r0, r0, r1, lsl #20
	sub sb, r0, #0x60000
	mov sl, r8
	ldrh r0, [r5, #0xfc]
	ldr r3, [r5, #0x24]
	add r1, r5, #0x100
	mul r0, r3, r0
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [r5, #0x5c]
	ldrh r0, [r1, #2]
	sub r3, sl, #0x60000
	mov r7, #0x5000
	strh r0, [r5, #0x50]
	str sl, [r5, #0x64]
	str r3, [r5, #0x68]
	str sl, [r5, #0x6c]
	umull fp, sl, r6, r7
	mla sl, r2, r7, sl
	mov r7, fp, lsr #0xc
	orr r7, r7, sl, lsl #20
	str sb, [r5, #0x70]
	add r7, r7, #0x32000
	mov r8, #0x5c000
	str r7, [r5, #0x74]
	umull sl, r7, r6, r8
	mla r7, r2, r8, r7
	mov r2, sl, lsr #0xc
	orr r2, r2, r7, lsl #20
	sub r2, r2, #0x60000
	mov sb, #0x32000
	str r2, [r5, #0x78]
	str sb, [r5, #0x7c]
	add r0, r5, #0x48
	str r3, [r5, #0x80]
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	mov r7, sb
	add r2, r5, #0x100
	mov r1, r4
	ldrh r0, [r2, #8]
	ldr r6, [r5, #0x24]
	ldr r4, [r5, #0x104]
	mul r0, r6, r0
	mov r0, r0, lsl #4
	mov r6, #0x5000
	mov r0, r0, lsr #0x10
	str r0, [r5, #0x5c]
	ldrh r0, [r2, #0xe]
	umull ip, fp, r4, r6
	strh r0, [r5, #0x50]
	mov r2, r4, asr #0x1f
	mla fp, r2, r6, fp
	mov r6, ip, lsr #0xc
	orr r6, r6, fp, lsl #20
	sub r3, r7, #0x92000
	str r7, [r5, #0x64]
	mov r7, r8
	str r3, [r5, #0x68]
	add r6, r6, #0x32000
	str r6, [r5, #0x6c]
	umull fp, r6, r4, r7
	mla r6, r2, r7, r6
	mov r7, fp, lsr #0xc
	orr r7, r7, r6, lsl #20
	sub r6, r7, #0x60000
	mov r8, #0xf000
	str r6, [r5, #0x70]
	umull r7, r6, r4, r8
	mla r6, r2, r8, r6
	mov r7, r7, lsr #0xc
	orr r7, r7, r6, lsl #20
	add r6, r7, #0x64000
	mov sb, #0x54000
	str r6, [r5, #0x74]
	umull r7, r6, r4, sb
	mla r6, r2, sb, r6
	mov r2, r7, lsr #0xc
	orr r2, r2, r6, lsl #20
	sub r2, r2, #0x60000
	mov sl, #0x64000
	str r2, [r5, #0x78]
	str sl, [r5, #0x7c]
	add r0, r5, #0x48
	str r3, [r5, #0x80]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldr r0, _02037248 ; =0x04000448
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02037248: .word 0x04000448
	arm_func_end sub_02036B1C

	arm_func_start sub_0203724C
sub_0203724C: ; 0x0203724C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, _0203730C ; =s_data_field_effect_komorebi_ntft_0208d7e4
	ldr r2, _02037310 ; =s_data_field_effect_komorebi_ntfp_0208d804
	add r0, r4, #0x2c
	mov r3, #3
	bl sub_020362EC
	mov r0, #2
	ldr ip, _02037314 ; =0x000053FF
	str r0, [r4, #0x28]
	mov r5, #0
	strh r5, [r4, #0xaa]
	mov lr, #0xc0
	strh lr, [r4, #0xac]
	strh ip, [r4, #0xae]
	strh r5, [r4, #0xb6]
	mov r3, #0x120
	ldr r2, _02037318 ; =0x000073FA
	strh r3, [r4, #0xb8]
	strh r2, [r4, #0xba]
	strh r5, [r4, #0xc2]
	mov r1, #0x180
	strh r1, [r4, #0xc4]
	add r0, ip, #0xf20
	strh r0, [r4, #0xc6]
	strh r5, [r4, #0xce]
	strh lr, [r4, #0xd0]
	strh r2, [r4, #0xd2]
	strh r5, [r4, #0xda]
	strh r1, [r4, #0xdc]
	strh r0, [r4, #0xde]
	mov r0, #0x2000
	strh r0, [r4, #0xe6]
	strh r3, [r4, #0xe8]
	strh ip, [r4, #0xea]
	mov r1, #0x4000
	strh r1, [r4, #0xf2]
	strh r3, [r4, #0xf4]
	strh ip, [r4, #0xf6]
	strh r0, [r4, #0xfe]
	add r0, r4, #0x100
	strh lr, [r0]
	strh ip, [r0, #2]
	strh r1, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh ip, [r0, #0xe]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0203730C: .word s_data_field_effect_komorebi_ntft_0208d7e4
_02037310: .word s_data_field_effect_komorebi_ntfp_0208d804
_02037314: .word 0x000053FF
_02037318: .word 0x000073FA
	arm_func_end sub_0203724C

	arm_func_start sub_0203731C
sub_0203731C: ; 0x0203731C
	stmdb sp!, {r3, lr}
	add r0, r0, #0x2c
	bl sub_02036488
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end sub_0203731C

	arm_func_start sub_02037330
sub_02037330: ; 0x02037330
	ldr r1, [r0, #0x18]
	str r1, [r0, #0x24]
	bx lr
	arm_func_end sub_02037330

	arm_func_start sub_0203733C
sub_0203733C: ; 0x0203733C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020354E0
	mov r1, #0
	str r1, [r4, #0x24]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0203733C

	arm_func_start sub_02037354
sub_02037354: ; 0x02037354
	mov r0, #3
	bx lr
	arm_func_end sub_02037354

	arm_func_start sub_0203735C
sub_0203735C: ; 0x0203735C
	mov r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	ldr r1, _02037384 ; =DAT_0208d694
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	bx lr
	.align 2, 0
_02037384: .word DAT_0208d694
	arm_func_end sub_0203735C

	arm_func_start sub_02037388
sub_02037388: ; 0x02037388
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _0203751C ; =PTR_LAB_0208d610
	mov r5, r0
	str r2, [r5]
	mov r2, #4
	mov r4, r1
	ldr r0, _02037520 ; =ptr_FUN_02037988_0208d848
	str r2, [r5, #0x1c]
	ldr ip, _02037524 ; =sub_0203691C
	str r0, [r5]
	ldr r3, _02037528 ; =sub_0203735C
	add r0, r5, #0x24
	mov r1, #2
	mov r2, #0x1c
	str ip, [sp]
	bl __cxa_vec_ctor
	add r0, r5, #0x5c
	bl sub_02003938
	ldr r1, _0203752C ; =ptr_FUN_02036908_0208d660
	mov r0, #0
	str r1, [r5, #0x5c]
	str r0, [r5, #0x74]
	str r0, [r5, #0xb0]
	mov r0, r5
	str r4, [r5, #0xa8]
	bl sub_020378AC
	mov r0, #0
	str r0, [r5, #0x70]
	cmp r4, #7
	bgt _0203742C
	cmp r4, #0
	addge pc, pc, r4, lsl #2
	b _020374AC
_0203740C: ; jump table
	b _020374AC ; case 0
	b _020374AC ; case 1
	b _020374AC ; case 2
	b _020374AC ; case 3
	b _02037438 ; case 4
	b _02037450 ; case 5
	b _02037468 ; case 6
	b _02037480 ; case 7
	arm_func_end sub_02037388
_0203742C:
	cmp r4, #0x10
	beq _02037498
	b _020374AC
_02037438:
	ldr r0, _02037530 ; =DAT_0208d864
	ldrh r1, [r0]
	strh r1, [r5, #0x64]
	ldr r0, [r0, #4]
	str r0, [r5, #0xac]
	b _020374AC
_02037450:
	ldr r0, _02037530 ; =DAT_0208d864
	ldrh r1, [r0, #8]
	strh r1, [r5, #0x64]
	ldr r0, [r0, #0xc]
	str r0, [r5, #0xac]
	b _020374AC
_02037468:
	ldr r0, _02037530 ; =DAT_0208d864
	ldrh r1, [r0, #0x10]
	strh r1, [r5, #0x64]
	ldr r0, [r0, #0x14]
	str r0, [r5, #0xac]
	b _020374AC
_02037480:
	ldr r0, _02037530 ; =DAT_0208d864
	ldrh r1, [r0, #0x18]
	strh r1, [r5, #0x64]
	ldr r0, [r0, #0x1c]
	str r0, [r5, #0xac]
	b _020374AC
_02037498:
	ldr r0, _02037530 ; =DAT_0208d864
	ldrh r1, [r0, #0x20]
	strh r1, [r5, #0x64]
	ldr r0, [r0, #0x24]
	str r0, [r5, #0xac]
_020374AC:
	ldrh r3, [r5, #0x64]
	ldr r4, [r5, #0xac]
	ldr r0, _02037534 ; =MAIN_BSS_0210CAA4
	mov r2, r3, asr #5
	mov r1, r3, asr #0xa
	and r3, r3, #0x1f
	str r3, [r0]
	and r2, r2, #0x1f
	str r2, [r0, #4]
	and r2, r1, #0x1f
	str r2, [r0, #8]
	mov ip, #0
	ldr r1, _02037538 ; =MAIN_BSS_0210CA90
	ldr r0, _0203753C ; =MAIN_BSS_0210CA8C
	mov r2, ip
	mov r3, ip
	str r4, [r1]
	str ip, [r0]
_020374F4:
	add r0, r5, ip, lsl #2
	str r2, [r0, #0x98]
	add ip, ip, #1
	str r3, [r0, #0xa0]
	cmp ip, #2
	add r2, r2, #0x40000
	add r3, r3, #0x30000
	blt _020374F4
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0203751C: .word PTR_LAB_0208d610
_02037520: .word ptr_FUN_02037988_0208d848
_02037524: .word sub_0203691C
_02037528: .word sub_0203735C
_0203752C: .word ptr_FUN_02036908_0208d660
_02037530: .word DAT_0208d864
_02037534: .word MAIN_BSS_0210CAA4
_02037538: .word MAIN_BSS_0210CA90
_0203753C: .word MAIN_BSS_0210CA8C

	arm_func_start sub_02037540
sub_02037540: ; 0x02037540
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x20]
	mov r4, r1
	cmp r0, #0
	beq _02037574
	subs r0, r0, #1
	str r0, [r5, #0x20]
	bne _02037574
	add r0, r5, #0x24
	bl sub_02036434
	add r0, r5, #0x40
	bl sub_02036434
	arm_func_end sub_02037540
_02037574:
	ldr r0, _0203779C ; =MAIN_BSS_0210CA84
	ldr r0, [r0]
	bl _f_itof
	mov r1, r0
	ldr r0, _020377A0 ; =0x3D23D70A
	bl _f_mul
	mov r1, r0
	ldr r0, _020377A4 ; =0x45800000
	bl _f_mul
	bl _f_ftoi
	ldr r1, _020377A8 ; =MAIN_BSS_0210CA9C
	ldr lr, [r5, #0x98]
	ldr r3, [r1]
	ldr r1, _0203779C ; =MAIN_BSS_0210CA84
	mov r2, r3, asr #0x1f
	mov r2, r2, lsl #0xb
	mov ip, r3, lsl #0xb
	orr r2, r2, r3, lsr #21
	mov r3, ip, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	sub r0, lr, r0
	str r0, [r5, #0x98]
	ldr r0, [r1]
	bl _f_itof
	mov r1, r0
	ldr r0, _020377AC ; =0x3D75C28F
	bl _f_mul
	mov r1, r0
	ldr r0, _020377A4 ; =0x45800000
	bl _f_mul
	bl _f_ftoi
	rsb ip, r0, #0
	ldr lr, [r5, #0x9c]
	ldr r1, _020377A8 ; =MAIN_BSS_0210CA9C
	ldr r0, _020377B0 ; =0x000FFFFF
	ldr r3, [r1]
	mov r2, r3, asr #0x1f
	mov r2, r2, lsl #0xb
	orr r2, r2, r3, lsr #21
	mov r3, r3, lsl #0xb
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r2, ip, r3
	sub r2, lr, r2
	str r2, [r5, #0x9c]
	ldr r2, [r5, #0x98]
	and r2, r2, r0
	str r2, [r5, #0x98]
	ldr r2, [r5, #0x9c]
	and r2, r2, r0
	str r2, [r5, #0x9c]
	ldr ip, [r5, #0xa0]
	ldr r3, [r1, #4]
	mov r2, r3, asr #0x1f
	mov r2, r2, lsl #0xb
	orr r2, r2, r3, lsr #21
	mov r3, r3, lsl #0xb
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	sub r2, ip, r3
	str r2, [r5, #0xa0]
	ldr r2, [r1, #4]
	ldr r3, [r5, #0xa4]
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xb
	orr r1, r1, r2, lsr #21
	mov r2, r2, lsl #0xb
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	sub r1, r3, r2
	str r1, [r5, #0xa4]
	ldr r1, [r5, #0xa0]
	and r1, r1, r0
	str r1, [r5, #0xa0]
	ldr r1, [r5, #0xa4]
	and r0, r1, r0
	str r0, [r5, #0xa4]
	mov r0, r5
	mov r1, r4
	bl sub_02035334
	ldr r2, _020377B4 ; =MAIN_BSS_0210CA8C
	ldr r0, [r2]
	cmp r0, #0
	beq _020376F4
	ldr r1, _020377B8 ; =MAIN_BSS_0210CAA4
	ldr r0, _020377BC ; =MAIN_BSS_0210CA90
	ldr r4, [r1]
	ldmib r1, {r3, ip}
	orr r1, r4, r3, lsl #5
	orr r1, r1, ip, lsl #10
	strh r1, [r5, #0x64]
	ldr r1, [r0]
	mov r0, #0
	str r1, [r5, #0xac]
	str r0, [r2]
_020376F4:
	ldr r0, [r5, #4]
	cmp r0, #3
	beq _02037714
	cmp r0, #4
	beq _0203772C
	cmp r0, #5
	beq _02037774
	b _0203778C
_02037714:
	ldr r1, [r5, #0xac]
	ldr r0, [r5, #0x18]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r5, #0x70]
	b _02037794
_0203772C:
	ldr r0, [r5, #0xa8]
	cmp r0, #5
	bne _02037768
	ldr r0, [r5, #0xb0]
	add r1, r0, #1
	mov r0, r1, asr #2
	tst r0, #8
	andne r0, r0, #0xf
	str r1, [r5, #0xb0]
	rsbne r1, r0, #0xf
	andeq r1, r0, #0xf
	ldr r0, [r5, #0xac]
	add r0, r0, r1
	str r0, [r5, #0x70]
	b _02037794
_02037768:
	ldr r0, [r5, #0xac]
	str r0, [r5, #0x70]
	b _02037794
_02037774:
	ldr r1, [r5, #0xac]
	ldr r0, [r5, #0x18]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r5, #0x70]
	b _02037794
_0203778C:
	mov r0, #0
	str r0, [r5, #0x70]
_02037794:
	ldr r0, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0203779C: .word MAIN_BSS_0210CA84
_020377A0: .word 0x3D23D70A
_020377A4: .word 0x45800000
_020377A8: .word MAIN_BSS_0210CA9C
_020377AC: .word 0x3D75C28F
_020377B0: .word 0x000FFFFF
_020377B4: .word MAIN_BSS_0210CA8C
_020377B8: .word MAIN_BSS_0210CAA4
_020377BC: .word MAIN_BSS_0210CA90

	arm_func_start sub_020377C0
sub_020377C0: ; 0x020377C0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x70]
	mov r4, r1
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl sub_020355B4
	ldr r1, [r5, #0x1c]
	mov r0, #0
	str r1, [r5, #0x6c]
	str r0, [r5, #0x78]
	str r0, [r5, #0x7c]
	mov r0, #0x100000
	str r0, [r5, #0x80]
	str r0, [r5, #0x84]
	ldr r2, [r5, #0xa0]
	ldr r0, [r5, #0x98]
	add r1, r2, #0x80000
	str r0, [r5, #0x88]
	str r2, [r5, #0x8c]
	add r0, r0, #0x80000
	str r0, [r5, #0x90]
	add r0, r5, #0x24
	str r1, [r5, #0x94]
	bl sub_020364DC
	add r0, r5, #0x5c
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	ldr r1, [r5, #0x1c]
	mov r0, #0
	add r1, r1, #1
	str r1, [r5, #0x6c]
	str r0, [r5, #0x78]
	str r0, [r5, #0x7c]
	mov r0, #0x100000
	str r0, [r5, #0x80]
	str r0, [r5, #0x84]
	ldr r2, [r5, #0xa4]
	ldr r0, [r5, #0x9c]
	add r1, r2, #0x80000
	str r0, [r5, #0x88]
	str r2, [r5, #0x8c]
	add r0, r0, #0x80000
	str r0, [r5, #0x90]
	add r0, r5, #0x40
	str r1, [r5, #0x94]
	bl sub_020364DC
	add r0, r5, #0x5c
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	ldr r0, _020378A8 ; =0x04000448
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020378A8: .word 0x04000448
	arm_func_end sub_020377C0

	arm_func_start sub_020378AC
sub_020378AC: ; 0x020378AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, _020378EC ; =s_data_field_effect_kiri02_ntft_0208d88c
	ldr r2, _020378F0 ; =s_data_field_effect_kiri02_ntfp_0208d8ac
	add r0, r4, #0x24
	mov r3, #2
	bl sub_020362EC
	ldr r1, _020378EC ; =s_data_field_effect_kiri02_ntft_0208d88c
	ldr r2, _020378F0 ; =s_data_field_effect_kiri02_ntfp_0208d8ac
	add r0, r4, #0x40
	mov r3, #2
	bl sub_020362EC
	mov r0, #2
	str r0, [r4, #0x20]
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_020378EC: .word s_data_field_effect_kiri02_ntft_0208d88c
_020378F0: .word s_data_field_effect_kiri02_ntfp_0208d8ac
	arm_func_end sub_020378AC

	arm_func_start sub_020378F4
sub_020378F4: ; 0x020378F4
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x24
	bl sub_02036488
	add r0, r4, #0x40
	bl sub_02036488
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_020378F4

	arm_func_start sub_02037914
sub_02037914: ; 0x02037914
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020354E0
	ldr r2, [r4, #0xac]
	ldr r1, [r4, #0x18]
	mul r1, r2, r1
	mov r1, r1, asr #0xc
	str r1, [r4, #0x70]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02037914

	arm_func_start sub_02037938
sub_02037938: ; 0x02037938
	stmdb sp!, {r4, lr}
	ldr r1, _02037978 ; =ptr_FUN_02037988_0208d848
	mov r4, r0
	str r1, [r4]
	bl sub_020378F4
	add r0, r4, #0x5c
	bl sub_02003984
	ldr r3, _0203797C ; =sub_0203691C
	add r0, r4, #0x24
	mov r1, #2
	mov r2, #0x1c
	bl __cxa_vec_cleanup
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02037978: .word ptr_FUN_02037988_0208d848
_0203797C: .word sub_0203691C
	arm_func_end sub_02037938

	arm_func_start sub_02037980
sub_02037980: ; 0x02037980
	ldr r0, [r0, #0xa8]
	bx lr
	arm_func_end sub_02037980

	arm_func_start sub_02037988
sub_02037988: ; 0x02037988
	stmdb sp!, {r4, lr}
	ldr r1, _020379C0 ; =ptr_FUN_02037988_0208d848
	mov r4, r0
	str r1, [r4]
	bl sub_020378F4
	add r0, r4, #0x5c
	bl sub_02003984
	ldr r3, _020379C4 ; =sub_0203691C
	add r0, r4, #0x24
	mov r1, #2
	mov r2, #0x1c
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_020379C0: .word ptr_FUN_02037988_0208d848
_020379C4: .word sub_0203691C
	arm_func_end sub_02037988

	arm_func_start sub_020379C8
sub_020379C8: ; 0x020379C8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _02037ACC ; =PTR_LAB_0208d610
	mov r4, r0
	str r1, [r4]
	mov r1, #4
	str r1, [r4, #0x1c]
	ldr r0, _02037AD0 ; =ptr_FUN_02037fb0_0208d8f8
	ldr ip, _02037AD4 ; =sub_0203691C
	str r0, [r4]
	ldr r3, _02037AD8 ; =sub_0203735C
	add r0, r4, #0x20
	mov r1, #2
	mov r2, #0x1c
	str ip, [sp]
	bl __cxa_vec_ctor
	add r0, r4, #0x98
	bl sub_02003938
	ldr r1, _02037ADC ; =ptr_FUN_02036908_0208d660
	mov r0, r4
	str r1, [r4, #0x98]
	mov r1, #0
	str r1, [r4, #0xb0]
	bl sub_02037ED4
	ldr r1, _02037AE0 ; =0x000033DE
	mov r0, #0
	strh r1, [r4, #0xa0]
	str r0, [r4, #0xac]
	mov r1, #0x16
	str r1, [r4, #0x8c]
	str r0, [r4, #0x90]
	ldrh r2, [r4, #0xa0]
	ldr lr, [r4, #0x8c]
	ldr r1, _02037AE4 ; =MAIN_BSS_0210CAA4
	and ip, r2, #0x1f
	mov r3, r2, asr #5
	mov r2, r2, asr #0xa
	str ip, [r1]
	and r3, r3, #0x1f
	str r3, [r1, #4]
	and r3, r2, #0x1f
	str r3, [r1, #8]
	ldr r2, _02037AE8 ; =MAIN_BSS_0210CA90
	ldr r1, _02037AEC ; =MAIN_BSS_0210CA8C
	str lr, [r2]
	str r0, [r1]
	add r2, r4, #0x68
	mov r1, r0
	arm_func_end sub_020379C8
_02037A88:
	str r1, [r2]
	add r0, r0, #1
	str r1, [r2, #4]
	cmp r0, #2
	add r2, r2, #0x10
	blt _02037A88
	ldr r0, _02037AF0 ; =0x00000199
	mov r1, #0x51
	str r0, [r4, #0x70]
	str r1, [r4, #0x74]
	rsb r0, r0, #0xcd
	str r0, [r4, #0x80]
	sub r1, r1, #0x79
	mov r0, r4
	str r1, [r4, #0x84]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02037ACC: .word PTR_LAB_0208d610
_02037AD0: .word ptr_FUN_02037fb0_0208d8f8
_02037AD4: .word sub_0203691C
_02037AD8: .word sub_0203735C
_02037ADC: .word ptr_FUN_02036908_0208d660
_02037AE0: .word 0x000033DE
_02037AE4: .word MAIN_BSS_0210CAA4
_02037AE8: .word MAIN_BSS_0210CA90
_02037AEC: .word MAIN_BSS_0210CA8C
_02037AF0: .word 0x00000199

	arm_func_start sub_02037AF4
sub_02037AF4: ; 0x02037AF4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x90]
	str r1, [sp]
	add r0, r0, #1
	str r0, [r4, #0x90]
	ldr r0, [r4, #0x94]
	cmp r0, #0
	beq _02037B38
	subs r0, r0, #1
	str r0, [r4, #0x94]
	bne _02037B38
	add r0, r4, #0x20
	bl sub_02036434
	add r0, r4, #0x3c
	bl sub_02036434
	arm_func_end sub_02037AF4
_02037B38:
	mvn r5, #0
	add r2, r5, #0x100000
	add r3, r5, #0x334
	ldr r6, _02037DCC ; =MAIN_BSS_0210CEC8
	ldr lr, _02037DD0 ; =0x00000666
	add r1, r4, #0x68
	mov r0, #0
	mov ip, r3
	str r2, [sp, #4]
	mov fp, r2
_02037B60:
	ldr r7, _02037DD4 ; =MAIN_BSS_0210CA9C
	ldr r2, [r1]
	ldr r8, [r7]
	ldr r7, [r1, #8]
	mov sb, r8, asr #0x1f
	mov sb, sb, lsl #0xc
	orr sb, sb, r8, lsr #20
	mov r8, r8, lsl #0xc
	mov r8, r8, lsr #0xc
	orr r8, r8, sb, lsl #20
	ldr sb, _02037DD8 ; =MAIN_BSS_0210CA84
	ldr sb, [sb]
	mla r8, r7, sb, r8
	sub r7, r2, r8
	ldr r2, [sp, #4]
	and r2, r7, r2
	str r2, [r1]
	ldr r7, _02037DD4 ; =MAIN_BSS_0210CA9C
	ldr r2, [r1, #4]
	ldr r8, [r7, #4]
	ldr r7, [r1, #0xc]
	mov sb, r8, asr #0x1f
	mov sb, sb, lsl #0xc
	orr sb, sb, r8, lsr #20
	mov r8, r8, lsl #0xc
	mov r8, r8, lsr #0xc
	orr r8, r8, sb, lsl #20
	ldr sb, _02037DD8 ; =MAIN_BSS_0210CA84
	ldr sb, [sb]
	mla r8, r7, sb, r8
	sub r2, r2, r8
	and r2, r2, fp
	str r2, [r1, #4]
	ldr r2, [r4, #0x90]
	tst r2, #1
	bne _02037D04
	ldr r2, [r1, #8]
	cmp r2, #0
	ldmia r6, {r2, r7, r8}
	mla r2, r7, r2, r8
	ble _02037C40
	str r2, [r6]
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #3
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	add r2, r2, #1
	mov r8, r2, lsl #0xc
	umull sl, sb, r8, lr
	mov r7, r8, asr #0x1f
	mla sb, r7, lr, sb
	mov r7, sl, lsr #0xc
	orr r7, r7, sb, lsl #20
	mul r2, r7, r5
	b _02037C74
_02037C40:
	str r2, [r6]
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #3
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	add r2, r2, #1
	mov r8, r2, lsl #0xc
	umull sl, sb, r8, lr
	mov r7, r8, asr #0x1f
	mla sb, r7, lr, sb
	mov r2, sl, lsr #0xc
	orr r2, r2, sb, lsl #20
_02037C74:
	str r2, [r1, #8]
	ldr r2, [r1, #0xc]
	cmp r2, #0
	ldmia r6, {r2, r7, r8}
	mla r2, r7, r2, r8
	bge _02037CCC
	str r2, [r6]
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #3
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	add r2, r2, #1
	mov r8, r2, lsl #0xc
	umull sl, sb, r8, ip
	mov r7, r8, asr #0x1f
	mla sb, r7, ip, sb
	mov r7, sl, lsr #0xc
	orr r7, r7, sb, lsl #20
	mul r2, r7, r5
	str r2, [r1, #0xc]
	b _02037D04
_02037CCC:
	str r2, [r6]
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #3
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	add r2, r2, #1
	mov r8, r2, lsl #0xc
	umull sl, sb, r8, r3
	mov r7, r8, asr #0x1f
	mla sb, r7, r3, sb
	mov r2, sl, lsr #0xc
	orr r2, r2, sb, lsl #20
	str r2, [r1, #0xc]
_02037D04:
	add r1, r1, #0x10
	add r0, r0, #1
	cmp r0, #2
	blt _02037B60
	ldr r1, [sp]
	mov r0, r4
	bl sub_02035334
	ldr r2, _02037DDC ; =MAIN_BSS_0210CA8C
	ldr r0, [r2]
	cmp r0, #0
	beq _02037D5C
	ldr r1, _02037DE0 ; =MAIN_BSS_0210CAA4
	ldr r0, _02037DE4 ; =MAIN_BSS_0210CA90
	ldr r5, [r1]
	ldmib r1, {r3, r6}
	orr r1, r5, r3, lsl #5
	orr r1, r1, r6, lsl #10
	strh r1, [r4, #0xa0]
	ldr r1, [r0]
	mov r0, #0
	str r1, [r4, #0x8c]
	str r0, [r2]
_02037D5C:
	ldr r0, [r4, #4]
	cmp r0, #3
	beq _02037D7C
	cmp r0, #4
	beq _02037D94
	cmp r0, #5
	beq _02037DA0
	b _02037DB8
_02037D7C:
	ldr r1, [r4, #0x8c]
	ldr r0, [r4, #0x18]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r4, #0xac]
	b _02037DC0
_02037D94:
	ldr r0, [r4, #0x8c]
	str r0, [r4, #0xac]
	b _02037DC0
_02037DA0:
	ldr r1, [r4, #0x8c]
	ldr r0, [r4, #0x18]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r4, #0xac]
	b _02037DC0
_02037DB8:
	mov r0, #0
	str r0, [r4, #0xac]
_02037DC0:
	ldr r0, [r4, #4]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02037DCC: .word MAIN_BSS_0210CEC8
_02037DD0: .word 0x00000666
_02037DD4: .word MAIN_BSS_0210CA9C
_02037DD8: .word MAIN_BSS_0210CA84
_02037DDC: .word MAIN_BSS_0210CA8C
_02037DE0: .word MAIN_BSS_0210CAA4
_02037DE4: .word MAIN_BSS_0210CA90

	arm_func_start sub_02037DE8
sub_02037DE8: ; 0x02037DE8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0xac]
	mov r4, r1
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl sub_020355B4
	ldr r1, [r5, #0x1c]
	mov r0, #0
	str r1, [r5, #0xa8]
	str r0, [r5, #0xb4]
	str r0, [r5, #0xb8]
	mov r0, #0x100000
	str r0, [r5, #0xbc]
	str r0, [r5, #0xc0]
	ldr r2, [r5, #0x6c]
	ldr r0, [r5, #0x68]
	add r1, r2, #0xff000
	str r0, [r5, #0xc4]
	str r2, [r5, #0xc8]
	add r0, r0, #0xff000
	str r0, [r5, #0xcc]
	add r0, r5, #0x20
	str r1, [r5, #0xd0]
	bl sub_020364DC
	add r0, r5, #0x98
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	ldr r1, [r5, #0x1c]
	mov r0, #0
	add r1, r1, #1
	str r1, [r5, #0xa8]
	str r0, [r5, #0xb4]
	str r0, [r5, #0xb8]
	mov r0, #0x100000
	str r0, [r5, #0xbc]
	str r0, [r5, #0xc0]
	ldr r2, [r5, #0x7c]
	ldr r0, [r5, #0x78]
	add r1, r2, #0xff000
	str r0, [r5, #0xc4]
	str r2, [r5, #0xc8]
	add r0, r0, #0xff000
	str r0, [r5, #0xcc]
	add r0, r5, #0x3c
	str r1, [r5, #0xd0]
	bl sub_020364DC
	add r0, r5, #0x98
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	ldr r0, _02037ED0 ; =0x04000448
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02037ED0: .word 0x04000448
	arm_func_end sub_02037DE8

	arm_func_start sub_02037ED4
sub_02037ED4: ; 0x02037ED4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, _02037F14 ; =s_data_field_effect_suna01_ntft_0208d914
	ldr r2, _02037F18 ; =s_data_field_effect_suna01_ntfp_0208d934
	add r0, r4, #0x20
	mov r3, #2
	bl sub_020362EC
	ldr r1, _02037F14 ; =s_data_field_effect_suna01_ntft_0208d914
	ldr r2, _02037F18 ; =s_data_field_effect_suna01_ntfp_0208d934
	add r0, r4, #0x3c
	mov r3, #2
	bl sub_020362EC
	mov r0, #2
	str r0, [r4, #0x94]
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02037F14: .word s_data_field_effect_suna01_ntft_0208d914
_02037F18: .word s_data_field_effect_suna01_ntfp_0208d934
	arm_func_end sub_02037ED4

	arm_func_start sub_02037F1C
sub_02037F1C: ; 0x02037F1C
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x20
	bl sub_02036488
	add r0, r4, #0x3c
	bl sub_02036488
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02037F1C

	arm_func_start sub_02037F3C
sub_02037F3C: ; 0x02037F3C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020354E0
	ldr r2, [r4, #0x8c]
	ldr r1, [r4, #0x18]
	mul r1, r2, r1
	mov r1, r1, asr #0xc
	str r1, [r4, #0xac]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02037F3C

	arm_func_start sub_02037F60
sub_02037F60: ; 0x02037F60
	stmdb sp!, {r4, lr}
	ldr r1, _02037FA0 ; =ptr_FUN_02037fb0_0208d8f8
	mov r4, r0
	str r1, [r4]
	bl sub_02037F1C
	add r0, r4, #0x98
	bl sub_02003984
	ldr r3, _02037FA4 ; =sub_0203691C
	add r0, r4, #0x20
	mov r1, #2
	mov r2, #0x1c
	bl __cxa_vec_cleanup
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02037FA0: .word ptr_FUN_02037fb0_0208d8f8
_02037FA4: .word sub_0203691C
	arm_func_end sub_02037F60

	arm_func_start sub_02037FA8
sub_02037FA8: ; 0x02037FA8
	mov r0, #8
	bx lr
	arm_func_end sub_02037FA8

	arm_func_start sub_02037FB0
sub_02037FB0: ; 0x02037FB0
	stmdb sp!, {r4, lr}
	ldr r1, _02037FE8 ; =ptr_FUN_02037fb0_0208d8f8
	mov r4, r0
	str r1, [r4]
	bl sub_02037F1C
	add r0, r4, #0x98
	bl sub_02003984
	ldr r3, _02037FEC ; =sub_0203691C
	add r0, r4, #0x20
	mov r1, #2
	mov r2, #0x1c
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02037FE8: .word ptr_FUN_02037fb0_0208d8f8
_02037FEC: .word sub_0203691C
	arm_func_end sub_02037FB0

	arm_func_start sub_02037FF0
sub_02037FF0: ; 0x02037FF0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003938
	ldr r0, _02038014 ; =ptr_FUN_020368d8_0208d688
	mov r1, #0
	str r0, [r4]
	mov r0, r4
	str r1, [r4, #0x18]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02038014: .word ptr_FUN_020368d8_0208d688
	arm_func_end sub_02037FF0

	arm_func_start sub_02038018
sub_02038018: ; 0x02038018
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _0203814C ; =PTR_LAB_0208d610
	mov r4, r0
	str r1, [r4]
	mov r1, #4
	str r1, [r4, #0x1c]
	ldr r0, _02038150 ; =ptr_FUN_02038998_0208d97c
	mov r1, #0
	str r0, [r4]
	str r1, [r4, #0x20]
	str r1, [r4, #0x24]
	str r1, [r4, #0x28]
	ldr r0, _02038154 ; =DAT_0208d694
	str r1, [r4, #0x2c]
	str r0, [r4, #0x30]
	str r1, [r4, #0x34]
	str r1, [r4, #0x38]
	str r1, [r4, #0x3c]
	str r1, [r4, #0x40]
	str r1, [r4, #0x44]
	str r1, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r1, [r4, #0x50]
	add r0, r4, #0x68
	str r1, [r4, #0x54]
	bl sub_02003938
	ldr r1, _02038158 ; =ptr_FUN_02036908_0208d660
	mov r0, #0
	str r1, [r4, #0x68]
	str r0, [r4, #0x80]
	ldr ip, _0203815C ; =sub_020368D8
	ldr r3, _02038160 ; =sub_02037FF0
	add r0, r4, #0xa4
	mov r1, #0x10
	mov r2, #0x5c
	str ip, [sp]
	bl __cxa_vec_ctor
	mov r0, r4
	bl sub_0203884C
	mov r1, #0
	ldr r0, _02038164 ; =0x00007C14
	mov r3, r4
	mov r2, r1
	arm_func_end sub_02038018
_020380C8:
	strh r0, [r3, #0xac]
	add r1, r1, #1
	str r2, [r3, #0xb8]
	cmp r1, #0x10
	add r3, r3, #0x5c
	blt _020380C8
	mov r1, r2
_020380E4:
	add r0, r4, r2, lsl #1
	add r0, r0, #0x600
	add r2, r2, #1
	strh r1, [r0, #0x64]
	cmp r2, #3
	add r1, r1, #0x300
	blt _020380E4
	ldr r0, _02038168 ; =0x00007C1F
	mov ip, #0
	strh r0, [r4, #0x70]
	str ip, [r4, #0x7c]
	mov r0, #0x14
	str r0, [r4, #0x5c]
	ldr r0, _0203816C ; =MAIN_BSS_0210CAA4
	str ip, [r4, #0x60]
	mov r3, #0x1f
	str r3, [r0]
	str r3, [r0, #4]
	ldr r2, _02038170 ; =MAIN_BSS_0210CA90
	str r3, [r0, #8]
	ldr r1, _02038174 ; =MAIN_BSS_0210CA8C
	mov r0, r4
	str r3, [r2]
	str ip, [r1]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0203814C: .word PTR_LAB_0208d610
_02038150: .word ptr_FUN_02038998_0208d97c
_02038154: .word DAT_0208d694
_02038158: .word ptr_FUN_02036908_0208d660
_0203815C: .word sub_020368D8
_02038160: .word sub_02037FF0
_02038164: .word 0x00007C14
_02038168: .word 0x00007C1F
_0203816C: .word MAIN_BSS_0210CAA4
_02038170: .word MAIN_BSS_0210CA90
_02038174: .word MAIN_BSS_0210CA8C

	arm_func_start sub_02038178
sub_02038178: ; 0x02038178
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldr r0, [r4, #0x64]
	mov r5, r1
	cmp r0, #0
	beq _020381A4
	subs r0, r0, #1
	str r0, [r4, #0x64]
	bne _020381A4
	add r0, r4, #0x20
	bl sub_02036434
	arm_func_end sub_02038178
_020381A4:
	mov r0, r4
	mov r1, r5
	bl sub_02035334
	mov r1, #0
	ldr ip, _020382D4 ; =MAIN_BSS_0210CAA4
	ldr r3, _020382D8 ; =MAIN_BSS_0210CA90
	ldr lr, _020382DC ; =MAIN_BSS_0210CA8C
	mov r2, r4
	mov r0, r1
	mov r5, r1
_020381CC:
	ldr r6, [lr]
	cmp r6, #0
	beq _020381F8
	ldr r7, [ip]
	ldmib ip, {r6, r8}
	orr r6, r7, r6, lsl #5
	orr r6, r6, r8, lsl #10
	strh r6, [r2, #0xac]
	ldr r6, [r3]
	str r6, [r4, #0x5c]
	str r0, [lr]
_020381F8:
	ldr r6, [r4, #4]
	cmp r6, #3
	beq _02038218
	cmp r6, #4
	beq _02038230
	cmp r6, #5
	beq _0203823C
	b _02038254
_02038218:
	ldr r7, [r4, #0x5c]
	ldr r6, [r4, #0x18]
	mul r6, r7, r6
	mov r6, r6, asr #0xc
	str r6, [r2, #0xb8]
	b _02038258
_02038230:
	ldr r6, [r4, #0x5c]
	str r6, [r2, #0xb8]
	b _02038258
_0203823C:
	ldr r7, [r4, #0x5c]
	ldr r6, [r4, #0x18]
	mul r6, r7, r6
	mov r6, r6, asr #0xc
	str r6, [r2, #0xb8]
	b _02038258
_02038254:
	str r5, [r2, #0xb8]
_02038258:
	add r1, r1, #1
	cmp r1, #0x10
	add r2, r2, #0x5c
	blt _020381CC
	ldr r0, [r4, #4]
	cmp r0, #3
	beq _02038288
	cmp r0, #4
	beq _020382A0
	cmp r0, #5
	beq _020382AC
	b _020382C4
_02038288:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x18]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r4, #0x7c]
	b _020382CC
_020382A0:
	ldr r0, [r4, #0x60]
	str r0, [r4, #0x7c]
	b _020382CC
_020382AC:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x18]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r4, #0x7c]
	b _020382CC
_020382C4:
	mov r0, #0
	str r0, [r4, #0x7c]
_020382CC:
	ldr r0, [r4, #4]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_020382D4: .word MAIN_BSS_0210CAA4
_020382D8: .word MAIN_BSS_0210CA90
_020382DC: .word MAIN_BSS_0210CA8C

	arm_func_start sub_020382E0
sub_020382E0: ; 0x020382E0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sl, r0
	ldr r0, [sl, #0xb8]
	str r1, [sp]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	mov sb, r0
	sub r0, r0, #0x48
	str r0, [sp, #0x10]
	mov r0, #0x10
	str r0, [sp, #0xc]
	arm_func_end sub_020382E0
_02038320:
	ldr r0, [sp, #0x14]
	mov r1, #0x5c
	mla r5, r0, r1, sl
	ldr r0, [sp, #0x10]
	mov r4, #0
	mov r2, r0, lsl #0xc
	sub r0, r2, #0x18000
	str r0, [sp, #8]
	add r0, r2, #0x18000
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r7, r4
	sub r6, r1, #0xbc
	mov fp, r0, lsl #0xc
	mov r8, #0x10
_0203835C:
	ldr r1, [sl, #0x1c]
	mov r0, r6, lsl #0xc
	add r1, r1, #2
	str r1, [r5, #0xb4]
	sub r1, r0, #0x20000
	str r1, [r5, #0xc8]
	add r0, r0, #0x20000
	str r1, [r5, #0xc0]
	str r0, [r5, #0xd8]
	str r0, [r5, #0xd0]
	ldr r0, [sp, #8]
	str r0, [r5, #0xdc]
	str r0, [r5, #0xc4]
	ldr r0, [sp, #4]
	str r0, [r5, #0xd4]
	str r0, [r5, #0xcc]
	str r7, [r5, #0xe8]
	str r7, [r5, #0xe0]
	mov r0, r8, lsl #0xc
	str r0, [r5, #0xf8]
	str r0, [r5, #0xf0]
	str sb, [r5, #0xfc]
	str sb, [r5, #0xe4]
	str fp, [r5, #0xf4]
	add r0, sl, #0x20
	str fp, [r5, #0xec]
	bl sub_020364DC
	add r4, r4, #1
	add r5, r5, #0x5c
	add r6, r6, #0x40
	add r7, r7, #0x10000
	add r8, r8, #0x10
	cmp r4, #4
	blt _0203835C
	ldr r0, [sp, #0x18]
	add sb, sb, #0x10000
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	ldr r0, [sp, #0x14]
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, r0, #0x30
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, r0, #0x10
	str r0, [sp, #0xc]
	blt _02038320
	add r2, sl, #0x600
	ldrh r0, [r2, #0x64]
	mov r3, #0x60000
	rsb r3, r3, #0
	add r0, r0, #0x800
	strh r0, [r2, #0x64]
	ldrh r0, [r2, #0x66]
	ldr r5, _02038844 ; =FX_SinCosTable_
	add r4, r3, #0x18000
	sub r0, r0, #0xc00
	strh r0, [r2, #0x66]
	ldrh r6, [r2, #0x68]
	mov r0, sl
	mov r1, #0
	sub r6, r6, #0x600
	strh r6, [r2, #0x68]
	ldrh r2, [r2, #0x64]
	mov r2, r2, asr #4
	mov r6, r2, lsl #1
	add r2, r6, #1
	mov r6, r6, lsl #1
	ldrsh r7, [r5, r6]
	mov r2, r2, lsl #1
	ldrsh r5, [r5, r2]
	mov r2, r7, asr #0x1f
	mov r8, r2, lsl #0xf
	mov r2, r5, asr #0x1f
	mov sb, r7, lsl #0xf
	mov r2, r2, lsl #0xf
	mov r6, r5, lsl #0xf
	orr r8, r8, r7, lsr #17
	mov r7, sb, lsr #0xc
	orr r7, r7, r8, lsl #20
	orr r2, r2, r5, lsr #17
	mov r5, r6, lsr #0xc
	orr r5, r5, r2, lsl #20
	sub r2, r3, r7
	sub r3, r4, r5
	bl sub_020388A0
	add r0, sl, #0x600
	ldrh r1, [r0, #0x68]
	mov r0, #0x60000
	ldr r2, _02038844 ; =FX_SinCosTable_
	mov r1, r1, asr #4
	mov r4, r1, lsl #1
	mov r1, r4, lsl #1
	ldrsh r3, [r2, r1]
	add r1, r4, #1
	mov r1, r1, lsl #1
	ldrsh r1, [r2, r1]
	mov r2, r3, asr #0x1f
	mov r2, r2, lsl #0xf
	orr r2, r2, r3, lsr #17
	mov r3, r3, lsl #0xf
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	rsb r0, r0, #0
	sub r2, r0, r3
	mov r0, r1, asr #0x1f
	mov r0, r0, lsl #0xf
	orr r0, r0, r1, lsr #17
	mov r1, r1, lsl #0xf
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r3, r1, #0x48000
	mov r0, sl
	mov r1, #8
	bl sub_020388A0
	add r0, sl, #0x600
	ldrh r0, [r0, #0x64]
	ldr r2, _02038844 ; =FX_SinCosTable_
	mov r1, #0x48000
	add r0, r0, #0x400
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r4, r0, lsl #1
	mov r0, r4, lsl #1
	ldrsh r3, [r2, r0]
	add r0, r4, #1
	mov r0, r0, lsl #1
	ldrsh r2, [r2, r0]
	mov r0, r3, asr #0x1f
	mov r0, r0, lsl #0xf
	orr r0, r0, r3, lsr #17
	mov r3, r3, lsl #0xf
	mov r4, r3, lsr #0xc
	orr r4, r4, r0, lsl #20
	mov r0, r2, asr #0x1f
	mov r0, r0, lsl #0xf
	orr r0, r0, r2, lsr #17
	mov r2, r2, lsl #0xf
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	rsb r1, r1, #0
	sub r3, r1, r2
	mov r0, sl
	add r2, r4, #0x60000
	mov r1, #2
	bl sub_020388A0
	add r0, sl, #0x600
	ldrh r1, [r0, #0x66]
	ldr r2, _02038844 ; =FX_SinCosTable_
	mov r0, sl
	add r1, r1, #0x800
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #4
	mov r3, r1, lsl #1
	add r1, r3, #1
	mov r3, r3, lsl #1
	ldrsh r4, [r2, r3]
	mov r1, r1, lsl #1
	ldrsh r2, [r2, r1]
	mov r1, r4, asr #0x1f
	mov r5, r1, lsl #0xf
	mov r1, r2, asr #0x1f
	mov r6, r4, lsl #0xf
	mov r1, r1, lsl #0xf
	mov r3, r2, lsl #0xf
	orr r5, r5, r4, lsr #17
	mov r4, r6, lsr #0xc
	orr r4, r4, r5, lsl #20
	orr r1, r1, r2, lsr #17
	mov r3, r3, lsr #0xc
	orr r3, r3, r1, lsl #20
	add r2, r4, #0x60000
	add r3, r3, #0x48000
	mov r1, #0xa
	bl sub_020388A0
	add r0, sl, #0x600
	ldrh r2, [r0, #0x66]
	mov r0, sl
	mov r1, #1
	add r2, r2, #0x800
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, asr #4
	mov r2, r2, lsl #1
	add r2, r2, #1
	mov r4, r2, lsl #1
	mov r2, #0
	ldr r3, _02038844 ; =FX_SinCosTable_
	ldrsh r4, [r3, r4]
	mov r3, r4, asr #0x1f
	mov r3, r3, lsl #0xf
	orr r3, r3, r4, lsr #17
	mov r4, r4, lsl #0xf
	mov r4, r4, lsr #0xc
	orr r4, r4, r3, lsl #20
	sub r3, r4, #0x48000
	bl sub_020388A0
	add r0, sl, #0x600
	ldrh r2, [r0, #0x68]
	mov r0, sl
	mov r1, #9
	add r2, r2, #0x600
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, asr #4
	mov r2, r2, lsl #1
	add r2, r2, #1
	mov r4, r2, lsl #1
	mov r2, #0
	ldr r3, _02038844 ; =FX_SinCosTable_
	ldrsh r4, [r3, r4]
	mov r3, r4, asr #0x1f
	mov r3, r3, lsl #0xf
	orr r3, r3, r4, lsr #17
	mov r4, r4, lsl #0xf
	mov r4, r4, lsr #0xc
	orr r4, r4, r3, lsl #20
	rsb r3, r4, #0x48000
	bl sub_020388A0
	mov r0, sl
	mov r1, #4
	add r2, sl, #0x600
	ldrh r2, [r2, #0x64]
	ldr r4, _02038844 ; =FX_SinCosTable_
	mov r3, #0
	add r2, r2, #0xc00
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, asr #4
	mov r2, r2, lsl #2
	ldrsh r4, [r4, r2]
	mov r2, r4, asr #0x1f
	mov r2, r2, lsl #0xf
	orr r2, r2, r4, lsr #17
	mov r4, r4, lsl #0xf
	mov r4, r4, lsr #0xc
	orr r4, r4, r2, lsl #20
	sub r2, r4, #0x60000
	bl sub_020388A0
	add r0, sl, #0x600
	ldrh r1, [r0, #0x66]
	ldr r2, _02038844 ; =FX_SinCosTable_
	mov r0, sl
	add r1, r1, #0xa00
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #4
	mov r1, r1, lsl #2
	ldrsh r4, [r2, r1]
	mov r1, #6
	mov r3, #0
	mov r2, r4, asr #0x1f
	mov r2, r2, lsl #0xf
	mov r5, r4, lsl #0xf
	orr r2, r2, r4, lsr #17
	mov r4, r5, lsr #0xc
	orr r4, r4, r2, lsl #20
	rsb r2, r4, #0x60000
	bl sub_020388A0
	ldr r1, [sp]
	mov r0, sl
	bl sub_020355B4
	add r5, sl, #0xa4
	mov r4, #0
_020387BC:
	mov r0, r5
	ldr r2, [r0]
	ldr r1, [sp]
	ldr r2, [r2, #8]
	blx r2
	add r4, r4, #1
	cmp r4, #0x10
	add r5, r5, #0x5c
	blt _020387BC
	ldr r0, [sl, #0x7c]
	cmp r0, #0
	beq _02038830
	ldr r1, [sl, #0x1c]
	mov r0, #0
	add r1, r1, #3
	str r1, [sl, #0x78]
	str r0, [sl, #0x84]
	str r0, [sl, #0x88]
	mov r0, #0x104000
	str r0, [sl, #0x8c]
	mov r1, #0xc8000
	add r0, sl, #0x3c
	str r1, [sl, #0x90]
	bl sub_020364DC
	add r0, sl, #0x68
	ldr r2, [r0]
	ldr r1, [sp]
	ldr r2, [r2, #8]
	blx r2
_02038830:
	ldr r0, _02038848 ; =0x04000448
	mov r1, #0
	str r1, [r0]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02038844: .word FX_SinCosTable_
_02038848: .word 0x04000448

	arm_func_start sub_0203884C
sub_0203884C: ; 0x0203884C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, _02038878 ; =s_data_field_effect_dokarimo03_ntf_0208d998
	ldr r2, _0203887C ; =s_data_field_effect_dokarimo03_ntf_0208d9bc
	add r0, r4, #0x20
	mov r3, #4
	bl sub_020362EC
	mov r0, #2
	str r0, [r4, #0x64]
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02038878: .word s_data_field_effect_dokarimo03_ntf_0208d998
_0203887C: .word s_data_field_effect_dokarimo03_ntf_0208d9bc
	arm_func_end sub_0203884C

	arm_func_start sub_02038880
sub_02038880: ; 0x02038880
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x20
	bl sub_02036488
	add r0, r4, #0x3c
	bl sub_02036488
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02038880

	arm_func_start sub_020388A0
sub_020388A0: ; 0x020388A0
	stmdb sp!, {r4, r5, r6, lr}
	mov ip, #0x5c
	mla r6, r1, ip, r0
	add lr, r1, #1
	add r4, r1, #4
	add r1, r1, #5
	str r2, [r6, #0xd0]
	mla r5, lr, ip, r0
	str r3, [r6, #0xd4]
	str r2, [r5, #0xc8]
	mla lr, r4, ip, r0
	str r3, [r5, #0xcc]
	str r2, [lr, #0xd8]
	mla r0, r1, ip, r0
	str r3, [lr, #0xdc]
	str r2, [r0, #0xc0]
	str r3, [r0, #0xc4]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020388A0

	arm_func_start sub_020388E8
sub_020388E8: ; 0x020388E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020354E0
	mov ip, r4
	mov r3, #0
	arm_func_end sub_020388E8
_020388FC:
	ldr r2, [r4, #0x5c]
	ldr r1, [r4, #0x18]
	add r3, r3, #1
	mul r1, r2, r1
	mov r1, r1, asr #0xc
	str r1, [ip, #0xb8]
	cmp r3, #0x10
	add ip, ip, #0x5c
	blt _020388FC
	ldr r2, [r4, #0x60]
	ldr r1, [r4, #0x18]
	mul r1, r2, r1
	mov r1, r1, asr #0xc
	str r1, [r4, #0x7c]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02038938
sub_02038938: ; 0x02038938
	stmdb sp!, {r4, lr}
	ldr r1, _02038988 ; =ptr_FUN_02038998_0208d97c
	mov r4, r0
	str r1, [r4]
	bl sub_02038880
	ldr r3, _0203898C ; =sub_020368D8
	add r0, r4, #0xa4
	mov r1, #0x10
	mov r2, #0x5c
	bl __cxa_vec_cleanup
	add r0, r4, #0x68
	bl sub_02003984
	add r0, r4, #0x3c
	bl sub_02036488
	add r0, r4, #0x20
	bl sub_02036488
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02038988: .word ptr_FUN_02038998_0208d97c
_0203898C: .word sub_020368D8
	arm_func_end sub_02038938

	arm_func_start sub_02038990
sub_02038990: ; 0x02038990
	mov r0, #9
	bx lr
	arm_func_end sub_02038990

	arm_func_start sub_02038998
sub_02038998: ; 0x02038998
	stmdb sp!, {r4, lr}
	ldr r1, _020389E0 ; =ptr_FUN_02038998_0208d97c
	mov r4, r0
	str r1, [r4]
	bl sub_02038880
	ldr r3, _020389E4 ; =sub_020368D8
	add r0, r4, #0xa4
	mov r1, #0x10
	mov r2, #0x5c
	bl __cxa_vec_cleanup
	add r0, r4, #0x68
	bl sub_02003984
	add r0, r4, #0x3c
	bl sub_02036488
	add r0, r4, #0x20
	bl sub_02036488
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_020389E0: .word ptr_FUN_02038998_0208d97c
_020389E4: .word sub_020368D8
	arm_func_end sub_02038998

	arm_func_start sub_020389E8
sub_020389E8: ; 0x020389E8
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _02038AE4 ; =PTR_LAB_0208d610
	mov r5, r0
	str r2, [r5]
	mov r2, #4
	ldr r0, _02038AE8 ; =ptr_FUN_02038cd4_0208da08
	str r2, [r5, #0x1c]
	str r0, [r5]
	mov r2, #0
	str r2, [r5, #0x20]
	str r2, [r5, #0x24]
	str r2, [r5, #0x28]
	ldr r0, _02038AEC ; =DAT_0208d694
	str r2, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r2, [r5, #0x34]
	add r0, r5, #0x44
	mov r6, r1
	str r2, [r5, #0x38]
	bl sub_02003938
	ldr r0, _02038AF0 ; =ptr_FUN_02036908_0208d660
	mov r1, #0
	str r0, [r5, #0x44]
	mov r0, r5
	str r1, [r5, #0x5c]
	bl sub_02038C54
	str r6, [r5, #0x3c]
	cmp r6, #0xa
	beq _02038A78
	cmp r6, #0xb
	beq _02038A88
	cmp r6, #0xf
	moveq r0, #0xa
	streq r0, [r5, #0x40]
	moveq r4, #0
	b _02038A94
	arm_func_end sub_020389E8
_02038A78:
	mov r0, #0x10
	str r0, [r5, #0x40]
	ldr r4, _02038AF4 ; =0x00007FE0
	b _02038A94
_02038A88:
	mov r0, #0xa
	str r0, [r5, #0x40]
	mov r4, #0
_02038A94:
	strh r4, [r5, #0x4c]
	mov ip, #0
	str ip, [r5, #0x58]
	ldrh r1, [r5, #0x4c]
	ldr r4, [r5, #0x40]
	ldr r0, _02038AF8 ; =MAIN_BSS_0210CAA4
	and r3, r1, #0x1f
	mov r2, r1, asr #5
	mov r1, r1, asr #0xa
	str r3, [r0]
	and r2, r2, #0x1f
	str r2, [r0, #4]
	and r1, r1, #0x1f
	ldr r2, _02038AFC ; =MAIN_BSS_0210CA90
	str r1, [r0, #8]
	ldr r1, _02038B00 ; =MAIN_BSS_0210CA8C
	mov r0, r5
	str r4, [r2]
	str ip, [r1]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02038AE4: .word PTR_LAB_0208d610
_02038AE8: .word ptr_FUN_02038cd4_0208da08
_02038AEC: .word DAT_0208d694
_02038AF0: .word ptr_FUN_02036908_0208d660
_02038AF4: .word 0x00007FE0
_02038AF8: .word MAIN_BSS_0210CAA4
_02038AFC: .word MAIN_BSS_0210CA90
_02038B00: .word MAIN_BSS_0210CA8C

	arm_func_start sub_02038B04
sub_02038B04: ; 0x02038B04
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02035334
	ldr r2, _02038BB8 ; =MAIN_BSS_0210CA8C
	ldr r0, [r2]
	cmp r0, #0
	beq _02038B4C
	ldr r1, _02038BBC ; =MAIN_BSS_0210CAA4
	ldr r0, _02038BC0 ; =MAIN_BSS_0210CA90
	ldr ip, [r1]
	ldmib r1, {r3, lr}
	orr r1, ip, r3, lsl #5
	orr r1, r1, lr, lsl #10
	strh r1, [r4, #0x4c]
	ldr r1, [r0]
	mov r0, #0
	str r1, [r4, #0x40]
	str r0, [r2]
	arm_func_end sub_02038B04
_02038B4C:
	ldr r0, [r4, #4]
	cmp r0, #3
	beq _02038B6C
	cmp r0, #4
	beq _02038B84
	cmp r0, #5
	beq _02038B90
	b _02038BA8
_02038B6C:
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x18]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r4, #0x58]
	b _02038BB0
_02038B84:
	ldr r0, [r4, #0x40]
	str r0, [r4, #0x58]
	b _02038BB0
_02038B90:
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x18]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r4, #0x58]
	b _02038BB0
_02038BA8:
	mov r0, #0
	str r0, [r4, #0x58]
_02038BB0:
	ldr r0, [r4, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02038BB8: .word MAIN_BSS_0210CA8C
_02038BBC: .word MAIN_BSS_0210CAA4
_02038BC0: .word MAIN_BSS_0210CA90

	arm_func_start sub_02038BC4
sub_02038BC4: ; 0x02038BC4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x58]
	mov r4, r1
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl sub_020355B4
	ldr r1, [r5, #0x1c]
	mov r0, #0
	str r1, [r5, #0x54]
	str r0, [r5, #0x60]
	str r0, [r5, #0x64]
	mov r0, #0x100000
	str r0, [r5, #0x68]
	str r0, [r5, #0x6c]
	add r0, r5, #0x20
	bl sub_020364DC
	ldr r0, [r5, #0x1c]
	ldr r2, [r5, #0x58]
	add r0, r0, #3
	mov r0, r0, lsl #0x18
	orr r1, r0, #0xc0
	ldr r0, _02038C4C ; =0x040004A4
	orr r1, r1, r2, lsl #16
	str r1, [r0]
	add r0, r5, #0x44
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	ldr r0, _02038C50 ; =0x04000448
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02038C4C: .word 0x040004A4
_02038C50: .word 0x04000448
	arm_func_end sub_02038BC4

	arm_func_start sub_02038C54
sub_02038C54: ; 0x02038C54
	mov r0, #1
	bx lr
	arm_func_end sub_02038C54

	arm_func_start sub_02038C5C
sub_02038C5C: ; 0x02038C5C
	stmdb sp!, {r3, lr}
	add r0, r0, #0x20
	bl sub_02036488
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end sub_02038C5C

	arm_func_start sub_02038C70
sub_02038C70: ; 0x02038C70
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020354E0
	ldr r2, [r4, #0x40]
	ldr r1, [r4, #0x18]
	mul r1, r2, r1
	mov r1, r1, asr #0xc
	str r1, [r4, #0x58]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02038C70

	arm_func_start sub_02038C94
sub_02038C94: ; 0x02038C94
	stmdb sp!, {r4, lr}
	ldr r1, _02038CC8 ; =ptr_FUN_02038cd4_0208da08
	mov r4, r0
	str r1, [r4]
	bl sub_02038C5C
	add r0, r4, #0x44
	bl sub_02003984
	add r0, r4, #0x20
	bl sub_02036488
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02038CC8: .word ptr_FUN_02038cd4_0208da08
	arm_func_end sub_02038C94

	arm_func_start sub_02038CCC
sub_02038CCC: ; 0x02038CCC
	ldr r0, [r0, #0x3c]
	bx lr
	arm_func_end sub_02038CCC

	arm_func_start sub_02038CD4
sub_02038CD4: ; 0x02038CD4
	stmdb sp!, {r4, lr}
	ldr r1, _02038D00 ; =ptr_FUN_02038cd4_0208da08
	mov r4, r0
	str r1, [r4]
	bl sub_02038C5C
	add r0, r4, #0x44
	bl sub_02003984
	add r0, r4, #0x20
	bl sub_02036488
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02038D00: .word ptr_FUN_02038cd4_0208da08
	arm_func_end sub_02038CD4

	arm_func_start sub_02038D04
sub_02038D04: ; 0x02038D04
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _02038DCC ; =PTR_LAB_0208d610
	mov r5, r0
	str r2, [r5]
	mov r2, #4
	str r2, [r5, #0x1c]
	ldr r0, _02038DD0 ; =ptr_FUN_02039ddc_0208da78
	mov r2, #0
	str r0, [r5]
	str r2, [r5, #0x3c0]
	str r2, [r5, #0x3c4]
	str r2, [r5, #0x3c8]
	ldr r0, _02038DD4 ; =DAT_0208d694
	str r2, [r5, #0x3cc]
	str r0, [r5, #0x3d0]
	str r2, [r5, #0x3d4]
	add r0, r5, #0x3dc
	mov r4, r1
	str r2, [r5, #0x3d8]
	bl sub_02003938
	ldr r1, _02038DD8 ; =ptr_FUN_02036908_0208d660
	mov r0, r5
	str r1, [r5, #0x3dc]
	mov r1, #0
	str r1, [r5, #0x3f4]
	bl sub_02039818
	ldr r1, _02038DDC ; =0x00002A52
	add r0, r5, #0x300
	strh r1, [r0, #0xe4]
	mov r6, #0
	mov lr, #0x15
	str r6, [r5, #0x3f0]
	str lr, [r5, #0x418]
	ldrh r0, [r0, #0xe4]
	ldr r2, _02038DE0 ; =MAIN_BSS_0210CAA4
	ldr r1, _02038DE4 ; =MAIN_BSS_0210CA90
	and ip, r0, #0x1f
	mov r3, r0, asr #5
	mov r0, r0, asr #0xa
	str ip, [r2]
	and r3, r3, #0x1f
	str r3, [r2, #4]
	and r3, r0, #0x1f
	str r3, [r2, #8]
	ldr r0, _02038DE8 ; =MAIN_BSS_0210CA8C
	str lr, [r1]
	str r6, [r0]
	mov r0, r5
	str r4, [r5, #0x41c]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02038DCC: .word PTR_LAB_0208d610
_02038DD0: .word ptr_FUN_02039ddc_0208da78
_02038DD4: .word DAT_0208d694
_02038DD8: .word ptr_FUN_02036908_0208d660
_02038DDC: .word 0x00002A52
_02038DE0: .word MAIN_BSS_0210CAA4
_02038DE4: .word MAIN_BSS_0210CA90
_02038DE8: .word MAIN_BSS_0210CA8C
	arm_func_end sub_02038D04

	arm_func_start sub_02038DEC
sub_02038DEC: ; 0x02038DEC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	ldr r0, [r4, #0x3bc]
	mov r5, r1
	cmp r0, #0
	beq _02038E18
	subs r0, r0, #1
	str r0, [r4, #0x3bc]
	bne _02038E18
	add r0, r4, #0x3c0
	bl sub_02036434
	arm_func_end sub_02038DEC
_02038E18:
	mov r0, r4
	mov r1, r5
	bl sub_02035334
	ldr r2, _020394B0 ; =MAIN_BSS_0210CA8C
	ldr r0, [r2]
	cmp r0, #0
	beq _02038E64
	ldr r1, _020394B4 ; =MAIN_BSS_0210CAA4
	add r0, r4, #0x300
	ldr r5, [r1]
	ldmib r1, {r3, r6}
	orr r1, r5, r3, lsl #5
	orr r3, r1, r6, lsl #10
	strh r3, [r0, #0xe4]
	ldr r1, _020394B8 ; =MAIN_BSS_0210CA90
	mov r0, #0
	ldr r1, [r1]
	str r1, [r4, #0x418]
	str r0, [r2]
_02038E64:
	ldr r0, [r4, #0x20]
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
	ldr r0, [r4, #0x41c]
	cmp r0, #0
	beq _020393B8
	mov r3, #0xa3
	ldr lr, _020394BC ; =MAIN_BSS_0210CEC8
	ldr r5, _020394C0 ; =MAIN_BSS_0210CA84
	ldr ip, _020394C4 ; =MAIN_BSS_0210CA9C
	add r1, r4, #0x3c
	mov r0, #0
	mov fp, r3
_02038E9C:
	ldrb r6, [r1, #0x18]
	ldr r2, [r5]
	add r2, r6, r2
	strb r2, [r1, #0x18]
	ldr r7, [r1, #8]
	ldr r6, [r5]
	ldr r2, [r1]
	mul r8, r7, r6
	mov r6, r8, asr #0x1f
	mov r6, r6, lsl #0xc
	mov r7, r8, lsl #0xc
	orr r6, r6, r8, lsr #20
	mov r7, r7, lsr #0xc
	orr r7, r7, r6, lsl #20
	adds r2, r2, r7
	str r2, [r1]
	bpl _02038F2C
	add r2, r2, #0x140000
	str r2, [r1]
	ldmia lr, {r2, r6, r7}
	mla r2, r6, r2, r7
	str r2, [lr]
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #4
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r7, r2, lsr #4
	umull sb, r8, r7, r3
	mov r6, r7, asr #0x1f
	mla r8, r6, r3, r8
	mov r2, sb, lsr #0xc
	orr r2, r2, r8, lsl #20
	add r2, r2, #0x66
	add r2, r2, #0x600
	str r2, [r1, #0xc]
	b _02038F38
_02038F2C:
	cmp r2, #0x140000
	subgt r2, r2, #0x140000
	strgt r2, [r1]
_02038F38:
	ldr r7, [r1, #0xc]
	ldr r6, [r5]
	ldr r2, [r1, #4]
	mul r8, r7, r6
	mov r6, r8, asr #0x1f
	mov r6, r6, lsl #0xc
	mov r7, r8, lsl #0xc
	orr r6, r6, r8, lsr #20
	mov r7, r7, lsr #0xc
	orr r7, r7, r6, lsl #20
	adds r2, r2, r7
	str r2, [r1, #4]
	bpl _02038F7C
	ldr r2, [r1, #4]
	add r2, r2, #0x100000
	str r2, [r1, #4]
	b _02038FD0
_02038F7C:
	cmp r2, #0x100000
	ble _02038FD0
	ldr r2, [r1, #4]
	sub r2, r2, #0x100000
	str r2, [r1, #4]
	ldmia lr, {r2, r6, r7}
	mla r2, r6, r2, r7
	str r2, [lr]
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #4
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r7, r2, lsr #4
	umull sb, r8, r7, fp
	mov r6, r7, asr #0x1f
	mla r8, r6, fp, r8
	mov r2, sb, lsr #0xc
	orr r2, r2, r8, lsl #20
	add r2, r2, #0x66
	add r2, r2, #0x600
	str r2, [r1, #0xc]
_02038FD0:
	ldr r7, [lr]
	ldmib lr, {r2, r6}
	mla r7, r2, r7, r6
	mov r8, r7, lsr #0x10
	mov r8, r8, lsl #3
	mov r8, r8, lsr #0x10
	mov r8, r8, lsl #0x10
	str r7, [lr]
	movs r8, r8, lsr #0x10
	bne _0203903C
	mla r6, r2, r7, r6
	mov r2, r6, lsr #0x10
	mov r2, r2, lsl #1
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r7, r2, lsr #4
	mov r2, #0xa3
	str r6, [lr]
	umull sb, r8, r7, r2
	mov r6, r7, asr #0x1f
	mov r2, #0xa3
	mla r8, r6, r2, r8
	mov r2, sb, lsr #0xc
	ldr sl, [r1, #0xc]
	orr r2, r2, r8, lsl #20
	add r2, sl, r2
	str r2, [r1, #0xc]
_0203903C:
	ldr r6, [r1]
	ldr r2, [ip]
	add r2, r6, r2
	str r2, [r1]
	ldr r6, [r1, #4]
	ldr r2, [ip, #4]
	add r2, r6, r2
	str r2, [r1, #4]
	ldrb r2, [r1, #0x19]
	cmp r2, #0
	sub r2, r2, #1
	strb r2, [r1, #0x19]
	bne _0203910C
	ldmia lr, {r2, r6, r7}
	mla r2, r6, r2, r7
	str r2, [lr]
	mov r6, r2, lsr #0x10
	mov r2, #0xa
	mul r2, r6, r2
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	add r2, r2, #0xa
	strb r2, [r1, #0x19]
	ldmia lr, {r2, r6, r7}
	mla r2, r6, r2, r7
	str r2, [lr]
	mov r6, r2, lsr #0x10
	mov r2, #0xc
	mul r2, r6, r2
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r8, r2, lsr #4
	mov r2, #0xcc
	umull sl, sb, r8, r2
	mov r7, r8, asr #0x1f
	mov r2, #0xcc
	mla sb, r7, r2, sb
	mov r2, sl, lsr #0xc
	orr r2, r2, sb, lsl #20
	add r2, r2, #0x33
	ldr r6, [r1, #0x10]
	add r2, r2, #0xb00
	smull r8, r7, r6, r2
	mov r6, r8, lsr #0xc
	orr r6, r6, r7, lsl #20
	str r6, [r1, #8]
	ldr r6, [r1, #0x14]
	smull r7, r2, r6, r2
	mov r6, r7, lsr #0xc
	orr r6, r6, r2, lsl #20
	str r6, [r1, #0xc]
_0203910C:
	add r1, r1, #0x1c
	add r0, r0, #1
	cmp r0, #0x10
	blt _02038E9C
	mov r3, #0xa3
	ldr r6, _020394BC ; =MAIN_BSS_0210CEC8
	ldr r7, _020394C0 ; =MAIN_BSS_0210CA84
	ldr r5, _020394C4 ; =MAIN_BSS_0210CA9C
	add r1, r4, #0x1fc
	mov r0, #0
	mov lr, r3
_02039138:
	ldrb r8, [r1, #0x18]
	ldr r2, [r7]
	add r2, r8, r2
	strb r2, [r1, #0x18]
	ldr sb, [r1, #8]
	ldr r8, [r7]
	ldr r2, [r1]
	mul sl, sb, r8
	mov r8, sl, asr #0x1f
	mov r8, r8, lsl #0xc
	mov sb, sl, lsl #0xc
	orr r8, r8, sl, lsr #20
	mov sb, sb, lsr #0xc
	orr sb, sb, r8, lsl #20
	adds r2, r2, sb
	str r2, [r1]
	bpl _020391C8
	add r2, r2, #0x140000
	str r2, [r1]
	ldmia r6, {r2, r8, sb}
	mla r2, r8, r2, sb
	str r2, [r6]
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #4
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov sb, r2, lsr #4
	umull fp, sl, sb, r3
	mov r8, sb, asr #0x1f
	mla sl, r8, r3, sl
	mov r2, fp, lsr #0xc
	orr r2, r2, sl, lsl #20
	add r2, r2, #0x66
	add r2, r2, #0x600
	str r2, [r1, #0xc]
	b _020391D4
_020391C8:
	cmp r2, #0x140000
	subgt r2, r2, #0x140000
	strgt r2, [r1]
_020391D4:
	ldr sb, [r1, #0xc]
	ldr r8, [r7]
	ldr r2, [r1, #4]
	mul sl, sb, r8
	mov r8, sl, asr #0x1f
	mov r8, r8, lsl #0xc
	mov sb, sl, lsl #0xc
	orr r8, r8, sl, lsr #20
	mov sb, sb, lsr #0xc
	orr sb, sb, r8, lsl #20
	adds r2, r2, sb
	str r2, [r1, #4]
	bpl _02039218
	ldr r2, [r1, #4]
	add r2, r2, #0x100000
	str r2, [r1, #4]
	b _0203926C
_02039218:
	cmp r2, #0x100000
	ble _0203926C
	ldr r2, [r1, #4]
	sub r2, r2, #0x100000
	str r2, [r1, #4]
	ldmia r6, {r2, r8, sb}
	mla r2, r8, r2, sb
	str r2, [r6]
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #4
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov sb, r2, lsr #4
	umull fp, sl, sb, lr
	mov r8, sb, asr #0x1f
	mla sl, r8, lr, sl
	mov r2, fp, lsr #0xc
	orr r2, r2, sl, lsl #20
	add r2, r2, #0x66
	add r2, r2, #0x600
	str r2, [r1, #0xc]
_0203926C:
	ldr sb, [r6]
	ldmib r6, {r2, r8}
	mla sb, r2, sb, r8
	mov sl, sb, lsr #0x10
	mov sl, sl, lsl #3
	mov sl, sl, lsr #0x10
	mov sl, sl, lsl #0x10
	str sb, [r6]
	movs sl, sl, lsr #0x10
	bne _020392D8
	mla r8, r2, sb, r8
	mov r2, r8, lsr #0x10
	mov r2, r2, lsl #1
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov sb, r2, lsr #4
	mov r2, #0xa3
	str r8, [r6]
	umull fp, sl, sb, r2
	mov r8, sb, asr #0x1f
	mov r2, #0xa3
	mla sl, r8, r2, sl
	mov r2, fp, lsr #0xc
	ldr ip, [r1, #0xc]
	orr r2, r2, sl, lsl #20
	add r2, ip, r2
	str r2, [r1, #0xc]
_020392D8:
	ldr r8, [r1]
	ldr r2, [r5]
	add r2, r8, r2
	str r2, [r1]
	ldr r8, [r1, #4]
	ldr r2, [r5, #4]
	add r2, r8, r2
	str r2, [r1, #4]
	ldrb r2, [r1, #0x19]
	cmp r2, #0
	sub r2, r2, #1
	strb r2, [r1, #0x19]
	bne _020393A8
	ldmia r6, {r2, r8, sb}
	mla r2, r8, r2, sb
	str r2, [r6]
	mov r8, r2, lsr #0x10
	mov r2, #0xa
	mul r2, r8, r2
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	add r2, r2, #0xa
	strb r2, [r1, #0x19]
	ldmia r6, {r2, r8, sb}
	mla r2, r8, r2, sb
	str r2, [r6]
	mov r8, r2, lsr #0x10
	mov r2, #0xc
	mul r2, r8, r2
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov sl, r2, lsr #4
	mov r2, #0xcc
	umull ip, fp, sl, r2
	mov sb, sl, asr #0x1f
	mov r2, #0xcc
	mla fp, sb, r2, fp
	mov r2, ip, lsr #0xc
	orr r2, r2, fp, lsl #20
	add r2, r2, #0x33
	ldr r8, [r1, #0x10]
	add r2, r2, #0xb00
	smull sl, sb, r8, r2
	mov r8, sl, lsr #0xc
	orr r8, r8, sb, lsl #20
	str r8, [r1, #8]
	ldr r8, [r1, #0x14]
	smull sb, r2, r8, r2
	mov r8, sb, lsr #0xc
	orr r8, r8, r2, lsl #20
	str r8, [r1, #0xc]
_020393A8:
	add r1, r1, #0x1c
	add r0, r0, #1
	cmp r0, #0x10
	blt _02039138
_020393B8:
	ldr r0, _020394C0 ; =MAIN_BSS_0210CA84
	ldr r0, [r0]
	bl _f_itof
	mov r1, r0
	ldr r0, _020394C8 ; =0xBDCCCCCD
	bl _f_mul
	mov r1, r0
	ldr r0, _020394CC ; =0x45800000
	bl _f_mul
	bl _f_ftoi
	ldr r2, _020394C4 ; =MAIN_BSS_0210CA9C
	ldr r7, [r4, #0x420]
	ldr r5, [r2]
	ldr r1, _020394D0 ; =0x000FFFFF
	mov r3, r5, asr #0x1f
	mov r3, r3, lsl #0xb
	mov r6, r5, lsl #0xb
	orr r3, r3, r5, lsr #21
	mov r5, r6, lsr #0xc
	orr r5, r5, r3, lsl #20
	add r0, r0, r5
	sub r0, r7, r0
	and r0, r0, r1
	str r0, [r4, #0x420]
	ldr r2, [r2, #4]
	ldr r5, [r4, #0x424]
	mov r0, r2, asr #0x1f
	mov r0, r0, lsl #0xb
	mov r3, r2, lsl #0xb
	orr r0, r0, r2, lsr #21
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	sub r0, r5, r2
	and r0, r0, r1
	str r0, [r4, #0x424]
	ldr r0, [r4, #4]
	cmp r0, #3
	beq _02039464
	cmp r0, #4
	beq _0203947C
	cmp r0, #5
	beq _02039488
	b _020394A0
_02039464:
	ldr r1, [r4, #0x418]
	ldr r0, [r4, #0x18]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r4, #0x3f0]
	b _020394A8
_0203947C:
	ldr r0, [r4, #0x418]
	str r0, [r4, #0x3f0]
	b _020394A8
_02039488:
	ldr r1, [r4, #0x418]
	ldr r0, [r4, #0x18]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r4, #0x3f0]
	b _020394A8
_020394A0:
	mov r0, #0
	str r0, [r4, #0x3f0]
_020394A8:
	ldr r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020394B0: .word MAIN_BSS_0210CA8C
_020394B4: .word MAIN_BSS_0210CAA4
_020394B8: .word MAIN_BSS_0210CA90
_020394BC: .word MAIN_BSS_0210CEC8
_020394C0: .word MAIN_BSS_0210CA84
_020394C4: .word MAIN_BSS_0210CA9C
_020394C8: .word 0xBDCCCCCD
_020394CC: .word 0x45800000
_020394D0: .word 0x000FFFFF

	arm_func_start sub_020394D4
sub_020394D4: ; 0x020394D4
	stmdb sp!, {r4, lr}
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0x10]
	mov r4, r0
	blx r2
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0x10]
	blx r2
	bl sub_020089EC
	ldmia sp!, {r4, pc}
	arm_func_end sub_020394D4

	arm_func_start sub_02039510
sub_02039510: ; 0x02039510
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x48
	mov sb, r0
	ldr r0, [sb, #0x20]
	mov r8, r1
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0x10]
	blx r2
	ldr sl, [r8, #0x1c]
	ldr r4, [r8, #0x20]
	ldr r1, [sb, #0x41c]
	mov r5, r0
	str sl, [sp, #0x30]
	str r4, [sp, #0x34]
	cmp r1, #0
	beq _02039784
	ldr fp, _02039810 ; =0x00007FFF
	add r7, sb, #0x3c
	mov r6, #0
	arm_func_end sub_02039510
_02039560:
	ldrb r1, [r7, #0x18]
	mov r0, r1, asr #6
	and r0, r0, #3
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020395C8
_02039578: ; jump table
	b _02039588 ; case 0
	b _02039598 ; case 1
	b _020395A4 ; case 2
	b _020395C8 ; case 3
_02039588:
	mov r0, r1, asr #1
	mov r1, fp
	and r0, r0, #0xff
	b _020395D0
_02039598:
	mov r0, #0x1f
	mov r1, fp
	b _020395D0
_020395A4:
	mov r0, r1, asr #1
	and r0, r0, #0x1f
	rsb r0, r0, #0x1f
	and r0, r0, #0xff
	orr r1, r0, r0, lsl #5
	orr r1, r1, r0, lsl #10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	b _020395D0
_020395C8:
	mov r0, #0
	mov r1, r0
_020395D0:
	cmp r0, #0
	beq _0203965C
	ldr r3, [sb, #0x24]
	mov r2, r6, lsl #0x1d
	strh r1, [r3, #8]
	ldr r3, [sb, #0x24]
	add r1, sb, r2, lsr #28
	str r0, [r3, #0x14]
	ldrh r1, [r1, #0x28]
	mov r0, r5
	bl sub_02008828
	ldr r2, [sb, #0x24]
	mov r1, r8
	strh r0, [r2, #0x2a]
	ldr r0, [r7]
	str sl, [sp, #0x28]
	sub r0, r0, sl
	str r4, [sp, #0x2c]
	str r0, [sp, #0x20]
	sub r2, r0, #0xa0000
	str r2, [sp, #0x40]
	str r2, [sp, #0x18]
	ldr r3, [r7, #4]
	ldr r0, [sb, #0x24]
	sub r3, r3, r4
	str r2, [r0, #0x18]
	str r3, [sp, #0x24]
	sub r2, r3, #0x80000
	str r2, [r0, #0x1c]
	str r2, [sp, #0x44]
	str r2, [sp, #0x1c]
	ldr r0, [sb, #0x24]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
_0203965C:
	add r6, r6, #1
	cmp r6, #0x10
	add r7, r7, #0x1c
	blt _02039560
	ldr sl, [sp, #0x30]
	ldr r4, [sp, #0x34]
	ldr fp, _02039810 ; =0x00007FFF
	add r7, sb, #0x1fc
	mov r6, #0
_02039680:
	ldrb r1, [r7, #0x18]
	mov r0, r1, asr #6
	and r0, r0, #3
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020396E8
_02039698: ; jump table
	b _020396A8 ; case 0
	b _020396B8 ; case 1
	b _020396C4 ; case 2
	b _020396E8 ; case 3
_020396A8:
	mov r0, r1, asr #1
	mov r2, fp
	and r1, r0, #0xff
	b _020396F0
_020396B8:
	mov r1, #0x1f
	mov r2, fp
	b _020396F0
_020396C4:
	mov r0, r1, asr #1
	and r0, r0, #0x1f
	rsb r0, r0, #0x1f
	and r1, r0, #0xff
	orr r0, r1, r1, lsl #5
	orr r0, r0, r1, lsl #10
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	b _020396F0
_020396E8:
	mov r1, #0
	mov r2, r1
_020396F0:
	cmp r1, #0
	beq _02039774
	ldr r3, [sb, #0x24]
	mov r0, r5
	strh r2, [r3, #8]
	ldr r2, [sb, #0x24]
	str r1, [r2, #0x14]
	ldrh r1, [sb, #0x38]
	bl sub_02008828
	ldr r2, [sb, #0x24]
	mov r1, r8
	strh r0, [r2, #0x2a]
	ldr r0, [r7]
	str sl, [sp, #0x10]
	sub r0, r0, sl
	str r4, [sp, #0x14]
	str r0, [sp, #8]
	sub r2, r0, #0xa0000
	str r2, [sp, #0x38]
	str r2, [sp]
	ldr r3, [r7, #4]
	ldr r0, [sb, #0x24]
	sub r3, r3, r4
	str r2, [r0, #0x18]
	str r3, [sp, #0xc]
	sub r2, r3, #0x80000
	str r2, [r0, #0x1c]
	str r2, [sp, #0x3c]
	str r2, [sp, #4]
	ldr r0, [sb, #0x24]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
_02039774:
	add r6, r6, #1
	cmp r6, #0x10
	add r7, r7, #0x1c
	blt _02039680
_02039784:
	ldr r0, [sb, #0x3f0]
	cmp r0, #0
	addeq sp, sp, #0x48
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sb
	mov r1, r8
	bl sub_020355B4
	ldr r1, [sb, #0x1c]
	mov r0, #0
	str r1, [sb, #0x3ec]
	str r0, [sb, #0x3f8]
	str r0, [sb, #0x3fc]
	mov r0, #0x100000
	str r0, [sb, #0x400]
	str r0, [sb, #0x404]
	ldr r2, [sb, #0x424]
	ldr r0, [sb, #0x420]
	add r1, r2, #0x80000
	str r0, [sb, #0x408]
	str r2, [sb, #0x40c]
	add r0, r0, #0x80000
	str r0, [sb, #0x410]
	add r0, sb, #0x3c0
	str r1, [sb, #0x414]
	bl sub_020364DC
	add r0, sb, #0x3dc
	ldr r2, [r0]
	mov r1, r8
	ldr r2, [r2, #8]
	blx r2
	ldr r0, _02039814 ; =0x04000448
	mov r1, #0
	str r1, [r0]
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02039810: .word 0x00007FFF
_02039814: .word 0x04000448

	arm_func_start sub_02039818
sub_02039818: ; 0x02039818
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	str r0, [sp]
	mov r0, #0x34
	bl _Znwm
	movs r4, r0
	beq _02039858
	ldr r1, _02039CD4 ; =ptr_FUN_020294c0_0208c4a4
	add r0, r4, #4
	str r1, [r4]
	bl sub_02007AA4
	mov r1, #0
	str r1, [r4, #0x2c]
	ldr r0, _02039CD8 ; =PTR_LAB_0208da9c
	str r1, [r4, #0x30]
	str r0, [r4]
	arm_func_end sub_02039818
_02039858:
	ldr r2, [sp]
	mov r0, r4
	mov r1, #8
	str r4, [r2, #0x20]
	bl sub_02035FE8
	mov r0, #0x4c
	bl _Znwm
	cmp r0, #0
	beq _02039880
	bl sub_02005150
_02039880:
	ldr r1, [sp]
	str r0, [r1, #0x24]
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x24]
	str r1, [r0, #0x10]
	ldr r0, [sp]
	ldr r0, [r0, #0x20]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	ldr r1, [sp]
	ldr r2, [r1, #0x24]
	mov r1, #0
	str r0, [r2, #0x34]
	ldr r0, [sp]
	ldr r0, [r0, #0x20]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldr r1, [sp]
	ldr r2, [r1, #0x24]
	mov r1, #0
	str r0, [r2, #0x2c]
	ldr r0, [sp]
	str r1, [r2, #0x30]
	ldr r0, [r0, #0x20]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldr r1, [sp]
	ldr r2, [r1, #0x24]
	mov r1, #0
	str r0, [r2, #0x38]
	ldr r0, [sp]
	ldr r0, [r0, #0x20]
	ldr r2, [r0]
	ldr r2, [r2, #0x10]
	blx r2
	mov r8, #0
	ldr r5, _02039CDC ; =0x55555556
	str r0, [sp, #0xc]
	mov r7, #1
	mov r6, r8
	mov r4, #3
_0203993C:
	ldr r0, [sp, #0xc]
	mov r1, r7
	mov r2, r6
	bl sub_02008A80
	smull r1, r2, r5, r8
	add r2, r2, r8, lsr #31
	smull r2, r1, r4, r2
	ldr r1, [sp]
	sub r2, r8, r2
	add r3, r1, r8, lsl #1
	mov r1, r2, lsl #0x10
	strh r0, [r3, #0x28]
	mov r2, r1, lsr #0x10
	ldrh r1, [r3, #0x28]
	ldr r0, [sp, #0xc]
	bl sub_02008990
	add r8, r8, #1
	cmp r8, #8
	blt _0203993C
	ldr r0, [sp]
	mov r2, #0
	str r2, [sp, #8]
	add r0, r0, #0x3c
_02039998:
	mov r1, #0
	ldr r6, _02039CE0 ; =MAIN_BSS_0210CEC8
	ldr ip, _02039CE4 ; =0xFFFFFEB9
	mov r3, r1
	mvn lr, #0
	mov fp, r1
	mov r4, #0xa3
	mov r5, #0xa
_020399B8:
	ldmia r6, {r7, r8, sb}
	mla r7, r8, r7, sb
	str r7, [r6]
	mov r8, r7, lsr #0x10
	mov r7, #0x50
	mul r7, r8, r7
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #0x10
	add r7, r3, r7, lsr #4
	str r7, [r0]
	ldmia r6, {r7, r8, sb}
	mla r7, r8, r7, sb
	str r7, [r6]
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #6
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #0x10
	add r7, r2, r7, lsr #4
	str r7, [r0, #4]
	ldmia r6, {r7, r8, sb}
	mla r7, r8, r7, sb
	str r7, [r6]
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #8
	mov r7, r7, lsr #0x10
	strb r7, [r0, #0x18]
	ldmia r6, {r7, r8, sb}
	mla r7, r8, r7, sb
	str r7, [r6]
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #3
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #0x10
	mov r8, r7, lsr #4
	umull sl, sb, r8, ip
	mla sb, r8, lr, sb
	mov r7, r8, asr #0x1f
	mla sb, r7, ip, sb
	mov r7, sl, lsr #0xc
	orr r7, r7, sb, lsl #20
	sub r7, r7, #0x2000
	str r7, [r0, #0x10]
	str r7, [r0, #8]
	ldmia r6, {r7, r8, sb}
	mla r7, r8, r7, sb
	str r7, [r6]
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #3
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #0x10
	mov r8, r7, lsr #4
	umull sl, sb, r8, r4
	add r1, r1, #1
	mla sb, r8, fp, sb
	mov r7, r8, asr #0x1f
	mla sb, r7, r4, sb
	mov r7, sl, lsr #0xc
	orr r7, r7, sb, lsl #20
	add r7, r7, #0x66
	add r7, r7, #0x600
	str r7, [r0, #0x14]
	str r7, [r0, #0xc]
	ldmia r6, {r7, r8, sb}
	mla r7, r8, r7, sb
	str r7, [r6]
	mov r7, r7, lsr #0x10
	mul r8, r7, r5
	mov r7, r8, lsr #0x10
	mov r7, r7, lsl #0x10
	mov r7, r7, lsr #0x10
	add r7, r7, #0xa
	strb r7, [r0, #0x19]
	cmp r1, #4
	add r3, r3, #0x50000
	add r0, r0, #0x1c
	blt _020399B8
	ldr r1, [sp, #8]
	add r2, r2, #0x40000
	add r1, r1, #1
	str r1, [sp, #8]
	cmp r1, #4
	blt _02039998
	ldr r0, [sp, #0xc]
	mov r1, #1
	mov r2, #0
	bl sub_02008A80
	ldr r1, [sp]
	mov r2, #3
	strh r0, [r1, #0x38]
	mov r0, r1
	ldrh r1, [r0, #0x38]
	ldr r0, [sp, #0xc]
	bl sub_02008990
	ldr r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r3, r0, #0x1fc
_02039B3C:
	mov r0, #0
	ldr r8, _02039CE0 ; =MAIN_BSS_0210CEC8
	ldr r4, _02039CE4 ; =0xFFFFFEB9
	mov r2, r0
	mvn r5, #0
	mov lr, r0
	mov r6, #0xa3
	mov r7, #0xa
_02039B5C:
	ldmia r8, {sb, sl, fp}
	mla sb, sl, sb, fp
	str sb, [r8]
	mov sl, sb, lsr #0x10
	mov sb, #0x50
	mul sb, sl, sb
	mov sb, sb, lsr #0x10
	mov sb, sb, lsl #0x10
	add sb, r2, sb, lsr #4
	str sb, [r3]
	ldmia r8, {sb, sl, fp}
	mla sb, sl, sb, fp
	str sb, [r8]
	mov sb, sb, lsr #0x10
	mov sb, sb, lsl #6
	mov sb, sb, lsr #0x10
	mov sb, sb, lsl #0x10
	add sb, r1, sb, lsr #4
	str sb, [r3, #4]
	ldmia r8, {sb, sl, fp}
	mla sb, sl, sb, fp
	str sb, [r8]
	mov sb, sb, lsr #0x10
	mov sb, sb, lsl #8
	mov sb, sb, lsr #0x10
	strb sb, [r3, #0x18]
	ldmia r8, {sb, sl, fp}
	mla sb, sl, sb, fp
	str sb, [r8]
	mov sb, sb, lsr #0x10
	mov sb, sb, lsl #3
	mov sb, sb, lsr #0x10
	mov sb, sb, lsl #0x10
	mov sl, sb, lsr #4
	umull ip, fp, sl, r4
	mla fp, sl, r5, fp
	mov sb, sl, asr #0x1f
	mla fp, sb, r4, fp
	mov sb, ip, lsr #0xc
	orr sb, sb, fp, lsl #20
	sub sb, sb, #0x2000
	str sb, [r3, #0x10]
	str sb, [r3, #8]
	ldmia r8, {sb, sl, fp}
	mla sb, sl, sb, fp
	str sb, [r8]
	mov sb, sb, lsr #0x10
	mov sb, sb, lsl #3
	mov sb, sb, lsr #0x10
	mov sb, sb, lsl #0x10
	mov sl, sb, lsr #4
	umull ip, fp, sl, r6
	add r0, r0, #1
	mla fp, sl, lr, fp
	mov sb, sl, asr #0x1f
	mla fp, sb, r6, fp
	mov sb, ip, lsr #0xc
	orr sb, sb, fp, lsl #20
	add sb, sb, #0x66
	add sb, sb, #0x600
	str sb, [r3, #0x14]
	str sb, [r3, #0xc]
	ldmia r8, {sb, sl, fp}
	mla sb, sl, sb, fp
	str sb, [r8]
	mov sb, sb, lsr #0x10
	mul sl, sb, r7
	mov sb, sl, lsr #0x10
	mov sb, sb, lsl #0x10
	mov sb, sb, lsr #0x10
	add sb, sb, #0xa
	strb sb, [r3, #0x19]
	cmp r0, #4
	add r2, r2, #0x50000
	add r3, r3, #0x1c
	blt _02039B5C
	ldr r0, [sp, #4]
	add r1, r1, #0x40000
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _02039B3C
	ldr r0, [sp]
	ldr r1, _02039CE8 ; =s_data_field_effect_kiri02_ntft_0208dac0
	ldr r2, _02039CEC ; =s_data_field_effect_kiri02_ntfp_0208dae0
	add r0, r0, #0x3c0
	mov r3, #2
	bl sub_020362EC
	ldr r0, [sp]
	mov r1, #2
	str r1, [r0, #0x3bc]
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02039CD4: .word ptr_FUN_020294c0_0208c4a4
_02039CD8: .word PTR_LAB_0208da9c
_02039CDC: .word 0x55555556
_02039CE0: .word MAIN_BSS_0210CEC8
_02039CE4: .word 0xFFFFFEB9
_02039CE8: .word s_data_field_effect_kiri02_ntft_0208dac0
_02039CEC: .word s_data_field_effect_kiri02_ntfp_0208dae0

	arm_func_start sub_02039CF0
sub_02039CF0: ; 0x02039CF0
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3c0
	bl sub_02036488
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _02039D24
	beq _02039D1C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_02039CF0
_02039D1C:
	mov r0, #0
	str r0, [r4, #0x24]
_02039D24:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02039D48
	beq _02039D40
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02039D40:
	mov r0, #0
	str r0, [r4, #0x20]
_02039D48:
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start sub_02039D50
sub_02039D50: ; 0x02039D50
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02029518
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02039D50

	arm_func_start sub_02039D6C
sub_02039D6C: ; 0x02039D6C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020354E0
	ldr r2, [r4, #0x418]
	ldr r1, [r4, #0x18]
	mul r1, r2, r1
	mov r1, r1, asr #0xc
	str r1, [r4, #0x3f0]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02039D6C

	arm_func_start sub_02039D90
sub_02039D90: ; 0x02039D90
	stmdb sp!, {r4, lr}
	ldr r1, _02039DC4 ; =ptr_FUN_02039ddc_0208da78
	mov r4, r0
	str r1, [r4]
	bl sub_02039CF0
	add r0, r4, #0x3dc
	bl sub_02003984
	add r0, r4, #0x3c0
	bl sub_02036488
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02039DC4: .word ptr_FUN_02039ddc_0208da78
	arm_func_end sub_02039D90

	arm_func_start sub_02039DC8
sub_02039DC8: ; 0x02039DC8
	ldr r0, [r0, #0x41c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0xc
	bx lr
	arm_func_end sub_02039DC8

	arm_func_start sub_02039DDC
sub_02039DDC: ; 0x02039DDC
	stmdb sp!, {r4, lr}
	ldr r1, _02039E08 ; =ptr_FUN_02039ddc_0208da78
	mov r4, r0
	str r1, [r4]
	bl sub_02039CF0
	add r0, r4, #0x3dc
	bl sub_02003984
	add r0, r4, #0x3c0
	bl sub_02036488
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02039E08: .word ptr_FUN_02039ddc_0208da78
	arm_func_end sub_02039DDC

	arm_func_start sub_02039E0C
sub_02039E0C: ; 0x02039E0C
    stmdb sp!, {r4, lr}
    mov r4, r0
    bl sub_02029518
    mov r0, r4
    ldmia sp!, {r4, pc}
    arm_func_end sub_02039E0C

	arm_func_start sub_02039E20
sub_02039E20: ; 0x02039E20
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl sub_0203A604
	mov r0, #0x34
	bl _Znwm
	movs r4, r0
	beq _02039E60
	ldr r1, _0203A004 ; =ptr_FUN_020294c0_0208c4a4
	add r0, r4, #4
	str r1, [r4]
	bl sub_02007AA4
	mov r1, #0
	str r1, [r4, #0x2c]
	ldr r0, _0203A008 ; =PTR_LAB_0208da9c
	str r1, [r4, #0x30]
	str r0, [r4]
	arm_func_end sub_02039E20
_02039E60:
	mov r0, r4
	mov r1, #0
	str r4, [sl, #0x660]
	bl sub_02035FE8
	mov r1, #0
	mov r0, #0x4c
	str r1, [sl, #0x664]
	bl _Znwm
	cmp r0, #0
	beq _02039E8C
	bl sub_02005150
_02039E8C:
	str r0, [sl, #0x664]
	mov r1, #1
	str r1, [r0, #4]
	ldr r1, [sl, #0x1c]
	ldr r0, [sl, #0x664]
	str r1, [r0, #0x10]
	ldr r0, [sl, #0x660]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	ldr r2, [sl, #0x664]
	mov r1, #0
	str r0, [r2, #0x34]
	ldr r0, [sl, #0x660]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldr r2, [sl, #0x664]
	mov r1, #0
	str r0, [r2, #0x2c]
	str r1, [r2, #0x30]
	ldr r0, [sl, #0x660]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldr r2, [sl, #0x664]
	mov r1, #0
	str r0, [r2, #0x38]
	ldr r0, [sl, #0x660]
	ldr r2, [r0]
	ldr r2, [r2, #0x10]
	blx r2
	mov r7, #0
	mov r6, r0
	mov sb, r7
	mov r5, #1
	mov fp, r7
_02039F20:
	mov r0, r6
	mov r1, r5
	mov r2, fp
	bl sub_02008A80
	add r1, sl, r7, lsl #1
	add r1, r1, #0x600
	strh r0, [r1, #0x68]
	ldrh r1, [r1, #0x68]
	mov r0, r6
	mov r2, #0
	bl sub_02008990
	mov r8, #0
	cmp sb, #0
	ble _02039F78
	add r0, sl, r7, lsl #1
	add r4, r0, #0x600
_02039F60:
	ldrh r1, [r4, #0x68]
	mov r0, r6
	bl sub_02008A38
	add r8, r8, #1
	cmp r8, sb
	blt _02039F60
_02039F78:
	add r7, r7, #1
	cmp r7, #8
	add sb, sb, #3
	blt _02039F20
	ldr r4, _0203A00C ; =MAIN_BSS_0210CEC8
	add r0, sl, #0x5a0
	mov r1, #0
	mov r3, #0xc0
_02039F98:
	ldmia r4, {r2, r5, r6}
	mla r6, r5, r2, r6
	mov r2, r6, lsr #0x10
	mov r2, r2, lsl #8
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	str r6, [r4]
	mov r2, r2, lsr #4
	str r2, [r0, #4]
	ldmia r4, {r2, r5, r6}
	mla r6, r5, r2, r6
	mov r2, r6, lsr #0x10
	mul r5, r2, r3
	mov r2, r5, lsr #0x10
	mov r2, r2, lsl #0x10
	add r1, r1, #1
	str r6, [r4]
	mov r2, r2, lsr #4
	str r2, [r0, #8]
	cmp r1, #0x10
	add r0, r0, #0xc
	blt _02039F98
	mov r0, #1
	str r0, [sl, #4]
	mov r1, #0
	str r1, [sl, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0203A004: .word ptr_FUN_020294c0_0208c4a4
_0203A008: .word PTR_LAB_0208da9c
_0203A00C: .word MAIN_BSS_0210CEC8

	arm_func_start sub_0203A010
sub_0203A010: ; 0x0203A010
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x664]
	cmp r0, #0
	beq _0203A03C
	beq _0203A034
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0203A010
_0203A034:
	mov r0, #0
	str r0, [r4, #0x664]
_0203A03C:
	ldr r0, [r4, #0x660]
	cmp r0, #0
	beq _0203A060
	beq _0203A058
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0203A058:
	mov r0, #0
	str r0, [r4, #0x660]
_0203A060:
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start sub_0203A068
sub_0203A068: ; 0x0203A068
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	ldr r2, [r4, #4]
	mov r5, #0
	str r1, [sp]
	mov r6, r5
	mov r0, r5
	cmp r2, #6
	addls pc, pc, r2, lsl #2
	b _0203A168
_0203A090: ; jump table
	b _0203A168 ; case 0
	b _0203A168 ; case 1
	b _0203A0AC ; case 2
	b _0203A0AC ; case 3
	b _0203A100 ; case 4
	b _0203A110 ; case 5
	b _0203A168 ; case 6
	arm_func_end sub_0203A068
_0203A0AC:
	ldr r7, [r4, #0xc]
	cmp r7, #0
	beq _0203A168
	ldr r8, [r4, #8]
	mov r1, r7
	mov r0, r8, lsl #5
	bl _s32_div_f
	add r1, r7, r7, lsr #31
	mov r5, r0
	cmp r8, r1, asr #1
	mov r1, r1, asr #1
	ble _0203A0EC
	sub r0, r8, r1
	mul r0, r5, r0
	bl _s32_div_f
	mov r6, r0
_0203A0EC:
	mov r0, r8, lsl #4
	mul r0, r8, r0
	mul r1, r7, r7
	bl _s32_div_f
	b _0203A168
_0203A100:
	mov r5, #0x20
	mov r6, r5
	mov r0, #0x10
	b _0203A168
_0203A110:
	ldr r7, [r4, #0x14]
	cmp r7, #0
	beq _0203A168
	ldr r8, [r4, #8]
	mov r1, r7
	sub r0, r7, r8
	mov r0, r0, lsl #5
	bl _s32_div_f
	add r1, r7, r7, lsr #31
	mov r5, r0
	cmp r8, r1, asr #1
	mov r1, r1, asr #1
	bge _0203A154
	sub r0, r1, r8
	mul r0, r5, r0
	bl _s32_div_f
	mov r6, r0
_0203A154:
	sub r1, r7, r8
	mov r0, r1, lsl #4
	mul r0, r1, r0
	mul r1, r7, r7
	bl _s32_div_f
_0203A168:
	mov r3, #0
	ldr lr, _0203A3C8 ; =MAIN_BSS_0210CEC8
	mov ip, r4
	mov r2, #2
	mov r1, r3
	mov fp, #0x100000
_0203A180:
	cmp r3, r6
	bgt _0203A218
	str r2, [ip, #0x20]
	ldmia lr, {r7, r8, sb}
	mla r7, r8, r7, sb
	str r7, [lr]
	mov r7, r7, lsr #0x10
	add r7, r7, r7, lsl #2
	mov r7, r7, lsl #6
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #0x10
	mov sl, r7, lsr #4
	str sl, [ip, #0x3c]
	str r1, [ip, #0x40]
	ldmia lr, {r7, r8, sb}
	mla r7, r8, r7, sb
	str r7, [lr]
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #4
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #0x10
	mov r7, r7, lsr #0x10
	add r7, r7, #0x10
	sub r7, sl, r7, lsl #12
	str r7, [ip, #0x44]
	str fp, [ip, #0x48]
	ldmia lr, {r7, r8, sb}
	mla r7, r8, r7, sb
	str r7, [lr]
	mov r8, r7, lsr #0x10
	mov r7, #0x14
	mul r7, r8, r7
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #0x10
	mov r7, r7, lsr #0x10
	add r7, r7, #8
	str r7, [ip, #0x38]
	b _0203A294
_0203A218:
	cmp r3, r5
	bgt _0203A28C
	mov r7, #1
	str r7, [ip, #0x20]
	ldr r7, [ip, #0x40]
	ldr r8, [ip, #0x3c]
	add sl, r7, #0x18000
	sub r8, r8, #0x4000
	cmp sl, #0x100000
	bgt _0203A248
	cmp r8, #0
	bge _0203A270
_0203A248:
	ldmia lr, {r7, r8, sb}
	mla r7, r8, r7, sb
	str r7, [lr]
	mov r7, r7, lsr #0x10
	add r7, r7, r7, lsl #2
	mov r7, r7, lsl #6
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #0x10
	mov sl, #0
	mov r8, r7, lsr #4
_0203A270:
	str r8, [ip, #0x3c]
	sub r7, r8, #0xc000
	str sl, [ip, #0x40]
	str r7, [ip, #0x44]
	add r7, sl, #0x48000
	str r7, [ip, #0x48]
	b _0203A294
_0203A28C:
	mov r7, #0
	str r7, [ip, #0x20]
_0203A294:
	add ip, ip, #0x2c
	add r3, r3, #1
	cmp r3, #0x20
	blt _0203A180
	mov r3, #0
	mov r5, r4
	mov r1, r3
	mov r2, #1
_0203A2B4:
	cmp r3, r0
	strle r2, [r5, #0x5a0]
	strgt r1, [r5, #0x5a0]
	add r3, r3, #1
	cmp r3, #0x10
	add r5, r5, #0xc
	blt _0203A2B4
	ldr r0, [r4, #0x660]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x10]
	blx r2
	mov r5, r0
	mov r6, #0
_0203A2EC:
	add r0, r4, r6, lsl #1
	add r0, r0, #0x600
	ldrh r1, [r0, #0x68]
	mov r0, r5
	bl sub_02008A38
	add r0, r4, r6, lsl #1
	add r0, r0, #0x600
	ldrh r1, [r0, #0x68]
	mov r0, r5
	bl sub_02008860
	cmp r0, #0
	bne _0203A3A8
	add r0, r4, r6, lsl #1
	add r0, r0, #0x600
	ldrh r1, [r0, #0x68]
	mov r0, r5
	bl sub_020089B8
	mov r0, #0xc
	mla r7, r6, r0, r4
	mov r2, #0
	ldr fp, _0203A3C8 ; =MAIN_BSS_0210CEC8
	mov r3, r2
	mov r8, r0
	mov sl, #0xc0
_0203A34C:
	ldmia fp, {r1, sb, ip}
	mla r1, sb, r1, ip
	mla r0, r3, r8, r7
	mov sb, r1, lsr #0x10
	mov sb, sb, lsl #8
	mov sb, sb, lsr #0x10
	mov sb, sb, lsl #0x10
	str r1, [fp]
	mov r1, sb, lsr #4
	str r1, [r0, #0x5a4]
	ldmia fp, {r1, sb, ip}
	mla ip, sb, r1, ip
	mov r1, ip, lsr #0x10
	mul sb, r1, sl
	mov r1, sb, lsr #0x10
	mov r1, r1, lsl #0x10
	add r2, r2, #1
	str ip, [fp]
	mov r1, r1, lsr #4
	add r3, r3, #8
	str r1, [r0, #0x5a8]
	cmp r2, #2
	blt _0203A34C
_0203A3A8:
	add r6, r6, #1
	cmp r6, #8
	blt _0203A2EC
	ldr r1, [sp]
	mov r0, r4
	bl sub_02035334
	ldr r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0203A3C8: .word MAIN_BSS_0210CEC8

	arm_func_start sub_0203A3CC
sub_0203A3CC: ; 0x0203A3CC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xb0
	mov sb, r1
	ldr r5, [sb, #0x1c]
	mov sl, r0
	ldr r4, [sb, #0x20]
	ldr fp, _0203A600 ; =MAIN_BSS_0210CA9C
	mov r7, sl
	str r5, [sp, #0x80]
	str r4, [sp, #0x84]
	add r8, sl, #0x24
	mov r6, #0
	arm_func_end sub_0203A3CC
_0203A3FC:
	ldr r0, [r7, #0x20]
	cmp r0, #0
	beq _0203A528
	ldr lr, [r7, #0x3c]
	ldr r1, [r7, #0x40]
	ldr r2, [r7, #0x44]
	ldr r0, [r7, #0x48]
	ldr ip, [fp]
	ldr r3, [fp, #4]
	str lr, [sp, #0x78]
	str r1, [sp, #0x7c]
	str lr, [sp, #0xa8]
	sub lr, lr, r5
	str r1, [sp, #0xac]
	sub r1, r1, r4
	str r2, [sp, #0x70]
	str r0, [sp, #0x74]
	str r2, [sp, #0xa0]
	sub r2, r2, r5
	str r0, [sp, #0xa4]
	sub r0, r0, r4
	str r5, [sp, #0x68]
	str r4, [sp, #0x6c]
	str lr, [sp, #0x60]
	add lr, lr, ip
	sub lr, lr, #0xa0000
	str r1, [sp, #0x64]
	add r1, r1, r3
	str r5, [sp, #0x58]
	str r4, [sp, #0x5c]
	str r2, [sp, #0x50]
	add r2, r2, ip
	str r0, [sp, #0x54]
	add r0, r0, r3
	str ip, [sp]
	str r3, [sp, #4]
	str ip, [sp, #0x48]
	str ip, [sp, #0x40]
	str r3, [sp, #0x4c]
	str r1, [sp, #0x9c]
	str r3, [sp, #0x44]
	str r2, [sp, #0x90]
	str r0, [sp, #0x94]
	str lr, [sp, #0x98]
	sub r1, r1, #0x80000
	sub ip, r2, #0xa0000
	sub r3, r0, #0x80000
	str lr, [r7, #0x3c]
	str r1, [r7, #0x40]
	str ip, [r7, #0x44]
	mov r0, r8
	str r3, [r7, #0x48]
	ldr r2, [r0]
	str lr, [sp, #0x38]
	ldr r2, [r2, #8]
	str r1, [sp, #0x9c]
	str r1, [sp, #0x3c]
	mov r1, sb
	str ip, [sp, #0x90]
	str ip, [sp, #0x30]
	str r3, [sp, #0x94]
	str r3, [sp, #0x34]
	blx r2
	ldr r3, [sp, #0x78]
	ldr r2, [sp, #0x7c]
	str r3, [r7, #0x3c]
	ldr r1, [sp, #0x70]
	str r2, [r7, #0x40]
	ldr r0, [sp, #0x74]
	str r1, [r7, #0x44]
	str r3, [sp, #0x28]
	str r2, [sp, #0x2c]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [r7, #0x48]
_0203A528:
	add r6, r6, #1
	cmp r6, #0x20
	add r7, r7, #0x2c
	add r8, r8, #0x2c
	blt _0203A3FC
	ldr r0, [sl, #0x660]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x10]
	blx r2
	ldr r5, [sp, #0x80]
	ldr r4, [sp, #0x84]
	mov r6, r0
	mov r8, sl
	mov r7, #0
_0203A564:
	ldr r0, [r8, #0x5a0]
	cmp r0, #0
	beq _0203A5E8
	mov r0, r7, lsl #0x1d
	add r0, sl, r0, lsr #28
	add r0, r0, #0x600
	ldrh r1, [r0, #0x68]
	mov r0, r6
	bl sub_02008828
	ldr r2, [sl, #0x664]
	mov r1, sb
	strh r0, [r2, #0x2a]
	ldr r2, [r8, #0x5a4]
	ldr r0, [r8, #0x5a8]
	sub ip, r2, r5
	sub r2, r0, r4
	sub fp, ip, #0x80000
	sub r3, r2, #0x60000
	str ip, [sp, #0x10]
	ldr r0, [sl, #0x664]
	str r2, [sp, #0x14]
	str fp, [r0, #0x18]
	str r3, [r0, #0x1c]
	ldr r0, [sl, #0x664]
	str r5, [sp, #0x18]
	ldr r2, [r0]
	str r4, [sp, #0x1c]
	str fp, [sp, #0x88]
	str fp, [sp, #8]
	ldr r2, [r2, #8]
	str r3, [sp, #0x8c]
	str r3, [sp, #0xc]
	blx r2
_0203A5E8:
	add r7, r7, #1
	cmp r7, #0x10
	add r8, r8, #0xc
	blt _0203A564
	add sp, sp, #0xb0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0203A600: .word MAIN_BSS_0210CA9C

	arm_func_start sub_0203A604
sub_0203A604: ; 0x0203A604
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x18
	mov r3, #0
	mov lr, r3
	add r2, r0, #0x20
	arm_func_end sub_0203A604
_0203A618:
	mov ip, #0
	ldr r5, _0203A6C8 ; =MAIN_BSS_0210CEC8
	mov r7, #0xc
	mov r6, ip
	mov r4, #0x28
_0203A62C:
	ldr r8, [r5, #8]
	ldmia r5, {r1, sl}
	mla r1, sl, r1, r8
	mla r8, sl, r1, r8
	mov sb, r1, lsr #0x10
	mul sl, sb, r4
	mov sb, r8, lsr #0x10
	mov r1, sl, lsr #0x10
	mov sb, sb, lsl #8
	mov r1, r1, lsl #0x10
	add r1, lr, r1, lsr #4
	str r8, [r5]
	mov sb, sb, lsr #0x10
	mov r8, sb, lsl #0x10
	mov sl, r8, lsr #4
	add sb, sl, #0x20000
	str r1, [r2, #0x1c]
	str sl, [r2, #0x20]
	str r1, [r2, #0x24]
	str sb, [r2, #0x28]
	str r7, [r2, #0x18]
	ldr r8, [r0, #0x1c]
	add ip, ip, #1
	str r8, [r2, #0x14]
	str r1, [sp, #0x10]
	str r1, [sp, #8]
	str sl, [sp, #0xc]
	str sb, [sp, #0x14]
	str r1, [sp]
	str sb, [sp, #4]
	cmp ip, #4
	str r6, [r2], #0x2c
	blt _0203A62C
	add r3, r3, #1
	cmp r3, #8
	add lr, lr, #0x28000
	blt _0203A618
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0203A6C8: .word MAIN_BSS_0210CEC8

	arm_func_start sub_0203A6CC
sub_0203A6CC: ; 0x0203A6CC
	stmdb sp!, {r4, lr}
	ldr r1, _0203A704 ; =ptr_FUN_0203a734_0208db24
	mov r4, r0
	str r1, [r4]
	bl sub_0203A010
	ldr r3, _0203A708 ; =sub_02035C8C
	add r0, r4, #0x20
	mov r1, #0x20
	mov r2, #0x2c
	bl __cxa_vec_cleanup
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203A704: .word ptr_FUN_0203a734_0208db24
_0203A708: .word sub_02035C8C
	arm_func_end sub_0203A6CC

	arm_func_start sub_0203A70C
sub_0203A70C: ; 0x0203A70C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020354E0
	mov r4, r0
	mov r0, r5
	bl sub_0203A604
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0203A70C

	arm_func_start sub_0203A72C
sub_0203A72C: ; 0x0203A72C
	mov r0, #2
	bx lr
	arm_func_end sub_0203A72C

	arm_func_start sub_0203A734
sub_0203A734: ; 0x0203A734
	stmdb sp!, {r4, lr}
	ldr r1, _0203A764 ; =ptr_FUN_0203a734_0208db24
	mov r4, r0
	str r1, [r4]
	bl sub_0203A010
	ldr r3, _0203A768 ; =sub_02035C8C
	add r0, r4, #0x20
	mov r1, #0x20
	mov r2, #0x2c
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203A764: .word ptr_FUN_0203a734_0208db24
_0203A768: .word sub_02035C8C
	arm_func_end sub_0203A734

	arm_func_start sub_0203A76C
sub_0203A76C: ; 0x0203A76C
	stmdb sp!, {r4, lr}
	ldr r1, _0203A838 ; =PTR_LAB_0208d610
	mov r4, r0
	str r1, [r4]
	mov r1, #4
	ldr r0, _0203A83C ; =ptr_FUN_0203aa14_0208db68
	str r1, [r4, #0x1c]
	str r0, [r4]
	mov r1, #0
	str r1, [r4, #0x20]
	str r1, [r4, #0x24]
	str r1, [r4, #0x28]
	ldr r0, _0203A840 ; =DAT_0208d694
	str r1, [r4, #0x2c]
	str r0, [r4, #0x30]
	str r1, [r4, #0x34]
	add r0, r4, #0x4c
	str r1, [r4, #0x38]
	bl sub_02003938
	ldr r1, _0203A844 ; =ptr_FUN_02036908_0208d660
	mov r0, r4
	str r1, [r4, #0x4c]
	mov r1, #0
	str r1, [r4, #0x64]
	bl sub_0203A9C4
	mov r0, #0x10
	str r0, [r4, #0x40]
	mov r0, #0x1f
	strh r0, [r4, #0x54]
	mov lr, #0
	str lr, [r4, #0x60]
	ldrh r1, [r4, #0x54]
	ldr ip, [r4, #0x40]
	ldr r0, _0203A848 ; =MAIN_BSS_0210CAA4
	and r3, r1, #0x1f
	mov r2, r1, asr #5
	mov r1, r1, asr #0xa
	str r3, [r0]
	and r2, r2, #0x1f
	str r2, [r0, #4]
	and r2, r1, #0x1f
	ldr r1, _0203A84C ; =MAIN_BSS_0210CA90
	str r2, [r0, #8]
	ldr r0, _0203A850 ; =MAIN_BSS_0210CA8C
	str ip, [r1]
	str lr, [r0]
	str lr, [r4, #0x44]
	mov r1, #0x1e
	mov r0, r4
	str r1, [r4, #0x48]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203A838: .word PTR_LAB_0208d610
_0203A83C: .word ptr_FUN_0203aa14_0208db68
_0203A840: .word DAT_0208d694
_0203A844: .word ptr_FUN_02036908_0208d660
_0203A848: .word MAIN_BSS_0210CAA4
_0203A84C: .word MAIN_BSS_0210CA90
_0203A850: .word MAIN_BSS_0210CA8C
	arm_func_end sub_0203A76C

	arm_func_start sub_0203A854
sub_0203A854: ; 0x0203A854
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02035334
	ldr r2, _0203A928 ; =MAIN_BSS_0210CA8C
	ldr r0, [r2]
	cmp r0, #0
	beq _0203A8A0
	ldr r1, _0203A92C ; =MAIN_BSS_0210CAA4
	ldr r0, _0203A930 ; =MAIN_BSS_0210CA90
	ldr ip, [r1]
	ldmib r1, {r3, lr}
	orr r1, ip, r3, lsl #5
	orr r1, r1, lr, lsl #10
	strh r1, [r5, #0x54]
	ldr r1, [r0]
	mov r0, #0
	str r1, [r5, #0x40]
	str r0, [r2]
	arm_func_end sub_0203A854
_0203A8A0:
	ldr r0, [r5, #4]
	cmp r0, #3
	cmpne r0, #4
	cmpne r0, #5
	movne r0, #0
	strne r0, [r5, #0x60]
	ldr r0, [r5, #0x44]
	cmp r4, #0x3c
	addeq r0, r0, #1
	addne r0, r0, #2
	str r0, [r5, #0x44]
	ldr r1, [r5, #0x44]
	ldr r0, [r5, #0x48]
	cmp r1, r0
	movge r0, #0
	strge r0, [r5, #0x44]
	ldr r3, [r5, #0x48]
	ldr r2, [r5, #0x44]
	add r0, r3, r3, lsr #31
	cmp r2, r0, asr #1
	mov r1, r0, asr #1
	bge _0203A904
	mov r0, r2, lsl #0xc
	bl _s32_div_f
	b _0203A910
_0203A904:
	sub r0, r3, r2
	mov r0, r0, lsl #0xc
	bl _s32_div_f
_0203A910:
	ldr r1, [r5, #0x40]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r5, #0x60]
	ldr r0, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0203A928: .word MAIN_BSS_0210CA8C
_0203A92C: .word MAIN_BSS_0210CAA4
_0203A930: .word MAIN_BSS_0210CA90

	arm_func_start sub_0203A934
sub_0203A934: ; 0x0203A934
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x60]
	mov r4, r1
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl sub_020355B4
	ldr r1, [r5, #0x1c]
	mov r0, #0
	str r1, [r5, #0x5c]
	str r0, [r5, #0x68]
	str r0, [r5, #0x6c]
	mov r0, #0x100000
	str r0, [r5, #0x70]
	str r0, [r5, #0x74]
	add r0, r5, #0x20
	bl sub_020364DC
	ldr r0, [r5, #0x1c]
	ldr r2, [r5, #0x60]
	add r0, r0, #3
	mov r0, r0, lsl #0x18
	orr r1, r0, #0xc0
	ldr r0, _0203A9BC ; =0x040004A4
	orr r1, r1, r2, lsl #16
	str r1, [r0]
	add r0, r5, #0x4c
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	ldr r0, _0203A9C0 ; =0x04000448
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0203A9BC: .word 0x040004A4
_0203A9C0: .word 0x04000448
	arm_func_end sub_0203A934

	arm_func_start sub_0203A9C4
sub_0203A9C4: ; 0x0203A9C4
	mov r0, #1
	bx lr
	arm_func_end sub_0203A9C4

	arm_func_start sub_0203A9CC
sub_0203A9CC: ; 0x0203A9CC
	mov r0, #1
	bx lr
	arm_func_end sub_0203A9CC

	arm_func_start sub_0203A9D4
sub_0203A9D4: ; 0x0203A9D4
	stmdb sp!, {r4, lr}
	ldr r1, _0203AA08 ; =ptr_FUN_0203aa14_0208db68
	mov r4, r0
	str r1, [r4]
	bl sub_0203A9CC
	add r0, r4, #0x4c
	bl sub_02003984
	add r0, r4, #0x20
	bl sub_02036488
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203AA08: .word ptr_FUN_0203aa14_0208db68
	arm_func_end sub_0203A9D4

	arm_func_start sub_0203AA0C
sub_0203AA0C: ; 0x0203AA0C
	mov r0, #0xd
	bx lr
	arm_func_end sub_0203AA0C

	arm_func_start sub_0203AA14
sub_0203AA14: ; 0x0203AA14
	stmdb sp!, {r4, lr}
	ldr r1, _0203AA40 ; =ptr_FUN_0203aa14_0208db68
	mov r4, r0
	str r1, [r4]
	bl sub_0203A9CC
	add r0, r4, #0x4c
	bl sub_02003984
	add r0, r4, #0x20
	bl sub_02036488
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203AA40: .word ptr_FUN_0203aa14_0208db68
	arm_func_end sub_0203AA14

	arm_func_start sub_0203AA44
sub_0203AA44: ; 0x0203AA44
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0203AB08 ; =PTR_LAB_0208d610
	mov r4, r0
	str r1, [r4]
	mov r1, #4
	str r1, [r4, #0x1c]
	ldr r0, _0203AB0C ; =ptr_FUN_0203b314_0208dbb4
	mov r1, #0
	str r0, [r4]
	str r1, [r4, #0x538]
	str r1, [r4, #0x53c]
	str r1, [r4, #0x540]
	ldr r0, _0203AB10 ; =DAT_0208d694
	str r1, [r4, #0x544]
	str r0, [r4, #0x548]
	add r5, r4, #0x154
	str r1, [r4, #0x54c]
	add r0, r5, #0x400
	str r1, [r4, #0x550]
	bl sub_02003938
	ldr r1, _0203AB14 ; =ptr_FUN_02036908_0208d660
	mov r0, r4
	str r1, [r4, #0x554]
	mov r1, #0
	str r1, [r5, #0x418]
	bl sub_0203AFBC
	ldr r1, _0203AB18 ; =0x00007E10
	add r0, r4, #0x500
	strh r1, [r0, #0x5c]
	mov lr, #0
	mov ip, #0xc
	str lr, [r4, #0x568]
	str ip, [r4, #0x590]
	ldrh r1, [r0, #0x5c]
	ldr r0, _0203AB1C ; =MAIN_BSS_0210CAA4
	ldr r2, _0203AB20 ; =MAIN_BSS_0210CA90
	and r5, r1, #0x1f
	mov r3, r1, asr #5
	mov r1, r1, asr #0xa
	str r5, [r0]
	and r3, r3, #0x1f
	str r3, [r0, #4]
	and r3, r1, #0x1f
	str r3, [r0, #8]
	ldr r1, _0203AB24 ; =MAIN_BSS_0210CA8C
	mov r0, r4
	str ip, [r2]
	str lr, [r1]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0203AB08: .word PTR_LAB_0208d610
_0203AB0C: .word ptr_FUN_0203b314_0208dbb4
_0203AB10: .word DAT_0208d694
_0203AB14: .word ptr_FUN_02036908_0208d660
_0203AB18: .word 0x00007E10
_0203AB1C: .word MAIN_BSS_0210CAA4
_0203AB20: .word MAIN_BSS_0210CA90
_0203AB24: .word MAIN_BSS_0210CA8C
	arm_func_end sub_0203AA44

	arm_func_start sub_0203AB28
sub_0203AB28: ; 0x0203AB28
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	bl sub_02035334
	ldr r2, _0203ADBC ; =MAIN_BSS_0210CA8C
	ldr r0, [r2]
	cmp r0, #0
	beq _0203AB74
	ldr r1, _0203ADC0 ; =MAIN_BSS_0210CAA4
	add r0, r4, #0x500
	ldr r5, [r1]
	ldmib r1, {r3, r6}
	orr r1, r5, r3, lsl #5
	orr r3, r1, r6, lsl #10
	strh r3, [r0, #0x5c]
	ldr r1, _0203ADC4 ; =MAIN_BSS_0210CA90
	mov r0, #0
	ldr r1, [r1]
	str r1, [r4, #0x590]
	str r0, [r2]
	arm_func_end sub_0203AB28
_0203AB74:
	ldr r0, [r4, #0x20]
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
	mov r7, #0
	ldr r6, _0203ADC8 ; =DAT_0208db84
	ldr lr, _0203ADCC ; =MAIN_BSS_0210CA84
	ldr ip, _0203ADD0 ; =MAIN_BSS_0210CEC8
	ldr r3, _0203ADD4 ; =MAIN_BSS_0210CA9C
	add r8, r4, #0x38
	mov r0, #0xc
	mov r2, r7
	mov r1, #0xcc
_0203ABA8:
	ldrb sb, [r8, #0x20]
	ldr r5, [lr]
	add r5, sb, r5
	strb r5, [r8, #0x20]
	ldr r5, [r8]
	cmp r5, #0
	addlt r5, r5, #0x140000
	strlt r5, [r8]
	blt _0203ABD8
	cmp r5, #0x140000
	subgt r5, r5, #0x140000
	strgt r5, [r8]
_0203ABD8:
	ldr sl, [r8, #0x14]
	ldr sb, [lr]
	ldr r5, [r8, #4]
	mul fp, sl, sb
	mov sb, fp, asr #0x1f
	mov sb, sb, lsl #0xc
	mov sl, fp, lsl #0xc
	orr sb, sb, fp, lsr #20
	mov sl, sl, lsr #0xc
	orr sl, sl, sb, lsl #20
	adds r5, r5, sl
	str r5, [r8, #4]
	bpl _0203AC1C
	ldr r5, [r8, #4]
	add r5, r5, #0x100000
	str r5, [r8, #4]
	b _0203AC68
_0203AC1C:
	cmp r5, #0x100000
	ble _0203AC68
	ldr r5, [r8, #4]
	sub r5, r5, #0x100000
	str r5, [r8, #4]
	ldmia ip, {r5, sb, sl}
	mla sl, sb, r5, sl
	mov r5, sl, lsr #0x10
	str sl, [ip]
	mov r5, r5, lsl #6
	mov r5, r5, lsr #0x10
	ldr sb, [r8, #8]
	mov r5, r5, lsl #0x10
	add r5, sb, r5, lsr #4
	str r5, [r8]
	ldrb r5, [r8, #0x22]
	ldr r5, [r6, r5, lsl #2]
	str r5, [r8, #0x1c]
	str r5, [r8, #0x14]
_0203AC68:
	ldr sb, [r8]
	ldr r5, [r3]
	add r5, sb, r5
	str r5, [r8]
	ldr sb, [r8, #4]
	ldr r5, [r3, #4]
	add r5, sb, r5
	str r5, [r8, #4]
	ldrh sb, [r8, #0x24]
	ldr r5, [lr]
	add r5, sb, r5, lsl #8
	strh r5, [r8, #0x24]
	ldrb sb, [r8, #0x21]
	sub r5, sb, #1
	strb r5, [r8, #0x21]
	cmp sb, #0
	bne _0203AD40
	ldmia ip, {r5, sb, sl}
	mla r5, sb, r5, sl
	mov sl, r5, lsr #0x10
	mov sb, #0xa
	mul sb, sl, sb
	mov sb, sb, lsr #0x10
	mov sb, sb, lsl #0x10
	mov sb, sb, lsr #0x10
	str r5, [ip]
	add r5, sb, #0xa
	strb r5, [r8, #0x21]
	ldmia ip, {r5, sb, sl}
	mla r5, sb, r5, sl
	mov sb, r5, lsr #0x10
	mul sl, sb, r0
	mov sb, sl, lsr #0x10
	mov sb, sb, lsl #0x10
	mov sb, sb, lsr #4
	umull fp, sl, sb, r1
	str r5, [ip]
	mla sl, sb, r2, sl
	mov r5, sb, asr #0x1f
	mla sl, r5, r1, sl
	mov fp, fp, lsr #0xc
	orr fp, fp, sl, lsl #20
	add r5, fp, #0x33
	ldr sb, [r8, #0x18]
	add r5, r5, #0xb00
	smull fp, sl, sb, r5
	mov sb, fp, lsr #0xc
	orr sb, sb, sl, lsl #20
	str sb, [r8, #0x10]
	ldr sb, [r8, #0x1c]
	smull sl, r5, sb, r5
	mov sb, sl, lsr #0xc
	orr sb, sb, r5, lsl #20
	str sb, [r8, #0x14]
_0203AD40:
	add r7, r7, #1
	cmp r7, #0x20
	add r8, r8, #0x28
	blt _0203ABA8
	ldr r0, [r4, #4]
	cmp r0, #3
	beq _0203AD70
	cmp r0, #4
	beq _0203AD88
	cmp r0, #5
	beq _0203AD94
	b _0203ADAC
_0203AD70:
	ldr r1, [r4, #0x590]
	ldr r0, [r4, #0x18]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r4, #0x568]
	b _0203ADB4
_0203AD88:
	ldr r0, [r4, #0x590]
	str r0, [r4, #0x568]
	b _0203ADB4
_0203AD94:
	ldr r1, [r4, #0x590]
	ldr r0, [r4, #0x18]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r4, #0x568]
	b _0203ADB4
_0203ADAC:
	mov r0, #0
	str r0, [r4, #0x568]
_0203ADB4:
	ldr r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0203ADBC: .word MAIN_BSS_0210CA8C
_0203ADC0: .word MAIN_BSS_0210CAA4
_0203ADC4: .word MAIN_BSS_0210CA90
_0203ADC8: .word DAT_0208db84
_0203ADCC: .word MAIN_BSS_0210CA84
_0203ADD0: .word MAIN_BSS_0210CEC8
_0203ADD4: .word MAIN_BSS_0210CA9C

	arm_func_start sub_0203ADD8
sub_0203ADD8: ; 0x0203ADD8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x30
	mov r7, r0
	ldr r0, [r7, #0x20]
	mov fp, r1
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0x10]
	blx r2
	ldr r2, [fp, #0x1c]
	ldr r1, [fp, #0x20]
	ldr r0, [r7, #4]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	cmp r0, #3
	beq _0203AE2C
	cmp r0, #4
	beq _0203AE3C
	cmp r0, #5
	beq _0203AE44
	b _0203AE54
	arm_func_end sub_0203ADD8
_0203AE2C:
	ldr r0, [r7, #0x18]
	rsb r0, r0, r0, lsl #5
	mov r6, r0, asr #0xc
	b _0203AE58
_0203AE3C:
	mov r6, #0x1f
	b _0203AE58
_0203AE44:
	ldr r0, [r7, #0x18]
	rsb r0, r0, r0, lsl #5
	mov r6, r0, asr #0xc
	b _0203AE58
_0203AE54:
	mov r6, #0
_0203AE58:
	ldr r0, [sp, #0x20]
	add r5, r7, #0x38
	str r0, [sp]
	ldr r0, [sp, #0x24]
	mov r4, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	str r0, [sp, #0x1c]
_0203AE80:
	ldr r2, [r7, #0x24]
	ldr r0, _0203AFB0 ; =0x00007FFF
	mov r1, fp
	strh r0, [r2, #8]
	ldr r0, [r7, #0x24]
	str r6, [r0, #0x14]
	ldrb r2, [r5, #0x22]
	ldr r0, [r7, #0x24]
	strh r2, [r0, #0x2a]
	ldr r8, [r5]
	ldr r0, [sp]
	ldrh r2, [r5, #0x24]
	sub sl, r8, r0
	ldr r3, [r5, #4]
	ldr r0, [sp, #4]
	str sl, [sp, #0x10]
	sub r3, r3, r0
	mov r0, r2, asr #4
	mov r2, r0, lsl #2
	ldr r0, _0203AFB4 ; =FX_SinCosTable_
	str r3, [sp, #0x14]
	ldrsh lr, [r0, r2]
	mov r0, #0x6000
	sub r3, r3, #0x80000
	umull sb, r8, lr, r0
	mov ip, lr, asr #0x1f
	mov r0, #0x6000
	mla r8, ip, r0, r8
	mov r0, sb, lsr #0xc
	orr r0, r0, r8, lsl #20
	add r0, r0, #0xa0000
	sub r0, sl, r0
	ldr r2, [r7, #0x24]
	str r0, [sp, #0x28]
	str r0, [r2, #0x18]
	str r3, [r2, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r7, #0x24]
	str r3, [sp, #0x2c]
	ldr r2, [r0]
	str r3, [sp, #0xc]
	ldr r2, [r2, #8]
	blx r2
	add r4, r4, #1
	add r5, r5, #0x28
	cmp r4, #0x20
	blt _0203AE80
	ldr r0, [r7, #0x568]
	cmp r0, #0
	addeq sp, sp, #0x30
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r7
	mov r1, fp
	bl sub_020355B4
	ldr r1, [r7, #0x1c]
	add r0, r7, #0x138
	str r1, [r7, #0x564]
	mov r1, #0
	str r1, [r7, #0x570]
	str r1, [r7, #0x574]
	mov r1, #0x100000
	str r1, [r7, #0x578]
	add r0, r0, #0x400
	str r1, [r7, #0x57c]
	bl sub_020364DC
	add r0, r7, #0x154
	add r0, r0, #0x400
	ldr r2, [r0]
	mov r1, fp
	ldr r2, [r2, #8]
	blx r2
	ldr r0, _0203AFB8 ; =0x04000448
	mov r1, #0
	str r1, [r0]
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0203AFB0: .word 0x00007FFF
_0203AFB4: .word FX_SinCosTable_
_0203AFB8: .word 0x04000448

	arm_func_start sub_0203AFBC
sub_0203AFBC: ; 0x0203AFBC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	mov r0, #0x34
	bl _Znwm
	movs r5, r0
	beq _0203AFF8
	ldr r1, _0203B230 ; =ptr_FUN_020294c0_0208c4a4
	add r0, r5, #4
	str r1, [r5]
	bl sub_02007AA4
	mov r1, #0
	str r1, [r5, #0x2c]
	ldr r0, _0203B234 ; =PTR_LAB_0208da9c
	str r1, [r5, #0x30]
	str r0, [r5]
	arm_func_end sub_0203AFBC
_0203AFF8:
	mov r0, r5
	mov r1, #4
	str r5, [r4, #0x20]
	bl sub_02035FE8
	mov r0, #0x4c
	bl _Znwm
	cmp r0, #0
	beq _0203B01C
	bl sub_02005150
_0203B01C:
	str r0, [r4, #0x24]
	mov r1, #1
	str r1, [r0, #4]
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x24]
	str r1, [r0, #0x10]
	ldr r0, [r4, #0x20]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	ldr r2, [r4, #0x24]
	mov r1, #0
	str r0, [r2, #0x34]
	ldr r0, [r4, #0x20]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldr r2, [r4, #0x24]
	mov r1, #0
	str r0, [r2, #0x2c]
	str r1, [r2, #0x30]
	ldr r0, [r4, #0x20]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldr r2, [r4, #0x24]
	mov r1, #0
	str r0, [r2, #0x38]
	ldr r0, [r4, #0x20]
	ldr r2, [r0]
	ldr r2, [r2, #0x10]
	blx r2
	mov sb, #0
	mov r8, r0
	mov r7, #1
	mov r6, sb
	mov r5, sb
_0203B0B0:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl sub_02008A80
	add r1, r4, sb, lsl #1
	strh r0, [r1, #0x28]
	ldrh r1, [r1, #0x28]
	mov r0, r8
	mov r2, r5
	bl sub_02008990
	add sb, sb, #1
	cmp sb, #8
	blt _0203B0B0
	mov lr, #0
	mov r5, lr
	add ip, r4, #0x38
_0203B0F0:
	ldr r1, _0203B238 ; =0x55555556
	mov r4, #0
	smull r0, r3, r1, lr
	add r3, r3, lr, lsr #31
	mov r2, #3
	smull r0, r1, r2, r3
	sub r3, lr, r0
	rsb r0, r3, #2
	and r3, r0, #0xff
	ldr r1, _0203B23C ; =DAT_0208db84
	ldr r0, _0203B240 ; =MAIN_BSS_0210CEC8
	mov r6, r4
	mov r2, r4
	mov r8, #0x18
	mov sb, #0xa
_0203B12C:
	ldmia r0, {r7, sl, fp}
	mla r7, sl, r7, fp
	str r7, [r0]
	strb r3, [ip, #0x22]
	ldmia r0, {r7, sl, fp}
	mla fp, sl, r7, fp
	mov r7, fp, lsr #0x10
	mov r7, r7, lsl #6
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #0x10
	str fp, [r0]
	add r7, r6, r7, lsr #4
	str r7, [ip]
	ldmia r0, {r7, sl, fp}
	mla fp, sl, r7, fp
	mov r7, fp, lsr #0x10
	mul sl, r7, r8
	mov r7, sl, lsr #0x10
	mov r7, r7, lsl #0x10
	str fp, [r0]
	add r7, r5, r7, lsr #4
	str r7, [ip, #4]
	str r6, [ip, #8]
	ldmia r0, {r7, sl, fp}
	mla r7, sl, r7, fp
	str r7, [r0]
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #4
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #0x10
	mov r7, r7, lsr #4
	strh r7, [ip, #0x24]
	ldmia r0, {r7, sl, fp}
	mla r7, sl, r7, fp
	str r7, [r0]
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #8
	mov r7, r7, lsr #0x10
	strb r7, [ip, #0x20]
	str r2, [ip, #0x10]
	ldrb r7, [ip, #0x22]
	add r4, r4, #1
	add r6, r6, #0x40000
	ldr r7, [r1, r7, lsl #2]
	cmp r4, #4
	str r7, [ip, #0x1c]
	str r7, [ip, #0x14]
	ldmia r0, {r7, sl, fp}
	mla r7, sl, r7, fp
	str r7, [r0]
	mov r7, r7, lsr #0x10
	mul sl, r7, sb
	mov r7, sl, lsr #0x10
	mov r7, r7, lsl #0x10
	mov r7, r7, lsr #0x10
	add r7, r7, #0xa
	strb r7, [ip, #0x21]
	add ip, ip, #0x28
	blt _0203B12C
	add lr, lr, #1
	cmp lr, #8
	add r5, r5, #0x18000
	blt _0203B0F0
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0203B230: .word ptr_FUN_020294c0_0208c4a4
_0203B234: .word PTR_LAB_0208da9c
_0203B238: .word 0x55555556
_0203B23C: .word DAT_0208db84
_0203B240: .word MAIN_BSS_0210CEC8

	arm_func_start sub_0203B244
sub_0203B244: ; 0x0203B244
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x138
	add r0, r0, #0x400
	bl sub_02036488
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0203B27C
	beq _0203B274
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0203B244
_0203B274:
	mov r0, #0
	str r0, [r4, #0x24]
_0203B27C:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0203B2A0
	beq _0203B298
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0203B298:
	mov r0, #0
	str r0, [r4, #0x20]
_0203B2A0:
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start sub_0203B2A8
sub_0203B2A8: ; 0x0203B2A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020354E0
	ldr r2, [r4, #0x590]
	ldr r1, [r4, #0x18]
	mul r1, r2, r1
	mov r1, r1, asr #0xc
	str r1, [r4, #0x568]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0203B2A8

	arm_func_start sub_0203B2CC
sub_0203B2CC: ; 0x0203B2CC
	stmdb sp!, {r4, lr}
	ldr r1, _0203B308 ; =ptr_FUN_0203b314_0208dbb4
	mov r4, r0
	str r1, [r4]
	bl sub_0203B244
	add r0, r4, #0x154
	add r0, r0, #0x400
	bl sub_02003984
	add r0, r4, #0x138
	add r0, r0, #0x400
	bl sub_02036488
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203B308: .word ptr_FUN_0203b314_0208dbb4
	arm_func_end sub_0203B2CC

	arm_func_start sub_0203B30C
sub_0203B30C: ; 0x0203B30C
	mov r0, #0xe
	bx lr
	arm_func_end sub_0203B30C

	arm_func_start sub_0203B314
sub_0203B314: ; 0x0203B314
	stmdb sp!, {r4, lr}
	ldr r1, _0203B348 ; =ptr_FUN_0203b314_0208dbb4
	mov r4, r0
	str r1, [r4]
	bl sub_0203B244
	add r0, r4, #0x154
	add r0, r0, #0x400
	bl sub_02003984
	add r0, r4, #0x138
	add r0, r0, #0x400
	bl sub_02036488
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203B348: .word ptr_FUN_0203b314_0208dbb4
	arm_func_end sub_0203B314

	arm_func_start sub_0203B34C
sub_0203B34C: ; 0x0203B34C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _0203B47C ; =PTR_LAB_0208d610
	mov r4, r0
	str r2, [r4]
	mov r2, #4
	str r2, [r4, #0x1c]
	ldr r0, _0203B480 ; =ptr_FUN_0203bcc4_0208dbf8
	mov r2, #0
	str r0, [r4]
	str r2, [r4, #0x20]
	str r2, [r4, #0x24]
	str r2, [r4, #0x28]
	ldr r0, _0203B484 ; =DAT_0208d694
	str r2, [r4, #0x2c]
	str r0, [r4, #0x30]
	str r2, [r4, #0x34]
	str r2, [r4, #0x38]
	str r2, [r4, #0x3c]
	str r2, [r4, #0x40]
	str r2, [r4, #0x44]
	str r2, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r2, [r4, #0x50]
	add r0, r4, #0x68
	mov r5, r1
	str r2, [r4, #0x54]
	bl sub_02003938
	ldr r1, _0203B488 ; =ptr_FUN_02036908_0208d660
	mov r0, #0
	str r1, [r4, #0x68]
	str r0, [r4, #0x80]
	ldr ip, _0203B48C ; =sub_020368D8
	ldr r3, _0203B490 ; =sub_02037FF0
	add r0, r4, #0xa4
	mov r1, #0x10
	mov r2, #0x5c
	str ip, [sp]
	bl __cxa_vec_ctor
	mov r0, r4
	str r5, [r4, #0x58]
	bl sub_0203BB78
	mov r0, #0
	mov r2, r4
	mov r1, r0
	arm_func_end sub_0203B34C
_0203B3FC:
	strh r1, [r2, #0xac]
	add r0, r0, #1
	str r1, [r2, #0xb8]
	cmp r0, #0x10
	add r2, r2, #0x5c
	blt _0203B3FC
	mov r2, r1
_0203B418:
	add r0, r4, r1, lsl #1
	add r0, r0, #0x600
	add r1, r1, #1
	strh r2, [r0, #0x64]
	cmp r1, #3
	add r2, r2, #0x300
	blt _0203B418
	mov ip, #0
	strh ip, [r4, #0x70]
	str ip, [r4, #0x7c]
	mov r0, #0xa
	str r0, [r4, #0x5c]
	mov r1, #8
	ldr r0, _0203B494 ; =MAIN_BSS_0210CAA4
	str r1, [r4, #0x60]
	mov r3, #0x1f
	str r3, [r0]
	str r3, [r0, #4]
	ldr r2, _0203B498 ; =MAIN_BSS_0210CA90
	str r3, [r0, #8]
	ldr r1, _0203B49C ; =MAIN_BSS_0210CA8C
	mov r0, r4
	str r3, [r2]
	str ip, [r1]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0203B47C: .word PTR_LAB_0208d610
_0203B480: .word ptr_FUN_0203bcc4_0208dbf8
_0203B484: .word DAT_0208d694
_0203B488: .word ptr_FUN_02036908_0208d660
_0203B48C: .word sub_020368D8
_0203B490: .word sub_02037FF0
_0203B494: .word MAIN_BSS_0210CAA4
_0203B498: .word MAIN_BSS_0210CA90
_0203B49C: .word MAIN_BSS_0210CA8C

	arm_func_start sub_0203B4A0
sub_0203B4A0: ; 0x0203B4A0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldr r0, [r4, #0x64]
	mov r5, r1
	cmp r0, #0
	beq _0203B4CC
	subs r0, r0, #1
	str r0, [r4, #0x64]
	bne _0203B4CC
	add r0, r4, #0x20
	bl sub_02036434
	arm_func_end sub_0203B4A0
_0203B4CC:
	mov r0, r4
	mov r1, r5
	bl sub_02035334
	mov r1, #0
	ldr ip, _0203B5FC ; =MAIN_BSS_0210CAA4
	ldr r3, _0203B600 ; =MAIN_BSS_0210CA90
	ldr lr, _0203B604 ; =MAIN_BSS_0210CA8C
	mov r2, r4
	mov r0, r1
	mov r5, r1
_0203B4F4:
	ldr r6, [lr]
	cmp r6, #0
	beq _0203B520
	ldr r7, [ip]
	ldmib ip, {r6, r8}
	orr r6, r7, r6, lsl #5
	orr r6, r6, r8, lsl #10
	strh r6, [r2, #0xac]
	ldr r6, [r3]
	str r6, [r4, #0x5c]
	str r0, [lr]
_0203B520:
	ldr r6, [r4, #4]
	cmp r6, #3
	beq _0203B540
	cmp r6, #4
	beq _0203B558
	cmp r6, #5
	beq _0203B564
	b _0203B57C
_0203B540:
	ldr r7, [r4, #0x5c]
	ldr r6, [r4, #0x18]
	mul r6, r7, r6
	mov r6, r6, asr #0xc
	str r6, [r2, #0xb8]
	b _0203B580
_0203B558:
	ldr r6, [r4, #0x5c]
	str r6, [r2, #0xb8]
	b _0203B580
_0203B564:
	ldr r7, [r4, #0x5c]
	ldr r6, [r4, #0x18]
	mul r6, r7, r6
	mov r6, r6, asr #0xc
	str r6, [r2, #0xb8]
	b _0203B580
_0203B57C:
	str r5, [r2, #0xb8]
_0203B580:
	add r1, r1, #1
	cmp r1, #0x10
	add r2, r2, #0x5c
	blt _0203B4F4
	ldr r0, [r4, #4]
	cmp r0, #3
	beq _0203B5B0
	cmp r0, #4
	beq _0203B5C8
	cmp r0, #5
	beq _0203B5D4
	b _0203B5EC
_0203B5B0:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x18]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r4, #0x7c]
	b _0203B5F4
_0203B5C8:
	ldr r0, [r4, #0x60]
	str r0, [r4, #0x7c]
	b _0203B5F4
_0203B5D4:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x18]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r4, #0x7c]
	b _0203B5F4
_0203B5EC:
	mov r0, #0
	str r0, [r4, #0x7c]
_0203B5F4:
	ldr r0, [r4, #4]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0203B5FC: .word MAIN_BSS_0210CAA4
_0203B600: .word MAIN_BSS_0210CA90
_0203B604: .word MAIN_BSS_0210CA8C

	arm_func_start sub_0203B608
sub_0203B608: ; 0x0203B608
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sl, r0
	ldr r0, [sl, #0xb8]
	str r1, [sp]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	mov sb, r0
	sub r0, r0, #0x48
	str r0, [sp, #0x10]
	mov r0, #0x10
	str r0, [sp, #0xc]
	arm_func_end sub_0203B608
_0203B648:
	ldr r0, [sp, #0x14]
	mov r1, #0x5c
	mla r5, r0, r1, sl
	ldr r0, [sp, #0x10]
	mov r4, #0
	mov r2, r0, lsl #0xc
	sub r0, r2, #0x18000
	str r0, [sp, #8]
	add r0, r2, #0x18000
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r7, r4
	sub r6, r1, #0xbc
	mov fp, r0, lsl #0xc
	mov r8, #0x10
_0203B684:
	ldr r1, [sl, #0x1c]
	mov r0, r6, lsl #0xc
	str r1, [r5, #0xb4]
	sub r1, r0, #0x20000
	str r1, [r5, #0xc8]
	add r0, r0, #0x20000
	str r1, [r5, #0xc0]
	str r0, [r5, #0xd8]
	str r0, [r5, #0xd0]
	ldr r0, [sp, #8]
	str r0, [r5, #0xdc]
	str r0, [r5, #0xc4]
	ldr r0, [sp, #4]
	str r0, [r5, #0xd4]
	str r0, [r5, #0xcc]
	str r7, [r5, #0xe8]
	str r7, [r5, #0xe0]
	mov r0, r8, lsl #0xc
	str r0, [r5, #0xf8]
	str r0, [r5, #0xf0]
	str sb, [r5, #0xfc]
	str sb, [r5, #0xe4]
	str fp, [r5, #0xf4]
	add r0, sl, #0x20
	str fp, [r5, #0xec]
	bl sub_020364DC
	add r4, r4, #1
	add r5, r5, #0x5c
	add r6, r6, #0x40
	add r7, r7, #0x10000
	add r8, r8, #0x10
	cmp r4, #4
	blt _0203B684
	ldr r0, [sp, #0x18]
	add sb, sb, #0x10000
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	ldr r0, [sp, #0x14]
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, r0, #0x30
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, r0, #0x10
	str r0, [sp, #0xc]
	blt _0203B648
	add r2, sl, #0x600
	ldrh r0, [r2, #0x64]
	mov r1, #0
	ldr r5, _0203BB70 ; =FX_SinCosTable_
	add r0, r0, #0x800
	strh r0, [r2, #0x64]
	ldrh r0, [r2, #0x66]
	sub r3, r1, #0x60000
	sub r4, r1, #0x48000
	sub r0, r0, #0xc00
	strh r0, [r2, #0x66]
	ldrh r6, [r2, #0x68]
	mov r0, sl
	sub r6, r6, #0x600
	strh r6, [r2, #0x68]
	strh r1, [r2, #0x64]
	strh r1, [r2, #0x66]
	strh r1, [r2, #0x68]
	ldrh r2, [r2, #0x64]
	mov r2, r2, asr #4
	mov r6, r2, lsl #1
	add r2, r6, #1
	mov r6, r6, lsl #1
	ldrsh r7, [r5, r6]
	mov r2, r2, lsl #1
	ldrsh r5, [r5, r2]
	mov r2, r7, asr #0x1f
	mov r8, r2, lsl #0xf
	mov r2, r5, asr #0x1f
	mov sb, r7, lsl #0xf
	mov r2, r2, lsl #0xf
	mov r6, r5, lsl #0xf
	orr r8, r8, r7, lsr #17
	mov r7, sb, lsr #0xc
	orr r7, r7, r8, lsl #20
	orr r2, r2, r5, lsr #17
	mov r5, r6, lsr #0xc
	orr r5, r5, r2, lsl #20
	sub r2, r3, r7
	sub r3, r4, r5
	bl sub_0203BBCC
	add r0, sl, #0x600
	ldrh r1, [r0, #0x68]
	mov r0, #0x60000
	ldr r2, _0203BB70 ; =FX_SinCosTable_
	mov r1, r1, asr #4
	mov r3, r1, lsl #1
	add r1, r3, #1
	mov r3, r3, lsl #1
	ldrsh r3, [r2, r3]
	mov r1, r1, lsl #1
	ldrsh r1, [r2, r1]
	mov r2, r3, asr #0x1f
	mov r2, r2, lsl #0xf
	orr r2, r2, r3, lsr #17
	mov r3, r3, lsl #0xf
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	rsb r0, r0, #0
	sub r2, r0, r3
	mov r0, r1, asr #0x1f
	mov r0, r0, lsl #0xf
	orr r0, r0, r1, lsr #17
	mov r1, r1, lsl #0xf
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r3, r1, #0x48000
	mov r0, sl
	mov r1, #8
	bl sub_0203BBCC
	add r0, sl, #0x600
	ldrh r0, [r0, #0x64]
	ldr r2, _0203BB70 ; =FX_SinCosTable_
	mov r1, #0x48000
	add r0, r0, #0x400
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r4, r0, lsl #1
	mov r0, r4, lsl #1
	ldrsh r3, [r2, r0]
	add r0, r4, #1
	mov r0, r0, lsl #1
	ldrsh r2, [r2, r0]
	mov r0, r3, asr #0x1f
	mov r0, r0, lsl #0xf
	orr r0, r0, r3, lsr #17
	mov r3, r3, lsl #0xf
	mov r4, r3, lsr #0xc
	orr r4, r4, r0, lsl #20
	mov r0, r2, asr #0x1f
	mov r0, r0, lsl #0xf
	orr r0, r0, r2, lsr #17
	mov r2, r2, lsl #0xf
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	rsb r1, r1, #0
	sub r3, r1, r2
	mov r0, sl
	add r2, r4, #0x60000
	mov r1, #2
	bl sub_0203BBCC
	add r0, sl, #0x600
	ldrh r1, [r0, #0x66]
	ldr r2, _0203BB70 ; =FX_SinCosTable_
	mov r0, sl
	add r1, r1, #0x800
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #4
	mov r3, r1, lsl #1
	add r1, r3, #1
	mov r3, r3, lsl #1
	ldrsh r4, [r2, r3]
	mov r1, r1, lsl #1
	ldrsh r2, [r2, r1]
	mov r1, r4, asr #0x1f
	mov r5, r1, lsl #0xf
	mov r1, r2, asr #0x1f
	mov r6, r4, lsl #0xf
	mov r1, r1, lsl #0xf
	mov r3, r2, lsl #0xf
	orr r5, r5, r4, lsr #17
	mov r4, r6, lsr #0xc
	orr r4, r4, r5, lsl #20
	orr r1, r1, r2, lsr #17
	mov r3, r3, lsr #0xc
	orr r3, r3, r1, lsl #20
	add r2, r4, #0x60000
	add r3, r3, #0x48000
	mov r1, #0xa
	bl sub_0203BBCC
	add r0, sl, #0x600
	ldrh r2, [r0, #0x66]
	mov r0, sl
	mov r1, #1
	add r2, r2, #0x800
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, asr #4
	mov r2, r2, lsl #1
	add r2, r2, #1
	mov r4, r2, lsl #1
	mov r2, #0
	ldr r3, _0203BB70 ; =FX_SinCosTable_
	ldrsh r4, [r3, r4]
	mov r3, r4, asr #0x1f
	mov r3, r3, lsl #0xf
	orr r3, r3, r4, lsr #17
	mov r4, r4, lsl #0xf
	mov r4, r4, lsr #0xc
	orr r4, r4, r3, lsl #20
	sub r3, r4, #0x48000
	bl sub_0203BBCC
	add r0, sl, #0x600
	ldrh r2, [r0, #0x68]
	mov r0, sl
	mov r1, #9
	add r2, r2, #0x600
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, asr #4
	mov r2, r2, lsl #1
	add r2, r2, #1
	mov r4, r2, lsl #1
	mov r2, #0
	ldr r3, _0203BB70 ; =FX_SinCosTable_
	ldrsh r4, [r3, r4]
	mov r3, r4, asr #0x1f
	mov r3, r3, lsl #0xf
	orr r3, r3, r4, lsr #17
	mov r4, r4, lsl #0xf
	mov r4, r4, lsr #0xc
	orr r4, r4, r3, lsl #20
	rsb r3, r4, #0x48000
	bl sub_0203BBCC
	mov r0, sl
	mov r1, #4
	add r2, sl, #0x600
	ldrh r2, [r2, #0x64]
	ldr r4, _0203BB70 ; =FX_SinCosTable_
	mov r3, #0
	add r2, r2, #0xc00
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, asr #4
	mov r2, r2, lsl #2
	ldrsh r4, [r4, r2]
	mov r2, r4, asr #0x1f
	mov r2, r2, lsl #0xf
	orr r2, r2, r4, lsr #17
	mov r4, r4, lsl #0xf
	mov r4, r4, lsr #0xc
	orr r4, r4, r2, lsl #20
	sub r2, r4, #0x60000
	bl sub_0203BBCC
	add r0, sl, #0x600
	ldrh r1, [r0, #0x66]
	ldr r2, _0203BB70 ; =FX_SinCosTable_
	mov r0, sl
	add r1, r1, #0xa00
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #4
	mov r1, r1, lsl #2
	ldrsh r4, [r2, r1]
	mov r1, #6
	mov r3, #0
	mov r2, r4, asr #0x1f
	mov r2, r2, lsl #0xf
	mov r5, r4, lsl #0xf
	orr r2, r2, r4, lsr #17
	mov r4, r5, lsr #0xc
	orr r4, r4, r2, lsl #20
	rsb r2, r4, #0x60000
	bl sub_0203BBCC
	ldr r1, [sp]
	mov r0, sl
	bl sub_020355B4
	add r5, sl, #0xa4
	mov r4, #0
_0203BAE8:
	mov r0, r5
	ldr r2, [r0]
	ldr r1, [sp]
	ldr r2, [r2, #8]
	blx r2
	add r4, r4, #1
	cmp r4, #0x10
	add r5, r5, #0x5c
	blt _0203BAE8
	ldr r0, [sl, #0x7c]
	cmp r0, #0
	beq _0203BB5C
	ldr r1, [sl, #0x1c]
	mov r0, #0
	add r1, r1, #1
	str r1, [sl, #0x78]
	str r0, [sl, #0x84]
	str r0, [sl, #0x88]
	mov r0, #0x104000
	str r0, [sl, #0x8c]
	mov r1, #0xc8000
	add r0, sl, #0x3c
	str r1, [sl, #0x90]
	bl sub_020364DC
	add r0, sl, #0x68
	ldr r2, [r0]
	ldr r1, [sp]
	ldr r2, [r2, #8]
	blx r2
_0203BB5C:
	ldr r0, _0203BB74 ; =0x04000448
	mov r1, #0
	str r1, [r0]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0203BB70: .word FX_SinCosTable_
_0203BB74: .word 0x04000448

	arm_func_start sub_0203BB78
sub_0203BB78: ; 0x0203BB78
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, _0203BBA4 ; =s_data_field_effect_dokarimo03_ntf_0208dc14
	ldr r2, _0203BBA8 ; =s_data_field_effect_dokarimo03_ntf_0208dc38
	add r0, r4, #0x20
	mov r3, #4
	bl sub_020362EC
	mov r0, #2
	str r0, [r4, #0x64]
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203BBA4: .word s_data_field_effect_dokarimo03_ntf_0208dc14
_0203BBA8: .word s_data_field_effect_dokarimo03_ntf_0208dc38
	arm_func_end sub_0203BB78

	arm_func_start sub_0203BBAC
sub_0203BBAC: ; 0x0203BBAC
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x20
	bl sub_02036488
	add r0, r4, #0x3c
	bl sub_02036488
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_0203BBAC

	arm_func_start sub_0203BBCC
sub_0203BBCC: ; 0x0203BBCC
	stmdb sp!, {r4, r5, r6, lr}
	mov ip, #0x5c
	mla r6, r1, ip, r0
	add lr, r1, #1
	add r4, r1, #4
	add r1, r1, #5
	str r2, [r6, #0xd0]
	mla r5, lr, ip, r0
	str r3, [r6, #0xd4]
	str r2, [r5, #0xc8]
	mla lr, r4, ip, r0
	str r3, [r5, #0xcc]
	str r2, [lr, #0xd8]
	mla r0, r1, ip, r0
	str r3, [lr, #0xdc]
	str r2, [r0, #0xc0]
	str r3, [r0, #0xc4]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0203BBCC

	arm_func_start sub_0203BC14
sub_0203BC14: ; 0x0203BC14
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020354E0
	mov ip, r4
	mov r3, #0
	arm_func_end sub_0203BC14
_0203BC28:
	ldr r2, [r4, #0x5c]
	ldr r1, [r4, #0x18]
	add r3, r3, #1
	mul r1, r2, r1
	mov r1, r1, asr #0xc
	str r1, [ip, #0xb8]
	cmp r3, #0x10
	add ip, ip, #0x5c
	blt _0203BC28
	ldr r2, [r4, #0x60]
	ldr r1, [r4, #0x18]
	mul r1, r2, r1
	mov r1, r1, asr #0xc
	str r1, [r4, #0x7c]
	ldmia sp!, {r4, pc}

	arm_func_start sub_0203BC64
sub_0203BC64: ; 0x0203BC64
	stmdb sp!, {r4, lr}
	ldr r1, _0203BCB4 ; =ptr_FUN_0203bcc4_0208dbf8
	mov r4, r0
	str r1, [r4]
	bl sub_0203BBAC
	ldr r3, _0203BCB8 ; =sub_020368D8
	add r0, r4, #0xa4
	mov r1, #0x10
	mov r2, #0x5c
	bl __cxa_vec_cleanup
	add r0, r4, #0x68
	bl sub_02003984
	add r0, r4, #0x3c
	bl sub_02036488
	add r0, r4, #0x20
	bl sub_02036488
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203BCB4: .word ptr_FUN_0203bcc4_0208dbf8
_0203BCB8: .word sub_020368D8
	arm_func_end sub_0203BC64

	arm_func_start sub_0203BCBC
sub_0203BCBC: ; 0x0203BCBC
	ldr r0, [r0, #0x58]
	bx lr
	arm_func_end sub_0203BCBC

	arm_func_start sub_0203BCC4
sub_0203BCC4: ; 0x0203BCC4
	stmdb sp!, {r4, lr}
	ldr r1, _0203BD0C ; =ptr_FUN_0203bcc4_0208dbf8
	mov r4, r0
	str r1, [r4]
	bl sub_0203BBAC
	ldr r3, _0203BD10 ; =sub_020368D8
	add r0, r4, #0xa4
	mov r1, #0x10
	mov r2, #0x5c
	bl __cxa_vec_cleanup
	add r0, r4, #0x68
	bl sub_02003984
	add r0, r4, #0x3c
	bl sub_02036488
	add r0, r4, #0x20
	bl sub_02036488
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203BD0C: .word ptr_FUN_0203bcc4_0208dbf8
_0203BD10: .word sub_020368D8
	arm_func_end sub_0203BCC4

	arm_func_start sub_0203BD14
sub_0203BD14: ; 0x0203BD14
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _0203BD58 ; =ptr_FUN_0203bda4_0208dc98
	mov r5, r0
	str r2, [r5]
	mov r4, r1
	mov r0, #0
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	mov r2, #2
	mov r0, r4, lsl #2
	mov r1, #4
	str r2, [r5, #4]
	bl _Z23Heap_AllocWithAlignmentmm
	str r0, [r5, #0x30]
	mov r0, r5
	str r4, [r5, #0x34]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0203BD58: .word ptr_FUN_0203bda4_0208dc98
	arm_func_end sub_0203BD14

	arm_func_start sub_0203BD5C
sub_0203BD5C: ; 0x0203BD5C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _0203BDA0 ; =ptr_FUN_0203bda4_0208dc98
	mov r5, r0
	str r2, [r5]
	mov r4, r1
	mov r0, #0
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	mov r2, #2
	mov r0, r4, lsl #2
	mov r1, #4
	str r2, [r5, #4]
	bl _Z23Heap_AllocWithAlignmentmm
	str r0, [r5, #0x30]
	mov r0, r5
	str r4, [r5, #0x34]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0203BDA0: .word ptr_FUN_0203bda4_0208dc98
	arm_func_end sub_0203BD5C

	arm_func_start sub_0203BDA4
sub_0203BDA4: ; 0x0203BDA4
	stmdb sp!, {r4, lr}
	ldr r1, _0203BDD4 ; =ptr_FUN_0203bda4_0208dc98
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0203BDCC
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x30]
	arm_func_end sub_0203BDA4
_0203BDCC:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203BDD4: .word ptr_FUN_0203bda4_0208dc98

	arm_func_start sub_0203BDD8
sub_0203BDD8: ; 0x0203BDD8
	stmdb sp!, {r4, lr}
	ldr r1, _0203BE10 ; =ptr_FUN_0203bda4_0208dc98
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0203BE00
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x30]
	arm_func_end sub_0203BDD8
_0203BE00:
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203BE10: .word ptr_FUN_0203bda4_0208dc98

	arm_func_start sub_0203BE14
sub_0203BE14: ; 0x0203BE14
	stmdb sp!, {r4, lr}
	ldr r1, _0203BE44 ; =ptr_FUN_0203bda4_0208dc98
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0203BE3C
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x30]
	arm_func_end sub_0203BE14
_0203BE3C:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203BE44: .word ptr_FUN_0203bda4_0208dc98

	arm_func_start sub_0203BE48
sub_0203BE48: ; 0x0203BE48
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x2c]
	mov r6, r1
	mov r5, r2
	cmp r0, #0
	beq _0203BEDC
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x34]
	add r0, r4, #8
	bl sub_02044B48
	cmp r6, #0
	beq _0203BE8C
	ldr r0, [r4, #0xc]
	sub r0, r0, #4
	str r0, [r4, #0xc]
	str r6, [r0]
	arm_func_end sub_0203BE48
_0203BE8C:
	cmp r5, #0
	beq _0203BEC0
	ldr r1, [r4, #0x2c]
	mov r2, r5
	add r0, r4, #8
	bl sub_02045A18
	mvn r1, #0
	cmp r0, r1
	bne _0203BED0
	ldr r0, _0203BEF4 ; =s_not_found_func_FieldActor_cpp_0208dcf0
	bl LogError
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0203BEC0:
	ldr r0, _0203BEF8 ; =s_null_func_name_FieldActor_cpp_0208dd10
	bl LogError
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0203BED0:
	mov r0, #8
	str r0, [r4, #4]
	b _0203BEEC
_0203BEDC:
	ldr r0, _0203BEFC ; =s_m_pScriptBlock_NULL_by_FieldA_0208dd30
	bl LogError
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0203BEEC:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0203BEF4: .word s_not_found_func_FieldActor_cpp_0208dcf0
_0203BEF8: .word s_null_func_name_FieldActor_cpp_0208dd10
_0203BEFC: .word s_m_pScriptBlock_NULL_by_FieldA_0208dd30

	arm_func_start sub_0203BF00
sub_0203BF00: ; 0x0203BF00
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #8
	bl sub_02044B84
	mov r0, #2
	str r0, [r4, #4]
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_0203BF00

	arm_func_start sub_0203BF20
sub_0203BF20: ; 0x0203BF20
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, _0203BF3C ; =0x000FFFFF
	add r0, r4, #8
	bl sub_02044C9C
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203BF3C: .word 0x000FFFFF
	arm_func_end sub_0203BF20

	arm_func_start sub_0203BF40
sub_0203BF40: ; 0x0203BF40
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0203BFCC ; =ptr_FUN_0203c068_0208dcb0
	mov r4, r0
	str r1, [r4]
	mvn ip, #0
	str ip, [r4, #0x50]
	mov r3, #0
	str r3, [r4, #0xdc]
	str r3, [r4, #0xc]
	mov r1, #2
	strb r1, [r4, #0x20]
	str r3, [r4, #0x78]
	strb r3, [r4, #0x7c]
	mov r1, #0x10
	strb r1, [r4, #0x7d]
	strb r3, [r4, #0x7e]
	str r3, [r4, #0x94]
	mov r2, #6
	ldr r1, _0203BFD0 ; =DAT_02084d58
	str r2, [r4, #0x98]
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r2, [sp]
	str r2, [r4, #0x70]
	str r1, [r4, #0x74]
	str r3, [r4, #0xc8]
	str r3, [r4, #0x54]
	str ip, [r4, #0xd0]
	str r1, [sp, #4]
	strh r3, [r4, #0xd8]
	bl sub_0203C310
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203BFCC: .word ptr_FUN_0203c068_0208dcb0
_0203BFD0: .word DAT_02084d58
	arm_func_end sub_0203BF40

	arm_func_start sub_0203BFD4
sub_0203BFD4: ; 0x0203BFD4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0203C060 ; =ptr_FUN_0203c068_0208dcb0
	mov r4, r0
	str r1, [r4]
	mvn ip, #0
	str ip, [r4, #0x50]
	mov r3, #0
	str r3, [r4, #0xdc]
	str r3, [r4, #0xc]
	mov r1, #2
	strb r1, [r4, #0x20]
	str r3, [r4, #0x78]
	strb r3, [r4, #0x7c]
	mov r1, #0x10
	strb r1, [r4, #0x7d]
	strb r3, [r4, #0x7e]
	str r3, [r4, #0x94]
	mov r2, #6
	ldr r1, _0203C064 ; =DAT_02084d58
	str r2, [r4, #0x98]
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r2, [sp]
	str r2, [r4, #0x70]
	str r1, [r4, #0x74]
	str r3, [r4, #0xc8]
	str r3, [r4, #0x54]
	str ip, [r4, #0xd0]
	str r1, [sp, #4]
	strh r3, [r4, #0xd8]
	bl sub_0203C310
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203C060: .word ptr_FUN_0203c068_0208dcb0
_0203C064: .word DAT_02084d58
	arm_func_end sub_0203BFD4

	arm_func_start sub_0203C068
sub_0203C068: ; 0x0203C068
	stmdb sp!, {r4, lr}
	ldr r1, _0203C0CC ; =ptr_FUN_0203c068_0208dcb0
	mov r4, r0
	str r1, [r4]
	bl sub_0203C560
	ldr r0, [r4, #0xdc]
	cmp r0, #0
	beq _0203C0A0
	beq _0203C098
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0203C068
_0203C098:
	mov r0, #0
	str r0, [r4, #0xdc]
_0203C0A0:
	ldrh r1, [r4, #0xd8]
	cmp r1, #0
	ldrne r0, _0203C0D0 ; =MAIN_BSS_0210CA60
	ldrne r0, [r0]
	cmpne r0, #0
	beq _0203C0BC
	bl ov0_021430D8
_0203C0BC:
	mov r0, r4
	bl sub_02041C1C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203C0CC: .word ptr_FUN_0203c068_0208dcb0
_0203C0D0: .word MAIN_BSS_0210CA60

	arm_func_start sub_0203C0D4
sub_0203C0D4: ; 0x0203C0D4
	stmdb sp!, {r4, lr}
	ldr r1, _0203C140 ; =ptr_FUN_0203c068_0208dcb0
	mov r4, r0
	str r1, [r4]
	bl sub_0203C560
	ldr r0, [r4, #0xdc]
	cmp r0, #0
	beq _0203C10C
	beq _0203C104
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0203C0D4
_0203C104:
	mov r0, #0
	str r0, [r4, #0xdc]
_0203C10C:
	ldrh r1, [r4, #0xd8]
	cmp r1, #0
	ldrne r0, _0203C144 ; =MAIN_BSS_0210CA60
	ldrne r0, [r0]
	cmpne r0, #0
	beq _0203C128
	bl ov0_021430D8
_0203C128:
	mov r0, r4
	bl sub_02041C1C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203C140: .word ptr_FUN_0203c068_0208dcb0
_0203C144: .word MAIN_BSS_0210CA60

	arm_func_start sub_0203C148
sub_0203C148: ; 0x0203C148
	stmdb sp!, {r4, lr}
	ldr r1, _0203C1AC ; =ptr_FUN_0203c068_0208dcb0
	mov r4, r0
	str r1, [r4]
	bl sub_0203C560
	ldr r0, [r4, #0xdc]
	cmp r0, #0
	beq _0203C180
	beq _0203C178
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0203C148
_0203C178:
	mov r0, #0
	str r0, [r4, #0xdc]
_0203C180:
	ldrh r1, [r4, #0xd8]
	cmp r1, #0
	ldrne r0, _0203C1B0 ; =MAIN_BSS_0210CA60
	ldrne r0, [r0]
	cmpne r0, #0
	beq _0203C19C
	bl ov0_021430D8
_0203C19C:
	mov r0, r4
	bl sub_02041C1C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203C1AC: .word ptr_FUN_0203c068_0208dcb0
_0203C1B0: .word MAIN_BSS_0210CA60

	arm_func_start sub_0203C1B4
sub_0203C1B4: ; 0x0203C1B4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xdc]
	mov r4, r1
	cmp r0, #0
	bne _0203C1F0
	mov r0, #0x38
	bl _Znwm
	cmp r0, #0
	beq _0203C1E4
	mov r1, #0x40
	bl sub_0203BD5C
	arm_func_end sub_0203C1B4
_0203C1E4:
	str r0, [r5, #0xdc]
	str r4, [r0, #0x2c]
	b _0203C1F4
_0203C1F0:
	str r4, [r0, #0x2c]
_0203C1F4:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0203C1FC
sub_0203C1FC: ; 0x0203C1FC
	ldr r3, [r0, #0xdc]
	cmp r3, #0
	bne _0203C218
	cmp r1, #0
	strne r1, [r0, #0xdc]
	strne r2, [r1, #0x2c]
	bne _0203C224
	arm_func_end sub_0203C1FC
_0203C218:
	str r2, [r3, #0x2c]
	mov r0, #0
	bx lr
_0203C224:
	mov r0, #1
	bx lr

	arm_func_start sub_0203C22C
sub_0203C22C: ; 0x0203C22C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xdc]
	mov r4, r1
	cmp r0, #0
	cmpne r4, #0
	beq _0203C280
	ldr r3, [r0]
	mov r1, r5
	ldr r3, [r3, #8]
	mov r2, r4
	blx r3
	cmp r0, #0
	beq _0203C278
	mov r1, r4
	add r0, r5, #0x7f
	bl strcpy
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0203C22C
_0203C278:
	mov r0, #0
	strb r0, [r5, #0x7f]
_0203C280:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0203C288
sub_0203C288: ; 0x0203C288
	stmdb sp!, {r3, lr}
	mov r1, #0
	strb r1, [r0, #0x7f]
	ldr r0, [r0, #0xdc]
	cmp r0, #0
	beq _0203C2B0
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r1, r0
	arm_func_end sub_0203C288
_0203C2B0:
	mov r0, r1
	ldmia sp!, {r3, pc}

	arm_func_start sub_0203C2B8
sub_0203C2B8: ; 0x0203C2B8
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldrne r0, [r0, #0xdc]
	cmpne r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_0203BF20
	ldmia sp!, {r3, pc}
	arm_func_end sub_0203C2B8

	arm_func_start sub_0203C2D8
sub_0203C2D8: ; 0x0203C2D8
	stmdb sp!, {r3, lr}
	mov r1, r0
	ldr r0, [r1, #0xdc]
	cmp r0, #0
	ldrnesb r2, [r1, #0x7f]
	cmpne r2, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r3, [r0]
	add r2, r1, #0x7f
	ldr r3, [r3, #8]
	blx r3
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end sub_0203C2D8

	arm_func_start sub_0203C310
sub_0203C310: ; 0x0203C310
	stmdb sp!, {r4, r5, r6, lr}
	mov r1, #0
	mov r4, r0
	str r1, [r4, #4]
	movs r5, r1
	str r1, [r4, #8]
	ldrne r6, [r5, #0xc]
	cmpne r6, #0
	beq _0203C360
	add r0, r6, #0xc
	bl sub_02011D1C
	add r0, r6, #0xc
	mov r1, r5
	bl sub_02011D2C
	ldr r0, [r5, #0xc]
	ldr r1, [r0, #0xc4]
	cmp r1, #0
	movne r0, r5
	strne r0, [r1, #0x18]
	strne r0, [r1, #0x1c]
	arm_func_end sub_0203C310
_0203C360:
	mov r1, #0
	str r1, [r4, #0x18]
	str r1, [r4, #0x1c]
	mov r0, r4
	str r1, [r4, #0x10]
	ldr r2, [r0]
	ldr r2, [r2, #0x30]
	blx r2
	mov r3, #0
	str r3, [r4, #0x5c]
	str r3, [r4, #0x60]
	sub r0, r3, #0x1000
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	str r3, [r4, #0x6c]
	strb r3, [r4, #0x7f]
	str r3, [r4, #0x94]
	str r3, [r4, #0x9c]
	str r3, [r4, #0xa0]
	str r3, [r4, #0xa4]
	str r3, [r4, #0xa8]
	strh r3, [r4, #0xac]
	strh r3, [r4, #0xae]
	ldr r1, [r4, #4]
	ldr r0, _0203C414 ; =0x00000109
	orr r1, r1, #8
	str r1, [r4, #4]
	str r0, [r4, #0xb4]
	mov r0, #0x18
	str r0, [r4, #0xb8]
	mov r2, #0x10
	strb r2, [r4, #0x7d]
	mov r0, #4
	strb r3, [r4, #0x7e]
	mov r1, #1
	str r1, [r4, #0x90]
	strb r3, [r4, #0xbc]
	strb r3, [r4, #0xbd]
	strb r2, [r4, #0xbe]
	mov r1, #0xa
	strb r1, [r4, #0xbf]
	strb r0, [r4, #0xd4]
	sub r0, r0, #0xe
	strh r0, [r4, #0xd6]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0203C414: .word 0x00000109

	arm_func_start sub_0203C418
sub_0203C418: ; 0x0203C418
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r8, r1
	mov r7, r2
	mov r5, r3
	ldr r6, [sp, #0x20]
	bl sub_0203C560
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0203C44C
	bl sub_020404BC
	arm_func_end sub_0203C418
_0203C44C:
	str r0, [r4, #8]
	ldr r0, [sp, #0x24]
	str r6, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	mov r1, r8
	mov r2, r7
	mov r3, r5
	bl sub_02040530
	movs r5, r0
	beq _0203C4B0
	mov r2, #0
	mov r0, #1
_0203C480:
	tst r6, r0, lsl r2
	mov r1, r0, lsl r2
	beq _0203C4A4
	mov r0, r4
	ldr r3, [r0]
	mov r2, #0
	ldr r3, [r3, #0x38]
	blx r3
	b _0203C4B0
_0203C4A4:
	add r2, r2, #1
	cmp r2, #0x1d
	blt _0203C480
_0203C4B0:
	mov r0, r5
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start sub_0203C4BC
sub_0203C4BC: ; 0x0203C4BC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r8, r1
	mov r7, r2
	mov r5, r3
	ldr r6, [sp, #0x20]
	bl sub_0203C560
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0203C4F0
	bl sub_020404BC
	arm_func_end sub_0203C4BC
_0203C4F0:
	str r0, [r4, #8]
	ldr r0, [sp, #0x24]
	str r6, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	mov r1, r8
	mov r2, r7
	mov r3, r5
	bl sub_020405B4
	movs r5, r0
	beq _0203C554
	mov r2, #0
	mov r0, #1
_0203C524:
	tst r6, r0, lsl r2
	mov r1, r0, lsl r2
	beq _0203C548
	mov r0, r4
	ldr r3, [r0]
	mov r2, #0
	ldr r3, [r3, #0x38]
	blx r3
	b _0203C554
_0203C548:
	add r2, r2, #1
	cmp r2, #0x1d
	blt _0203C524
_0203C554:
	mov r0, r5
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start sub_0203C560
sub_0203C560: ; 0x0203C560
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	beq _0203C584
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0203C560
_0203C584:
	mov r0, #0
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}

	arm_func_start sub_0203C590
sub_0203C590: ; 0x0203C590
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r2
	tst r0, #1
	addne sp, sp, #0x28
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r1, #0
	ldrne r2, [r5, #8]
	cmpne r2, #0
	beq _0203C64C
	ldr r0, [r2, #0xc]
	cmp r0, #0
	ldrne r0, [r0, #0x24]
	moveq r0, #0
	str r0, [r2, #4]
	ldr r0, [r5, #4]
	tst r0, #0x100
	beq _0203C614
	tst r0, #0x1000
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _0203C604
	add r0, r1, #0x10
	ldr r1, [r5, #8]
	bl sub_0200912C
	b _0203C64C
	arm_func_end sub_0203C590
_0203C604:
	add r0, r1, #0x24
	ldr r1, [r5, #8]
	bl sub_0200912C
	b _0203C64C
_0203C614:
	tst r0, #0x1000
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldr r0, [r5, #0x14]
	bne _0203C63C
	add r0, r1, r0, lsl #2
	ldr r1, [r5, #8]
	bl sub_0200912C
	b _0203C64C
_0203C63C:
	add r0, r0, #5
	add r0, r1, r0, lsl #2
	ldr r1, [r5, #8]
	bl sub_0200912C
_0203C64C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0203C680
	ldr r3, [r0, #0xc]
	cmp r3, #0
	moveq ip, #0
	beq _0203C684
	ldr r2, [r3, #0x8c]
	ldr r1, [r3, #0xa0]
	ldr r3, [r3, #0xb0]
	add r1, r2, r1
	add ip, r3, r1
	b _0203C684
_0203C680:
	mov ip, #0
_0203C684:
	ldr r1, [r5, #0x90]
	cmp r1, #0
	cmpne r4, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp ip, #0
	addlt sp, sp, #0x28
	ldmltia sp!, {r3, r4, r5, pc}
	cmp ip, #0x60000
	addge sp, sp, #0x28
	ldmgeia sp!, {r3, r4, r5, pc}
	cmp r0, #0
	beq _0203C6CC
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldrne r3, [r1, #0x20]
	moveq r3, #0
	b _0203C6D0
_0203C6CC:
	mov r3, #0
_0203C6D0:
	cmp r0, #0
	beq _0203C718
	ldr r2, [r0, #0xc]
	cmp r2, #0
	beq _0203C710
	ldr r1, [r2, #0x1a8]
	tst r1, #4
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	addne r1, r2, #0x100
	ldrnesh r1, [r1, #0xd0]
	moveq r1, #0
	mov r1, r1, lsl #0x10
	mov r2, r1, asr #0x10
	b _0203C71C
_0203C710:
	mov r2, #0
	b _0203C71C
_0203C718:
	mov r2, #0
_0203C71C:
	ldrsb r1, [r5, #0xbc]
	cmp r0, #0
	add r1, r3, r1, lsl #12
	add r1, r1, r2, lsl #12
	str r1, [sp, #8]
	beq _0203C748
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldrne r3, [r1, #0x24]
	moveq r3, #0
	b _0203C74C
_0203C748:
	mov r3, #0
_0203C74C:
	cmp r0, #0
	beq _0203C794
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _0203C78C
	ldr r0, [r1, #0x1a8]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addne r0, r1, #0x100
	ldrnesh r0, [r0, #0xd2]
	moveq r0, #0
	mov r0, r0, lsl #0x10
	mov lr, r0, asr #0x10
	b _0203C798
_0203C78C:
	mov lr, #0
	b _0203C798
_0203C794:
	mov lr, #0
_0203C798:
	ldrsb r2, [r5, #0xbd]
	ldrb r1, [r5, #0xbe]
	ldrb r0, [r5, #0xbf]
	add r2, r3, r2, lsl #12
	add r3, r2, lr, lsl #12
	mov r2, r1, lsl #0xc
	mov r1, r0, lsl #0xc
	add r0, sp, #8
	add lr, sp, #0x18
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	cmp ip, #0
	ble _0203C820
	ldr r1, [sp, #0x20]
	rsb r2, ip, #0x60000
	ldr r0, [sp, #0x24]
	smull r3, ip, r1, r2
	smull r1, r2, r0, r2
	mov lr, r3, lsr #0xc
	mov r3, r1, lsr #0xc
	orr lr, lr, ip, lsl #20
	ldr r1, _0203C878 ; =0x2AAAAAAB
	orr r3, r3, r2, lsl #20
	smull r0, ip, r1, lr
	mov r0, lr, lsr #0x1f
	add ip, r0, ip, asr #4
	smull r0, r2, r1, r3
	mov r0, r3, lsr #0x1f
	add r2, r0, r2, asr #4
	str ip, [sp, #0x20]
	str r2, [sp, #0x24]
_0203C820:
	ldr r0, [r5, #4]
	tst r0, #0x100
	add r0, sp, #0x18
	beq _0203C854
	sub r5, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	mov r0, r4
	mov r1, #4
	ldmia r5, {r2, r3}
	bl sub_020419D8
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
_0203C854:
	sub ip, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	ldr r1, [r5, #0x14]
	mov r0, r4
	ldmia ip, {r2, r3}
	bl sub_020419D8
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0203C878: .word 0x2AAAAAAB

	arm_func_start sub_0203C87C
sub_0203C87C: ; 0x0203C87C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	str r1, [r8, #0x6c]
	ldr r1, [r8, #8]
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl sub_0203D320
	mov r0, r8
	bl sub_0203D394
	mov r0, r8
	bl sub_0203CDB0
	mov r0, r8
	bl sub_0203CCD4
	ldr r0, [r8, #8]
	bl sub_02040740
	ldr r0, [r8, #0x54]
	cmp r0, #0
	ldrne r0, [r8, #8]
	cmpne r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0203C8E0
	bl sub_02012C4C
	arm_func_end sub_0203C87C
_0203C8E0:
	ldr r1, [r8, #8]
	mov r4, #0
	cmp r1, #0
	beq _0203C904
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r6, [r0, #0x20]
	moveq r6, r4
	b _0203C908
_0203C904:
	mov r6, r4
_0203C908:
	cmp r1, #0
	beq _0203C924
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r7, [r0, #0x24]
	moveq r7, #0
	b _0203C928
_0203C924:
	mov r7, #0
_0203C928:
	ldr r2, [r8, #0x6c]
	cmp r2, #0
	beq _0203C964
	ldr r1, [r8, #0x14]
	ldr r0, [r2, #0x24]
	cmp r1, r0
	ldrlt r0, [r2, #0x30]
	ldrlt r0, [r0, r1, lsl #2]
	movge r0, #0
	cmp r0, #0
	beq _0203C964
	mov r1, r6
	mov r2, r7
	bl ov0_0212E1B4
	mov r4, r0
_0203C964:
	ldr r0, [r8, #0xc8]
	cmp r0, #0
	movne r1, #0
	moveq r1, r4
	mov r0, r8
	bl sub_0203D890
	ldr r1, [r8, #8]
	ldr r2, [r1, #0xc]
	cmp r2, #0
	ldrne r0, [r2, #0x1d8]
	moveq r0, #3
	cmp r0, #1
	beq _0203CA34
	ldr r0, [r8, #0x58]
	mov r0, r0, asr #0x18
	tst r0, #0xff
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r1, #0
	beq _0203C9C4
	cmp r2, #0
	ldrneb r0, [r2, #0xc0]
	moveq r0, #0
	b _0203C9C8
_0203C9C4:
	mov r0, #0
_0203C9C8:
	cmp r0, #7
	beq _0203C9F8
	cmp r1, #0
	beq _0203C9E8
	cmp r2, #0
	ldrneb r0, [r2, #0xc0]
	moveq r0, #0
	b _0203C9EC
_0203C9E8:
	mov r0, #0
_0203C9EC:
	cmp r0, #8
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_0203C9F8:
	cmp r1, #0
	beq _0203CA24
	cmp r2, #0
	beq _0203CA1C
	ldrh r0, [r2, #4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	b _0203CA28
_0203CA1C:
	mov r0, #0
	b _0203CA28
_0203CA24:
	mov r0, #0
_0203CA28:
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_0203CA34:
	ldr r0, _0203CCB8 ; =MAIN_BSS_0210CA6C
	mov r5, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _0203CA58
	ldr r1, _0203CCBC ; =MAIN_BSS_020B26A0
	ldrh r1, [r1, #0x1a]
	bl sub_02041D80
	mov r5, r0
_0203CA58:
	cmp r5, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #8]
	cmp r0, #0
	beq _0203CA98
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0203CA90
	ldrh r0, [r0, #4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	b _0203CA9C
_0203CA90:
	mov r0, #0
	b _0203CA9C
_0203CA98:
	mov r0, #0
_0203CA9C:
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #0x78]
	cmp r0, #0
	ldrneb r0, [r8, #0x7d]
	cmpne r0, #0
	beq _0203CB1C
	ldr r1, _0203CCC0 ; =DAT_0208d58c
	mov r0, #0x3c
	ldrh r1, [r1]
	bl _s32_div_f
	ldrb r1, [r8, #0x7e]
	add r1, r1, r0
	strb r1, [r8, #0x7e]
	ldrb r0, [r8, #0x7d]
	and r1, r1, #0xff
	cmp r1, r0
	blo _0203CB1C
	ldr r0, _0203CCC4 ; =MAIN_BSS_0210CA60
	ldr r0, [r0]
	cmp r0, #0
	beq _0203CB14
	ldr r2, [r8, #0x14]
	mov r1, r4
	str r2, [sp]
	mov r2, r6
	mov r3, r7
	str r5, [sp, #4]
	bl ov0_021431A4
_0203CB14:
	mov r0, #0
	strb r0, [r8, #0x7e]
_0203CB1C:
	ldr r0, [r8, #0xb8]
	cmp r0, #0
	addle sp, sp, #8
	ldmleia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _0203CCC0 ; =DAT_0208d58c
	mov r0, #0x3c
	ldrh r1, [r1]
	bl _s32_div_f
	ldrb r1, [r8, #0x7c]
	add r1, r1, r0
	strb r1, [r8, #0x7c]
	ldr r0, [r8, #0xb8]
	and r1, r1, #0xff
	cmp r1, r0
	addlt sp, sp, #8
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #0
	strb r0, [r8, #0x7c]
	ldr r0, [r8, #0x78]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0203CCC8 ; =MAIN_BSS_0210CA74
	ldr r0, [r0]
	tst r0, #1
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r8, #0xb4]
	cmp r1, #0
	addlt sp, sp, #8
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0203CCCC ; =0x00000109
	cmp r1, r0
	bne _0203CC90
	cmp r4, #0x16
	addls pc, pc, r4, lsl #2
	b _0203CC90
_0203CBB0: ; jump table
	b _0203CC0C ; case 0
	b _0203CC14 ; case 1
	b _0203CC1C ; case 2
	b _0203CC24 ; case 3
	b _0203CC2C ; case 4
	b _0203CC34 ; case 5
	b _0203CC3C ; case 6
	b _0203CC44 ; case 7
	b _0203CC4C ; case 8
	b _0203CC54 ; case 9
	b _0203CC5C ; case 10
	b _0203CC64 ; case 11
	b _0203CC6C ; case 12
	b _0203CC74 ; case 13
	b _0203CC7C ; case 14
	b _0203CC84 ; case 15
	b _0203CC84 ; case 16
	b _0203CC84 ; case 17
	b _0203CC84 ; case 18
	b _0203CC8C ; case 19
	b _0203CC8C ; case 20
	b _0203CC8C ; case 21
	b _0203CC8C ; case 22
_0203CC0C:
	ldrsh r1, [r5, #8]
	b _0203CC90
_0203CC14:
	ldrsh r1, [r5, #0xc]
	b _0203CC90
_0203CC1C:
	ldrsh r1, [r5, #0x10]
	b _0203CC90
_0203CC24:
	ldrsh r1, [r5, #0x14]
	b _0203CC90
_0203CC2C:
	ldrsh r1, [r5, #0x18]
	b _0203CC90
_0203CC34:
	ldrsh r1, [r5, #0x1c]
	b _0203CC90
_0203CC3C:
	ldrsh r1, [r5, #0x20]
	b _0203CC90
_0203CC44:
	ldrsh r1, [r5, #0x24]
	b _0203CC90
_0203CC4C:
	ldrsh r1, [r5, #0x28]
	b _0203CC90
_0203CC54:
	ldrsh r1, [r5, #0x2c]
	b _0203CC90
_0203CC5C:
	ldrsh r1, [r5, #0x30]
	b _0203CC90
_0203CC64:
	ldrsh r1, [r5, #0x34]
	b _0203CC90
_0203CC6C:
	ldrsh r1, [r5, #0x38]
	b _0203CC90
_0203CC74:
	ldrsh r1, [r5, #0x3c]
	b _0203CC90
_0203CC7C:
	ldrsh r1, [r5, #0x40]
	b _0203CC90
_0203CC84:
	ldrsh r1, [r5, #0x44]
	b _0203CC90
_0203CC8C:
	ldrsh r1, [r5, #0x48]
_0203CC90:
	cmp r1, #0
	addlt sp, sp, #8
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0203CCD0 ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0203CCB8: .word MAIN_BSS_0210CA6C
_0203CCBC: .word MAIN_BSS_020B26A0
_0203CCC0: .word DAT_0208d58c
_0203CCC4: .word MAIN_BSS_0210CA60
_0203CCC8: .word MAIN_BSS_0210CA74
_0203CCCC: .word 0x00000109
_0203CCD0: .word MAIN_BSS_0208F304

	arm_func_start sub_0203CCD4
sub_0203CCD4: ; 0x0203CCD4
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x94]
	cmp r1, #0
	subgt r1, r1, #1
	strgt r1, [r0, #0x94]
	ldr r2, [r0, #8]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #4]
	tst r1, #8
	ldmeqia sp!, {r3, pc}
	ldr r2, [r2, #0xc]
	cmp r2, #0
	ldrne r3, [r2, #0x1d8]
	moveq r3, #3
	cmp r2, #0
	beq _0203CD2C
	ldr r1, [r2, #0xc]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	b _0203CD30
	arm_func_end sub_0203CCD4
_0203CD2C:
	mov r1, #0
_0203CD30:
	cmp r1, #0
	beq _0203CD80
	cmp r3, #1
	beq _0203CD78
	mov r3, #0
	strb r3, [r0, #0x7c]
	strb r3, [r0, #0x7e]
	ldr r1, [r0, #0x94]
	cmp r1, #0
	bgt _0203CD78
	ldr r1, [r0, #8]
	ldr r2, [r1, #0xc]
	cmp r2, #0
	movne r1, #1
	strne r1, [r2, #0x1dc]
	strneb r3, [r2, #0x1e1]
	ldr r1, [r0, #0x98]
	str r1, [r0, #0x94]
_0203CD78:
	bl sub_0203D2F4
	ldmia sp!, {r3, pc}
_0203CD80:
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #0x94]
	cmp r1, #0
	ldmgtia sp!, {r3, pc}
	cmp r2, #0
	movne r1, #0
	strne r1, [r2, #0x1dc]
	strneb r1, [r2, #0x1e1]
	ldr r1, [r0, #0x98]
	str r1, [r0, #0x94]
	ldmia sp!, {r3, pc}

	arm_func_start sub_0203CDB0
sub_0203CDB0: ; 0x0203CDB0
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x20
	ldr r1, [r0, #0x5c]
	mov r2, #0
	cmp r1, #1
	addne sp, sp, #0x20
	mov r3, r2
	ldmneia sp!, {r4, pc}
	ldr lr, [r0, #0x60]
	mov r1, lr, asr #0x18
	and r1, r1, #0xff
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0203CE30
_0203CDE8: ; jump table
	b _0203CE04 ; case 0
	b _0203CE10 ; case 1
	b _0203CE1C ; case 2
	b _0203CE30 ; case 3
	b _0203CE28 ; case 4
	b _0203CE28 ; case 5
	b _0203CE28 ; case 6
	arm_func_end sub_0203CDB0
_0203CE04:
	ldr r1, _0203CF30 ; =MAIN_BSS_0210CA48
	ldr r3, [r1]
	b _0203CE30
_0203CE10:
	ldr r1, _0203CF34 ; =MAIN_BSS_0210CA5C
	ldr r2, [r1]
	b _0203CE30
_0203CE1C:
	ldr r1, _0203CF38 ; =MAIN_BSS_0210CA50
	ldr r2, [r1]
	b _0203CE30
_0203CE28:
	ldr r1, _0203CF3C ; =MAIN_BSS_0210CA4C
	ldr r2, [r1]
_0203CE30:
	cmp r2, #0
	beq _0203CE74
	ldr r4, [r2, #4]
	mov ip, #0
	cmp r4, #0
	ble _0203CE70
	ldr r2, [r2, #8]
_0203CE4C:
	ldr r3, [r2, ip, lsl #2]
	cmp r3, #0
	beq _0203CE64
	ldr r1, [r3, #0x58]
	cmp lr, r1
	beq _0203CE74
_0203CE64:
	add ip, ip, #1
	cmp ip, r4
	blt _0203CE4C
_0203CE70:
	mov r3, #0
_0203CE74:
	cmp r3, #0
	beq _0203CF20
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _0203CEC8
	ldr r1, [r1, #0xc]
	cmp r1, #0
	beq _0203CEA8
	ldr r2, [r1, #0x20]
	ldr r1, [r1, #0x24]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	b _0203CEC0
_0203CEA8:
	mov r1, #0
	add r2, sp, #8
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
_0203CEC0:
	add r3, sp, #0x10
	b _0203CEE4
_0203CEC8:
	mov r1, #0
	add r2, sp, #0
	add r3, sp, #0x10
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
_0203CEE4:
	ldr r0, [r0, #8]
	ldr r2, [r3]
	ldr r1, [r3, #4]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	str r1, [sp, #0x1c]
	str r2, [sp, #0x18]
	add r1, sp, #0x18
	cmpne r0, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, pc}
	ldmia r1, {r1, r2}
	bl sub_02012894
	add sp, sp, #0x20
	ldmia sp!, {r4, pc}
_0203CF20:
	mov r1, #0
	str r1, [r0, #0x5c]
	add sp, sp, #0x20
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203CF30: .word MAIN_BSS_0210CA48
_0203CF34: .word MAIN_BSS_0210CA5C
_0203CF38: .word MAIN_BSS_0210CA50
_0203CF3C: .word MAIN_BSS_0210CA4C

	arm_func_start sub_0203CF40
sub_0203CF40: ; 0x0203CF40
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	add ip, sp, #0xc
	mov r5, r3
	mov r7, r0
	mov r6, r2
	ldmia r1, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	tst r5, #0x10
	mov r4, #0
	bne _0203CFB0
	ldr r0, _0203D104 ; =MAIN_BSS_0210CA7C
	ldr r0, [r0]
	cmp r0, #0
	beq _0203CFB0
	add r2, sp, #4
	str r2, [sp]
	ldr r3, [r7, #0x14]
	mov r1, ip
	mov r2, r6
	bl sub_0203F7F4
	cmp r0, #0
	beq _0203CFB0
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r4, #1
	arm_func_end sub_0203CF40
_0203CFB0:
	tst r5, #8
	bne _0203CFFC
	ldr r0, _0203D108 ; =MAIN_BSS_0210CA50
	ldr r0, [r0]
	cmp r0, #0
	beq _0203CFFC
	add r2, sp, #4
	str r2, [sp]
	ldr r3, [r7, #0x14]
	add r1, sp, #0xc
	mov r2, r6
	bl sub_0203F7F4
	cmp r0, #0
	beq _0203CFFC
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r4, #1
_0203CFFC:
	ldr r2, [r7, #0x6c]
	cmp r2, #0
	beq _0203D0E0
	ldr r1, [r7, #0x14]
	ldr r0, [r2, #0x24]
	cmp r1, r0
	ldrlt r0, [r2, #0x2c]
	ldrlt r0, [r0, r1, lsl #2]
	movge r0, #0
	cmp r0, #0
	beq _0203D078
	mov ip, #3
	tst r5, #0x20
	orrne ip, ip, #4
	tst r5, #1
	add r1, sp, #0xc
	add r3, sp, #4
	mov r2, r6
	beq _0203D054
	str ip, [sp]
	bl ov0_0212A3A0
	b _0203D05C
_0203D054:
	str ip, [sp]
	bl ov0_02128308
_0203D05C:
	cmp r0, #0
	beq _0203D078
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r4, #1
_0203D078:
	tst r5, #2
	bne _0203D0E0
	tst r5, #4
	beq _0203D0E0
	ldr r1, [r7, #0x6c]
	ldr r2, [r7, #0x14]
	ldr r0, [r1, #0x24]
	cmp r2, r0
	ldrlt r0, [r1, #0x30]
	ldrlt r0, [r0, r2, lsl #2]
	movge r0, #0
	cmp r0, #0
	beq _0203D0E0
	ldr r3, _0203D10C ; =0x00804000
	add r5, sp, #4
	add r1, sp, #0xc
	mov r2, r6
	str r5, [sp]
	bl ov0_0212E1F0
	cmp r0, #0
	beq _0203D0E0
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r4, #1
_0203D0E0:
	cmp r4, #0
	beq _0203D0F8
	ldr r0, [sp, #0x14]
	str r0, [r7, #0x64]
	ldr r0, [sp, #0x18]
	str r0, [r7, #0x68]
_0203D0F8:
	mov r0, r4
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_0203D104: .word MAIN_BSS_0210CA7C
_0203D108: .word MAIN_BSS_0210CA50
_0203D10C: .word 0x00804000

	arm_func_start sub_0203D110
sub_0203D110: ; 0x0203D110
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r4, [sp, #0x28]
	mov r6, r0
	mov r5, r3
	tst r4, #0x10
	bne _0203D16C
	ldr r0, _0203D2E8 ; =MAIN_BSS_0210CA7C
	ldr r0, [r0]
	cmp r0, #0
	beq _0203D16C
	ldr r2, [r6, #0x14]
	add r1, sp, #0x1c
	str r2, [sp]
	ldmia r1, {r1, r2}
	bl sub_02040158
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
	arm_func_end sub_0203D110
_0203D16C:
	tst r4, #8
	bne _0203D1B4
	ldr r0, _0203D2EC ; =MAIN_BSS_0210CA50
	ldr r0, [r0]
	cmp r0, #0
	beq _0203D1B4
	ldr r2, [r6, #0x14]
	add r1, sp, #0x1c
	str r2, [sp]
	mov r3, r5
	ldmia r1, {r1, r2}
	bl sub_02040158
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
_0203D1B4:
	ldr r2, [r6, #0x6c]
	cmp r2, #0
	beq _0203D2D4
	ldr r1, [r6, #0x14]
	ldr r0, [r2, #0x24]
	cmp r1, r0
	ldrlt r0, [r2, #0x2c]
	ldrlt r0, [r0, r1, lsl #2]
	movge r0, #0
	cmp r0, #0
	beq _0203D248
	mov r2, #3
	tst r4, #0x20
	orrne r2, r2, #4
	tst r4, #1
	add r1, sp, #0x1c
	mov r3, r5
	beq _0203D224
	str r2, [sp]
	ldmia r1, {r1, r2}
	bl ov0_0212BBF8
	cmp r0, #0
	beq _0203D248
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_0203D224:
	str r2, [sp]
	ldmia r1, {r1, r2}
	bl ov0_0212BA38
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
_0203D248:
	tst r4, #4
	beq _0203D2D4
	ldr r1, [r6, #0x6c]
	ldr r2, [r6, #0x14]
	ldr r0, [r1, #0x24]
	cmp r2, r0
	ldrlt r0, [r1, #0x30]
	ldrlt r0, [r0, r2, lsl #2]
	movge r0, #0
	cmp r0, #0
	beq _0203D2D4
	tst r4, #1
	ldr r2, _0203D2F0 ; =0x00804000
	add r1, sp, #0x1c
	mov r3, r5
	beq _0203D2B0
	str r2, [sp]
	ldmia r1, {r1, r2}
	bl ov0_0212EDCC
	cmp r0, #0
	beq _0203D2D4
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_0203D2B0:
	str r2, [sp]
	ldmia r1, {r1, r2}
	bl ov0_0212ECF0
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
_0203D2D4:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_0203D2E8: .word MAIN_BSS_0210CA7C
_0203D2EC: .word MAIN_BSS_0210CA50
_0203D2F0: .word 0x00804000

	arm_func_start sub_0203D2F4
sub_0203D2F4: ; 0x0203D2F4
	ldr r1, [r0, #4]
	tst r1, #2
	bxeq lr
	tst r1, #4
	bxeq lr
	ldr r1, [r0, #0xa0]
	str r1, [r0, #0xa4]
	ldr r1, [r0, #4]
	bic r1, r1, #4
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_0203D2F4

	arm_func_start sub_0203D320
sub_0203D320: ; 0x0203D320
	ldr r1, [r0, #4]
	tst r1, #2
	bxeq lr
	ldr r2, [r0, #0xa4]
	ldr r1, [r0, #0x9c]
	sub r1, r2, r1
	str r1, [r0, #0xa4]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0203D35C
	ldr r1, [r1, #0xc]
	cmp r1, #0
	ldrne r2, [r1, #0x8c]
	moveq r2, #0
	b _0203D360
	arm_func_end sub_0203D320
_0203D35C:
	mov r2, #0
_0203D360:
	ldr r1, [r0, #0xa4]
	adds r2, r2, r1
	bpl _0203D37C
	ldr r1, [r0, #4]
	mov r2, #0
	orr r1, r1, #4
	str r1, [r0, #4]
_0203D37C:
	ldr r0, [r0, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	strne r2, [r0, #0x8c]
	bx lr

	arm_func_start sub_0203D394
sub_0203D394: ; 0x0203D394
	stmdb sp!, {r4, lr}
	ldr r1, [r0, #4]
	tst r1, #0x40
	ldmeqia sp!, {r4, pc}
	ldrh ip, [r0, #0xac]
	ldrh r2, [r0, #0xb0]
	ldrh r1, [r0, #0xae]
	mov lr, ip, asr #4
	ldr r3, _0203D400 ; =FX_SinCosTable_
	mov lr, lr, lsl #2
	ldrsh r3, [r3, lr]
	mov r2, r2, lsl #0xc
	ldr r4, [r0, #0xa8]
	smull lr, r2, r3, r2
	add r1, ip, r1
	strh r1, [r0, #0xac]
	adds r3, lr, #0x800
	adc r1, r2, #0
	ldr r0, [r0, #8]
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	add r1, r4, r2
	cmpne r0, #0
	strne r1, [r0, #0x8c]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203D400: .word FX_SinCosTable_
	arm_func_end sub_0203D394

	arm_func_start sub_0203D404
sub_0203D404: ; 0x0203D404
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	ldr r1, [sp, #0x3c]
	mov r4, r0
	ldr r0, [sp, #0x40]
	str r1, [r4, #0xc0]
	str r0, [r4, #0xc4]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0203D470
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0203D450
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	b _0203D468
	arm_func_end sub_0203D404
_0203D450:
	mov r0, #0
	add r1, sp, #0x14
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
_0203D468:
	add r3, sp, #0x1c
	b _0203D48C
_0203D470:
	mov r0, #0
	add r1, sp, #0xc
	add r3, sp, #0x1c
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
_0203D48C:
	ldr r2, [r3]
	ldr r1, [r3, #4]
	ldr r0, [r4, #8]
	str r2, [sp, #0x24]
	str r1, [sp, #0x28]
	cmp r0, #0
	beq _0203D4BC
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrne r1, [r0, #0x20]
	moveq r1, #0
	b _0203D4C0
_0203D4BC:
	mov r1, #0
_0203D4C0:
	ldr r0, [r4, #0xc0]
	cmp r1, r0
	bgt _0203D4E4
	ldr r0, [sp, #0x3c]
	mov r1, #1
	add r0, r0, #0x50000
	str r1, [r4, #0xc8]
	str r0, [sp, #0x24]
	b _0203D4F8
_0203D4E4:
	ldr r0, [sp, #0x3c]
	mov r1, #2
	sub r0, r0, #0x50000
	str r1, [r4, #0xc8]
	str r0, [sp, #0x24]
_0203D4F8:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0203D520
	add r1, sp, #0x24
	add r0, r0, #0xc
	mov r3, #0x2000
	ldmia r1, {r1, r2}
	bl sub_02011C20
_0203D520:
	mov ip, #0
	str ip, [r4, #0xcc]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0203D564
	mov r3, #1
	str r3, [r4, #0x54]
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0203D564
	sub r1, r3, #3
	stmia sp, {r1, ip}
	mov r1, #2
	mov r2, #8
	str ip, [sp, #8]
	bl sub_02012B68
_0203D564:
	mov r0, #1
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_0203D578
sub_0203D578: ; 0x0203D578
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x40
	mov r6, r0
	ldr r0, [r6, #0xc8]
	mov r5, r1
	cmp r0, #1
	mov r4, #0
	beq _0203D5A4
	cmp r0, #2
	beq _0203D710
	b _0203D878
	arm_func_end sub_0203D578
_0203D5A4:
	ldr r1, [r6, #8]
	cmp r1, #0
	beq _0203D5D8
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _0203D5D0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	movne r0, #1
	moveq r0, r4
	b _0203D5DC
_0203D5D0:
	mov r0, r4
	b _0203D5DC
_0203D5D8:
	mov r0, r4
_0203D5DC:
	cmp r0, #0
	bne _0203D878
	cmp r1, #0
	beq _0203D600
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r0, [r0, #0xa4]
	moveq r0, #0
	b _0203D604
_0203D600:
	mov r0, #0
_0203D604:
	cmp r0, #0
	bne _0203D878
	ldr r0, [r6, #0xcc]
	cmp r0, #0
	bne _0203D6E4
	cmp r1, #0
	beq _0203D660
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _0203D640
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	b _0203D658
_0203D640:
	mov r0, #0
	add r1, sp, #0x18
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
_0203D658:
	add r2, sp, #0x28
	b _0203D67C
_0203D660:
	mov r0, #0
	add r1, sp, #0x10
	add r2, sp, #0x28
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
_0203D67C:
	ldmia r2, {r1, r2}
	mov r0, #1
	str r0, [r6, #0xcc]
	ldr r0, [r6, #8]
	add r1, r1, #0x78000
	str r2, [sp, #0x3c]
	str r1, [sp, #0x38]
	cmp r0, #0
	beq _0203D6DC
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0203D6B8
	mov r1, #0x1e000
	mov r2, #0x1e
	bl sub_02012860
_0203D6B8:
	ldr r0, [r6, #8]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0203D6DC
	add r1, sp, #0x38
	add r0, r0, #0xc
	mov r3, #0x1e
	ldmia r1, {r1, r2}
	bl sub_02011AB0
_0203D6DC:
	mov r4, #1
	b _0203D878
_0203D6E4:
	mov r0, #0
	str r0, [r6, #0x54]
	ldr r0, [r6, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0203D704
	bl sub_02012C00
_0203D704:
	mov r0, #0
	str r0, [r6, #0xc8]
	b _0203D878
_0203D710:
	ldr r1, [r6, #8]
	cmp r1, #0
	beq _0203D744
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _0203D73C
	ldr r0, [r0, #0xc]
	cmp r0, #0
	movne r0, #1
	moveq r0, r4
	b _0203D748
_0203D73C:
	mov r0, r4
	b _0203D748
_0203D744:
	mov r0, r4
_0203D748:
	cmp r0, #0
	bne _0203D878
	cmp r1, #0
	beq _0203D76C
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r0, [r0, #0xa4]
	moveq r0, #0
	b _0203D770
_0203D76C:
	mov r0, #0
_0203D770:
	cmp r0, #0
	bne _0203D878
	ldr r0, [r6, #0xcc]
	cmp r0, #0
	bne _0203D850
	cmp r1, #0
	beq _0203D7CC
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _0203D7AC
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	b _0203D7C4
_0203D7AC:
	mov r0, #0
	add r1, sp, #8
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
_0203D7C4:
	add r2, sp, #0x20
	b _0203D7E8
_0203D7CC:
	mov r0, #0
	add r1, sp, #0
	add r2, sp, #0x20
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
_0203D7E8:
	ldmia r2, {r1, r2}
	mov r0, #1
	str r0, [r6, #0xcc]
	ldr r0, [r6, #8]
	sub r1, r1, #0x78000
	str r2, [sp, #0x34]
	str r1, [sp, #0x30]
	cmp r0, #0
	beq _0203D848
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0203D824
	mov r1, #0x1e000
	mov r2, #0x1e
	bl sub_02012860
_0203D824:
	ldr r0, [r6, #8]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0203D848
	add r1, sp, #0x30
	add r0, r0, #0xc
	mov r3, #0x1e
	ldmia r1, {r1, r2}
	bl sub_02011AB0
_0203D848:
	mov r4, #1
	b _0203D878
_0203D850:
	mov r0, #0
	str r0, [r6, #0x54]
	ldr r0, [r6, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0203D870
	bl sub_02012C00
_0203D870:
	mov r0, #0
	str r0, [r6, #0xc8]
_0203D878:
	mov r0, r6
	mov r1, r5
	bl sub_0203C87C
	mov r0, r4
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0203D890
sub_0203D890: ; 0x0203D890
	stmdb sp!, {r3, lr}
	cmp r1, #6
	bne _0203D8FC
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0203D8D0
	ldr r3, [r1, #0xc]
	cmp r3, #0
	moveq r1, #0
	beq _0203D8D4
	ldr r2, [r3, #0x8c]
	ldr r1, [r3, #0xa0]
	ldr r3, [r3, #0xb0]
	add r1, r2, r1
	add r1, r3, r1
	b _0203D8D4
	arm_func_end sub_0203D890
_0203D8D0:
	mov r1, #0
_0203D8D4:
	cmp r1, #0
	bne _0203D8FC
	ldrb r1, [r0, #0xd4]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldrh r1, [r0, #0xd8]
	cmp r1, #0
	ldmneia sp!, {r3, pc}
	bl sub_0203D910
	ldmia sp!, {r3, pc}
_0203D8FC:
	ldrh r1, [r0, #0xd8]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	bl sub_0203DA10
	ldmia sp!, {r3, pc}

	arm_func_start sub_0203D910
sub_0203D910: ; 0x0203D910
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0203DA0C ; =MAIN_BSS_0210CA60
	mov r4, r0
	ldr r5, [r1]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #0x25
	mov r2, #0
	bl ov0_02142F6C
	strh r0, [r4, #0xd8]
	ldrh r1, [r4, #0xd8]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov0_02143088
	cmp r0, #0
	beq _0203D964
	mov r1, r4
	mov r2, r5
	bl ov0_021652DC
	arm_func_end sub_0203D910
_0203D964:
	ldrh r0, [r4, #0xd8]
	cmp r0, #0
	ldrneb r0, [r4, #0xd4]
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #1
	ldr r0, [r4, #8]
	bne _0203D9C4
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	ldrne r1, [r0, #0xc4]
	cmpne r1, #0
	beq _0203D9B8
	mvn r0, #0xff
	strh r0, [r1, #0x40]
	strh r0, [r1, #0x42]
	strh r0, [r1, #0x44]
	strh r0, [r1, #0x46]
	mov r0, #1
	str r0, [r1, #0x48]
_0203D9B8:
	mov r0, #0
	str r0, [r4, #0x90]
	ldmia sp!, {r3, r4, r5, pc}
_0203D9C4:
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	ldrsh r3, [r4, #0xd6]
	cmpne r0, #0
	ldrne r2, [r0, #0xc4]
	cmpne r2, #0
	beq _0203DA00
	mvn r1, #0xff
	strh r1, [r2, #0x40]
	mov r0, #0x100
	strh r0, [r2, #0x42]
	strh r1, [r2, #0x44]
	strh r3, [r2, #0x46]
	mov r0, #1
	str r0, [r2, #0x48]
_0203DA00:
	mov r0, #0
	str r0, [r4, #0x90]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0203DA0C: .word MAIN_BSS_0210CA60

	arm_func_start sub_0203DA10
sub_0203DA10: ; 0x0203DA10
	stmdb sp!, {r3, lr}
	ldrh r1, [r0, #0xd8]
	cmp r1, #0
	ldrne r0, _0203DA34 ; =MAIN_BSS_0210CA60
	ldrne r0, [r0]
	cmpne r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov0_021430D8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0203DA34: .word MAIN_BSS_0210CA60
	arm_func_end sub_0203DA10

	arm_func_start sub_0203DA38
sub_0203DA38: ; 0x0203DA38
	mov r0, #1
	bx lr
	arm_func_end sub_0203DA38

	arm_func_start sub_0203DA40
sub_0203DA40: ; 0x0203DA40
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_0203C2B8
	mov r0, r5
	mov r1, r4
	bl sub_0203C87C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0203DA40

	arm_func_start sub_0203DA60
sub_0203DA60: ; 0x0203DA60
	str r1, [r0, #0x58]
	bx lr
	arm_func_end sub_0203DA60

	arm_func_start sub_0203DA68
sub_0203DA68: ; 0x0203DA68
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	bl sub_02011D60
	ldr r0, _0203DB58 ; =PTR_LAB_0208dd84
	mov ip, #0
	str r0, [r4]
	str ip, [r4, #0x184]
	str ip, [r4, #0x1f4]
	strb ip, [r4, #0x200]
	str ip, [r4, #0x1d8]
	str ip, [r4, #0x1dc]
	strb ip, [r4, #0x1e0]
	strb ip, [r4, #0x1e1]
	mov r1, #0x1000
	str r1, [r4, #0x19c]
	mov r1, #2
	str r1, [r4, #0x1a0]
	mov r1, #4
	mov r0, #0xff
	str r1, [r4, #0x1a4]
	strb r0, [r4, #0x1c9]
	add r1, r0, #0xff00
	add r0, r4, #0x100
	strh r1, [r0, #0xca]
	ldr r1, [r4, #0xc4]
	mov r3, #0x1f
	str ip, [r1, #0x10]
	ldr r2, [r4, #0xc4]
	ldr r1, _0203DB5C ; =DAT_02084d60
	str r3, [r2, #0x14]
	str ip, [r4, #0x1a8]
	strb ip, [r4, #0x1d4]
	strb ip, [r4, #0x1d5]
	str ip, [r4, #0x1cc]
	strh ip, [r0, #0xb8]
	strb ip, [r4, #0x1c6]
	str ip, [r4, #0x1bc]
	str ip, [r4, #0x1c0]
	strb ip, [r4, #0x1c7]
	add lr, sp, #0
	strb ip, [r4, #0x1c8]
	ldmia r1, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	ldr r0, [sp]
	mov r1, #1
	str r0, [r4, #0x1e4]
	ldr r2, [sp, #4]
	mov r0, r4
	str r2, [r4, #0x1e8]
	ldr r2, [sp, #8]
	str r2, [r4, #0x1ec]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0x1f0]
	str ip, [r4, #0x1f8]
	str r1, [r4, #0x1fc]
	str ip, [r4, #0x194]
	str ip, [r4, #0x198]
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203DB58: .word PTR_LAB_0208dd84
_0203DB5C: .word DAT_02084d60
	arm_func_end sub_0203DA68

	arm_func_start sub_0203DB60
sub_0203DB60: ; 0x0203DB60
	stmdb sp!, {r4, lr}
	ldr r1, _0203DB84 ; =PTR_LAB_0208dd84
	mov r4, r0
	str r1, [r4]
	bl sub_0203E55C
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203DB84: .word PTR_LAB_0208dd84
	arm_func_end sub_0203DB60

	arm_func_start sub_0203DB88
sub_0203DB88: ; 0x0203DB88
	stmdb sp!, {r4, lr}
	ldr r1, _0203DBB4 ; =PTR_LAB_0208dd84
	mov r4, r0
	str r1, [r4]
	bl sub_0203E55C
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203DBB4: .word PTR_LAB_0208dd84
	arm_func_end sub_0203DB88

	arm_func_start sub_0203DBB8
sub_0203DBB8: ; 0x0203DBB8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	mov r6, r1
	str r0, [sp, #8]
	mov r5, r2
	mov r4, r3
	ldr r8, [sp, #0x4c]
	bl sub_0203E55C
	cmp r6, #4
	bne _0203DC44
	ldr r0, _0203E0E4 ; =MAIN_BSS_020B26A0
	mvn r1, #0
	bl sub_020176BC
	ldr r1, [sp, #8]
	str r0, [r1, #0x184]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	ldr r0, _0203E0E8 ; =0x04000210
	ldr r0, [r0]
	tst r0, #1
	beq _0203DC20
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x184]
	bl sub_02040EF8
	b _0203DC2C
	arm_func_end sub_0203DBB8
_0203DC20:
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x184]
	bl sub_02040EBC
_0203DC2C:
	ldr r0, [sp, #8]
	mov r1, #1
	str r1, [r0, #0x1f8]
	mov r1, #0
	str r1, [r0, #0x1fc]
	b _0203DD68
_0203DC44:
	cmp r6, #2
	cmpne r8, #0
	beq _0203DD24
	ldr r0, _0203E0EC ; =_0208F304
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
	cmp r0, #1
	bne _0203DD24
	cmp r6, #1
	mov r6, #1
	bne _0203DCA4
	ldr r0, [sp, #0x48]
	mov r1, r5
	mov r3, r0, lsl #0x10
	ldr r0, _0203E0E4 ; =MAIN_BSS_020B26A0
	mov r2, r4
	mov r3, r3, lsr #0x10
	str r6, [sp]
	bl sub_02017748
	ldr r1, [sp, #8]
	b _0203DCC8
_0203DCA4:
	ldr r0, [sp, #0x48]
	mov r1, r5
	mov r3, r0, lsl #0x10
	ldr r0, _0203E0E4 ; =MAIN_BSS_020B26A0
	mov r2, r4
	mov r3, r3, lsr #0x10
	str r6, [sp]
	bl sub_02017848
	ldr r1, [sp, #8]
_0203DCC8:
	str r0, [r1, #0x184]
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x184]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	ldr r0, _0203E0E8 ; =0x04000210
	ldr r0, [r0]
	tst r0, #1
	beq _0203DD00
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x184]
	bl sub_02040EF8
	b _0203DD0C
_0203DD00:
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x184]
	bl sub_02040EBC
_0203DD0C:
	ldr r0, [sp, #8]
	mov r1, #1
	str r1, [r0, #0x1f8]
	mov r1, #0
	str r1, [r0, #0x1fc]
	b _0203DD68
_0203DD24:
	ldr r0, [sp, #0x48]
	ldr r1, _0203E0F0 ; =MAIN_BSS_0210CA64
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	stmia sp, {r0, r8}
	ldr r0, [r1]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_02041008
	ldr r1, [sp, #8]
	str r0, [r1, #0x184]
	ldr r0, [sp, #8]
	mov r1, #0
	str r1, [r0, #0x1f8]
	mov r1, #1
	str r1, [r0, #0x1fc]
_0203DD68:
	ldr r0, [sp, #8]
	ldr r1, [r0, #0x184]
	ldr r2, [r1, #0x30]
	mov r1, r0
	str r2, [r1, #0x190]
	ldr r1, [r1, #0x184]
	bl sub_02011FF4
	cmp r8, #0
	beq _0203DEA0
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x184]
	ldrb r2, [r0, #0x14]
	cmp r2, #0
	beq _0203DEB4
	ldr r0, [sp, #8]
	ldr r1, _0203E0F4 ; =sub_02007784
	str r2, [r0, #0x198]
	str r1, [sp]
	ldr r0, [r0, #0x198]
	ldr r3, _0203E0F8 ; =sub_02007770
	mov r1, #0x18
	mov r2, #8
	bl __cxa_vec_new
	ldr r1, [sp, #8]
	mov r5, #0
	str r0, [r1, #0x194]
	mov r0, r1
	ldr r0, [r0, #0x198]
	mov r6, r5
	cmp r0, #0
	ble _0203DE6C
	mov r7, r5
_0203DDE8:
	ldr r0, [sp, #8]
	and r1, r6, #0xff
	ldr r0, [r0, #0x184]
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	movs r4, r0
	beq _0203DE54
	ldrb r0, [r4]
	tst r0, #1
	beq _0203DE54
	ldr r0, [sp, #8]
	ldr r1, [r4, #4]
	ldr r0, [r0, #0x194]
	add r0, r0, r7
	bl sub_020077CC
	ldr r0, [sp, #8]
	ldr r1, [r4, #8]
	ldr r0, [r0, #0x194]
	add r0, r0, r7
	bl sub_020077E4
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x194]
	add r0, r0, r7
	ldr r0, [r0, #0x10]
	cmp r5, r0
	movlo r5, r0
_0203DE54:
	ldr r0, [sp, #8]
	add r6, r6, #1
	ldr r0, [r0, #0x198]
	add r7, r7, #0x18
	cmp r6, r0
	blt _0203DDE8
_0203DE6C:
	mov r1, #0
	mov r0, r5
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	ldr r2, [sp, #8]
	mov r1, #0
	str r0, [r2, #0x188]
	mov r0, r5
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	ldr r1, [sp, #8]
	str r0, [r1, #0x18c]
	b _0203DEB4
_0203DEA0:
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x184]
	ldr r1, [r0, #0x2c]
	ldr r0, [sp, #8]
	str r1, [r0, #0x188]
_0203DEB4:
	ldr r0, [sp, #8]
	mov r4, #0
	ldr r0, [r0, #0x184]
	mov r3, #0xff
	ldr r1, [r0, #0xc]
	ldr r0, [sp, #8]
	add r2, r3, #0xff00
	ldr r0, [r0, #0xc4]
	mov r5, r4
	str r1, [r0, #0x34]
	ldr r0, [sp, #8]
	mov r6, r4
	str r8, [r0, #0x1f4]
	strb r4, [r0, #0x200]
	strb r3, [r0, #0x1c9]
	add r1, r0, #0x100
	strh r2, [r1, #0xca]
	str r4, [r0, #0x1a8]
	mov r2, #2
	strb r2, [r0, #0x1c4]
	add r0, r3, #0x7f00
	strh r0, [r1, #0xac]
	ldr r0, [sp, #8]
	mov r1, #0x1f
	strb r1, [r0, #0x1c5]
	str r4, [r0, #0x1b0]
	mov r7, r4
	str r4, [sp, #0x14]
	str r4, [r0, #0x1b4]
_0203DF28:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #0x184]
	and r1, r1, #0xff
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	beq _0203E084
	ldrb r1, [r0]
	tst r1, #1
	beq _0203E084
	ldr r1, [r0, #8]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r1, #0xb8]
	str r0, [sp, #0xc]
	ldrh r0, [r0]
	cmp r0, #0
	ble _0203E084
	mvn r8, #0xff
_0203DF7C:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl NNS_G2dGetCellDataByIdx
	ldrh fp, [r0]
	mov r3, #0
	cmp fp, #0
	ble _0203E064
	ldr sl, [r0, #4]
_0203DFA4:
	mov r0, r3, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, #6
	mul r0, r1, r0
	add sb, sl, r0
	ldrh r2, [sl, r0]
	ldrh r1, [sb, #2]
	ldrh r0, [sb, #4]
	strh r2, [sp, #0x18]
	strh r1, [sp, #0x1a]
	strh r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	ldr r0, _0203E0FC ; =0x01FF0000
	add r3, r3, #1
	and r0, r1, r0
	mov ip, r0, lsr #0x10
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	and lr, r0, #0xff
	ldr r0, _0203E100 ; =0xC000C000
	cmp ip, #0xff
	and r1, r1, r0
	and r0, r1, #0xc000
	mov r2, r0, asr #0xe
	and r0, r1, #0xc0000000
	mov r0, r0, lsr #0x1e
	mov r1, r0, lsl #1
	ldr r0, _0203E104 ; =NNSi_objSizeWTbl
	orrgt ip, ip, r8
	add r0, r0, r2, lsl #3
	ldrh sb, [r1, r0]
	ldr r0, _0203E108 ; =NNSi_objSizeHTbl
	cmp lr, #0x7f
	add r0, r0, r2, lsl #3
	ldrh r1, [r1, r0]
	orrgt lr, lr, r8
	cmp ip, r4
	movlt r4, ip
	cmp lr, r6
	add r0, ip, sb
	movlt r6, lr
	cmp r0, r5
	movgt r5, r0
	add r0, lr, r1
	cmp r0, r7
	movgt r7, r0
	cmp r3, fp
	blt _0203DFA4
_0203E064:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldrh r1, [r0]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	blt _0203DF7C
_0203E084:
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0x1d
	blt _0203DF28
	add r0, r4, r5
	add r0, r0, r0, lsr #31
	mov r2, r0, asr #1
	add r1, r6, r7
	add r0, r1, r1, lsr #31
	mov r3, r0, asr #1
	mov r8, r2, lsl #0xc
	ldr r0, [sp, #8]
	sub r2, r5, r4
	sub r1, r7, r6
	str r8, [r0, #0x1e4]
	mov r3, r3, lsl #0xc
	str r3, [r0, #0x1e8]
	mov r2, r2, lsl #0xc
	str r2, [r0, #0x1ec]
	mov r1, r1, lsl #0xc
	str r1, [r0, #0x1f0]
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0203E0E4: .word MAIN_BSS_020B26A0
_0203E0E8: .word 0x04000210
_0203E0EC: .word MAIN_BSS_0208F304
_0203E0F0: .word MAIN_BSS_0210CA64
_0203E0F4: .word sub_02007784
_0203E0F8: .word sub_02007770
_0203E0FC: .word 0x01FF0000
_0203E100: .word 0xC000C000
_0203E104: .word NNSi_objSizeWTbl
_0203E108: .word NNSi_objSizeHTbl

	arm_func_start sub_0203E10C
sub_0203E10C: ; 0x0203E10C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov r6, r1
	str r0, [sp, #0x10]
	mov r5, r2
	mov r4, r3
	ldr r8, [sp, #0x54]
	bl sub_0203E55C
	cmp r6, #4
	bne _0203E17C
	ldr r0, _0203E53C ; =0x00050838
	bl _Znwm
	cmp r0, #0
	beq _0203E148
	bl sub_020412A0
	arm_func_end sub_0203E10C
_0203E148:
	ldr r1, [sp, #0x10]
	ldr r2, _0203E540 ; =DAT_0208dd98
	str r0, [r1, #0x184]
	stmia sp, {r2, r8}
	mov r0, #1
	str r0, [sp, #8]
	mov r0, r1
	ldr r0, [r0, #0x184]
	ldr r3, [sp, #0x50]
	mov r1, r5
	mov r2, r4
	bl sub_02041344
	b _0203E1D0
_0203E17C:
	mov r0, #0x34
	bl _Znwm
	cmp r0, #0
	beq _0203E190
	bl sub_020407E0
_0203E190:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x50]
	str r0, [r1, #0x184]
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	stmia sp, {r0, r8}
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, r1
	ldr r0, [r0, #0x184]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_02040830
_0203E1D0:
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x184]
	ldr r2, [r1, #0x30]
	mov r1, r0
	str r2, [r1, #0x190]
	ldr r1, [r1, #0x184]
	bl sub_02011FF4
	cmp r8, #0
	beq _0203E2F0
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x184]
	ldrb r2, [r0, #0x14]
	cmp r2, #0
	beq _0203E304
	ldr r0, [sp, #0x10]
	ldr r1, _0203E544 ; =sub_02007784
	str r2, [r0, #0x198]
	str r1, [sp]
	ldr r0, [r0, #0x198]
	ldr r3, _0203E548 ; =sub_02007770
	mov r1, #0x18
	mov r2, #8
	bl __cxa_vec_new
	mov r5, #0
	ldr r1, [sp, #0x10]
	mov r6, r5
	mov r7, r5
	str r0, [r1, #0x194]
_0203E240:
	ldr r0, [sp, #0x10]
	and r1, r6, #0xff
	ldr r0, [r0, #0x184]
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	movs r4, r0
	beq _0203E2AC
	ldrb r0, [r4]
	tst r0, #1
	beq _0203E2AC
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #4]
	ldr r0, [r0, #0x194]
	add r0, r0, r7
	bl sub_020077CC
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #8]
	ldr r0, [r0, #0x194]
	add r0, r0, r7
	bl sub_020077E4
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x194]
	add r0, r0, r7
	ldr r0, [r0, #0x10]
	cmp r5, r0
	movlo r5, r0
_0203E2AC:
	add r6, r6, #1
	cmp r6, #0x1d
	add r7, r7, #0x18
	blt _0203E240
	mov r1, #0
	mov r0, r5
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	ldr r2, [sp, #0x10]
	mov r1, #0
	str r0, [r2, #0x188]
	mov r0, r5
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x18c]
	b _0203E304
_0203E2F0:
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x184]
	ldr r1, [r0, #0x2c]
	ldr r0, [sp, #0x10]
	str r1, [r0, #0x188]
_0203E304:
	ldr r0, [sp, #0x10]
	mov r4, #0
	ldr r0, [r0, #0x184]
	mov r3, #0xff
	ldr r1, [r0, #0xc]
	ldr r0, [sp, #0x10]
	add r2, r3, #0xff00
	ldr r0, [r0, #0xc4]
	mov r5, r4
	str r1, [r0, #0x34]
	ldr r0, [sp, #0x10]
	mov r6, r4
	str r8, [r0, #0x1f4]
	strb r4, [r0, #0x200]
	strb r3, [r0, #0x1c9]
	add r1, r0, #0x100
	strh r2, [r1, #0xca]
	str r4, [r0, #0x1a8]
	mov r2, #2
	strb r2, [r0, #0x1c4]
	add r0, r3, #0x7f00
	strh r0, [r1, #0xac]
	ldr r0, [sp, #0x10]
	mov r1, #0x1f
	strb r1, [r0, #0x1c5]
	str r4, [r0, #0x1b0]
	mov r7, r4
	str r4, [sp, #0x1c]
	str r4, [r0, #0x1b4]
_0203E378:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #0x184]
	and r1, r1, #0xff
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	beq _0203E4D4
	ldrb r1, [r0]
	tst r1, #1
	beq _0203E4D4
	ldr r1, [r0, #8]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r1, #0xb8]
	str r0, [sp, #0x14]
	ldrh r0, [r0]
	cmp r0, #0
	ble _0203E4D4
	mvn r8, #0xff
_0203E3CC:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl NNS_G2dGetCellDataByIdx
	ldrh fp, [r0]
	mov r3, #0
	cmp fp, #0
	ble _0203E4B4
	ldr sl, [r0, #4]
_0203E3F4:
	mov r0, r3, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, #6
	mul r0, r1, r0
	add sb, sl, r0
	ldrh r2, [sl, r0]
	ldrh r1, [sb, #2]
	ldrh r0, [sb, #4]
	strh r2, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r0, _0203E54C ; =0x01FF0000
	add r3, r3, #1
	and r0, r1, r0
	mov ip, r0, lsr #0x10
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	and lr, r0, #0xff
	ldr r0, _0203E550 ; =0xC000C000
	cmp ip, #0xff
	and r1, r1, r0
	and r0, r1, #0xc000
	mov r2, r0, asr #0xe
	and r0, r1, #0xc0000000
	mov r0, r0, lsr #0x1e
	mov r1, r0, lsl #1
	ldr r0, _0203E554 ; =NNSi_objSizeWTbl
	orrgt ip, ip, r8
	add r0, r0, r2, lsl #3
	ldrh sb, [r1, r0]
	ldr r0, _0203E558 ; =NNSi_objSizeHTbl
	cmp lr, #0x7f
	add r0, r0, r2, lsl #3
	ldrh r1, [r1, r0]
	orrgt lr, lr, r8
	cmp ip, r4
	movlt r4, ip
	cmp lr, r6
	add r0, ip, sb
	movlt r6, lr
	cmp r0, r5
	movgt r5, r0
	add r0, lr, r1
	cmp r0, r7
	movgt r7, r0
	cmp r3, fp
	blt _0203E3F4
_0203E4B4:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldrh r1, [r0]
	ldr r0, [sp, #0x18]
	cmp r0, r1
	blt _0203E3CC
_0203E4D4:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #0x1d
	blt _0203E378
	add r0, r4, r5
	add r0, r0, r0, lsr #31
	mov r2, r0, asr #1
	add r1, r6, r7
	add r0, r1, r1, lsr #31
	mov r3, r0, asr #1
	mov r8, r2, lsl #0xc
	ldr r0, [sp, #0x10]
	sub r2, r5, r4
	sub r1, r7, r6
	str r8, [r0, #0x1e4]
	mov r3, r3, lsl #0xc
	str r3, [r0, #0x1e8]
	mov r2, r2, lsl #0xc
	str r2, [r0, #0x1ec]
	mov r1, r1, lsl #0xc
	str r1, [r0, #0x1f0]
	mov r1, #1
	str r1, [r0, #0x1f8]
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0203E53C: .word 0x00050838
_0203E540: .word DAT_0208dd98
_0203E544: .word sub_02007784
_0203E548: .word sub_02007770
_0203E54C: .word 0x01FF0000
_0203E550: .word 0xC000C000
_0203E554: .word NNSi_objSizeWTbl
_0203E558: .word NNSi_objSizeHTbl

	arm_func_start sub_0203E55C
sub_0203E55C: ; 0x0203E55C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x184]
	cmp r0, #0
	beq _0203E61C
	ldr r0, [r4, #0x1f4]
	cmp r0, #0
	beq _0203E58C
	ldr r0, [r4, #0x188]
	bl NNS_GfdFreeLnkTexVram
	ldr r0, [r4, #0x18c]
	bl NNS_GfdFreeLnkTexVram
	arm_func_end sub_0203E55C
_0203E58C:
	ldr r0, [r4, #0x1fc]
	cmp r0, #0
	beq _0203E5D8
	ldr r0, [r4, #0x184]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r0, [r4, #0x1f8]
	cmp r0, #0
	ldrne r0, [r4, #0x184]
	cmpne r0, #0
	beq _0203E5F0
	beq _0203E5CC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0203E5CC:
	mov r0, #0
	str r0, [r4, #0x184]
	b _0203E5F0
_0203E5D8:
	mov r0, r4
	bl sub_020120B0
	ldr r0, [r4, #0x184]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_0203E5F0:
	mov r1, #0
	str r1, [r4, #0x1d8]
	str r1, [r4, #0x1dc]
	strb r1, [r4, #0x1e0]
	strb r1, [r4, #0x1e1]
	mov r0, #0x1000
	str r0, [r4, #0x19c]
	str r1, [r4, #0x1f8]
	str r1, [r4, #0x184]
	mov r0, #1
	str r0, [r4, #0x1fc]
_0203E61C:
	ldr r0, [r4, #0x194]
	cmp r0, #0
	beq _0203E640
	ldr r3, _0203E64C ; =sub_02007784
	mov r1, #0x18
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x194]
_0203E640:
	mov r0, #0
	str r0, [r4, #0x198]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203E64C: .word sub_02007784

	arm_func_start sub_0203E650
sub_0203E650: ; 0x0203E650
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02013110
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0203E650

	arm_func_start sub_0203E66C
sub_0203E66C: ; 0x0203E66C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x1d8]
	ldr r0, [r4, #0x1dc]
	cmp r1, r0
	ldreqb r1, [r4, #0x1e0]
	ldreqb r0, [r4, #0x1e1]
	cmpeq r1, r0
	beq _0203E6A8
	ldr r1, [r4, #0x1dc]
	mov r0, r4
	str r1, [r4, #0x1d8]
	ldrb r1, [r4, #0x1e1]
	strb r1, [r4, #0x1e0]
	bl sub_0203EE3C
	arm_func_end sub_0203E66C
_0203E6A8:
	ldr r0, [r4, #0x1a8]
	tst r0, #1
	beq _0203E734
	ldr r0, [r4, #0x1b4]
	cmp r0, #0
	blt _0203E6FC
	ldr r0, _0203E91C ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008E50
	mov r1, r0
	mov r0, #0x3c
	bl _s32_div_f
	ldr r1, [r4, #0x1b4]
	sub r0, r1, r0
	str r0, [r4, #0x1b4]
	cmp r0, #0
	ldrle r0, [r4, #0x1a8]
	bicle r0, r0, #1
	strle r0, [r4, #0x1a8]
_0203E6FC:
	ldr r0, _0203E91C ; =_0208F304
	ldr r0, [r0]
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008E50
	mov r1, r0
	mov r0, #0x12c
	bl _s32_div_f
	ldr r1, [r4, #0x1b0]
	add r0, r1, r0
	str r0, [r4, #0x1b0]
	cmp r0, #0x258
	subge r0, r0, #0x258
	strge r0, [r4, #0x1b0]
_0203E734:
	ldr r0, [r4, #0x1a8]
	tst r0, #4
	beq _0203E860
	ldr r0, [r4, #0x1cc]
	cmp r0, #0
	blt _0203E860
	sub r0, r0, #1
	str r0, [r4, #0x1cc]
	cmp r0, #0
	bgt _0203E77C
	ldr r1, [r4, #0x1a8]
	mov r0, #0
	bic r1, r1, #4
	str r1, [r4, #0x1a8]
	strb r0, [r4, #0x1d4]
	strb r0, [r4, #0x1d5]
	str r0, [r4, #0x1cc]
	b _0203E860
_0203E77C:
	ldrb r0, [r4, #0x1d4]
	cmp r0, #0
	beq _0203E7E0
	ldr r1, _0203E91C ; =_0208F304
	mov r0, r0, lsl #0x11
	ldr r1, [r1]
	movs lr, r0, lsr #0x10
	add r0, r1, #0x460
	add ip, r0, #0x1000
	add r0, r1, #0x1000
	ldr r1, [r0, #0x460]
	ldmib ip, {r2, r3}
	mla r1, r2, r1, r3
	str r1, [r0, #0x460]
	ldr r0, [ip]
	moveq r0, r0, lsr #0x10
	movne r0, r0, lsr #0x10
	mulne r1, r0, lr
	movne r0, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	ldrb r1, [r4, #0x1d4]
	add r0, r4, #0x100
	sub r1, r2, r1
	b _0203E7E8
_0203E7E0:
	add r0, r4, #0x100
	mov r1, #0
_0203E7E8:
	strh r1, [r0, #0xd0]
	ldrb r0, [r4, #0x1d5]
	cmp r0, #0
	beq _0203E854
	ldr r1, _0203E91C ; =_0208F304
	mov r0, r0, lsl #0x11
	ldr r1, [r1]
	movs lr, r0, lsr #0x10
	add r0, r1, #0x460
	add ip, r0, #0x1000
	add r0, r1, #0x1000
	ldr r1, [r0, #0x460]
	ldmib ip, {r2, r3}
	mla r1, r2, r1, r3
	str r1, [r0, #0x460]
	ldr r0, [ip]
	moveq r0, r0, lsr #0x10
	movne r0, r0, lsr #0x10
	mulne r1, r0, lr
	movne r0, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	ldrb r1, [r4, #0x1d5]
	add r0, r4, #0x100
	sub r1, r2, r1
	strh r1, [r0, #0xd2]
	b _0203E860
_0203E854:
	add r0, r4, #0x100
	mov r1, #0
	strh r1, [r0, #0xd2]
_0203E860:
	mov r0, r4
	bl sub_020121F4
	ldrb r2, [r4, #0x108]
	ldr r1, [r4, #0xc4]
	add r0, r4, #0x100
	str r2, [r1, #0x14]
	ldr r3, [r4, #0x134]
	ldr r2, [r4, #0xc4]
	ldr r1, [r4, #0x11c]
	str r1, [r2, #0x20]
	str r3, [r2, #0x24]
	ldrh r1, [r0, #0x4c]
	ldr r0, [r4, #0xc4]
	strh r1, [r0, #0x28]
	ldr r0, [r4, #0x1a8]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x1c0]
	cmp r0, #0
	ldmleia sp!, {r4, pc}
	ldr r0, [r4, #0x1bc]
	add r2, r0, #1
	str r2, [r4, #0x1bc]
	ldrb r0, [r4, #0x1c7]
	ldrb r1, [r4, #0x1c8]
	ldr r3, [r4, #0x1c0]
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl sub_02007068
	mov r0, r0, asr #0xc
	strb r0, [r4, #0x1c6]
	ldr r1, [r4, #0x1bc]
	ldr r0, [r4, #0x1c0]
	cmp r1, r0
	ldmltia sp!, {r4, pc}
	mov r0, #0
	str r0, [r4, #0x1c0]
	str r0, [r4, #0x1bc]
	ldrb r0, [r4, #0x1c6]
	cmp r0, #0
	ldreq r0, [r4, #0x1a8]
	biceq r0, r0, #2
	streq r0, [r4, #0x1a8]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203E91C: .word MAIN_BSS_0208F304

	arm_func_start sub_0203E920
sub_0203E920: ; 0x0203E920
	ldr ip, _0203E92C ; =sub_0203E934
	mov r2, #0
	bx ip
	.align 2, 0
_0203E92C: .word sub_0203E934
	arm_func_end sub_0203E920

	arm_func_start sub_0203E930
sub_0203E930: ; 0x0203E930
	bx lr
	arm_func_end sub_0203E930

	arm_func_start sub_0203E934
sub_0203E934: ; 0x0203E934
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	mov sb, r0
	ldr r0, [sb, #0x184]
	mov fp, r1
	mov sl, r2
	cmp r0, #0
	mov r6, #0
	beq _0203EE28
	ldr r2, [r0]
	ldrb r1, [sb, #0xc0]
	ldr r2, [r2, #0xc]
	blx r2
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _0203EE28
	ldrb r0, [r0]
	tst r0, #1
	beq _0203EE28
	ldrb r1, [sb, #0xc0]
	ldr r0, [sp, #0xc]
	ldr r8, [sb, #0xc4]
	add r1, sb, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	ldr r0, [r0, #0xc]
	bl sub_02008828
	str sl, [r8, #4]
	ldr r1, [sb, #0x1f4]
	mov r4, r0
	cmp r1, #0
	beq _0203EA80
	ldr r0, [sp, #0xc]
	ldrb r0, [r0]
	tst r0, #1
	beq _0203EAC4
	ldrb r1, [sb, #0xc0]
	ldrb r0, [sb, #0x1c9]
	cmp r0, r1
	addeq r0, sb, #0x100
	ldreqh r0, [r0, #0xca]
	cmpeq r0, r4
	beq _0203EAC4
	ldr r0, [sb, #0x184]
	bl sub_02015070
	ldr r2, [sb, #0x194]
	mov r1, #0x18
	mla r7, r0, r1, r2
	ldrb r2, [sb, #0x200]
	mov r0, r7
	mov r1, r4
	eor r2, r2, #1
	and r5, r2, #0xff
	bl sub_020078E4
	mov r0, r7
	add r1, sb, r5, lsl #2
	ldr r1, [r1, #0x188]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_02007A94
	mov r0, #0
	add r1, sb, r5, lsl #2
	ldr r1, [r1, #0x188]
	ldr r2, [r7, #0x14]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	ldr r3, [r7, #0x10]
	bl NNS_GfdRegisterNewVramTransferTask
	cmp r0, #0
	beq _0203EAC4
	strb r5, [sb, #0x200]
	str r7, [r8, #0x30]
	mov r0, #0
	str r0, [r8, #0x2c]
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #8]
	add r0, sb, #0x100
	str r1, [r8, #0x38]
	strh r4, [r8, #0x2a]
	ldrb r1, [sb, #0xc0]
	strb r1, [sb, #0x1c9]
	strh r4, [r0, #0xca]
	bl NNS_GfdGetVramTransferTaskTotalSize
	b _0203EAC4
	arm_func_end sub_0203E934
_0203EA80:
	ldr r0, [sb, #0x184]
	ldrb r1, [sb, #0xc0]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldr r1, [r0, #4]
	mov r0, r6
	str r1, [r8, #0x2c]
	str r0, [r8, #0x30]
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #8]
	add r0, sb, #0x100
	str r1, [r8, #0x38]
	strh r4, [r8, #0x2a]
	ldrb r1, [sb, #0xc0]
	strb r1, [sb, #0x1c9]
	strh r4, [r0, #0xca]
_0203EAC4:
	ldr r2, [sb, #0x1a8]
	ldr r1, [r8, #0x18]
	tst r2, #4
	ldr r0, [r8, #0x1c]
	ldrh r2, [r8, #8]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r2, [sp, #8]
	ldr r2, [r8, #0x14]
	str r1, [sp, #0x38]
	str r2, [sp, #4]
	ldr r2, [r8, #0x3c]
	str r0, [sp, #0x3c]
	str r2, [sp]
	beq _0203EB1C
	add r2, sb, #0x100
	ldrsh r3, [r2, #0xd0]
	ldrsh r2, [r2, #0xd2]
	add r1, r1, r3, lsl #12
	add r0, r0, r2, lsl #12
	str r1, [sp, #0x38]
	str r0, [sp, #0x3c]
_0203EB1C:
	ldr r2, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	str r2, [r8, #0x18]
	str r1, [r8, #0x1c]
	ldr r0, [sb, #0x1a8]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	tst r0, #2
	beq _0203EBAC
	add r0, sb, #0x100
	ldrh r3, [r0, #0xb8]
	ldrb r1, [sb, #0x1c6]
	ldr r0, [sp, #4]
	ldr r2, _0203EE34 ; =0x84210843
	mul r4, r1, r0
	smull r1, r5, r2, r4
	mov r0, r4, lsr #0x1f
	add r5, r4, r5
	add r5, r0, r5, asr #4
	strh r3, [r8, #8]
	str r5, [r8, #0x14]
	mov r0, #1
	str r0, [r8, #0x3c]
	mov r0, r8
	str sl, [r8, #4]
	ldr r2, [r0]
	mov r1, fp
	ldr r2, [r2, #8]
	blx r2
	ldr r1, [sp, #8]
	add r6, r6, r0
	strh r1, [r8, #8]
	ldr r1, [sp, #4]
	str r1, [r8, #0x14]
	ldr r1, [sp]
	str r1, [r8, #0x3c]
_0203EBAC:
	sub r1, sl, r6
	mov r0, r8
	str r1, [r8, #4]
	ldr r2, [r0]
	mov r1, fp
	ldr r2, [r2, #8]
	blx r2
	ldr r1, [sb, #0x1a8]
	add r6, r6, r0
	tst r1, #1
	beq _0203ED44
	add r0, sb, #0x100
	ldrh r3, [r0, #0xac]
	ldr r2, [sb, #0x1b0]
	mov r7, #0
	and r1, r3, #0x3e0
	and r0, r3, #0x7c00
	and r4, r3, #0x1f
	cmp r2, #0x12c
	mov r3, r1, asr #5
	rsblt r1, r2, #0x12c
	rsblt r5, r1, r1, lsl #5
	subge r1, r2, #0x12c
	rsbge r5, r1, r1, lsl #5
	rsbge r2, r2, #0x258
	mla r1, r4, r2, r5
	mov r0, r0, asr #0xa
	mla r4, r3, r2, r5
	mla r3, r0, r2, r5
	ldr r2, _0203EE38 ; =0x1B4E81B5
	mov r5, r1, lsr #0x1f
	smull r1, r0, r2, r1
	add r0, r5, r0, asr #5
	smull r5, r1, r2, r4
	mov r4, r4, lsr #0x1f
	add r1, r4, r1, asr #5
	smull r5, r4, r2, r3
	mov r2, r3, lsr #0x1f
	add r4, r2, r4, asr #5
	orr r0, r0, r1, lsl #5
	orr r3, r0, r4, lsl #10
	ldrb r2, [sb, #0x1c5]
	ldr r0, [sp, #4]
	mul r4, r2, r0
	ldr r2, _0203EE34 ; =0x84210843
	mov r0, r4, lsr #0x1f
	smull r1, r5, r2, r4
	add r5, r4, r5
	add r5, r0, r5, asr #4
	strh r3, [r8, #8]
	str r5, [r8, #0x14]
	mov r0, #1
	ldr r5, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	str r0, [r8, #0x3c]
_0203EC88:
	str r5, [sp, #0x30]
	str r4, [sp, #0x34]
	cmp r7, #3
	addls pc, pc, r7, lsl #2
	b _0203ECE8
_0203EC9C: ; jump table
	b _0203ECAC ; case 0
	b _0203ECBC ; case 1
	b _0203ECCC ; case 2
	b _0203ECDC ; case 3
_0203ECAC:
	ldrb r0, [sb, #0x1c4]
	add r0, r5, r0, lsl #12
	str r0, [sp, #0x30]
	b _0203ECE8
_0203ECBC:
	ldrb r0, [sb, #0x1c4]
	sub r0, r5, r0, lsl #12
	str r0, [sp, #0x30]
	b _0203ECE8
_0203ECCC:
	ldrb r0, [sb, #0x1c4]
	add r0, r4, r0, lsl #12
	str r0, [sp, #0x34]
	b _0203ECE8
_0203ECDC:
	ldrb r0, [sb, #0x1c4]
	sub r0, r4, r0, lsl #12
	str r0, [sp, #0x34]
_0203ECE8:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x34]
	str r1, [sp, #0x18]
	str r1, [r8, #0x18]
	str r0, [r8, #0x1c]
	sub r1, sl, r6
	str r0, [sp, #0x1c]
	mov r0, r8
	str r1, [r8, #4]
	ldr r2, [r0]
	mov r1, fp
	ldr r2, [r2, #8]
	blx r2
	add r6, r6, r0
	add r7, r7, #1
	cmp r7, #4
	blt _0203EC88
	ldr r0, [sp, #8]
	strh r0, [r8, #8]
	ldr r0, [sp, #4]
	str r0, [r8, #0x14]
	ldr r0, [sp]
	str r0, [r8, #0x3c]
_0203ED44:
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	str r2, [r8, #0x18]
	mov r0, sb
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [r8, #0x1c]
	bl sub_02012D88
	cmp r0, #0
	beq _0203EE28
	mov r0, sb
	bl sub_02012DA8
	mov r5, #0
	mov r4, r0
	mov r7, r5
_0203ED80:
	mov r0, sb
	mov r1, r5
	bl sub_02012D9C
	cmp r0, #0
	beq _0203EE18
	sub r0, sl, r6
	str r0, [r4, #4]
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #8]
	mov r0, sb
	str r1, [r4, #0x38]
	ldrh r2, [r8, #0x2a]
	mov r1, r5
	strh r2, [r4, #0x2a]
	bl sub_02012DB0
	str r0, [r4, #0x14]
	mov r0, sb
	mov r1, r5
	bl sub_02012DC0
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	ldr r0, [sb, #0x1f4]
	cmp r0, #0
	beq _0203EDF0
	ldr r0, [r8, #0x30]
	str r0, [r4, #0x30]
	str r7, [r4, #0x2c]
	b _0203EE00
_0203EDF0:
	ldr r0, [r8, #0x2c]
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x30]
_0203EE00:
	mov r0, r4
	ldr r2, [r0]
	mov r1, fp
	ldr r2, [r2, #8]
	blx r2
	add r6, r6, r0
_0203EE18:
	add r5, r5, #1
	cmp r5, #8
	add r4, r4, #0x4c
	blt _0203ED80
_0203EE28:
	mov r0, r6
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0203EE34: .word 0x84210843
_0203EE38: .word 0x1B4E81B5

	arm_func_start sub_0203EE3C
sub_0203EE3C: ; 0x0203EE3C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x1d8]
	cmp r1, #0
	beq _0203EE60
	cmp r1, #1
	beq _0203EE84
	cmp r1, #3
	ldmia sp!, {r4, pc}
	arm_func_end sub_0203EE3C
_0203EE60:
	ldrb r2, [r4, #0x1e0]
	ldr r1, [r4, #0x1a0]
	ldr r3, [r4, #0x19c]
	bl sub_02012184
	ldrb r2, [r4, #0x1e0]
	ldr r1, [r4, #0x1a0]
	mov r0, r4
	bl sub_02012114
	ldmia sp!, {r4, pc}
_0203EE84:
	ldrb r2, [r4, #0x1e0]
	ldr r1, [r4, #0x1a4]
	ldr r3, [r4, #0x19c]
	bl sub_02012184
	ldrb r2, [r4, #0x1e0]
	ldr r1, [r4, #0x1a4]
	mov r0, r4
	bl sub_02012114
	ldmia sp!, {r4, pc}

	arm_func_start sub_0203EEA8
sub_0203EEA8: ; 0x0203EEA8
	stmdb sp!, {r3, lr}
	ldr lr, [r0, #0x1a8]
	add ip, r0, #0x100
	orr lr, lr, #2
	str lr, [r0, #0x1a8]
	strh r1, [ip, #0xb8]
	mov r1, #0
	str r1, [r0, #0x1bc]
	cmp r3, #0
	strleb r2, [r0, #0x1c6]
	strle r1, [r0, #0x1c0]
	ldmleia sp!, {r3, pc}
	strb r1, [r0, #0x1c6]
	str r3, [r0, #0x1c0]
	strb r1, [r0, #0x1c7]
	strb r2, [r0, #0x1c8]
	ldmia sp!, {r3, pc}
	arm_func_end sub_0203EEA8

	arm_func_start sub_0203EEEC
sub_0203EEEC: ; 0x0203EEEC
	mov r2, #0
	str r2, [r0, #0x1bc]
	cmp r1, #0
	ldrle r1, [r0, #0x1a8]
	bicle r1, r1, #2
	strle r1, [r0, #0x1a8]
	bxle lr
	str r1, [r0, #0x1c0]
	ldrb r1, [r0, #0x1c6]
	strb r1, [r0, #0x1c7]
	strb r2, [r0, #0x1c8]
	bx lr
	arm_func_end sub_0203EEEC

	arm_func_start sub_0203EF1C
sub_0203EF1C: ; 0x0203EF1C
	ldr r2, _0203EF3C ; =PTR_LAB_0208ddc0
	mov r1, #0xff
	str r2, [r0]
	strb r1, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0203EF3C: .word PTR_LAB_0208ddc0
	arm_func_end sub_0203EF1C

	arm_func_start sub_0203EF40
sub_0203EF40: ; 0x0203EF40
	ldr r2, _0203EF60 ; =PTR_LAB_0208ddc0
	mov r1, #0xff
	str r2, [r0]
	strb r1, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0203EF60: .word PTR_LAB_0208ddc0
	arm_func_end sub_0203EF40

	arm_func_start sub_0203EF64
sub_0203EF64: ; 0x0203EF64
	stmdb sp!, {r4, lr}
	ldr r1, _0203EF88 ; =PTR_LAB_0208ddc0
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203EF88: .word PTR_LAB_0208ddc0
	arm_func_end sub_0203EF64

	arm_func_start sub_0203EF8C
sub_0203EF8C: ; 0x0203EF8C
	stmdb sp!, {r4, lr}
	ldr r1, _0203EFB8 ; =PTR_LAB_0208ddc0
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203EFB8: .word PTR_LAB_0208ddc0
	arm_func_end sub_0203EF8C

	arm_func_start sub_0203EFBC
sub_0203EFBC: ; 0x0203EFBC
	stmdb sp!, {r4, lr}
	ldr r1, _0203EFE0 ; =PTR_LAB_0208ddc0
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0203EFE0: .word PTR_LAB_0208ddc0
	arm_func_end sub_0203EFBC

	arm_func_start sub_0203EFE4
sub_0203EFE4: ; 0x0203EFE4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, [r0]
	mov r5, r0
	ldr r2, [r2, #0xc]
	mov r4, r1
	blx r2
	str r4, [r5, #4]
	mov r0, r4, lsl #2
	bl _Znam
	str r0, [r5, #8]
	cmp r4, #0
	mov r2, #0
	ldmleia sp!, {r3, r4, r5, pc}
	mov r1, r2
	arm_func_end sub_0203EFE4
_0203F01C:
	ldr r0, [r5, #8]
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, r4
	blt _0203F01C
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0203F034
sub_0203F034: ; 0x0203F034
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #0
	ble _0203F09C
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0203F09C
	cmp r1, #0
	mov r6, #0
	ble _0203F09C
	mov r5, r6
	arm_func_end sub_0203F034
_0203F064:
	ldr r0, [r4, #8]
	ldr r0, [r0, r6, lsl #2]
	cmp r0, #0
	beq _0203F08C
	beq _0203F084
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0203F084:
	ldr r0, [r4, #8]
	str r5, [r0, r6, lsl #2]
_0203F08C:
	ldr r0, [r4, #4]
	add r6, r6, #1
	cmp r6, r0
	blt _0203F064
_0203F09C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0203F0B4
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #8]
_0203F0B4:
	mov r0, #0
	str r0, [r4, #4]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0203F0C0
sub_0203F0C0: ; 0x0203F0C0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, [r5, #4]
	cmp r3, #0
	ble _0203F13C
	ldr ip, [r5, #8]
	cmp ip, #0
	beq _0203F13C
	cmp r3, #0
	mov r4, #0
	ble _0203F13C
	arm_func_end sub_0203F0C0
_0203F0EC:
	ldr r0, [ip, r4, lsl #2]
	cmp r0, #0
	beq _0203F130
	ldr r2, [r0, #0x58]
	cmp r1, r2
	bne _0203F130
	cmp r0, #0
	beq _0203F128
	beq _0203F11C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0203F11C:
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, r4, lsl #2]
_0203F128:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_0203F130:
	add r4, r4, #1
	cmp r4, r3
	blt _0203F0EC
_0203F13C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0203F144
sub_0203F144: ; 0x0203F144
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	ldr r0, [r0, r4, lsl #2]
	cmp r0, #0
	beq _0203F188
	beq _0203F180
	beq _0203F174
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0203F144
_0203F174:
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, r4, lsl #2]
_0203F180:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_0203F188:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0203F190
sub_0203F190: ; 0x0203F190
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #0
	ble _0203F1F4
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0203F1F4
	subs r6, r1, #1
	bmi _0203F1EC
	mov r5, #0
	arm_func_end sub_0203F190
_0203F1BC:
	ldr r0, [r4, #8]
	ldr r0, [r0, r6, lsl #2]
	cmp r0, #0
	beq _0203F1E4
	beq _0203F1DC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0203F1DC:
	ldr r0, [r4, #8]
	str r5, [r0, r6, lsl #2]
_0203F1E4:
	subs r6, r6, #1
	bpl _0203F1BC
_0203F1EC:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_0203F1F4:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0203F1FC
sub_0203F1FC: ; 0x0203F1FC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr ip, [r0, #4]
	mov r5, r2
	mov r4, r3
	cmp r1, ip
	bge _0203F270
	ldr r0, [r0, #8]
	cmp r0, #0
	ldrne r0, [r0, r1, lsl #2]
	cmpne r0, #0
	beq _0203F270
	ldr r6, [r0, #8]
	cmp r6, #0
	ldrne r7, [r6, #0xc]
	cmpne r7, #0
	beq _0203F268
	mov r1, r5
	add r0, r7, #0xc
	bl sub_02011D1C
	mov r1, r4
	add r0, r7, #0xc
	bl sub_02011D2C
	ldr r0, [r6, #0xc]
	ldr r0, [r0, #0xc4]
	cmp r0, #0
	strne r5, [r0, #0x18]
	strne r4, [r0, #0x1c]
	arm_func_end sub_0203F1FC
_0203F268:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0203F270:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0203F278
sub_0203F278: ; 0x0203F278
	ldr ip, [r0, #4]
	cmp r1, ip
	bge _0203F2A8
	ldr r0, [r0, #8]
	cmp r0, #0
	ldrne r0, [r0, r1, lsl #2]
	cmpne r0, #0
	beq _0203F2A8
	str r2, [r0, #0x18]
	str r3, [r0, #0x1c]
	mov r0, #1
	bx lr
	arm_func_end sub_0203F278
_0203F2A8:
	mov r0, #0
	bx lr

	arm_func_start sub_0203F2B0
sub_0203F2B0: ; 0x0203F2B0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	ldr r0, [sb, #8]
	mov r8, r1
	mov r7, r2
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sb, #4]
	mov r6, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r4, r6
	mov r5, #1
	arm_func_end sub_0203F2B0
_0203F2E4:
	ldr r0, [sb, #8]
	ldr r0, [r0, r6, lsl #2]
	cmp r0, #0
	beq _0203F334
	ldrb r1, [r0, #0x20]
	mov r2, r5
	cmp r1, #2
	cmpne r1, #3
	movne r2, r4
	cmp r2, #0
	beq _0203F334
	cmp r7, #0
	ldr r2, [r0]
	mov r1, r8
	beq _0203F32C
	ldr r2, [r2, #0x24]
	blx r2
	b _0203F334
_0203F32C:
	ldr r2, [r2, #0x28]
	blx r2
_0203F334:
	ldr r0, [sb, #4]
	add r6, r6, #1
	cmp r6, r0
	blt _0203F2E4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_0203F348
sub_0203F348: ; 0x0203F348
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	ldr r0, [r8, #8]
	mov r7, r1
	mov r6, r2
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r8, #4]
	mov r5, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov sb, r5
	mov r4, #1
	arm_func_end sub_0203F348
_0203F37C:
	ldr r0, [r8, #8]
	ldr r0, [r0, r5, lsl #2]
	cmp r0, #0
	beq _0203F3B4
	ldrb r1, [r0, #0x20]
	mov r2, r4
	cmp r1, #2
	cmpne r1, #3
	movne r2, sb
	cmp r2, #0
	beq _0203F3B4
	mov r1, r7
	mov r2, r6
	bl sub_0203C590
_0203F3B4:
	ldr r0, [r8, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _0203F37C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_0203F3C8
sub_0203F3C8: ; 0x0203F3C8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, r4
	mov r7, #1
	arm_func_end sub_0203F3C8
_0203F3F4:
	ldr r0, [r5, #8]
	ldr r0, [r0, r4, lsl #2]
	cmp r0, #0
	beq _0203F42C
	ldrb r1, [r0, #0x20]
	mov r2, r7
	cmp r1, #2
	cmpne r1, #3
	movne r2, r6
	cmp r2, #0
	beq _0203F42C
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
_0203F42C:
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _0203F3F4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0203F440
sub_0203F440: ; 0x0203F440
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, r4
	mov r7, #1
	arm_func_end sub_0203F440
_0203F46C:
	ldr r0, [r5, #8]
	ldr r0, [r0, r4, lsl #2]
	cmp r0, #0
	beq _0203F4A4
	ldrb r1, [r0, #0x20]
	mov r2, r7
	cmp r1, #2
	cmpne r1, #3
	movne r2, r6
	cmp r2, #0
	beq _0203F4A4
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
_0203F4A4:
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _0203F46C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0203F4B8
sub_0203F4B8: ; 0x0203F4B8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r4, [r0, #8]
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r4, [r0, #4]
	mov r6, #0
	cmp r4, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r4, r6
	mov r5, #1
	mov lr, r6
	mov ip, r6
	mov sb, r6
	arm_func_end sub_0203F4B8
_0203F4EC:
	ldr r7, [r0, #8]
	ldr r7, [r7, r6, lsl #2]
	cmp r7, #0
	beq _0203F578
	ldrb r8, [r7, #0x20]
	mov sl, r5
	cmp r8, #2
	cmpne r8, #3
	movne sl, r4
	cmp sl, #0
	ldrne r8, [r7, #8]
	cmpne r8, #0
	beq _0203F578
	ldr r8, [r8, #0xc]
	cmp r8, #0
	strne lr, [r8, #0x1b0]
	ldr r8, [r7, #8]
	ldr sl, [r8, #0xc]
	cmp sl, #0
	addne r8, sl, #0x100
	strneh r1, [r8, #0xac]
	strne ip, [sl, #0x1b0]
	ldr r8, [r7, #8]
	ldr r8, [r8, #0xc]
	cmp r8, #0
	strneb r2, [r8, #0x1c4]
	ldr r7, [r7, #8]
	ldr r8, [r7, #0xc]
	cmp r8, #0
	beq _0203F578
	ldr r7, [r8, #0x1a8]
	orr r7, r7, #1
	str r7, [r8, #0x1a8]
	str r3, [r8, #0x1b4]
	str sb, [r8, #0x1b0]
_0203F578:
	ldr r7, [r0, #4]
	add r6, r6, #1
	cmp r6, r7
	blt _0203F4EC
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start sub_0203F58C
sub_0203F58C: ; 0x0203F58C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, [r0, #8]
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r0, #4]
	mov lr, #0
	cmp r2, #0
	ldmleia sp!, {r3, r4, r5, pc}
	mov r3, lr
	mov ip, #1
	arm_func_end sub_0203F58C
_0203F5B4:
	ldr r2, [r0, #8]
	ldr r5, [r2, lr, lsl #2]
	cmp r5, #0
	beq _0203F5F0
	ldrb r2, [r5, #0x20]
	mov r4, ip
	cmp r2, #2
	cmpne r2, #3
	movne r4, r3
	cmp r4, #0
	ldrne r2, [r5, #8]
	cmpne r2, #0
	ldrne r2, [r2, #0xc]
	cmpne r2, #0
	strneb r1, [r2, #0x1c4]
_0203F5F0:
	ldr r2, [r0, #4]
	add lr, lr, #1
	cmp lr, r2
	blt _0203F5B4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0203F604
sub_0203F604: ; 0x0203F604
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, [r0, #8]
	cmp r2, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r2, [r0, #4]
	mov r5, #0
	cmp r2, #0
	ldmleia sp!, {r4, r5, r6, pc}
	mov lr, r5
	mov r4, #1
	mov r3, r5
	arm_func_end sub_0203F604
_0203F630:
	ldr r2, [r0, #8]
	ldr r6, [r2, r5, lsl #2]
	cmp r6, #0
	beq _0203F674
	ldrb r2, [r6, #0x20]
	mov ip, r4
	cmp r2, #2
	cmpne r2, #3
	movne ip, lr
	cmp ip, #0
	ldrne r2, [r6, #8]
	cmpne r2, #0
	ldrne ip, [r2, #0xc]
	cmpne ip, #0
	addne r2, ip, #0x100
	strneh r1, [r2, #0xac]
	strne r3, [ip, #0x1b0]
_0203F674:
	ldr r2, [r0, #4]
	add r5, r5, #1
	cmp r5, r2
	blt _0203F630
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0203F688
sub_0203F688: ; 0x0203F688
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, [r0, #8]
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r0, #4]
	mov lr, #0
	cmp r2, #0
	ldmleia sp!, {r3, r4, r5, pc}
	mov r3, lr
	mov ip, #1
	arm_func_end sub_0203F688
_0203F6B0:
	ldr r2, [r0, #8]
	ldr r5, [r2, lr, lsl #2]
	cmp r5, #0
	beq _0203F6EC
	ldrb r2, [r5, #0x20]
	mov r4, ip
	cmp r2, #2
	cmpne r2, #3
	movne r4, r3
	cmp r4, #0
	ldrne r2, [r5, #8]
	cmpne r2, #0
	ldrne r2, [r2, #0xc]
	cmpne r2, #0
	strneb r1, [r2, #0x1c5]
_0203F6EC:
	ldr r2, [r0, #4]
	add lr, lr, #1
	cmp lr, r2
	blt _0203F6B0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0203F700
sub_0203F700: ; 0x0203F700
	ldr r1, [r0, #8]
	cmp r1, #0
	bxeq lr
	ldr r1, [r0, #4]
	mov r3, #0
	cmp r1, #0
	bxle lr
	mov r2, r3
	arm_func_end sub_0203F700
_0203F720:
	ldr r1, [r0, #8]
	ldr r1, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r1, #0
	ldrne r1, [r1, #8]
	cmpne r1, #0
	ldrne r1, [r1, #0xc]
	cmpne r1, #0
	strne r2, [r1, #0x1b0]
	ldr r1, [r0, #4]
	cmp r3, r1
	blt _0203F720
	bx lr

	arm_func_start sub_0203F754
sub_0203F754: ; 0x0203F754
	ldr r1, [r0, #8]
	cmp r1, #0
	bxeq lr
	ldr r1, [r0, #4]
	mov r3, #0
	cmp r1, #0
	bxle lr
	arm_func_end sub_0203F754
_0203F770:
	ldr r1, [r0, #8]
	ldr r1, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r1, #0
	ldrne r1, [r1, #8]
	cmpne r1, #0
	ldrne r2, [r1, #0xc]
	cmpne r2, #0
	ldrne r1, [r2, #0x1a8]
	bicne r1, r1, #1
	strne r1, [r2, #0x1a8]
	ldr r1, [r0, #4]
	cmp r3, r1
	blt _0203F770
	bx lr

	arm_func_start sub_0203F7AC
sub_0203F7AC: ; 0x0203F7AC
	ldr r1, [r0, #8]
	cmp r1, #0
	bxeq lr
	ldr r1, [r0, #4]
	mov r3, #0
	cmp r1, #0
	bxle lr
	arm_func_end sub_0203F7AC
_0203F7C8:
	ldr r1, [r0, #8]
	ldr r2, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r2, #0
	ldrne r1, [r2, #4]
	bicne r1, r1, #0x100
	strne r1, [r2, #4]
	ldr r1, [r0, #4]
	cmp r3, r1
	blt _0203F7C8
	bx lr

	arm_func_start sub_0203F7F4
sub_0203F7F4: ; 0x0203F7F4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x348
	sub sp, sp, #0x800
	mov sl, r0
	ldr r5, [sl, #4]
	mov r0, #0x14
	mov r4, r2
	mul r2, r5, r0
	mov r6, #0
	mov sb, r3
	ldr r3, [sp, #0xb68]
	mov r5, r1
	add r1, sp, #0x148
	mov r0, r6
	str r6, [sp, #0x3c]
	str r3, [sp, #0xb68]
	bl MIi_CpuClear32
	ldr r0, [sl, #4]
	mov r7, r6
	cmp r0, #0
	ble _0203FB68
	arm_func_end sub_0203F7F4
_0203F848:
	ldr r0, [sl, #8]
	ldr r8, [r0, r7, lsl #2]
	cmp r8, #0
	beq _0203FB58
	ldr r0, [r8, #4]
	mov r1, #1
	tst r0, #0x80
	ldrb r0, [r8, #0x20]
	moveq r2, #1
	movne r2, #0
	cmp r0, #2
	cmpne r0, #3
	movne r1, #0
	tst r1, r2
	beq _0203FB58
	ldr r0, [r8, #0x14]
	cmp sb, r0
	bne _0203FB58
	ldr r0, [r8, #0x50]
	cmp r0, #0
	beq _0203F8A8
	cmp r0, #1
	beq _0203FA08
	b _0203FB58
_0203F8A8:
	add r0, r8, #0x34
	add ip, sp, #0x138
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	ldr r0, [sp, #0x140]
	cmp r0, #0
	ldrne r0, [sp, #0x144]
	cmpne r0, #0
	beq _0203FB58
	ldr r1, [r8, #8]
	cmp r1, #0
	beq _0203F8EC
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r2, [r0, #0x20]
	moveq r2, #0
	b _0203F8F0
_0203F8EC:
	mov r2, #0
_0203F8F0:
	ldr r0, [sp, #0x138]
	cmp r1, #0
	add r0, r0, r2
	str r0, [sp, #0x138]
	beq _0203F918
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r3, [r0, #0x24]
	moveq r3, #0
	b _0203F91C
_0203F918:
	mov r3, #0
_0203F91C:
	ldr r0, [sp, #0x13c]
	ldr r2, [sp, #0x140]
	add r0, r0, r3
	add r3, r2, r4, lsl #1
	ldr r1, [sp, #0x144]
	mov ip, sp
	add r2, r1, r4, lsl #1
	add r1, sp, #0x138
	str r0, [sp, #0x13c]
	str r3, [sp, #0x140]
	str r2, [sp, #0x144]
	ldmia r1, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	add r0, sp, #0xd8
	str r0, [sp, #0x10]
	ldmia r5, {r0, r1, r2, r3}
	bl sub_02006C04
	cmp r0, #0
	beq _0203FB58
	mov r0, #0x14
	mul r0, r6, r0
	add r2, sp, #0x148
	str r8, [r2, r0]
	add r8, r2, r0
	ldr r1, [sp, #0xd8]
	ldr r0, [sp, #0xdc]
	str r1, [r8, #8]
	str r0, [r8, #0xc]
	ldr r3, [sp, #0xd8]
	ldmia r5, {r0, r1}
	ldr r2, [sp, #0xdc]
	sub r0, r3, r0
	sub r1, r2, r1
	bl sub_02007254
	cmp r6, #0
	str r0, [r8, #4]
	streq r8, [sp, #0x3c]
	beq _0203FA00
	ldr r2, [sp, #0x3c]
	mov r1, #0
	movs r0, r2
	beq _0203F9F8
	ldr r3, [r8, #4]
_0203F9C8:
	ldr r0, [r2, #4]
	cmp r3, r0
	bge _0203F9E8
	cmp r1, #0
	strne r8, [r1, #0x10]
	streq r8, [sp, #0x3c]
	str r2, [r8, #0x10]
	b _0203F9F8
_0203F9E8:
	mov r1, r2
	ldr r2, [r2, #0x10]
	cmp r2, #0
	bne _0203F9C8
_0203F9F8:
	cmp r2, #0
	streq r8, [r1, #0x10]
_0203FA00:
	add r6, r6, #1
	b _0203FB58
_0203FA08:
	add r0, r8, #0x44
	add r3, sp, #0x12c
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [sp, #0x134]
	cmp r0, #0
	beq _0203FB58
	ldr r1, [r8, #8]
	cmp r1, #0
	beq _0203FA44
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r2, [r0, #0x20]
	moveq r2, #0
	b _0203FA48
_0203FA44:
	mov r2, #0
_0203FA48:
	ldr r0, [sp, #0x12c]
	cmp r1, #0
	add r0, r0, r2
	str r0, [sp, #0x12c]
	beq _0203FA70
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r2, [r0, #0x24]
	moveq r2, #0
	b _0203FA74
_0203FA70:
	mov r2, #0
_0203FA74:
	ldr r1, [sp, #0x130]
	ldr r0, [sp, #0x134]
	add r2, r1, r2
	add r1, r0, r4
	add r0, sp, #0x12c
	mov r3, sp
	str r2, [sp, #0x130]
	str r1, [sp, #0x134]
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r1, sp, #0xd8
	mov r0, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldmia r5, {r0, r1, r2, r3}
	bl sub_02006764
	cmp r0, #0
	beq _0203FB58
	mov r0, #0x14
	mul r0, r6, r0
	add r2, sp, #0x148
	str r8, [r2, r0]
	add r8, r2, r0
	ldr r1, [sp, #0xd8]
	ldr r0, [sp, #0xdc]
	str r1, [r8, #8]
	str r0, [r8, #0xc]
	ldr r3, [sp, #0xd8]
	ldmia r5, {r0, r1}
	ldr r2, [sp, #0xdc]
	sub r0, r3, r0
	sub r1, r2, r1
	bl sub_02007254
	cmp r6, #0
	str r0, [r8, #4]
	streq r8, [sp, #0x3c]
	beq _0203FB54
	ldr r2, [sp, #0x3c]
	mov r1, #0
	movs r0, r2
	beq _0203FB4C
	ldr r3, [r8, #4]
_0203FB1C:
	ldr r0, [r2, #4]
	cmp r3, r0
	bge _0203FB3C
	cmp r1, #0
	strne r8, [r1, #0x10]
	streq r8, [sp, #0x3c]
	str r2, [r8, #0x10]
	b _0203FB4C
_0203FB3C:
	mov r1, r2
	ldr r2, [r2, #0x10]
	cmp r2, #0
	bne _0203FB1C
_0203FB4C:
	cmp r2, #0
	streq r8, [r1, #0x10]
_0203FB54:
	add r6, r6, #1
_0203FB58:
	ldr r0, [sl, #4]
	add r7, r7, #1
	cmp r7, r0
	blt _0203F848
_0203FB68:
	cmp r6, #0
	beq _02040148
	ldr r1, [r5, #8]
	ldr r0, [r5]
	ldr r2, [r5, #0xc]
	subs r0, r1, r0
	ldr r1, [r5, #4]
	rsbmi r0, r0, #0
	subs r1, r2, r1
	rsbmi r1, r1, #0
	bl sub_02007254
	mov r6, #0
	str r0, [sp, #0x34]
	mov r0, r6
_0203FBA0:
	add r0, r0, #1
	cmp r0, #4
	add r6, r6, r4, asr r0
	blt _0203FBA0
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _02040148
	ldr r0, [sp, #0x34]
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x38]
_0203FBC8:
	ldr r0, [sp, #0x3c]
	ldr r8, [r0]
	ldr r0, [r8, #0x50]
	cmp r0, #0
	beq _0203FBE8
	cmp r0, #1
	beq _0203FE38
	b _02040134
_0203FBE8:
	add r0, r8, #0x34
	add r7, sp, #0x110
	ldmia r0, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	ldr r1, [r8, #8]
	cmp r1, #0
	beq _0203FC18
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r2, [r0, #0x20]
	moveq r2, #0
	b _0203FC1C
_0203FC18:
	mov r2, #0
_0203FC1C:
	ldr r0, [sp, #0x110]
	cmp r1, #0
	add r0, r0, r2
	str r0, [sp, #0x110]
	beq _0203FC44
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r2, [r0, #0x24]
	moveq r2, #0
	b _0203FC48
_0203FC44:
	mov r2, #0
_0203FC48:
	ldr r1, [sp, #0x114]
	add r0, sp, #0xec
	mov r7, #0
	add r1, r1, r2
	str r1, [sp, #0x114]
	str r7, [r0]
	str r7, [r0, #4]
	str r7, [r0, #8]
	ldr r0, [sp, #0x34]
	ldr r2, [r5]
	ldr r1, [r5, #4]
	cmp r0, #0
	str r2, [sp, #0xec]
	str r1, [sp, #0xf0]
	str r4, [sp, #0xf4]
	str r2, [sp, #0x120]
	str r1, [sp, #0x124]
	str r4, [sp, #0x128]
	ldr r3, [r5]
	ldr r0, [r5, #8]
	ldr r2, [r5, #4]
	sub r0, r0, r3
	ldr r1, [r5, #0xc]
	str r0, [sp, #0x1c]
	sub r0, r1, r2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	str r3, [sp, #0x98]
	str r0, [sp, #0x90]
	ldr r0, [sp, #0x14]
	str r2, [sp, #0x9c]
	str r0, [sp, #0x94]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0xc8]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xcc]
	ble _02040134
	ldr r0, [sp, #0x1c]
	sub r8, sp, #4
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x18]
_0203FCF8:
	ldr r0, [sp, #0x34]
	add r7, r7, r6
	str r4, [sp, #0x128]
	cmp r7, r0
	bge _0203FDA4
	mov r0, r7, asr #0x1f
	mov r1, r0, lsl #0xc
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	orr r1, r1, r7, lsr #20
	mov r0, r7, lsl #0xc
	bl _ll_div
	ldr sb, [sp, #0x1c]
	mov sl, r0, asr #0x1f
	umull ip, r3, sb, r0
	mov sb, ip, lsr #0xc
	ldr ip, [sp, #0x1c]
	ldr r2, [r5]
	mla r3, ip, sl, r3
	ldr ip, [sp, #0x20]
	ldr r1, [r5, #4]
	mla r3, ip, r0, r3
	orr sb, sb, r3, lsl #20
	add r2, r2, sb
	str r2, [sp, #0x78]
	str r2, [sp, #0xc0]
	str r2, [sp, #0x120]
	ldr r2, [sp, #0x14]
	str sb, [sp, #0x88]
	str sb, [sp, #0x80]
	umull sb, r3, r2, r0
	mla r3, r2, sl, r3
	ldr r2, [sp, #0x18]
	mla r3, r2, r0, r3
	mov r2, sb, lsr #0xc
	orr r2, r2, r3, lsl #20
	add r0, r1, r2
	str r2, [sp, #0x8c]
	str r2, [sp, #0x84]
	str r0, [sp, #0x7c]
	str r0, [sp, #0xc4]
	str r0, [sp, #0x124]
	b _0203FDB4
_0203FDA4:
	ldr r0, [r5, #8]
	str r0, [sp, #0x120]
	ldr r0, [r5, #0xc]
	str r0, [sp, #0x124]
_0203FDB4:
	add r0, sp, #0xd0
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	add r0, sp, #0x110
	ldmia r0, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	add r0, sp, #0x120
	ldr r3, [r8]
	ldmia r0, {r0, r1, r2}
	bl sub_02006E30
	cmp r0, #0
	beq _0203FE28
	ldr r0, [sp, #0xb68]
	cmp r0, #0
	beq _0203FE18
	add r0, sp, #0xb8
	add r1, sp, #0x120
	add r2, sp, #0xd0
	bl sub_0200732C
	ldr r1, [sp, #0xb8]
	ldr r0, [sp, #0xb68]
	str r1, [r0]
	ldr r1, [sp, #0xbc]
	str r1, [r0, #4]
_0203FE18:
	add sp, sp, #0x348
	add sp, sp, #0x800
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0203FE28:
	ldr r0, [sp, #0x34]
	cmp r7, r0
	blt _0203FCF8
	b _02040134
_0203FE38:
	add r0, r8, #0x44
	add r3, sp, #0x104
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [r8, #8]
	cmp r1, #0
	beq _0203FE68
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r2, [r0, #0x20]
	moveq r2, #0
	b _0203FE6C
_0203FE68:
	mov r2, #0
_0203FE6C:
	ldr r0, [sp, #0x104]
	cmp r1, #0
	add r0, r0, r2
	str r0, [sp, #0x104]
	beq _0203FE94
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r2, [r0, #0x24]
	moveq r2, #0
	b _0203FE98
_0203FE94:
	mov r2, #0
_0203FE98:
	ldr r1, [sp, #0x108]
	add r0, sp, #0xe0
	mov r7, #0
	add r1, r1, r2
	str r1, [sp, #0x108]
	str r7, [r0]
	str r7, [r0, #4]
	str r7, [r0, #8]
	ldr r0, [sp, #0x34]
	ldr r2, [r5]
	ldr r1, [r5, #4]
	cmp r0, #0
	str r2, [sp, #0xe0]
	str r1, [sp, #0xe4]
	str r4, [sp, #0xe8]
	str r2, [sp, #0x120]
	str r1, [sp, #0x124]
	str r4, [sp, #0x128]
	ldr r3, [r5]
	ldr r0, [r5, #8]
	ldr r2, [r5, #4]
	sub r0, r0, r3
	ldr r1, [r5, #0xc]
	str r0, [sp, #0x2c]
	sub r0, r1, r2
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	str r3, [sp, #0x70]
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x24]
	str r2, [sp, #0x74]
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0xb0]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0xb4]
	ble _02040134
	ldr r0, [sp, #0x2c]
	sub r8, sp, #4
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x24]
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x28]
_0203FF48:
	ldr r0, [sp, #0x34]
	add r7, r7, r6
	str r4, [sp, #0x100]
	cmp r7, r0
	bge _0203FFF4
	mov r0, r7, asr #0x1f
	mov r1, r0, lsl #0xc
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	orr r1, r1, r7, lsr #20
	mov r0, r7, lsl #0xc
	bl _ll_div
	ldr sb, [sp, #0x2c]
	mov sl, r0, asr #0x1f
	umull ip, r3, sb, r0
	mov sb, ip, lsr #0xc
	ldr ip, [sp, #0x2c]
	ldr r2, [r5]
	mla r3, ip, sl, r3
	ldr ip, [sp, #0x30]
	ldr r1, [r5, #4]
	mla r3, ip, r0, r3
	orr sb, sb, r3, lsl #20
	add r2, r2, sb
	str r2, [sp, #0x50]
	str r2, [sp, #0xa8]
	str r2, [sp, #0xf8]
	ldr r2, [sp, #0x24]
	str sb, [sp, #0x60]
	str sb, [sp, #0x58]
	umull sb, r3, r2, r0
	mla r3, r2, sl, r3
	ldr r2, [sp, #0x28]
	mla r3, r2, r0, r3
	mov r2, sb, lsr #0xc
	orr r2, r2, r3, lsl #20
	add r0, r1, r2
	str r2, [sp, #0x64]
	str r2, [sp, #0x5c]
	str r0, [sp, #0x54]
	str r0, [sp, #0xac]
	str r0, [sp, #0xfc]
	b _02040004
_0203FFF4:
	ldr r0, [r5, #8]
	str r0, [sp, #0xf8]
	ldr r0, [r5, #0xc]
	str r0, [sp, #0xfc]
_02040004:
	add r0, sp, #0xd0
	str r0, [sp, #8]
	add r0, sp, #0x104
	ldmia r0, {r0, r1, r2}
	stmia r8, {r0, r1, r2}
	add r0, sp, #0xf8
	ldr r3, [r8]
	ldmia r0, {r0, r1, r2}
	bl sub_02006164
	cmp r0, #0
	beq _02040128
	ldr r3, [sp, #0x104]
	ldr r0, [sp, #0xd0]
	ldr r2, [sp, #0x108]
	ldr r1, [sp, #0xd4]
	sub r0, r0, r3
	sub r1, r1, r2
	str r0, [sp, #0xd0]
	str r3, [sp, #0x48]
	str r2, [sp, #0x4c]
	str r1, [sp, #0xd4]
	bl sub_02007254
	mov r5, r0
	ldr r4, [sp, #0x10c]
	ldr r1, [sp, #0xd0]
	mov r7, r5, asr #0x1f
	smull r2, r0, r1, r4
	mov r6, r2, lsr #0xc
	orr r6, r6, r0, lsl #20
	mov r0, r6, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r2, r5
	mov r3, r7
	orr r1, r1, r6, lsr #20
	mov r0, r6, lsl #0xc
	bl _ll_div
	str r0, [sp, #0xd0]
	ldr r0, [sp, #0xd4]
	mov r2, r5
	smull r4, r1, r0, r4
	mov r4, r4, lsr #0xc
	orr r4, r4, r1, lsl #20
	mov r0, r4, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r3, r7
	orr r1, r1, r4, lsr #20
	mov r0, r4, lsl #0xc
	bl _ll_div
	ldr r1, [sp, #0xb68]
	ldr r2, [sp, #0x104]
	cmp r1, #0
	ldr r1, [sp, #0x108]
	str r2, [sp, #0x40]
	add r0, r0, r1
	str r0, [sp, #0xd4]
	ldr r0, [sp, #0xd0]
	str r1, [sp, #0x44]
	add r0, r0, r2
	str r0, [sp, #0xd0]
	beq _02040118
	add r0, sp, #0xa0
	add r1, sp, #0xf8
	add r2, sp, #0xd0
	bl sub_0200732C
	ldr r1, [sp, #0xa0]
	ldr r0, [sp, #0xb68]
	str r1, [r0]
	ldr r1, [sp, #0xa4]
	str r1, [r0, #4]
_02040118:
	add sp, sp, #0x348
	add sp, sp, #0x800
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02040128:
	ldr r0, [sp, #0x34]
	cmp r7, r0
	blt _0203FF48
_02040134:
	ldr r0, [sp, #0x3c]
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x3c]
	cmp r0, #0
	bne _0203FBC8
_02040148:
	mov r0, #0
	add sp, sp, #0x348
	add sp, sp, #0x800
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start sub_02040158
sub_02040158: ; 0x02040158
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	add r7, sp, #0x28
	mov r8, #0
	str r8, [r7, #8]
	ldr r2, [sp, #0x5c]
	str r8, [r7]
	ldr r1, [sp, #0x60]
	str r8, [r7, #4]
	mov sl, r0
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r3, [sp, #0x30]
	ldr r0, [sl, #4]
	ldr sb, [sp, #0x68]
	cmp r0, #0
	ble _02040370
	sub r5, sp, #4
	mov fp, r8
	add r4, sp, #0xc
	add r6, sp, #0x18
	arm_func_end sub_02040158
_020401B0:
	ldr r0, [sl, #8]
	ldr ip, [r0, r8, lsl #2]
	cmp ip, #0
	beq _02040360
	ldr r0, [ip, #4]
	mov r1, #1
	tst r0, #0x80
	ldrb r0, [ip, #0x20]
	moveq r2, #1
	movne r2, #0
	cmp r0, #2
	cmpne r0, #3
	movne r1, #0
	tst r1, r2
	beq _02040360
	ldr r0, [ip, #0x14]
	cmp sb, r0
	bne _02040360
	ldr r0, [ip, #0x50]
	cmp r0, #0
	beq _02040210
	cmp r0, #1
	beq _020402BC
	b _02040360
_02040210:
	add r0, ip, #0x34
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldr r0, [sp, #0x20]
	cmp r0, #0
	ldrne r0, [sp, #0x24]
	cmpne r0, #0
	beq _02040360
	ldr r1, [ip, #8]
	cmp r1, #0
	beq _02040250
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r2, [r0, #0x20]
	moveq r2, #0
	b _02040254
_02040250:
	mov r2, #0
_02040254:
	cmp r1, #0
	ldr r0, [sp, #0x18]
	add r0, r0, r2
	str r0, [sp, #0x18]
	beq _0204027C
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r1, [r0, #0x24]
	moveq r1, #0
	b _02040280
_0204027C:
	mov r1, #0
_02040280:
	ldr r0, [sp, #0x1c]
	add r0, r0, r1
	str r0, [sp, #0x1c]
	ldmia r6, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r3, [r5]
	ldmia r7, {r0, r1, r2}
	bl sub_02006F80
	cmp r0, #0
	beq _02040360
	add sp, sp, #0x34
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020402BC:
	add r0, ip, #0x44
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02040360
	ldr r1, [ip, #8]
	cmp r1, #0
	beq _020402F4
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r2, [r0, #0x20]
	moveq r2, #0
	b _020402F8
_020402F4:
	mov r2, #0
_020402F8:
	cmp r1, #0
	ldr r0, [sp, #0xc]
	add r0, r0, r2
	str r0, [sp, #0xc]
	beq _02040320
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r1, [r0, #0x24]
	moveq r1, #0
	b _02040324
_02040320:
	mov r1, #0
_02040324:
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #0x10]
	str fp, [sp, #8]
	ldmia r4, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	ldr r3, [r5]
	ldmia r7, {r0, r1, r2}
	bl sub_02006164
	cmp r0, #0
	addne sp, sp, #0x34
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addne sp, sp, #0x10
	bxne lr
_02040360:
	add r8, r8, #1
	ldr r0, [sl, #4]
	cmp r8, r0
	blt _020401B0
_02040370:
	mov r0, #0
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02040384
sub_02040384: ; 0x02040384
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #4]
	mov r5, #0
	cmp r0, #0
	addle sp, sp, #8
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	addle sp, sp, #0x10
	bxle lr
	ldr r8, [sp, #0x2c]
	ldr r7, [sp, #0x30]
	add r4, sp, #0x2c
	arm_func_end sub_02040384
_020403BC:
	ldr r0, [r6, #8]
	ldr r0, [r0, r5, lsl #2]
	cmp r0, #0
	ldrne sb, [r0, #8]
	cmpne sb, #0
	ldrne r0, [sb, #0xc]
	cmpne r0, #0
	beq _02040408
	add r0, r0, #0xc
	ldmia r4, {r1, r2}
	bl sub_02011D3C
	ldr r0, [sb, #0xc]
	ldr r0, [r0, #0xc4]
	cmp r0, #0
	beq _02040408
	str r8, [r0, #0x18]
	str r8, [sp]
	str r7, [sp, #4]
	str r7, [r0, #0x1c]
_02040408:
	ldr r0, [r6, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _020403BC
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02040428
sub_02040428: ; 0x02040428
	ldr r1, [r0, #4]
	mov r3, #0
	cmp r1, #0
	bxle lr
	mov r2, #2
	arm_func_end sub_02040428
_0204043C:
	ldr r1, [r0, #8]
	ldr r1, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r1, #0
	strneb r2, [r1, #0x20]
	ldr r1, [r0, #4]
	cmp r3, r1
	blt _0204043C
	bx lr

	arm_func_start sub_02040460
sub_02040460: ; 0x02040460
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r6, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, r6
	arm_func_end sub_02040460
_0204047C:
	ldr r0, [r4, #8]
	ldr r7, [r0, r6, lsl #2]
	cmp r7, #0
	beq _020404A8
	mov r0, r7
	bl sub_02041C1C
	mov r0, r7
	strb r5, [r7, #0x20]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
_020404A8:
	ldr r0, [r4, #4]
	add r6, r6, #1
	cmp r6, r0
	blt _0204047C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_020404BC
sub_020404BC: ; 0x020404BC
	ldr r1, _020404E0 ; =PTR_LAB_0208de68
	mov r2, #0
	str r1, [r0]
	ldr r1, _020404E4 ; =PTR_LAB_0208de54
	stmia r0, {r1, r2}
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	bx lr
	.align 2, 0
_020404E0: .word PTR_LAB_0208de68
_020404E4: .word PTR_LAB_0208de54
	arm_func_end sub_020404BC

	arm_func_start sub_020404E8
sub_020404E8: ; 0x020404E8
	stmdb sp!, {r4, lr}
	ldr r1, _02040504 ; =PTR_LAB_0208de54
	mov r4, r0
	str r1, [r4]
	bl sub_02040638
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02040504: .word PTR_LAB_0208de54
	arm_func_end sub_020404E8

	arm_func_start sub_02040508
sub_02040508: ; 0x02040508
	stmdb sp!, {r4, lr}
	ldr r1, _0204052C ; =PTR_LAB_0208de54
	mov r4, r0
	str r1, [r4]
	bl sub_02040638
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0204052C: .word PTR_LAB_0208de54
	arm_func_end sub_02040508

	arm_func_start sub_02040530
sub_02040530: ; 0x02040530
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr r0, [r7, #0xc]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r0, #0
	beq _0204056C
	beq _02040564
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_02040530
_02040564:
	mov r0, #0
	str r0, [r7, #0xc]
_0204056C:
	mov r0, #0x204
	bl _Znwm
	cmp r0, #0
	beq _02040580
	bl sub_0203DA68
_02040580:
	ldr r1, [sp, #0x20]
	str r0, [r7, #0xc]
	ldr r0, [sp, #0x24]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r7, #0xc]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_0203DBB8
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_020405B4
sub_020405B4: ; 0x020405B4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr r0, [r7, #0xc]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r0, #0
	beq _020405F0
	beq _020405E8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_020405B4
_020405E8:
	mov r0, #0
	str r0, [r7, #0xc]
_020405F0:
	mov r0, #0x204
	bl _Znwm
	cmp r0, #0
	beq _02040604
	bl sub_0203DA68
_02040604:
	ldr r1, [sp, #0x20]
	str r0, [r7, #0xc]
	ldr r0, [sp, #0x24]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r7, #0xc]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_0203E10C
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02040638
sub_02040638: ; 0x02040638
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	beq _0204065C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_02040638
_0204065C:
	mov r0, #0
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02040668
sub_02040668: ; 0x02040668
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	mov r5, r2
	str r5, [r7, #0x10]
	ldr r0, [r7, #0xc]
	mov ip, #0
	mov r6, r1
	cmp r0, #0
	add r4, ip, #4
	beq _02040728
	add r0, r0, #0x1e4
	add lr, sp, #0
	ldmia r0, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	ldr r0, [r7, #0xc]
	cmp r0, #0
	ldrne ip, [r0, #0x20]
	ldr r0, [sp]
	add r0, r0, ip
	str r0, [sp]
	ldr r2, [r7, #0xc]
	cmp r2, #0
	ldrne r3, [r2, #0x24]
	moveq r3, #0
	cmp r2, #0
	moveq r0, #0
	beq _020406EC
	ldr r1, [r2, #0x8c]
	ldr r0, [r2, #0xa0]
	ldr r2, [r2, #0xb0]
	add r0, r1, r0
	add r0, r2, r0
	arm_func_end sub_02040668
_020406EC:
	ldr r1, [sp, #4]
	sub r0, r3, r0
	add r3, r1, r0
	ldr r2, _0204073C ; =0x00001199
	add r1, sp, #0
	mov r0, r6
	str r3, [sp, #4]
	bl sub_020038A8
	cmp r0, #0
	beq _02040728
	ldr r0, [r7, #0xc]
	mov r1, r6
	sub r2, r5, r4
	bl sub_0203E934
	add r4, r4, r0
_02040728:
	sub r0, r5, r4
	str r0, [r7, #0x14]
	add r0, r4, #4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204073C: .word 0x00001199

	arm_func_start sub_02040740
sub_02040740: ; 0x02040740
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02040760
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	arm_func_end sub_02040740
_02040760:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldrne r0, [r0, #0x24]
	moveq r0, #0
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02040778
sub_02040778: ; 0x02040778
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02040778

	arm_func_start sub_0204078C
sub_0204078C: ; 0x0204078C
	bx lr
	arm_func_end sub_0204078C

	arm_func_start sub_02040790
sub_02040790: ; 0x02040790
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02012FD8
	ldr r1, _020407DC ; =ptr_FUN_02040f20_0208dec0
	mvn r0, #0
	str r1, [r4]
	str r0, [r4, #0x18]
	add r0, r0, #0x10000
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x1e]
	mov r1, #0
	strh r1, [r4, #0x20]
	str r1, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0x28]
	str r1, [r4, #0x2c]
	mov r0, r4
	str r1, [r4, #0x30]
	ldmia sp!, {r4, pc}
	.align 2, 0
_020407DC: .word ptr_FUN_02040f20_0208dec0
	arm_func_end sub_02040790

	arm_func_start sub_020407E0
sub_020407E0: ; 0x020407E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02012FD8
	ldr r1, _0204082C ; =ptr_FUN_02040f20_0208dec0
	mvn r0, #0
	str r1, [r4]
	str r0, [r4, #0x18]
	add r0, r0, #0x10000
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x1e]
	mov r1, #0
	strh r1, [r4, #0x20]
	str r1, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0x28]
	str r1, [r4, #0x2c]
	mov r0, r4
	str r1, [r4, #0x30]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0204082C: .word ptr_FUN_02040f20_0208dec0
	arm_func_end sub_020407E0

	arm_func_start sub_02040830
sub_02040830: ; 0x02040830
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov r8, r1
	mov sb, r0
	mov r7, r2
	mov r6, r3
	cmp r8, #2
	ldr r5, [sp, #0x30]
	ldr r4, [sp, #0x34]
	beq _020408A8
	cmp r4, #0
	beq _02040884
	str r5, [sp]
	mov lr, #1
	ldr ip, [sp, #0x38]
	str lr, [sp, #4]
	str ip, [sp, #8]
	mov ip, #0
	str ip, [sp, #0xc]
	bl sub_02013154
	b _020408C8
	arm_func_end sub_02040830
_02040884:
	ldr ip, [sp, #0x38]
	stmia sp, {r5, ip}
	mov ip, #0
	str ip, [sp, #8]
	mov ip, #1
	str ip, [sp, #0xc]
	str r4, [sp, #0x10]
	bl sub_02014514
	b _020408C8
_020408A8:
	mov r1, #0
	ldr ip, [sp, #0x38]
	str r1, [sp]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str ip, [sp, #4]
	bl sub_020409B4
_020408C8:
	str r8, [sb, #0x18]
	strh r7, [sb, #0x1c]
	strh r6, [sb, #0x1e]
	ldr r0, [sp, #0x3c]
	str r4, [sb, #0x28]
	strh r5, [sb, #0x20]
	cmp r0, #0
	beq _02040980
	cmp r4, #0
	bne _02040924
	mov r0, sb
	bl sub_02014310
	mov r1, #0
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r0
	mov r1, r1, lsl #0x10
	str r0, [sb, #0x2c]
	mov r0, sb
	mov r1, r1, lsr #0xd
	bl sub_020141AC
	mov r0, sb
	bl sub_020142B4
_02040924:
	mov r0, sb
	bl sub_02014364
	mov r1, #0
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	str r0, [sb, #0x30]
	cmp r4, #0
	beq _02040964
	ldr r0, [sb, #0xc]
	cmp r0, #0
	beq _02040980
	ldr r1, [sb, #0x30]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_02007C34
	b _02040980
_02040964:
	ldr r1, [sb, #0x30]
	mov r0, sb
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_0201429C
	mov r0, sb
	bl sub_020142F8
_02040980:
	ldr r4, [sb, #8]
	cmp r4, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	beq _020409A4
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
_020409A4:
	mov r0, #0
	str r0, [sb, #8]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_020409B4
sub_020409B4: ; 0x020409B4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x1f8
	ldr ip, [r0]
	mov r8, r0
	ldr ip, [ip, #8]
	mov r5, r1
	mov r4, r2
	mov r7, r3
	ldr r6, [sp, #0x218]
	blx ip
	mov sb, #0
	mov r1, sb
	mov r0, #1
	arm_func_end sub_020409B4
_020409E8:
	tst r7, r0, lsl r1
	add r1, r1, #1
	addne sb, sb, #1
	cmp r1, #0x1d
	blt _020409E8
	cmp sb, #0
	addeq sp, sp, #0x1f8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov sl, sb, lsl #4
	mov r0, sl
	mov r1, #4
	bl _Z23Heap_AllocWithAlignmentmm
	str r0, [r8, #0x10]
	mov r1, r0
	mov r2, sl
	mov r0, #0
	bl MIi_CpuClearFast
	strb sb, [r8, #0x14]
	mov r0, #1
	strb r0, [r8, #5]
	strb r0, [r8, #6]
	ldr r1, _02040D24 ; =s_t_03d_02d_0208df10
	mov r2, r5
	mov r3, r4
	add r0, sp, #0x198
	bl OS_SPrintf
	ldr r1, [sp, #0x21c]
	add r0, sp, #0x14
	cmp r1, #0
	beq _02040A68
	bl STD_CopyString
	b _02040A70
_02040A68:
	ldr r1, _02040D28 ; =DAT_0208df1c
	bl STD_CopyString
_02040A70:
	ldr r1, _02040D2C ; =s_data_target_s_LZ_bin_0208df20
	add r0, sp, #0x138
	add r2, sp, #0x198
	bl OS_SPrintf
	mov r0, #0x6c
	bl _Znwm
	cmp r0, #0
	beq _02040AC0
	mov r1, #1
	str r1, [sp]
	mov r4, #0
	cmp r6, #0
	moveq r3, #1
	str r4, [sp, #4]
	str r4, [sp, #8]
	movne r3, #0
	add r1, sp, #0x14
	add r2, sp, #0x138
	str r4, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
_02040AC0:
	cmp r0, #0
	addeq sp, sp, #0x1f8
	str r0, [r8, #8]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _02040D30 ; =s_s_s_NCLR_0208df38
	add r0, sp, #0xd8
	add r2, sp, #0x14
	add r3, sp, #0x198
	bl OS_SPrintf
	add r0, sp, #0xd8
	bl NNS_FndGetArchiveFileByName
	cmp r0, #0
	beq _02040B20
	add r1, sp, #0x10
	bl NNS_G2dGetUnpackedPaletteData
	cmp r0, #0
	beq _02040B20
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02040B1C
	ldr r1, [sp, #0x10]
	bl sub_02007AFC
_02040B1C:
	str r0, [r8, #0xc]
_02040B20:
	ldr r1, _02040D34 ; =s_s_s_0208df44
	add r0, sp, #0x18
	add r2, sp, #0x14
	add r3, sp, #0x198
	mov r4, #0
	bl OS_SPrintf
	tst r7, #1
	mov r5, r4
	beq _02040B84
	ldr r1, _02040D34 ; =s_s_s_0208df44
	add r0, sp, #0x78
	add r2, sp, #0x14
	add r3, sp, #0x198
	bl OS_SPrintf
	mov r0, r4
	str r0, [sp]
	ldr r1, [r8, #0x10]
	add r2, sp, #0x78
	mov r0, r8
	mov r3, r6
	bl sub_02014CEC
	ldr r0, [r8, #0x10]
	mov r1, r4
	strb r1, [r0, #1]
	add r5, r5, #1
_02040B84:
	tst r7, #2
	beq _02040C10
	ldr r1, _02040D38 ; =s_s_s_s_0208df4c
	add r0, sp, #0x78
	add r2, sp, #0x14
	add r3, sp, #0x198
	bl OS_SPrintf
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [r8, #0x10]
	add r2, sp, #0x18
	add r3, sp, #0x78
	mov r0, r8
	add r1, r1, r5, lsl #4
	bl sub_02014EA4
	cmp r0, #0
	ldrne r0, [r8, #0x10]
	addne r0, r0, r5, lsl #4
	ldrne r4, [r0, #4]
	bne _02040BFC
	mov r0, #0
	str r0, [sp]
	ldr r1, [r8, #0x10]
	add r2, sp, #0x78
	mov r0, r8
	mov r3, r6
	add r1, r1, r5, lsl #4
	bl sub_02014CEC
_02040BFC:
	ldr r0, [r8, #0x10]
	mov r1, #1
	add r0, r0, r5, lsl #4
	strb r1, [r0, #1]
	add r5, r5, #1
_02040C10:
	tst r7, #4
	beq _02040C9C
	ldr r1, _02040D3C ; =s_s_s_a_0208df54
	add r0, sp, #0x78
	add r2, sp, #0x14
	add r3, sp, #0x198
	bl OS_SPrintf
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [r8, #0x10]
	add r2, sp, #0x18
	add r3, sp, #0x78
	mov r0, r8
	add r1, r1, r5, lsl #4
	bl sub_02014EA4
	cmp r0, #0
	ldrne r0, [r8, #0x10]
	addne r0, r0, r5, lsl #4
	ldrne r4, [r0, #4]
	bne _02040C88
	mov r0, #0
	str r0, [sp]
	ldr r1, [r8, #0x10]
	add r2, sp, #0x78
	mov r0, r8
	mov r3, r6
	add r1, r1, r5, lsl #4
	bl sub_02014CEC
_02040C88:
	ldr r0, [r8, #0x10]
	mov r1, #2
	add r0, r0, r5, lsl #4
	strb r1, [r0, #1]
	add r5, r5, #1
_02040C9C:
	tst r7, #8
	addeq sp, sp, #0x1f8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _02040D40 ; =s_s_s_c_0208df5c
	add r0, sp, #0x78
	add r2, sp, #0x14
	add r3, sp, #0x198
	bl OS_SPrintf
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [r8, #0x10]
	add r2, sp, #0x18
	add r3, sp, #0x78
	mov r0, r8
	add r1, r1, r5, lsl #4
	bl sub_02014EA4
	cmp r0, #0
	bne _02040D0C
	mov r0, #0
	str r0, [sp]
	ldr r1, [r8, #0x10]
	add r2, sp, #0x78
	mov r0, r8
	mov r3, r6
	add r1, r1, r5, lsl #4
	bl sub_02014CEC
_02040D0C:
	ldr r0, [r8, #0x10]
	mov r1, #3
	add r0, r0, r5, lsl #4
	strb r1, [r0, #1]
	add sp, sp, #0x1f8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02040D24: .word s_t_03d_02d_0208df10
_02040D28: .word DAT_0208df1c
_02040D2C: .word s_data_target_s_LZ_bin_0208df20
_02040D30: .word s_s_s_NCLR_0208df38
_02040D34: .word s_s_s_0208df44
_02040D38: .word s_s_s_s_0208df4c
_02040D3C: .word s_s_s_a_0208df54
_02040D40: .word s_s_s_c_0208df5c

	arm_func_start sub_02040D44
sub_02040D44: ; 0x02040D44
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	ldmleia sp!, {r4, pc}
	subs r0, r0, #1
	str r0, [r4, #0x24]
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _02040D78
	ldr r0, [r4, #0x2c]
	bl NNS_GfdFreeLnkTexVram
	arm_func_end sub_02040D44
_02040D78:
	ldr r0, [r4, #0x30]
	bl NNS_GfdFreeLnkPlttVram
	mov r0, r4
	bl sub_02014034
	mvn r0, #0
	str r0, [r4, #0x18]
	add r0, r0, #0x10000
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x1e]
	mov r1, #0
	str r1, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0x28]
	str r1, [r4, #0x2c]
	str r1, [r4, #0x30]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02040DB8
sub_02040DB8: ; 0x02040DB8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _02040DDC
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _02040DDC
	bl NNS_GfdFreeLnkTexVram
	arm_func_end sub_02040DB8
_02040DDC:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _02040DEC
	bl NNS_GfdFreeLnkPlttVram
_02040DEC:
	mov r0, r4
	bl sub_02014034
	mov r2, #0
	str r2, [r4, #0x24]
	sub r1, r2, #1
	ldr r0, _02040E28 ; =0x0000FFFF
	str r1, [r4, #0x18]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x1e]
	str r2, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0x28]
	str r2, [r4, #0x2c]
	str r2, [r4, #0x30]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02040E28: .word 0x0000FFFF

	arm_func_start sub_02040E2C
sub_02040E2C: ; 0x02040E2C
	stmdb sp!, {r4, lr}
	ldr r1, [r0]
	mov r4, r0
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _02040E64
	mov r0, r4
	bl sub_02014310
	mov r1, #0
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	str r0, [r4, #0x2c]
	arm_func_end sub_02040E2C
_02040E64:
	mov r0, r4
	bl sub_02014364
	mov r1, #0
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	str r0, [r4, #0x30]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02040E80
sub_02040E80: ; 0x02040E80
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _02040EA0
	bl NNS_GfdFreeLnkTexVram
	mov r0, #0
	str r0, [r4, #0x2c]
	arm_func_end sub_02040E80
_02040EA0:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl NNS_GfdFreeLnkPlttVram
	mov r0, #0
	str r0, [r4, #0x30]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02040EBC
sub_02040EBC: ; 0x02040EBC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x28]
	cmp r1, #0
	bne _02040EE0
	ldr r1, [r4, #0x2c]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_020141AC
	arm_func_end sub_02040EBC
_02040EE0:
	ldr r1, [r4, #0x30]
	mov r0, r4
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_0201429C
	ldmia sp!, {r4, pc}

	arm_func_start sub_02040EF8
sub_02040EF8: ; 0x02040EF8
	stmdb sp!, {r3, lr}
	mov r1, r0
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r1, #0x30]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_02007C34
	ldmia sp!, {r3, pc}
	arm_func_end sub_02040EF8

	arm_func_start sub_02040F20
sub_02040F20: ; 0x02040F20
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02013110
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02040F20

	arm_func_start sub_02040F34
sub_02040F34: ; 0x02040F34
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _02040F7C ; =MAIN_BSS_0210CA64
	mov r4, r0
	str r4, [r1]
	mov r1, #0x28
	ldr r0, _02040F80 ; =sub_02040F20
	str r1, [r4]
	str r0, [sp]
	ldr r0, [r4]
	ldr r3, _02040F84 ; =sub_020407E0
	mov r1, #0x34
	mov r2, #8
	bl __cxa_vec_new
	str r0, [r4, #4]
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02040F7C: .word MAIN_BSS_0210CA64
_02040F80: .word sub_02040F20
_02040F84: .word sub_020407E0
	arm_func_end sub_02040F34

	arm_func_start sub_02040F88
sub_02040F88: ; 0x02040F88
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4]
	mov r5, #0
	cmp r0, #0
	ble _02040FC4
	mov r6, r5
	arm_func_end sub_02040F88
_02040FA4:
	ldr r0, [r4, #4]
	add r0, r0, r6
	bl sub_02040DB8
	ldr r0, [r4]
	add r5, r5, #1
	cmp r5, r0
	add r6, r6, #0x34
	blt _02040FA4
_02040FC4:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02040FE8
	ldr r3, _02041000 ; =sub_02040F20
	mov r1, #0x34
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #4]
_02040FE8:
	mov r2, #0
	ldr r1, _02041004 ; =MAIN_BSS_0210CA64
	str r2, [r4]
	mov r0, r4
	str r2, [r1]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02041000: .word sub_02040F20
_02041004: .word MAIN_BSS_0210CA64

	arm_func_start sub_02041008
sub_02041008: ; 0x02041008
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov r8, r1
	ldr r1, [r0]
	mov r7, r2
	mov r6, r3
	cmp r1, #0
	ldr r5, [sp, #0x30]
	ldr r4, [sp, #0x34]
	mov r3, #0
	ble _02041094
	ldr sb, [r0, #4]
	arm_func_end sub_02041008
_02041038:
	ldr r2, [sb, #0x24]
	cmp r2, #0
	ble _02041084
	ldr ip, [sb, #0x18]
	cmp r8, ip
	ldreqh ip, [sb, #0x1c]
	cmpeq r7, ip
	ldreqh ip, [sb, #0x1e]
	cmpeq r6, ip
	ldreqh ip, [sb, #0x20]
	cmpeq r5, ip
	ldreq ip, [sb, #0x28]
	cmpeq r4, ip
	bne _02041084
	add r1, r2, #1
	add sp, sp, #0x14
	mov r0, sb
	str r1, [sb, #0x24]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_02041084:
	add r3, r3, #1
	cmp r3, r1
	add sb, sb, #0x34
	blt _02041038
_02041094:
	cmp r1, #0
	mov r2, #0
	ble _02041108
	ldr sb, [r0, #4]
_020410A4:
	ldr r0, [sb, #0x24]
	cmp r0, #0
	bne _020410F8
	ldr r1, _0204111C ; =s_F_02d_0208df64
	add r0, sp, #0x10
	bl OS_SPrintf
	str r5, [sp]
	add r5, sp, #0x10
	stmib sp, {r4, r5}
	mov r4, #1
	mov r0, sb
	mov r1, r8
	mov r2, r7
	mov r3, r6
	str r4, [sp, #0xc]
	bl sub_02040830
	mov r1, r4
	add sp, sp, #0x14
	mov r0, sb
	str r1, [sb, #0x24]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_020410F8:
	add r2, r2, #1
	cmp r2, r1
	add sb, sb, #0x34
	blt _020410A4
_02041108:
	ldr r0, _02041120 ; =s_NO_EMPTY_m_nActorDataMax_d_0208df6c
	bl LogInfo
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0204111C: .word s_F_02d_0208df64
_02041120: .word s_NO_EMPTY_m_nActorDataMax_d_0208df6c

	arm_func_start sub_02041124
sub_02041124: ; 0x02041124
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02040790
	ldr r0, _02041148 ; =ptr_FUN_0204114c_0208deec
	mov r1, #0
	str r0, [r4]
	mov r0, r4
	str r1, [r4, #0x34]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02041148: .word ptr_FUN_0204114c_0208deec
	arm_func_end sub_02041124

	arm_func_start sub_0204114C
sub_0204114C: ; 0x0204114C
	stmdb sp!, {r4, lr}
	ldr r1, _02041178 ; =ptr_FUN_0204114c_0208deec
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, r4
	bl sub_02013110
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02041178: .word ptr_FUN_0204114c_0208deec
	arm_func_end sub_0204114C

	arm_func_start sub_0204117C
sub_0204117C: ; 0x0204117C
	stmdb sp!, {r4, lr}
	ldr r1, _020411B0 ; =ptr_FUN_0204114c_0208deec
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, r4
	bl sub_02013110
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_020411B0: .word ptr_FUN_0204114c_0208deec
	arm_func_end sub_0204117C

	arm_func_start sub_020411B4
sub_020411B4: ; 0x020411B4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x34]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	bl sub_02040DB8
	mov r0, #0
	str r0, [r4, #0x34]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020411B4

	arm_func_start sub_020411D8
sub_020411D8: ; 0x020411D8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x28]
	cmp r1, #0
	ldreq r1, [r4, #0x2c]
	cmpeq r1, #0
	bne _02041208
	bl sub_02014310
	mov r1, #0
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	str r0, [r4, #0x2c]
	arm_func_end sub_020411D8
_02041208:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl sub_02014364
	mov r1, #0
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	str r0, [r4, #0x30]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02041230
sub_02041230: ; 0x02041230
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	ldr ip, [r7, #0x34]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp ip, #0
	beq _02041260
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	arm_func_end sub_02041230
_02041260:
	ldrh r1, [sp, #0x28]
	mov r0, #1
	mov ip, #0
	str r1, [sp]
	stmib sp, {r0, ip}
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp, #0xc]
	bl sub_02040830
	mov r0, #1
	str r0, [r7, #0x34]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0204129C
sub_0204129C: ; 0x0204129C
	bx lr
	arm_func_end sub_0204129C

	arm_func_start sub_020412A0
sub_020412A0: ; 0x020412A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02040790
	ldr r1, _020412D0 ; =ptr_FUN_020412dc_0208dfb4
	mov r0, r4
	str r1, [r4]
	bl sub_02013138
	ldr r2, _020412D4 ; =0x0000FFFF
	ldr r1, _020412D8 ; =0x00050834
	mov r0, r4
	strh r2, [r4, r1]
	ldmia sp!, {r4, pc}
	.align 2, 0
_020412D0: .word ptr_FUN_020412dc_0208dfb4
_020412D4: .word 0x0000FFFF
_020412D8: .word 0x00050834
	arm_func_end sub_020412A0

	arm_func_start sub_020412DC
sub_020412DC: ; 0x020412DC
	stmdb sp!, {r4, lr}
	ldr r1, _02041308 ; =ptr_FUN_020412dc_0208dfb4
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, r4
	bl sub_02013110
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02041308: .word ptr_FUN_020412dc_0208dfb4
	arm_func_end sub_020412DC

	arm_func_start sub_0204130C
sub_0204130C: ; 0x0204130C
	stmdb sp!, {r4, lr}
	ldr r1, _02041340 ; =ptr_FUN_020412dc_0208dfb4
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, r4
	bl sub_02013110
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02041340: .word ptr_FUN_020412dc_0208dfb4
	arm_func_end sub_0204130C

	arm_func_start sub_02041344
sub_02041344: ; 0x02041344
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x198
	ldr r2, _020415AC ; =0x00050834
	mov sl, r0
	ldrh r2, [sl, r2]
	mov sb, r1
	mov r8, r3
	cmp r2, sb
	addeq sp, sp, #0x198
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, #0x1d0
	mov r1, #4
	bl _Z23Heap_AllocWithAlignmentmm
	str r0, [sl, #0x10]
	mov r1, r0
	mov r0, #0
	mov r2, #0x1d0
	bl MIi_CpuClearFast
	mov r0, #0x1d
	strb r0, [sl, #0x14]
	mov r0, #0
	strb r0, [sl, #5]
	ldr r1, _020415B0 ; =s_player_1d_0208dfd8
	add r0, sp, #0x138
	mov r2, sb
	bl OS_SPrintf
	ldr r1, [sp, #0x1c0]
	add r0, sp, #0x14
	cmp r1, #0
	beq _020413D4
	mov r2, #4
	bl STD_CopyLString
	b _020413DC
	arm_func_end sub_02041344
_020413D4:
	ldr r1, _020415B4 ; =DAT_0208dfe4
	bl STD_CopyString
_020413DC:
	ldr r1, _020415B8 ; =s_data_player_s_LZ_bin_0208dfe8
	add r0, sp, #0xd8
	add r2, sp, #0x138
	bl OS_SPrintf
	mov r0, #0x6c
	bl _Znwm
	cmp r0, #0
	beq _02041428
	mov r1, #1
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	add r1, sl, #0x34
	str r1, [sp, #8]
	ldr r4, _020415BC ; =0x00050800
	add r1, sp, #0x14
	add r2, sp, #0xd8
	str r4, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
_02041428:
	cmp r0, #0
	addeq sp, sp, #0x198
	str r0, [sl, #8]
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _020415C0 ; =s_s_s_NCLR_0208e000
	add r0, sp, #0x78
	add r2, sp, #0x14
	add r3, sp, #0x138
	bl OS_SPrintf
	add r0, sp, #0x78
	bl NNS_FndGetArchiveFileByName
	cmp r0, #0
	beq _02041488
	add r1, sp, #0x10
	bl NNS_G2dGetUnpackedPaletteData
	cmp r0, #0
	beq _02041488
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02041484
	ldr r1, [sp, #0x10]
	bl sub_02007AFC
_02041484:
	str r0, [sl, #0xc]
_02041488:
	mov r5, #0
	mov r6, r5
	mov r7, r5
	add r4, sp, #0x18
	mov fp, #1
_0204149C:
	add r0, r6, #1
	tst r8, fp, lsl r0
	beq _020414F8
	ldr r1, _020415C4 ; =s_s_s_02d_0208e00c
	mov r0, r4
	add r2, sp, #0x14
	add r3, sp, #0x138
	str r6, [sp]
	bl OS_SPrintf
	mov r0, #1
	str r0, [sp]
	ldr r1, [sl, #0x10]
	mov r0, sl
	mov r2, r4
	add r1, r1, r7
	mov r3, #0
	bl sub_02014CEC
	ldr r0, [sl, #0x10]
	add r1, r6, #1
	add r0, r0, r5, lsl #4
	add r7, r7, #0x10
	strb r1, [r0, #1]
	add r5, r5, #1
_020414F8:
	add r6, r6, #1
	cmp r6, #0x1c
	blt _0204149C
	mov r0, #4
	str r0, [sl, #0x18]
	ldr r0, [sp, #0x1c8]
	strh sb, [sl, #0x1c]
	mov r2, #0
	ldr r1, [sp, #0x1c4]
	strh r2, [sl, #0x1e]
	str r1, [sl, #0x28]
	cmp r0, #0
	beq _0204159C
	cmp r1, #0
	bne _02041568
	mov r0, sl
	bl sub_02014310
	mov r1, #0
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r0
	mov r1, r1, lsl #0x10
	str r0, [sl, #0x2c]
	mov r0, sl
	mov r1, r1, lsr #0xd
	bl sub_020141AC
	mov r0, sl
	bl sub_020142B4
_02041568:
	mov r0, sl
	bl sub_02014364
	mov r1, #0
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r1, r0
	mov r1, r1, lsl #0x10
	str r0, [sl, #0x30]
	mov r0, sl
	mov r1, r1, lsr #0xd
	bl sub_0201429C
	mov r0, sl
	bl sub_020142F8
_0204159C:
	ldr r0, _020415AC ; =0x00050834
	strh sb, [sl, r0]
	add sp, sp, #0x198
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020415AC: .word 0x00050834
_020415B0: .word s_player_1d_0208dfd8
_020415B4: .word DAT_0208dfe4
_020415B8: .word s_data_player_s_LZ_bin_0208dfe8
_020415BC: .word 0x00050800
_020415C0: .word s_s_s_NCLR_0208e000
_020415C4: .word s_s_s_02d_0208e00c

	arm_func_start sub_020415C8
sub_020415C8: ; 0x020415C8
	stmdb sp!, {r3, lr}
	ldrb lr, [r0, #0x14]
	mov r3, #0
	cmp lr, #0
	ble _020415FC
	ldr ip, [r0, #0x10]
	arm_func_end sub_020415C8
_020415E0:
	add r0, ip, r3, lsl #4
	ldrb r2, [r0, #1]
	cmp r1, r2
	ldmeqia sp!, {r3, pc}
	add r3, r3, #1
	cmp r3, lr
	blt _020415E0
_020415FC:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_02041604
sub_02041604: ; 0x02041604
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
	ble _02041658
	ldr ip, [r4, #0x10]
	arm_func_end sub_02041604
_02041638:
	add r2, ip, r3, lsl #4
	ldrb r1, [r2, #1]
	cmp r0, r1
	moveq r0, r2
	ldmeqia sp!, {r4, pc}
	add r3, r3, #1
	cmp r3, lr
	blt _02041638
_02041658:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02041660
sub_02041660: ; 0x02041660
	mov r0, #0
	mov r3, r0
	arm_func_end sub_02041660
_02041668:
	mov r2, r1, asr r3
	tst r2, #1
	andne r0, r3, #0xff
	bxne lr
	add r3, r3, #1
	cmp r3, #0x1d
	blt _02041668
	bx lr

	arm_func_start sub_02041688
sub_02041688: ; 0x02041688
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02040DB8
	ldr r1, _020416A4 ; =0x0000FFFF
	ldr r0, _020416A8 ; =0x00050834
	strh r1, [r4, r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_020416A4: .word 0x0000FFFF
_020416A8: .word 0x00050834
	arm_func_end sub_02041688

	arm_func_start sub_020416AC
sub_020416AC: ; 0x020416AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	str r2, [r4]
	str r2, [r4, #4]
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	str r2, [r4, #0x10]
	mov r3, r4
	str r1, [r4, #0x910]
	mvn r0, #0
	arm_func_end sub_020416AC
_020416D8:
	add r2, r2, #1
	str r0, [r3, #0x24]
	cmp r2, #0x73
	add r3, r3, #0x14
	blt _020416D8
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0x914]
	bl sub_02041718
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start sub_02041704
sub_02041704: ; 0x02041704
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02041870
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02041704

	arm_func_start sub_02041718
sub_02041718: ; 0x02041718
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02041748
	mov r2, #0
	ldr r1, _02041864 ; =s_data_shadow_NCBR_0208e018
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
	arm_func_end sub_02041718
_02041748:
	str r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r0
	str r0, [r4, #0xc]
	mov r1, r1, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldr r0, [r4]
	bl sub_020076B0
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _0204179C
	mov r2, #0
	ldr r1, _02041868 ; =s_data_shadow_NCLR_0208e02c
	mov r3, r2
	bl sub_02007AC0
_0204179C:
	str r0, [r4, #4]
	ldr r0, [r0, #4]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r1, r0
	str r0, [r4, #0x10]
	mov r1, r1, lsl #0x10
	ldr r0, [r4, #4]
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	ldr r0, [r4, #4]
	bl sub_02007BC4
	mov r0, #0x40
	bl _Znwm
	cmp r0, #0
	beq _020417E8
	bl sub_02003B64
_020417E8:
	mov r1, #0
	str r0, [r4, #8]
	ldr r0, _0204186C ; =0x000003FF
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	mov r2, r1
	mov r3, r1
	bl sub_02003BE0
	ldr r1, [r4, #8]
	mov r0, #0
	str r0, [r1, #0x28]
	str r0, [r1, #0x2c]
	mov r0, #0x40000
	str r0, [r1, #0x30]
	mov r0, #0x20000
	str r0, [r1, #0x34]
	ldr r1, [r4]
	ldr r0, [r4, #8]
	mov r2, #2
	str r1, [r0, #0x38]
	ldr r3, [r4, #4]
	ldr r0, [r4, #8]
	mov r1, #8
	str r3, [r0, #0x3c]
	ldr r0, [r4, #8]
	str r2, [r0, #0x10]
	ldr r0, [r4, #8]
	str r1, [r0, #0x14]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02041864: .word s_data_shadow_NCBR_0208e018
_02041868: .word s_data_shadow_NCLR_0208e02c
_0204186C: .word 0x000003FF

	arm_func_start sub_02041870
sub_02041870: ; 0x02041870
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4]
	cmp r5, #0
	beq _020418A0
	beq _02041898
	mov r0, r5
	bl sub_02007548
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_02041870
_02041898:
	mov r0, #0
	str r0, [r4]
_020418A0:
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _020418C8
	beq _020418C0
	mov r0, r5
	bl sub_02007B28
	mov r0, r5
	bl _ZdlPv
_020418C0:
	mov r0, #0
	str r0, [r4, #4]
_020418C8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _020418EC
	beq _020418E4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020418E4:
	mov r0, #0
	str r0, [r4, #8]
_020418EC:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02041904
	bl NNS_GfdFreeLnkTexVram
	mov r0, #0
	str r0, [r4, #0xc]
_02041904:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl NNS_GfdFreeLnkPlttVram
	mov r0, #0
	str r0, [r4, #0x10]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02041920
sub_02041920: ; 0x02041920
	bx lr
	arm_func_end sub_02041920

	arm_func_start sub_02041924
sub_02041924: ; 0x02041924
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov sl, r0
	ldr r0, [sl, #0x914]
	mov sb, r1
	cmp r0, #0
	mov r8, r2
	mov r7, r3
	mov r4, #0
	addle sp, sp, #8
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r5, sl
	add r6, sl, #0x14
	arm_func_end sub_02041924
_02041958:
	ldr r0, [r5, #0x24]
	cmp r8, r0
	bne _0204198C
	ldr r0, [r6, #0xc]
	stmia sp, {r0, r7}
	ldr r0, [sl, #8]
	ldmia r6, {r1, r2, r3}
	bl sub_02003BE0
	ldr r0, [sl, #8]
	mov r1, sb
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
_0204198C:
	ldr r0, [sl, #0x914]
	add r4, r4, #1
	cmp r4, r0
	add r5, r5, #0x14
	add r6, r6, #0x14
	blt _02041958
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start sub_020419AC
sub_020419AC: ; 0x020419AC
	mov r3, r0
	mov r2, #0
	mvn r1, #0
	arm_func_end sub_020419AC
_020419B8:
	add r2, r2, #1
	str r1, [r3, #0x24]
	cmp r2, #0x73
	add r3, r3, #0x14
	blt _020419B8
	mov r1, #0
	str r1, [r0, #0x914]
	bx lr

	arm_func_start sub_020419D8
sub_020419D8: ; 0x020419D8
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, [sp, #0x20]
	cmp r1, #0
	ldr ip, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	ldmltia sp!, {r3, r4, r5, lr}
	addlt sp, sp, #0x10
	bxlt lr
	ldr r4, [r0, #0x910]
	cmp r1, r4
	ldrlt r5, [r0, #0x914]
	cmplt r5, #0x73
	ldmgeia sp!, {r3, r4, r5, lr}
	addge sp, sp, #0x10
	bxge lr
	mov lr, #0x14
	mla r4, r5, lr, r0
	str r1, [r4, #0x24]
	ldr r4, [r0, #0x914]
	ldr r1, [sp, #0x18]
	mul lr, r4, lr
	add r4, r0, #0x14
	str r1, [r4, lr]
	add r1, r4, lr
	str ip, [r1, #4]
	str r3, [r1, #8]
	str r2, [r1, #0xc]
	ldr r1, [r0, #0x914]
	add r1, r1, #1
	str r1, [r0, #0x914]
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020419D8

	arm_func_start sub_02041A60
sub_02041A60: ; 0x02041A60
	ldr r0, [r0, #8]
	cmp r0, #0
	strne r1, [r0, #0x14]
	bx lr
	arm_func_end sub_02041A60

	arm_func_start sub_02041A70
sub_02041A70: ; 0x02041A70
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	movs r6, r0
	ldrne r0, _02041C10 ; =MAIN_BSS_0210CA60
	mov r5, r1
	ldrne r7, [r0]
	mov r4, r2
	mov r8, #0
	cmpne r7, #0
	beq _02041C08
	ldr r0, [r6, #0xd0]
	mov r0, r0, lsl #0x10
	movs r8, r0, lsr #0x10
	beq _02041AD8
	mov r0, r7
	mov r1, r8
	bl ov0_02143088
	cmp r0, #0
	beq _02041AD8
	ldr r0, [r0, #0x24]
	cmp r0, #0xd
	cmpne r0, #9
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r7
	mov r1, r8
	bl ov0_021430D8
	arm_func_end sub_02041A70
_02041AD8:
	cmp r5, #0xe
	mvn r2, #0
	mov sb, #0
	addls pc, pc, r5, lsl #2
	b _02041B94
_02041AEC: ; jump table
	b _02041B28 ; case 0
	b _02041B28 ; case 1
	b _02041B28 ; case 2
	b _02041B30 ; case 3
	b _02041B38 ; case 4
	b _02041B44 ; case 5
	b _02041B50 ; case 6
	b _02041B58 ; case 7
	b _02041B60 ; case 8
	b _02041B78 ; case 9
	b _02041B88 ; case 10
	b _02041B90 ; case 11
	b _02041B68 ; case 12
	b _02041B70 ; case 13
	b _02041B80 ; case 14
_02041B28:
	mov r2, #0x24
	b _02041B94
_02041B30:
	mov r2, #0x25
	b _02041B94
_02041B38:
	mov r2, #0x26
	mov sb, #8
	b _02041B94
_02041B44:
	mov r2, #0x27
	mov sb, #8
	b _02041B94
_02041B50:
	mov r2, #0x28
	b _02041B94
_02041B58:
	mov r2, #0x29
	b _02041B94
_02041B60:
	mov r2, #0x2a
	b _02041B94
_02041B68:
	mov r2, #0x65
	b _02041B94
_02041B70:
	mov r2, #0x66
	b _02041B94
_02041B78:
	mov r2, #0x64
	b _02041B94
_02041B80:
	mov r2, #0x67
	b _02041B94
_02041B88:
	mov r2, #0x41
	b _02041B94
_02041B90:
	mov r2, #0x41
_02041B94:
	cmp r2, #0
	blt _02041C08
	mov r0, r7
	mov r1, #1
	bl ov0_02142F6C
	mov r8, r0
	mov r0, r7
	mov r1, r8
	str r8, [r6, #0xd0]
	bl ov0_02143088
	movs r7, r0
	beq _02041C08
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0x5c]
	blx r2
	mov r0, r7
	str r6, [r7, #0x1c]
	ldr r5, [r0]
	mov r1, sb
	ldr r5, [r5, #0x1c]
	mov r2, r4
	mov r3, #0
	blx r5
	mov r0, r7
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0x24]
	blx r2
_02041C08:
	mov r0, r8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02041C10: .word MAIN_BSS_0210CA60

	arm_func_start sub_02041C14
sub_02041C14: ; 0x02041C14
	str r1, [r0, #0x24]
	bx lr
	arm_func_end sub_02041C14

	arm_func_start sub_02041C1C
sub_02041C1C: ; 0x02041C1C
	stmdb sp!, {r4, r5, r6, lr}
	movs r4, r0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0xd0]
	ldr r1, _02041C7C ; =MAIN_BSS_0210CA60
	mov r0, r0, lsl #0x10
	ldr r6, [r1]
	movs r5, r0, lsr #0x10
	cmpne r6, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl ov0_02143088
	cmp r0, #0
	beq _02041C70
	ldr r0, [r0, #0x1c]
	cmp r0, r4
	bne _02041C70
	mov r0, r6
	mov r1, r5
	bl ov0_021430D8
	arm_func_end sub_02041C1C
_02041C70:
	mov r0, #0
	str r0, [r4, #0xd0]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02041C7C: .word MAIN_BSS_0210CA60

	arm_func_start sub_02041C80
sub_02041C80: ; 0x02041C80
	stmdb sp!, {r4, lr}
	ldr r3, _02041CB0 ; =MAIN_BSS_0210CA6C
	mov r4, r0
	str r4, [r3]
	mov r3, #0
	str r3, [r4]
	str r3, [r4, #4]
	str r3, [r4, #8]
	str r3, [r4, #0xc]
	bl sub_02041CB4
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02041CB0: .word MAIN_BSS_0210CA6C
	arm_func_end sub_02041C80

	arm_func_start sub_02041CB4
sub_02041CB4: ; 0x02041CB4
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r0, #0xb8
	mov r6, r1
	mov r5, r2
	bl _Znwm
	cmp r0, #0
	beq _02041CF4
	mov r2, #0
	str r5, [sp]
	str r2, [sp, #4]
	mov r1, r6
	mov r3, r2
	str r2, [sp, #8]
	bl sub_02002BC4
	arm_func_end sub_02041CB4
_02041CF4:
	str r0, [r4]
	ldr r1, [r0, #0x4c]
	ldr r0, [r1, #8]
	add r0, r1, r0
	add r0, r0, #8
	str r0, [r4, #8]
	ldr r0, [r1, #0xc]
	add r0, r1, r0
	add r0, r0, #8
	str r0, [r4, #0xc]
	ldr r0, [r1, #0x10]
	add r0, r1, r0
	add r0, r0, #8
	str r0, [r4, #4]
	ldr r0, [r1, #0x14]
	add r0, r1, r0
	add r0, r0, #8
	str r0, [r4, #0x10]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}

	arm_func_start sub_02041D44
sub_02041D44: ; 0x02041D44
	ldr r0, [r0, #4]
	cmp r0, #0
	addne r0, r0, r1, lsl #2
	moveq r0, #0
	bx lr
	arm_func_end sub_02041D44

	arm_func_start sub_02041D58
sub_02041D58: ; 0x02041D58
	ldr r0, [r0, #8]
	cmp r0, #0
	addne r0, r0, r1, lsl #6
	moveq r0, #0
	bx lr
	arm_func_end sub_02041D58

	arm_func_start sub_02041D6C
sub_02041D6C: ; 0x02041D6C
	ldr r0, [r0, #0xc]
	cmp r0, #0
	addne r0, r0, r1, lsl #5
	moveq r0, #0
	bx lr
	arm_func_end sub_02041D6C

	arm_func_start sub_02041D80
sub_02041D80: ; 0x02041D80
	ldr r2, [r0, #0x10]
	cmp r2, #0
	movne r0, #0x54
	mlane r0, r1, r0, r2
	moveq r0, #0
	bx lr
	arm_func_end sub_02041D80

	arm_func_start sub_02041D98
sub_02041D98: ; 0x02041D98
	ldr r3, [r0, #0x1c]
	ldr ip, [r0, #8]
	mov r3, r3, lsl #0x1a
	orr r3, r3, ip, lsr #3
	orr r2, r3, r2, lsl #30
	ldr ip, [r0, #0x20]
	ldr r3, [r0, #0x24]
	orr r2, r2, ip, lsl #20
	orr r3, r2, r3, lsl #23
	ldr r2, _02041DF0 ; =0x040004A8
	orr r1, r3, r1, lsl #29
	str r1, [r2]
	ldr r1, [r0, #0x1c]
	cmp r1, #2
	moveq r2, #1
	movne r2, #0
	ldr r1, [r0, #0xc]
	rsb r0, r2, #4
	mov r1, r1, lsr r0
	ldr r0, _02041DF4 ; =0x040004AC
	str r1, [r0]
	bx lr
	.align 2, 0
_02041DF0: .word 0x040004A8
_02041DF4: .word 0x040004AC
	arm_func_end sub_02041D98

	arm_func_start sub_02041DF8
sub_02041DF8: ; 0x02041DF8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	mov r7, r0
	ldr r2, [r7, #0x14]
	mov r6, r1
	cmp r2, #0
	addeq sp, sp, #0x24
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r4, [r7, #0x50]
	ldr r3, [r7, #0x4c]
	ldr r2, [r7, #0x40]
	ldr r1, [r7, #0x3c]
	str r1, [r7, #0x1c]
	str r2, [r7, #0x20]
	str r3, [r7, #0x24]
	str r4, [r7, #0x28]
	bl sub_02041F50
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x3c]
	mov r2, r0, asr #0xc
	mov r3, r1, asr #0xc
	ldrh r5, [r6, #0x28]
	ldr r0, _02041F3C ; =0x04000450
	mov r1, #0
	str r1, [r0]
	ldrh r0, [r7, #0x54]
	mov r4, r3, lsl r5
	cmp r0, #0
	ldreq r0, [r7, #0x44]
	mov r5, r2, lsl r5
	cmpeq r0, #0x1000
	ldreq r0, [r7, #0x48]
	cmpeq r0, #0x1000
	beq _02041F1C
	ldr r1, _02041F40 ; =0x04000470
	mov r0, #0
	str r4, [r1]
	str r5, [r1]
	str r0, [r1]
	ldrh r0, [r7, #0x54]
	cmp r0, #0
	beq _02041ED4
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	ldr r2, _02041F44 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r0]
	add r0, sp, #0
	blx MTX_RotZ33_
	add r0, sp, #0
	bl G3_MultMtx33
	arm_func_end sub_02041DF8
_02041ED4:
	ldr r3, [r7, #0x44]
	cmp r3, #0x1000
	ldreq r0, [r7, #0x48]
	cmpeq r0, #0x1000
	beq _02041F00
	ldr r2, [r7, #0x48]
	ldr r1, _02041F48 ; =0x0400046C
	mov r0, #0x1000
	str r3, [r1]
	str r2, [r1]
	str r0, [r1]
_02041F00:
	ldr r1, _02041F40 ; =0x04000470
	rsb r0, r4, #0
	str r0, [r1]
	rsb r0, r5, #0
	str r0, [r1]
	mov r0, #0
	str r0, [r1]
_02041F1C:
	mov r0, r7
	mov r1, r6
	bl sub_02036558
	ldr r1, _02041F4C ; =0x04000448
	mov r2, #0
	str r2, [r1]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02041F3C: .word 0x04000450
_02041F40: .word 0x04000470
_02041F44: .word FX_SinCosTable_
_02041F48: .word 0x0400046C
_02041F4C: .word 0x04000448

	arm_func_start sub_02041F50
sub_02041F50: ; 0x02041F50
	stmdb sp!, {r3, lr}
	mov r1, r0
	ldr r0, [r1, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r1, #0x58]
	mov r2, #0
	bl sub_02041D98
	ldmia sp!, {r3, pc}
	arm_func_end sub_02041F50

	arm_func_start sub_02041F74
sub_02041F74: ; 0x02041F74
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	mov r5, r1
	cmp r0, #0
	beq _02041F98
	mov r1, #0
	mov r2, r1
	bl sub_02041D98
	arm_func_end sub_02041F74
_02041F98:
	ldr r1, _020420A0 ; =0x04000450
	mov r2, #0
	str r2, [r1]
	ldrh r3, [r5, #0x28]
	ldrh r5, [r4, #8]
	mov r0, #1
	rsb r3, r3, #0xc
	str r5, [r1, #0x30]
	ldr r5, [r4, #0xc]
	ldr r6, [r4, #0x10]
	mov r5, r5, lsl #4
	orr r5, r5, #0xc0
	ldr ip, [r4, #0x14]
	orr r5, r5, r6, lsl #24
	orr r5, r5, ip, lsl #16
	str r5, [r1, #0x54]
	ldr r5, [r4, #0x1c]
	ldr r6, [r4, #0x20]
	mov r5, r5, asr r3
	mov r6, r6, asr r3
	str r5, [r1, #0x20]
	str r6, [r1, #0x20]
	str r2, [r1, #0x20]
	str r0, [r1, #0xb0]
_02041FF8:
	add r0, r4, r2, lsl #3
	ldr r5, [r0, #0x48]
	ldr r6, [r0, #0x44]
	mov ip, r5, lsl #8
	mov r5, ip, asr #0x10
	mov ip, r6, lsl #8
	mov lr, r5, lsl #0x10
	mov r6, ip, asr #0x10
	mov r5, lr, lsr #0x10
	mov ip, r6, lsl #0x10
	mov r5, r5, lsl #0x10
	orr r5, r5, ip, lsr #16
	str r5, [r1, #0x38]
	ldr ip, [r0, #0x28]
	ldr r5, [r0, #0x24]
	mov r0, ip, asr r3
	mov r5, r5, asr r3
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	ldr r6, [r4, #4]
	mov ip, r5, lsl #0x10
	mov lr, r0, lsl #0x10
	mov r0, r6, lsl #0x10
	mov r5, ip, asr #0x10
	mov lr, lr, lsr #0x10
	mov r0, r0, asr #0x10
	mov ip, r0, lsl #0x10
	add r2, r2, #1
	mov r0, r5, lsl #0x10
	mov lr, lr, lsl #0x10
	orr r0, lr, r0, lsr #16
	str r0, [r1, #0x3c]
	mov r0, ip, lsr #0x10
	str r0, [r1, #0x3c]
	cmp r2, #4
	blt _02041FF8
	ldr r0, _020420A4 ; =0x04000504
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #-0xbc]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_020420A0: .word 0x04000450
_020420A4: .word 0x04000504

	arm_func_start sub_020420A8
sub_020420A8: ; 0x020420A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020420A8

	arm_func_start sub_020420BC
sub_020420BC: ; 0x020420BC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020420BC

	arm_func_start sub_020420D8
sub_020420D8: ; 0x020420D8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020420D8

	arm_func_start sub_020420EC
sub_020420EC: ; 0x020420EC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020420EC

	arm_func_start sub_02042108
sub_02042108: ; 0x02042108
	stmdb sp!, {r4, lr}
	mov r4, r0
	strb r1, [r4]
	bl sub_02042134
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02042108

	arm_func_start sub_02042120
sub_02042120: ; 0x02042120
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02042318
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02042120

	arm_func_start sub_02042134
sub_02042134: ; 0x02042134
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x70
	mov r5, r0
	bl sub_02042318
	ldrb r2, [r5]
	ldr r1, _02042300 ; =s_data_battle_bg_capbg_03d_LZ_bin_0208e0b0
	add r0, sp, #0x10
	bl OS_SPrintf
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _0204218C
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _02042304 ; =DAT_0208e0d0
	add r2, sp, #0x10
	str r4, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r4, r0
	arm_func_end sub_02042134
_0204218C:
	ldrb r2, [r5]
	ldr r1, _02042308 ; =s_BBG_capbg_03d_NCBR_0208e0d4
	add r0, sp, #0x10
	bl OS_SPrintf
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _020421C0
	mov r2, #0
	add r1, sp, #0x10
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
_020421C0:
	str r0, [r5, #8]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r0
	str r0, [r5, #0x14]
	mov r1, r1, lsl #0x10
	ldr r0, [r5, #8]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldr r0, [r5, #8]
	bl sub_020076B0
	ldrb r2, [r5]
	ldr r1, _0204230C ; =s_BBG_capbg_03d_NCLR_0208e0e8
	add r0, sp, #0x10
	bl OS_SPrintf
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02042224
	mov r2, #0
	add r1, sp, #0x10
	mov r3, r2
	bl sub_02007AC0
_02042224:
	str r0, [r5, #0xc]
	ldr r0, [r0, #4]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r1, r0
	str r0, [r5, #0x18]
	mov r1, r1, lsl #0x10
	ldr r0, [r5, #0xc]
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	ldr r0, [r5, #0xc]
	bl sub_02007BC4
	ldrb r2, [r5]
	ldr r1, _02042310 ; =s_BBG_capbg_03d_NCER_0208e0fc
	add r0, sp, #0x10
	bl OS_SPrintf
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02042290
	mov r2, #0
	add r1, sp, #0x10
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_02042290:
	str r0, [r5, #0x10]
	mov r0, #0x4c
	bl _Znwm
	cmp r0, #0
	beq _020422A8
	bl sub_02005150
_020422A8:
	str r0, [r5, #4]
	ldr r3, [r5, #0x10]
	ldr r2, [r5, #0xc]
	ldr r1, [r5, #8]
	cmp r4, #0
	str r1, [r0, #0x2c]
	mov r1, #0
	str r1, [r0, #0x30]
	str r2, [r0, #0x34]
	str r3, [r0, #0x38]
	cmpne r4, #0
	ldr r0, [r5, #4]
	ldr r1, _02042314 ; =0xFFFFFC01
	addeq sp, sp, #0x70
	str r1, [r0, #4]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
	add sp, sp, #0x70
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02042300: .word s_data_battle_bg_capbg_03d_LZ_bin_0208e0b0
_02042304: .word DAT_0208e0d0
_02042308: .word s_BBG_capbg_03d_NCBR_0208e0d4
_0204230C: .word s_BBG_capbg_03d_NCLR_0208e0e8
_02042310: .word s_BBG_capbg_03d_NCER_0208e0fc
_02042314: .word 0xFFFFFC01

	arm_func_start sub_02042318
sub_02042318: ; 0x02042318
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02042344
	beq _0204233C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_02042318
_0204233C:
	mov r0, #0
	str r0, [r4, #4]
_02042344:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02042360
	ldr r0, [r4, #0x14]
	bl NNS_GfdFreeLnkTexVram
	mov r0, #0
	str r0, [r4, #0x14]
_02042360:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0204237C
	ldr r0, [r4, #0x18]
	bl NNS_GfdFreeLnkPlttVram
	mov r0, #0
	str r0, [r4, #0x18]
_0204237C:
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _020423A4
	beq _0204239C
	mov r0, r5
	bl sub_02007548
	mov r0, r5
	bl _ZdlPv
_0204239C:
	mov r0, #0
	str r0, [r4, #8]
_020423A4:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _020423CC
	beq _020423C4
	mov r0, r5
	bl sub_02007B28
	mov r0, r5
	bl _ZdlPv
_020423C4:
	mov r0, #0
	str r0, [r4, #0xc]
_020423CC:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _020423E8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020423E8:
	mov r0, #0
	str r0, [r4, #0x10]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020423F4
sub_020423F4: ; 0x020423F4
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #4]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_020423F4

	arm_func_start sub_0204240C
sub_0204240C: ; 0x0204240C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	ldrh r1, [r0, #0x2a]
	bl sub_02005FDC
	ldr r1, [r5, #4]
	add r0, r4, r0
	str r0, [r1, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0204240C

	arm_func_start sub_02042434
sub_02042434: ; 0x02042434
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	ldr r1, _020424F0 ; =MAIN_BSS_020BA6A0
	mov r4, r0
	ldr r1, [r1, #0x1ac]
	mov r0, #0x74
	str r1, [r4, #0x10]
	bl _Znwm
	cmp r0, #0
	beq _02042464
	mov r1, #1
	bl sub_02027FE8
	arm_func_end sub_02042434
_02042464:
	str r0, [r4, #0xc]
	mov lr, #0
	str lr, [r4, #8]
	ldr ip, [r4, #4]
	mov r2, #0x10
	add r0, ip, #0x1000
	ldr r3, [r0, #0x4b0]
	add r1, ip, #0x24
	str r3, [sp]
	str r1, [sp, #4]
	ldr r3, [r0, #0x48c]
	mov r1, #0x4000
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str lr, [sp, #0x14]
	ldr r3, [r0, #0x4ac]
	ldr r0, [r0, #0x490]
	ldr r1, [ip, #0x14]
	ldr r2, [ip, #0x18]
	add r3, r3, #0xc
	bl _ZN17UnkClass_020091E812sub_02009328EmmmPvmS0_mmm
	bl sub_02007D68
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AB28
	ldr r0, [r4, #4]
	mov r1, #0x3c
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_020424F0: .word MAIN_BSS_020BA6A0

	arm_func_start sub_020424F4
sub_020424F4: ; 0x020424F4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xc]
	cmp r4, #0
	beq _02042524
	beq _0204251C
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_020424F4
_0204251C:
	mov r0, #0
	str r0, [r5, #0xc]
_02042524:
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AC90Ev
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_020092D4Ev
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02042548
sub_02042548: ; 0x02042548
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x430
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0x13
	addls pc, pc, r0, lsl #2
	b _02042F54
_02042564: ; jump table
	b _020425B4 ; case 0
	b _020425D8 ; case 1
	b _02042660 ; case 2
	b _02042748 ; case 3
	b _02042760 ; case 4
	b _02042810 ; case 5
	b _02042B34 ; case 6
	b _02042BA4 ; case 7
	b _02042BE0 ; case 8
	b _02042C50 ; case 9
	b _02042C8C ; case 10
	b _02042CB0 ; case 11
	b _02042D30 ; case 12
	b _02042D88 ; case 13
	b _02042DC4 ; case 14
	b _02042E34 ; case 15
	b _02042E70 ; case 16
	b _02042F54 ; case 17
	b _02042EE0 ; case 18
	b _02042F1C ; case 19
	arm_func_end sub_02042548
_020425B4:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	add r1, r1, #1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_020282CC
	mov r0, #1
	str r0, [r4, #8]
	b _02042F54
_020425D8:
	ldr r0, [r4, #0xc]
	bl sub_0202841C
	cmp r0, #0
	beq _02042F54
	tst r0, #0x80
	beq _02042654
	bic r0, r0, #0x80
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _02042F54
_02042600: ; jump table
	b _02042630 ; case 0
	b _02042630 ; case 1
	b _02042630 ; case 2
	b _02042648 ; case 3
	b _02042F54 ; case 4
	b _02042F54 ; case 5
	b _02042F54 ; case 6
	b _02042F54 ; case 7
	b _02042630 ; case 8
	b _02042648 ; case 9
	b _0204263C ; case 10
	b _02042648 ; case 11
_02042630:
	mov r0, #0x10
	str r0, [r4, #8]
	b _02042F54
_0204263C:
	mov r0, #0xa
	str r0, [r4, #8]
	b _02042F54
_02042648:
	mov r0, #0xa
	str r0, [r4, #8]
	b _02042F54
_02042654:
	mov r0, #2
	str r0, [r4, #8]
	b _02042F54
_02042660:
	ldr r1, [r4, #4]
	ldr r6, _02042F60 ; =MAIN_BSS_020AF624
	add r3, r1, #0x1000
	ldr r1, _02042F64 ; =DAT_0208e11c
	add r0, sp, #0x28
	mov r2, #0x10
	ldr r5, [r3, #0x49c]
	bl sub_02046D5C
	add r0, sp, #0x28
	mov r1, r6
	mov r3, r6
	mov r2, #0x3000
	bl sub_02046E84
	ldr r0, [r6]
	and r0, r0, #0xf0
	cmp r0, #0x20
	bgt _020426B4
	bge _020426E0
	cmp r0, #0x10
	beq _020426D0
	b _0204270C
_020426B4:
	cmp r0, #0x30
	bgt _020426C4
	beq _020426F0
	b _0204270C
_020426C4:
	cmp r0, #0x80
	beq _02042700
	b _0204270C
_020426D0:
	mov r0, r6
	add r1, r5, #0x1c
	bl MI_UncompressLZ8
	b _0204270C
_020426E0:
	mov r0, r6
	add r1, r5, #0x1c
	bl MI_UncompressHuffman
	b _0204270C
_020426F0:
	mov r0, r6
	add r1, r5, #0x1c
	bl MI_UncompressRL8
	b _0204270C
_02042700:
	mov r0, r6
	add r1, r5, #0x1c
	bl MI_UnfilterDiff8
_0204270C:
	add r0, r5, #0x1c
	bl sub_02044AC8
	mov r0, #5
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	bl sub_0201024C
	ldr r0, _02042F68 ; =MAIN_BSS_020B26A0
	ldr r2, _02042F6C ; =MAIN_BSS_0210CA6C
	ldrh r1, [r0, #0x1a]
	ldr r0, [r2]
	bl sub_02041D80
	ldrb r1, [r0, #4]
	ldr r0, _02042F70 ; =MAIN_BSS_020BA6A0
	strb r1, [r0, #0xb64]
	b _02042F54
_02042748:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_020282CC
	mov r0, #4
	str r0, [r4, #8]
	b _02042F54
_02042760:
	ldr r0, [r4, #0xc]
	bl sub_0202841C
	cmp r0, #0
	beq _02042F54
	tst r0, #0x80
	beq _020427DC
	bic r0, r0, #0x80
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _02042F54
_02042788: ; jump table
	b _020427B8 ; case 0
	b _020427B8 ; case 1
	b _020427B8 ; case 2
	b _020427D0 ; case 3
	b _02042F54 ; case 4
	b _02042F54 ; case 5
	b _02042F54 ; case 6
	b _02042F54 ; case 7
	b _020427B8 ; case 8
	b _020427D0 ; case 9
	b _020427C4 ; case 10
	b _020427D0 ; case 11
_020427B8:
	mov r0, #0x10
	str r0, [r4, #8]
	b _02042F54
_020427C4:
	mov r0, #8
	str r0, [r4, #8]
	b _02042F54
_020427D0:
	mov r0, #6
	str r0, [r4, #8]
	b _02042F54
_020427DC:
	mov r0, #5
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	bl sub_0201024C
	ldr r0, _02042F68 ; =MAIN_BSS_020B26A0
	ldr r2, _02042F6C ; =MAIN_BSS_0210CA6C
	ldrh r1, [r0, #0x1a]
	ldr r0, [r2]
	bl sub_02041D80
	ldrb r1, [r0, #4]
	ldr r0, _02042F70 ; =MAIN_BSS_020BA6A0
	strb r1, [r0, #0xb64]
	b _02042F54
_02042810:
	ldr r2, [r4, #0x10]
	ldr r0, _02042F68 ; =MAIN_BSS_020B26A0
	add r2, r2, #0x45
	mov r1, #0
	str r2, [sp, #8]
	bl sub_020162BC
	ldr r1, _02042F70 ; =MAIN_BSS_020BA6A0
	mov r3, #0
	strb r3, [r1, #0x802]
	ldr r2, [r4, #0x10]
	mov r0, #1
	str r2, [r1, #0x1ac]
	str r0, [r1, #0xb68]
	ldr r0, [sp, #8]
	ldr r2, _02042F68 ; =MAIN_BSS_020B26A0
	str r0, [r1, #0xb6c]
	mov r4, r3
_02042854:
	add r0, r2, #0x8000
	add r3, r3, #1
	str r4, [r0, #0xad4]
	cmp r3, #2
	add r2, r2, #0x38
	blt _02042854
	ldr r0, _02042F68 ; =MAIN_BSS_020B26A0
	ldr fp, _02042F68 ; =MAIN_BSS_020B26A0
	add r0, r0, #4
	mov r5, r4
	mov r6, r4
	add r8, r0, #0x8800
_02042884:
	mov r7, #0
	mov sb, fp
	mov sl, r8
_02042890:
	cmp r6, #0
	bne _020428B0
	add r0, sb, #0x8000
	ldr r0, [r0, #0x80c]
	tst r0, #2
	movne r4, sl
	movne r5, r7
	bne _020428B8
_020428B0:
	mov r0, sl
	bl sub_020150B8
_020428B8:
	add r7, r7, #1
	cmp r7, #0xa
	add sb, sb, #0x18
	add sl, sl, #0x18
	blt _02042890
	add r6, r6, #1
	cmp r6, #3
	add fp, fp, #0xf0
	add r8, r8, #0xf0
	blt _02042884
	cmp r4, #0
	cmpne r5, #0
	beq _02042954
	ldr r0, _02042F68 ; =MAIN_BSS_020B26A0
	ldrh r3, [r4]
	add r1, r0, #0x8800
	add r2, r0, #0x8000
	strh r3, [r1, #4]
	ldrh r5, [r4, #2]
	mov r3, #0
	mov r0, r4
	strh r5, [r1, #6]
	ldrh r5, [r4, #4]
	strh r5, [r1, #8]
	ldr r5, [r4, #8]
	str r5, [r2, #0x80c]
	ldr r6, [r4, #0xc]
	ldr r5, [r4, #0x10]
	str r6, [r2, #0x810]
	str r5, [r2, #0x814]
	ldrh r5, [r4, #0x14]
	strh r5, [r1, #0x18]
	ldrh r5, [r4, #0x16]
	str r3, [r2, #0x80c]
	strh r5, [r1, #0x1a]
	ldr r1, [r4, #8]
	orr r1, r1, #0
	str r1, [r2, #0x80c]
	bl sub_020150B8
_02042954:
	ldr r0, _02042F68 ; =MAIN_BSS_020B26A0
	bl sub_02016024
	ldr r0, _02042F68 ; =MAIN_BSS_020B26A0
	mov r2, #0x140
	add r0, r0, #0x1b4
	add r1, r0, #0x8000
	mov r0, #0
	bl MIi_CpuClearFast
	ldr r1, _02042F68 ; =MAIN_BSS_020B26A0
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	add r2, r1, #0x8000
	mov r3, #0
	mov r1, #1
	strb r3, [r2, #0x434]
	str r3, [r2, #0xad4]
	str r3, [r2, #0xb0c]
	bl sub_02019278
	mov sl, r0
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	mov r1, #2
	bl sub_02019278
	mov sb, r0
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	mov r1, #0x1b
	bl sub_02019278
	mov r8, r0
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	mov r1, #0x1c
	bl sub_02019278
	mov r7, r0
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	mov r1, #0x1d
	bl sub_02019278
	mov r6, r0
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	mov r1, #0x1e
	bl sub_02019278
	mov r5, r0
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	mov r1, #4
	bl sub_02019278
	mov r4, r0
	ldr r0, _02042F78 ; =MAIN_BSS_020B2638
	bl sub_0201135C
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	bl sub_02018E1C
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	bl sub_02018E30
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	mov r1, #0
	bl sub_02018E94
	ldr r1, [sp, #8]
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	bl sub_02018E94
	ldr r0, _02042F78 ; =MAIN_BSS_020B2638
	mov r1, #0
	bl sub_020116C0
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	mov r2, sl
	mov r1, #1
	bl sub_0201926C
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	mov r2, sb
	mov r1, #2
	bl sub_0201926C
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	mov r2, r8
	mov r1, #0x1b
	bl sub_0201926C
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	mov r2, r7
	mov r1, #0x1c
	bl sub_0201926C
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	mov r2, r6
	mov r1, #0x1d
	bl sub_0201926C
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	mov r2, r5
	mov r1, #0x1e
	bl sub_0201926C
	ldr r0, _02042F74 ; =MAIN_BSS_0210C0B0
	mov r2, r4
	mov r1, #4
	bl sub_0201926C
	ldr r0, _02042F7C ; =MAIN_BSS_0210C1C0
	mov r1, #0
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, _02042F80 ; =MAIN_BSS_0210C228
	mov r1, #0
	mov r2, #0x800
	bl MI_CpuFill8
	ldr r0, _02042F68 ; =MAIN_BSS_020B26A0
	mov r1, #0
	ldrb r2, [r0, #2]
	str r1, [r0, #4]
	strb r2, [r0, #1]
	add r0, sp, #0x1c
	bl RTC_GetTime
	add r0, sp, #0xc
	bl RTC_GetDate
	ldr r2, [sp, #0x1c]
	ldr r1, _02042F70 ; =MAIN_BSS_020BA6A0
	ldr r0, [sp, #0x20]
	str r2, [r1, #0xb94]
	str r0, [r1, #0xb98]
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #0xc]
	str r2, [r1, #0xb9c]
	str r0, [r1, #0xb84]
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r2, [r1, #0xb88]
	ldr r2, [sp, #0x18]
	str r0, [r1, #0xb8c]
	str r2, [r1, #0xb90]
	add sp, sp, #0x430
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02042B34:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r2, #0x48
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #5
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #5
	bl sub_0200E0E0
	mov r0, #7
	str r0, [r4, #8]
	b _02042F54
_02042BA4:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	bne _02042F54
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	mov r0, #0x12
	str r0, [r4, #8]
	b _02042F54
_02042BE0:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r2, #0x50
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #5
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #5
	bl sub_0200E0E0
	mov r0, #9
	str r0, [r4, #8]
	b _02042F54
_02042C50:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	bne _02042F54
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	mov r0, #0x12
	str r0, [r4, #8]
	b _02042F54
_02042C8C:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	add r1, r1, #1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_02028374
	mov r0, #0xb
	str r0, [r4, #8]
	b _02042F54
_02042CB0:
	ldr r0, [r4, #0xc]
	bl sub_0202841C
	cmp r0, #0
	beq _02042F54
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #5
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #5
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r2, #0x73
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #0xc
	str r0, [r4, #8]
	b _02042F54
_02042D30:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	bne _02042F54
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r2, #0x74
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #0xd
	str r0, [r4, #8]
	b _02042F54
_02042D88:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	bne _02042F54
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	mov r0, #0x12
	str r0, [r4, #8]
	b _02042F54
_02042DC4:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r2, #0x50
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #5
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #5
	bl sub_0200E0E0
	mov r0, #0xf
	str r0, [r4, #8]
	b _02042F54
_02042E34:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	bne _02042F54
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	mov r0, #0x12
	str r0, [r4, #8]
	b _02042F54
_02042E70:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r2, #0x45
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #5
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #5
	bl sub_0200E0E0
	mov r0, #0x11
	str r0, [r4, #8]
	b _02042F54
_02042EE0:
	ldr r0, [r4, #4]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x1e
	bl sub_0200E0E0
	mov r0, #0x13
	str r0, [r4, #8]
	b _02042F54
_02042F1C:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02042F54
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	addeq sp, sp, #0x430
	moveq r0, #0x11
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02042F54:
	mvn r0, #0
	add sp, sp, #0x430
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02042F60: .word MAIN_BSS_020AF624
_02042F64: .word DAT_0208e11c
_02042F68: .word MAIN_BSS_020B26A0
_02042F6C: .word MAIN_BSS_0210CA6C
_02042F70: .word MAIN_BSS_020BA6A0
_02042F74: .word MAIN_BSS_0210C0B0
_02042F78: .word MAIN_BSS_020B2638
_02042F7C: .word MAIN_BSS_0210C1C0
_02042F80: .word MAIN_BSS_0210C228

	arm_func_start sub_02042F84
sub_02042F84: ; 0x02042F84
	stmdb sp!, {r3, lr}
	bl GX_ResetBankForBG
	bl GX_ResetBankForOBJ
	bl GX_ResetBankForBGExtPltt
	bl GX_ResetBankForOBJExtPltt
	bl GX_ResetBankForTex
	bl GX_ResetBankForTexPltt
	bl GX_ResetBankForClearImage
	bl GX_ResetBankForSubBG
	bl GX_ResetBankForSubOBJ
	bl GX_ResetBankForSubBGExtPltt
	bl GX_ResetBankForSubOBJExtPltt
	bl GX_ResetBankForARM7
	mov r0, #0xf
	bl GX_SetBankForTex
	mov r0, #0x40
	bl GX_SetBankForTexPltt
	mov r0, #0x10
	bl GX_SetBankForOBJ
	mov r0, #0x20
	bl GX_SetBankForBG
	mov r0, #1
	mov r1, #0
	mov r2, r0
	bl GX_SetGraphicsMode
	mov r0, #0x80
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	mov r1, #0
	str r1, [sp]
	ldr r0, _020430C0 ; =0x04000050
	mov r2, r1
	mov r3, r1
	bl G2x_SetBlendAlpha_
	ldr lr, _020430C4 ; =0x04000060
	ldr r0, _020430C8 ; =0xFFFFFDF1
	ldrh r1, [lr]
	add ip, lr, #0x2a4
	mov r2, #0x4000000
	bic r1, r1, #0x3000
	orr r1, r1, #8
	strh r1, [lr]
	ldrh r3, [lr]
	mov r1, #0
	bic r3, r3, #0x3000
	orr r3, r3, #0x10
	strh r3, [lr]
	ldrh r3, [ip]
	and r0, r3, r0
	orr r0, r0, #0xe
	orr r0, r0, #0x200
	strh r0, [ip]
	ldrh r0, [ip]
	bic r0, r0, #0x8000
	strh r0, [ip]
	ldr r0, [r2]
	bic r0, r0, #0x38000000
	str r0, [r2]
	ldr r0, [r2]
	bic r0, r0, #0x7000000
	str r0, [r2]
	str r1, [r2, #0x10]
	str r1, [r2, #0x14]
	str r1, [r2, #0x18]
	str r1, [r2, #0x1c]
	ldr r0, [r2]
	add r1, r2, #0x1000
	bic r0, r0, #0x1f00
	str r0, [r2]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	str r0, [r1]
	bl GX_DispOn
	ldr r1, _020430CC ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_020430C0: .word 0x04000050
_020430C4: .word 0x04000060
_020430C8: .word 0xFFFFFDF1
_020430CC: .word 0x04001000
	arm_func_end sub_02042F84

	arm_func_start sub_020430D0
sub_020430D0: ; 0x020430D0
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02043120 ; =ptr_FUN_02043134_0208e154
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #0xc]
	cmp r4, #0
	beq _02043108
	beq _02043100
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_020430D0
_02043100:
	mov r0, #0
	str r0, [r5, #0xc]
_02043108:
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	bl _ZdlPv
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02043120: .word ptr_FUN_02043134_0208e154

	arm_func_start sub_02043124
sub_02043124: ; 0x02043124
	bx lr
	arm_func_end sub_02043124

	arm_func_start sub_02043128
sub_02043128: ; 0x02043128
	bx lr
	arm_func_end sub_02043128

	arm_func_start sub_0204312C
sub_0204312C: ; 0x0204312C
	mov r0, #0x1c
	bx lr
	arm_func_end sub_0204312C

	arm_func_start sub_02043134
sub_02043134: ; 0x02043134
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0204317C ; =ptr_FUN_02043134_0208e154
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #0xc]
	cmp r4, #0
	beq _0204316C
	beq _02043164
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02043134
_02043164:
	mov r0, #0
	str r0, [r5, #0xc]
_0204316C:
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0204317C: .word ptr_FUN_02043134_0208e154

	arm_func_start sub_02043180
sub_02043180: ; 0x02043180
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r3, _0204331C ; =MAIN_BSS_020B26A0
	mov r4, r0
	ldrb r2, [r3, #2]
	ldr r1, _02043320 ; =MAIN_BSS_020BA6A0
	ldr r0, _02043324 ; =MAIN_BSS_020BA2DC
	strb r2, [r4, #0x10]
	ldrb r5, [r1, #0x7db]
	add r1, r4, #0x1c
	mov r2, #0x80
	strb r5, [r4, #0x11]
	ldr r5, [r3, #0x28]
	str r5, [r4, #0x14]
	ldr r3, [r3, #0x2c]
	str r3, [r4, #0x18]
	bl MIi_CpuCopyFast
	ldr r0, _02043328 ; =MAIN_BSS_020BA550
	add r1, r4, #0x9c
	mov r2, #0x80
	bl MIi_CpuCopyFast
	ldr r0, _0204332C ; =MAIN_BSS_020BA35C
	add r1, r4, #0x11c
	mov r2, #0x1f4
	bl MI_CpuCopy8
	ldr r3, _02043320 ; =MAIN_BSS_020BA6A0
	ldr r0, _02043330 ; =MAIN_BSS_020BAE0C
	ldr r2, [r3, #0x758]
	add r1, r4, #0x328
	str r2, [r4, #0x314]
	ldr r5, [r3, #0x75c]
	mov r2, #0x44
	str r5, [r4, #0x318]
	ldr r5, [r3, #0x760]
	str r5, [r4, #0x31c]
	ldr r5, [r3, #0x764]
	str r5, [r4, #0x320]
	ldr r3, [r3, #0x768]
	str r3, [r4, #0x324]
	bl MIi_CpuCopyFast
	ldr r2, _02043320 ; =MAIN_BSS_020BA6A0
	ldr r1, _02043334 ; =MAIN_BSS_020BADA0
	ldr r3, [r2, #0x7b0]
	add r0, r4, #0x300
	str r3, [r4, #0x36c]
	ldr r3, [r2, #0x7b4]
	mov lr, #0x10
	str r3, [r4, #0x370]
	ldrh r5, [r1, #0xb8]
	mov ip, #0x4000
	mov r3, #0
	strh r5, [r0, #0x74]
	ldrh r5, [r1, #0xba]
	strh r5, [r0, #0x76]
	ldrh r1, [r1, #0xbc]
	strh r1, [r0, #0x78]
	ldr r0, [r2, #0x7cc]
	str r0, [r4, #0x37c]
	ldrb r0, [r2, #0x7d0]
	strb r0, [r4, #0x380]
	ldr r0, [r2, #0x7d4]
	str r0, [r4, #0x384]
	ldrb r0, [r2, #0x7d8]
	strb r0, [r4, #0x388]
	ldrb r0, [r2, #0x7d9]
	strb r0, [r4, #0x389]
	ldrb r0, [r2, #0x7da]
	strb r0, [r4, #0x38a]
	ldrb r0, [r2, #0x803]
	strb r0, [r4, #0x310]
	ldr r0, [r2, #0x1ac]
	str r0, [r4, #0x38c]
	ldr r5, [r4, #4]
	add r1, r5, #0x1000
	ldr r2, [r1, #0x4b0]
	add r0, r5, #0x24
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [r1, #0x48c]
	str r0, [sp, #8]
	str lr, [sp, #0xc]
	str ip, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r0, [r1, #0x490]
	ldr r3, [r1, #0x4ac]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	add r3, r3, #0xc
	bl _ZN17UnkClass_020091E812sub_02009328EmmmPvmS0_mmm
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AB28
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	mov r1, #0x3c
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0204331C: .word MAIN_BSS_020B26A0
_02043320: .word MAIN_BSS_020BA6A0
_02043324: .word MAIN_BSS_020BA2DC
_02043328: .word MAIN_BSS_020BA550
_0204332C: .word MAIN_BSS_020BA35C
_02043330: .word MAIN_BSS_020BAE0C
_02043334: .word MAIN_BSS_020BADA0
	arm_func_end sub_02043180

	arm_func_start sub_02043338
sub_02043338: ; 0x02043338
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xc]
	cmp r4, #0
	beq _02043368
	beq _02043360
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02043338
_02043360:
	mov r0, #0
	str r0, [r5, #0xc]
_02043368:
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AC90Ev
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_020092D4Ev
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0204338C
sub_0204338C: ; 0x0204338C
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _02043854
_020433A8: ; jump table
	b _020433D8 ; case 0
	b _02043408 ; case 1
	b _02043498 ; case 2
	b _0204360C ; case 3
	b _02043618 ; case 4
	b _02043688 ; case 5
	b _020436C4 ; case 6
	b _02043854 ; case 7
	b _02043734 ; case 8
	b _020437A4 ; case 9
	b _020437E0 ; case 10
	b _0204381C ; case 11
	arm_func_end sub_0204338C
_020433D8:
	mov r0, #0x74
	bl _Znwm
	cmp r0, #0
	beq _020433F0
	mov r1, #1
	bl sub_02027FE8
_020433F0:
	mov r1, #0
	str r0, [r4, #0xc]
	bl sub_020282CC
	mov r0, #1
	str r0, [r4, #8]
	b _02043854
_02043408:
	ldr r0, [r4, #0xc]
	bl sub_0202841C
	cmp r0, #0
	beq _02043854
	tst r0, #0x80
	beq _02043484
	bic r0, r0, #0x80
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _02043854
_02043430: ; jump table
	b _02043460 ; case 0
	b _02043460 ; case 1
	b _02043460 ; case 2
	b _02043478 ; case 3
	b _02043854 ; case 4
	b _02043854 ; case 5
	b _02043854 ; case 6
	b _02043854 ; case 7
	b _02043460 ; case 8
	b _02043478 ; case 9
	b _0204346C ; case 10
	b _02043478 ; case 11
_02043460:
	mov r0, #6
	str r0, [r4, #8]
	b _02043854
_0204346C:
	mov r0, #8
	str r0, [r4, #8]
	b _02043854
_02043478:
	mov r0, #4
	str r0, [r4, #8]
	b _02043854
_02043484:
	mov r0, #2
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	bl sub_0201024C
	b _02043854
_02043498:
	ldrb r1, [r4, #0x10]
	ldr r0, _02043860 ; =MAIN_BSS_020B26A0
	strb r1, [r0, #2]
	ldrb r1, [r4, #0x11]
	bl sub_020160B8
	ldr r1, [r4, #0x14]
	ldr r0, _02043860 ; =MAIN_BSS_020B26A0
	str r1, [r0, #0x28]
	ldr r1, [r4, #0x18]
	bl sub_02016D4C
	ldr r1, _02043864 ; =MAIN_BSS_020BA2DC
	add r0, r4, #0x1c
	mov r2, #0x80
	bl MIi_CpuCopyFast
	ldr r1, _02043868 ; =MAIN_BSS_020BA550
	add r0, r4, #0x9c
	mov r2, #0x80
	bl MIi_CpuCopyFast
	ldr r1, _0204386C ; =MAIN_BSS_020BA35C
	add r0, r4, #0x11c
	mov r2, #0x1f4
	bl MI_CpuCopy8
	ldrb r2, [r4, #0x310]
	ldr r1, _02043870 ; =MAIN_BSS_020BA6A0
	ldr r0, _02043860 ; =MAIN_BSS_020B26A0
	strb r2, [r1, #0x803]
	ldr r1, [r4, #0x314]
	bl sub_02016D88
	ldr r0, _02043860 ; =MAIN_BSS_020B26A0
	ldr r1, [r4, #0x318]
	bl sub_02016DD0
	ldr r0, _02043860 ; =MAIN_BSS_020B26A0
	ldr r1, [r4, #0x31c]
	bl sub_02016E18
	ldr r0, _02043860 ; =MAIN_BSS_020B26A0
	ldr r1, [r4, #0x320]
	bl sub_02016E60
	ldr r0, _02043860 ; =MAIN_BSS_020B26A0
	ldr r1, [r4, #0x324]
	bl sub_02016EA8
	add r0, r4, #0x328
	ldr r1, _02043874 ; =MAIN_BSS_020BAE0C
	mov r2, #0x44
	bl MIi_CpuCopyFast
	ldr r0, _02043860 ; =MAIN_BSS_020B26A0
	ldr r1, [r4, #0x36c]
	bl sub_02017020
	ldr r0, _02043860 ; =MAIN_BSS_020B26A0
	ldr r1, [r4, #0x370]
	bl sub_02017068
	ldr r0, _02043860 ; =MAIN_BSS_020B26A0
	add r1, r4, #0x300
	ldrh r1, [r1, #0x74]
	bl sub_020170B0
	ldr r0, _02043860 ; =MAIN_BSS_020B26A0
	add r1, r4, #0x300
	ldrh r1, [r1, #0x76]
	bl sub_02017100
	ldr r0, _02043860 ; =MAIN_BSS_020B26A0
	add r1, r4, #0x300
	ldrh r1, [r1, #0x78]
	bl sub_02017150
	ldr r1, [r4, #0x37c]
	ldr r0, _02043870 ; =MAIN_BSS_020BA6A0
	str r1, [r0, #0x7cc]
	ldrb r1, [r4, #0x380]
	strb r1, [r0, #0x7d0]
	ldr r1, [r4, #0x384]
	str r1, [r0, #0x7d4]
	ldrb r1, [r4, #0x388]
	strb r1, [r0, #0x7d8]
	ldrb r1, [r4, #0x389]
	strb r1, [r0, #0x7d9]
	ldrb r1, [r4, #0x38a]
	strb r1, [r0, #0x7da]
	ldr r0, [r4, #0x38c]
	subs r5, r0, #1
	bmi _02043600
	cmp r5, #6
	bge _02043600
	ldr r0, _02043878 ; =MAIN_BSS_020AF598
	mov r1, r5
	bl sub_020112DC
	cmp r5, #3
	bge _02043600
	ldr r1, _0204387C ; =MAIN_BSS_020AF5E4
	mov r0, #0x14
	mla r0, r5, r0, r1
	mov r1, r5
	bl sub_02010F5C
_02043600:
	mov r0, #3
	str r0, [r4, #8]
	b _02043854
_0204360C:
	add sp, sp, #8
	mov r0, #0x15
	ldmia sp!, {r3, r4, r5, pc}
_02043618:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r2, #0x48
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #5
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #5
	bl sub_0200E0E0
	mov r0, #5
	str r0, [r4, #8]
	b _02043854
_02043688:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	bne _02043854
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	mov r0, #0xa
	str r0, [r4, #8]
	b _02043854
_020436C4:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r2, #0x45
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #5
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #5
	bl sub_0200E0E0
	mov r0, #7
	str r0, [r4, #8]
	b _02043854
_02043734:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r2, #0x50
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #5
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #5
	bl sub_0200E0E0
	mov r0, #9
	str r0, [r4, #8]
	b _02043854
_020437A4:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	bne _02043854
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	mov r0, #0xa
	str r0, [r4, #8]
	b _02043854
_020437E0:
	ldr r0, [r4, #4]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x1e
	bl sub_0200E0E0
	mov r0, #0xb
	str r0, [r4, #8]
	b _02043854
_0204381C:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02043854
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0x11
	ldmeqia sp!, {r3, r4, r5, pc}
_02043854:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02043860: .word MAIN_BSS_020B26A0
_02043864: .word MAIN_BSS_020BA2DC
_02043868: .word MAIN_BSS_020BA550
_0204386C: .word MAIN_BSS_020BA35C
_02043870: .word MAIN_BSS_020BA6A0
_02043874: .word MAIN_BSS_020BAE0C
_02043878: .word MAIN_BSS_020AF598
_0204387C: .word MAIN_BSS_020AF5E4

	arm_func_start sub_02043880
sub_02043880: ; 0x02043880
	stmdb sp!, {r3, lr}
	bl GX_ResetBankForBG
	bl GX_ResetBankForOBJ
	bl GX_ResetBankForBGExtPltt
	bl GX_ResetBankForOBJExtPltt
	bl GX_ResetBankForTex
	bl GX_ResetBankForTexPltt
	bl GX_ResetBankForClearImage
	bl GX_ResetBankForSubBG
	bl GX_ResetBankForSubOBJ
	bl GX_ResetBankForSubBGExtPltt
	bl GX_ResetBankForSubOBJExtPltt
	bl GX_ResetBankForARM7
	mov r0, #0xf
	bl GX_SetBankForTex
	mov r0, #0x40
	bl GX_SetBankForTexPltt
	mov r0, #0x10
	bl GX_SetBankForOBJ
	mov r0, #0x20
	bl GX_SetBankForBG
	mov r0, #1
	mov r1, #0
	mov r2, r0
	bl GX_SetGraphicsMode
	mov r0, #0x80
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	mov r1, #0
	str r1, [sp]
	ldr r0, _02043998 ; =0x04000050
	mov r2, r1
	mov r3, r1
	bl G2x_SetBlendAlpha_
	ldr lr, _0204399C ; =0x04000060
	ldr r0, _020439A0 ; =0xFFFFFDF1
	ldrh r1, [lr]
	add ip, lr, #0x2a4
	mov r2, #0x4000000
	bic r1, r1, #0x3000
	orr r1, r1, #8
	strh r1, [lr]
	ldrh r3, [lr]
	add r1, r2, #0x1000
	bic r3, r3, #0x3000
	orr r3, r3, #0x10
	strh r3, [lr]
	ldrh r3, [ip]
	and r0, r3, r0
	orr r0, r0, #0xe
	orr r0, r0, #0x200
	strh r0, [ip]
	ldrh r0, [ip]
	bic r0, r0, #0x8000
	strh r0, [ip]
	ldr r0, [r2]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x800
	str r0, [r2]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x800
	str r0, [r1]
	bl GX_DispOn
	ldr r1, _020439A4 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02043998: .word 0x04000050
_0204399C: .word 0x04000060
_020439A0: .word 0xFFFFFDF1
_020439A4: .word 0x04001000
	arm_func_end sub_02043880

	arm_func_start sub_020439A8
sub_020439A8: ; 0x020439A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020439A8

	arm_func_start sub_020439C4
sub_020439C4: ; 0x020439C4
	bx lr
	arm_func_end sub_020439C4

	arm_func_start sub_020439C8
sub_020439C8: ; 0x020439C8
	bx lr
	arm_func_end sub_020439C8

	arm_func_start sub_020439CC
sub_020439CC: ; 0x020439CC
	mov r0, #0x1d
	bx lr
	arm_func_end sub_020439CC

	arm_func_start sub_020439D4
sub_020439D4: ; 0x020439D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020439D4

	arm_func_start sub_020439E8
sub_020439E8: ; 0x020439E8
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	ldr r1, _02043AA4 ; =MAIN_BSS_020BA6A0
	mov r4, r0
	ldr r1, [r1, #0x1ac]
	mov r0, #0x74
	str r1, [r4, #0x10]
	bl _Znwm
	cmp r0, #0
	beq _02043A18
	mov r1, #1
	bl sub_02027FE8
	arm_func_end sub_020439E8
_02043A18:
	str r0, [r4, #0xc]
	mov lr, #0
	str lr, [r4, #8]
	ldr ip, [r4, #4]
	mov r2, #0x10
	add r0, ip, #0x1000
	ldr r3, [r0, #0x4b0]
	add r1, ip, #0x24
	str r3, [sp]
	str r1, [sp, #4]
	ldr r3, [r0, #0x48c]
	mov r1, #0x4000
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str lr, [sp, #0x14]
	ldr r3, [r0, #0x4ac]
	ldr r0, [r0, #0x490]
	ldr r1, [ip, #0x14]
	ldr r2, [ip, #0x18]
	add r3, r3, #0xc
	bl _ZN17UnkClass_020091E812sub_02009328EmmmPvmS0_mmm
	bl sub_02007D68
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AB28
	ldr r0, [r4, #4]
	mov r1, #0x3c
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_02043AA4: .word MAIN_BSS_020BA6A0

	arm_func_start sub_02043AA8
sub_02043AA8: ; 0x02043AA8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xc]
	cmp r4, #0
	beq _02043AD8
	beq _02043AD0
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02043AA8
_02043AD0:
	mov r0, #0
	str r0, [r5, #0xc]
_02043AD8:
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AC90Ev
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_020092D4Ev
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02043AFC
sub_02043AFC: ; 0x02043AFC
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x410
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _02043FA8
_02043B18: ; jump table
	b _02043B4C ; case 0
	b _02043B70 ; case 1
	b _02043C20 ; case 2
	b _02043CE0 ; case 3
	b _02043D04 ; case 4
	b _02043D84 ; case 5
	b _02043DDC ; case 6
	b _02043EC4 ; case 7
	b _02043FA8 ; case 8
	b _02043E18 ; case 9
	b _02043E88 ; case 10
	b _02043F34 ; case 11
	b _02043F70 ; case 12
	arm_func_end sub_02043AFC
_02043B4C:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	add r1, r1, #1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_020282CC
	mov r0, #1
	str r0, [r4, #8]
	b _02043FA8
_02043B70:
	ldr r0, [r4, #0xc]
	bl sub_0202841C
	cmp r0, #0
	beq _02043FA8
	tst r0, #0x80
	beq _02043BEC
	bic r0, r0, #0x80
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _02043FA8
_02043B98: ; jump table
	b _02043BC8 ; case 0
	b _02043BC8 ; case 1
	b _02043BC8 ; case 2
	b _02043BE0 ; case 3
	b _02043FA8 ; case 4
	b _02043FA8 ; case 5
	b _02043FA8 ; case 6
	b _02043FA8 ; case 7
	b _02043BC8 ; case 8
	b _02043BE0 ; case 9
	b _02043BD4 ; case 10
	b _02043BE0 ; case 11
_02043BC8:
	mov r0, #7
	str r0, [r4, #8]
	b _02043FA8
_02043BD4:
	mov r0, #3
	str r0, [r4, #8]
	b _02043FA8
_02043BE0:
	mov r0, #3
	str r0, [r4, #8]
	b _02043FA8
_02043BEC:
	mov r0, #2
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	bl sub_0201024C
	ldr r0, _02043FB4 ; =MAIN_BSS_020B26A0
	ldr r2, _02043FB8 ; =MAIN_BSS_0210CA6C
	ldrh r1, [r0, #0x1a]
	ldr r0, [r2]
	bl sub_02041D80
	ldrb r1, [r0, #4]
	ldr r0, _02043FBC ; =MAIN_BSS_020BA6A0
	strb r1, [r0, #0xb64]
	b _02043FA8
_02043C20:
	ldr r1, [r4, #4]
	ldr r5, _02043FC0 ; =MAIN_BSS_020AF624
	add r3, r1, #0x1000
	ldr r1, _02043FC4 ; =DAT_0208e11c
	add r0, sp, #8
	mov r2, #0x10
	ldr r4, [r3, #0x49c]
	bl sub_02046D5C
	add r0, sp, #8
	mov r1, r5
	mov r3, r5
	mov r2, #0x3000
	bl sub_02046E84
	ldr r0, [r5]
	and r0, r0, #0xf0
	cmp r0, #0x20
	bgt _02043C74
	bge _02043CA0
	cmp r0, #0x10
	beq _02043C90
	b _02043CCC
_02043C74:
	cmp r0, #0x30
	bgt _02043C84
	beq _02043CB0
	b _02043CCC
_02043C84:
	cmp r0, #0x80
	beq _02043CC0
	b _02043CCC
_02043C90:
	mov r0, r5
	add r1, r4, #0x1c
	bl MI_UncompressLZ8
	b _02043CCC
_02043CA0:
	mov r0, r5
	add r1, r4, #0x1c
	bl MI_UncompressHuffman
	b _02043CCC
_02043CB0:
	mov r0, r5
	add r1, r4, #0x1c
	bl MI_UncompressRL8
	b _02043CCC
_02043CC0:
	mov r0, r5
	add r1, r4, #0x1c
	bl MI_UnfilterDiff8
_02043CCC:
	add r0, r4, #0x1c
	bl sub_02044AC8
	add sp, sp, #0x410
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_02043CE0:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	add r1, r1, #1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_02028374
	mov r0, #4
	str r0, [r4, #8]
	b _02043FA8
_02043D04:
	ldr r0, [r4, #0xc]
	bl sub_0202841C
	cmp r0, #0
	beq _02043FA8
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #5
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #5
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r2, #0x73
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #5
	str r0, [r4, #8]
	b _02043FA8
_02043D84:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	bne _02043FA8
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r2, #0x74
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #6
	str r0, [r4, #8]
	b _02043FA8
_02043DDC:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	bne _02043FA8
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	mov r0, #0xb
	str r0, [r4, #8]
	b _02043FA8
_02043E18:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r2, #0x50
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #5
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #5
	bl sub_0200E0E0
	mov r0, #0xa
	str r0, [r4, #8]
	b _02043FA8
_02043E88:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	bne _02043FA8
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	mov r0, #0xb
	str r0, [r4, #8]
	b _02043FA8
_02043EC4:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r2, #0x45
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #5
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #5
	bl sub_0200E0E0
	mov r0, #8
	str r0, [r4, #8]
	b _02043FA8
_02043F34:
	ldr r0, [r4, #4]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x1e
	bl sub_0200E0E0
	mov r0, #0xc
	str r0, [r4, #8]
	b _02043FA8
_02043F70:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02043FA8
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	addeq sp, sp, #0x410
	moveq r0, #0x11
	ldmeqia sp!, {r3, r4, r5, pc}
_02043FA8:
	mvn r0, #0
	add sp, sp, #0x410
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02043FB4: .word MAIN_BSS_020B26A0
_02043FB8: .word MAIN_BSS_0210CA6C
_02043FBC: .word MAIN_BSS_020BA6A0
_02043FC0: .word MAIN_BSS_020AF624
_02043FC4: .word DAT_0208e11c

	arm_func_start sub_02043FC8
sub_02043FC8: ; 0x02043FC8
	stmdb sp!, {r3, lr}
	bl GX_ResetBankForBG
	bl GX_ResetBankForOBJ
	bl GX_ResetBankForBGExtPltt
	bl GX_ResetBankForOBJExtPltt
	bl GX_ResetBankForTex
	bl GX_ResetBankForTexPltt
	bl GX_ResetBankForClearImage
	bl GX_ResetBankForSubBG
	bl GX_ResetBankForSubOBJ
	bl GX_ResetBankForSubBGExtPltt
	bl GX_ResetBankForSubOBJExtPltt
	bl GX_ResetBankForARM7
	mov r0, #0xf
	bl GX_SetBankForTex
	mov r0, #0x40
	bl GX_SetBankForTexPltt
	mov r0, #0x10
	bl GX_SetBankForOBJ
	mov r0, #0x20
	bl GX_SetBankForBG
	mov r0, #1
	mov r1, #0
	mov r2, r0
	bl GX_SetGraphicsMode
	mov r0, #0x80
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	mov r1, #0
	str r1, [sp]
	ldr r0, _020440E0 ; =0x04000050
	mov r2, r1
	mov r3, r1
	bl G2x_SetBlendAlpha_
	ldr lr, _020440E4 ; =0x04000060
	ldr r0, _020440E8 ; =0xFFFFFDF1
	ldrh r1, [lr]
	add ip, lr, #0x2a4
	mov r2, #0x4000000
	bic r1, r1, #0x3000
	orr r1, r1, #8
	strh r1, [lr]
	ldrh r3, [lr]
	add r1, r2, #0x1000
	bic r3, r3, #0x3000
	orr r3, r3, #0x10
	strh r3, [lr]
	ldrh r3, [ip]
	and r0, r3, r0
	orr r0, r0, #0xe
	orr r0, r0, #0x200
	strh r0, [ip]
	ldrh r0, [ip]
	bic r0, r0, #0x8000
	strh r0, [ip]
	ldr r0, [r2]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x800
	str r0, [r2]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x800
	str r0, [r1]
	bl GX_DispOn
	ldr r1, _020440EC ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_020440E0: .word 0x04000050
_020440E4: .word 0x04000060
_020440E8: .word 0xFFFFFDF1
_020440EC: .word 0x04001000
	arm_func_end sub_02043FC8

	arm_func_start sub_020440F0
sub_020440F0: ; 0x020440F0
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02044140 ; =ptr_FUN_02044154_0208e210
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #0xc]
	cmp r4, #0
	beq _02044128
	beq _02044120
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_020440F0
_02044120:
	mov r0, #0
	str r0, [r5, #0xc]
_02044128:
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	bl _ZdlPv
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02044140: .word ptr_FUN_02044154_0208e210

	arm_func_start sub_02044144
sub_02044144: ; 0x02044144
	bx lr
	arm_func_end sub_02044144

	arm_func_start sub_02044148
sub_02044148: ; 0x02044148
	bx lr
	arm_func_end sub_02044148

	arm_func_start sub_0204414C
sub_0204414C: ; 0x0204414C
	mov r0, #0x1e
	bx lr
	arm_func_end sub_0204414C

	arm_func_start sub_02044154
sub_02044154: ; 0x02044154
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0204419C ; =ptr_FUN_02044154_0208e210
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #0xc]
	cmp r4, #0
	beq _0204418C
	beq _02044184
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02044154
_02044184:
	mov r0, #0
	str r0, [r5, #0xc]
_0204418C:
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0204419C: .word ptr_FUN_02044154_0208e210

	arm_func_start thunk_FUN_02064f9c
thunk_FUN_02064f9c: ; 0x020441A0
	ldr ip, _020441A8 ; =OS_Printf
	bx ip
	.align 2, 0
_020441A8: .word OS_Printf
	arm_func_end thunk_FUN_02064f9c

	arm_func_start sub_020441AC
sub_020441AC: ; 0x020441AC
	bx lr
	arm_func_end sub_020441AC

	arm_func_start sub_020441B0
sub_020441B0: ; 0x020441B0
	stmdb sp!, {r3, lr}
	ldr r0, _020441F8 ; =MAIN_BSS_0210CAB4
	ldr r3, [r0, #4]
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0]
	ldr r0, _020441FC ; =MAIN_BSS_0210CAC8
	subs r1, r1, r0
	beq _020441E8
	mov r2, #1
	bl fwrite
	ldr r0, _020441F8 ; =MAIN_BSS_0210CAB4
	ldr r0, [r0, #4]
	bl fflush
	arm_func_end sub_020441B0
_020441E8:
	ldr r1, _020441FC ; =MAIN_BSS_0210CAC8
	ldr r0, _020441F8 ; =MAIN_BSS_0210CAB4
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_020441F8: .word MAIN_BSS_0210CAB4
_020441FC: .word MAIN_BSS_0210CAC8

	arm_func_start sub_02044200
sub_02044200: ; 0x02044200
	stmdb sp!, {r4, r5, r6, lr}
	ldr r5, _02044258 ; =MAIN_BSS_0210CAB4
	mov r4, r0
	ldr r0, [r5, #4]
	cmp r0, #0
	ldrnesb r0, [r4]
	cmpne r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r6, _0204425C ; =MAIN_BSS_0210CEC8
	arm_func_end sub_02044200
_02044224:
	ldr r1, [r5]
	add r0, r1, #1
	str r0, [r5]
	ldrsb r0, [r4], #1
	strb r0, [r1]
	ldr r0, [r5]
	cmp r0, r6
	blo _02044248
	bl sub_020441B0
_02044248:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _02044224
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02044258: .word MAIN_BSS_0210CAB4
_0204425C: .word MAIN_BSS_0210CEC8

	arm_func_start sub_02044260
sub_02044260: ; 0x02044260
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _020442C4 ; =DAT_0208e23c
	mov r5, r0
	ldr r4, [r1, #4]
	tst r4, #4
	beq _0204427C
	bl sub_02044200
	arm_func_end sub_02044260
_0204427C:
	tst r4, #2
	beq _0204428C
	mov r0, r5
	bl thunk_FUN_02064f9c
_0204428C:
	tst r4, #8
	beq _0204429C
	mov r0, r5
	bl sub_020441AC
_0204429C:
	tst r4, #0x10
	ldrne r0, _020442C8 ; =MAIN_BSS_0210CAB4
	ldrne r3, [r0, #0x10]
	cmpne r3, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r0, #0xc]
	ldr r2, [r0, #8]
	mov r0, r5
	blx r3
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020442C4: .word DAT_0208e23c
_020442C8: .word MAIN_BSS_0210CAB4

	arm_func_start sub_020442CC
sub_020442CC: ; 0x020442CC
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x200
	mov r3, r0
	mov r2, r1
	add r0, sp, #0
	mov r1, r3
	bl vsprintf
	ldr r1, _02044304 ; =DAT_0208e244
	add r0, sp, #0
	bl strcat
	add r0, sp, #0
	bl sub_02044260
	add sp, sp, #0x200
	ldmia sp!, {r3, pc}
	.align 2, 0
_02044304: .word DAT_0208e244
	arm_func_end sub_020442CC

	arm_func_start sub_02044308
sub_02044308: ; 0x02044308
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x200
	mov r3, r0
	mov r2, r1
	add r0, sp, #0
	mov r1, r3
	bl vsprintf
	add r0, sp, #0
	bl sub_02044260
	add sp, sp, #0x200
	ldmia sp!, {r3, pc}
	arm_func_end sub_02044308

	arm_func_start thunk_FUN_020442cc
thunk_FUN_020442cc: ; 0x02044334
	ldr ip, _0204433C ; =sub_020442CC
	bx ip
	.align 2, 0
_0204433C: .word sub_020442CC
	arm_func_end thunk_FUN_020442cc

	arm_func_start sub_02044340
sub_02044340: ; 0x02044340
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	ldr r0, [sp, #8]
	add r1, sp, #0xc
	bl sub_020442CC
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02044340

	arm_func_start thunk_FUN_02044308
thunk_FUN_02044308: ; 0x02044360
	ldr ip, _02044368 ; =sub_02044308
	bx ip
	.align 2, 0
_02044368: .word sub_02044308
	arm_func_end thunk_FUN_02044308
