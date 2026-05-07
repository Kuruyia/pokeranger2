    .include "macros.inc"
    .include "include/arm9_020031B8.inc"

    .text

	arm_func_start CBinaryFileMes_complete_obj_dtor
CBinaryFileMes_complete_obj_dtor: ; 0x020031B8
    stmdb sp!, {r4, lr}
    mov r4, r0
    bl sub_02002C7C
    mov r0, r4
    ldmia sp!, {r4, pc}
	arm_func_end CBinaryFileMes_complete_obj_dtor

	arm_func_start CBinaryFileMes_deleting_obj_dtor
CBinaryFileMes_deleting_obj_dtor: ; 0x020031CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02002C7C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end CBinaryFileMes_deleting_obj_dtor
