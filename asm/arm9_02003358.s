    .include "macros.inc"
    .include "include/arm9_02003358.inc"

    .text

	arm_func_start CNCGRFile_complete_obj_dtor
CNCGRFile_complete_obj_dtor: ; 0x02003358
    stmdb sp!, {r4, lr}
    ldr r1, _0200337C ; =PTR_LAB_0208a5b8
    mov r4, r0
    str r1, [r4]
    bl _ZN11CBinaryFile12sub_020030D4Ev
    mov r0, r4
    bl sub_02002C7C
    mov r0, r4
    ldmia sp!, {r4, pc}
_0200337C: .word PTR_LAB_0208a5b8
    arm_func_end CNCGRFile_complete_obj_dtor

	arm_func_start CNCGRFile_deleting_obj_dtor
CNCGRFile_deleting_obj_dtor: ; 0x02003380
    stmdb sp!, {r4, lr}
    ldr r1, _020033AC ; =PTR_LAB_0208a5b8
    mov r4, r0
    str r1, [r4]
    bl _ZN11CBinaryFile12sub_020030D4Ev
    mov r0, r4
    bl sub_02002C7C
    mov r0, r4
    bl _ZdlPv
    mov r0, r4
    ldmia sp!, {r4, pc}
_020033AC: .word PTR_LAB_0208a5b8
    arm_func_end CNCGRFile_deleting_obj_dtor
