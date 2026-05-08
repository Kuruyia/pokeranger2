    .include "macros.inc"
    .include "include/arm9_0200343C.inc"

    .text

	arm_func_start CNCLRFile_complete_obj_dtor
CNCLRFile_complete_obj_dtor: ; 0x0200343C
	stmdb sp!, {r4, lr}
	ldr r1, _02003460 ; =ptr_FUN_0200343c_0208a5e0
	mov r4, r0
	str r1, [r4]
	bl _ZN11CBinaryFile12sub_020030D4Ev
	mov r0, r4
	bl sub_02002C7C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02003460: .word ptr_FUN_0200343c_0208a5e0
	arm_func_end CNCLRFile_complete_obj_dtor

	arm_func_start CNCLRFile_deleting_obj_dtor
CNCLRFile_deleting_obj_dtor: ; 0x02003464
	stmdb sp!, {r4, lr}
	ldr r1, _02003490 ; =ptr_FUN_0200343c_0208a5e0
	mov r4, r0
	str r1, [r4]
	bl _ZN11CBinaryFile12sub_020030D4Ev
	mov r0, r4
	bl sub_02002C7C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02003490: .word ptr_FUN_0200343c_0208a5e0
	arm_func_end CNCLRFile_deleting_obj_dtor
