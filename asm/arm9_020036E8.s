    .include "macros.inc"
    .include "include/arm9_020036E8.inc"

    .text

	arm_func_start CBGNCGRFile_complete_obj_dtor
CBGNCGRFile_complete_obj_dtor: ; 0x020036E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02002C7C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end CBGNCGRFile_complete_obj_dtor

	arm_func_start CBGNCGRFile_deleting_obj_dtor
CBGNCGRFile_deleting_obj_dtor: ; 0x020036FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02002C7C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end CBGNCGRFile_deleting_obj_dtor
