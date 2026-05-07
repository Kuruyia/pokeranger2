    .include "macros.inc"
    .include "include/arm9_02002C34.inc"

    .text

	arm_func_start CBinaryFile_complete_obj_dtor
CBinaryFile_complete_obj_dtor: ; 0x02002C34
	stmdb sp!, {r4, lr}
	ldr r1, _02002C50 ; =ptr_FUN_02002c34_0208a518
	mov r4, r0
	str r1, [r4]
	bl _ZN11CBinaryFile12sub_020030D4Ev
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02002C50: .word ptr_FUN_02002c34_0208a518
	arm_func_end CBinaryFile_complete_obj_dtor

	arm_func_start CBinaryFile_deleting_obj_dtor
CBinaryFile_deleting_obj_dtor: ; 0x02002C54
	stmdb sp!, {r4, lr}
	ldr r1, _02002C78 ; =ptr_FUN_02002c34_0208a518
	mov r4, r0
	str r1, [r4]
	bl _ZN11CBinaryFile12sub_020030D4Ev
    mov r0, r4
    bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02002C78: .word ptr_FUN_02002c34_0208a518
	arm_func_end CBinaryFile_deleting_obj_dtor

    arm_func_start sub_02002C7C
sub_02002C7C: ; 0x02002C7C
	stmdb sp!, {r4, lr}
	ldr r1, _02002C98 ; =ptr_FUN_02002c34_0208a518
	mov r4, r0
	str r1, [r4]
	bl _ZN11CBinaryFile12sub_020030D4Ev
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02002C98: .word ptr_FUN_02002c34_0208a518
	arm_func_end sub_02002C7C
