    .include "macros.inc"
    .include "include/arm9_02003520.inc"

    .text

	arm_func_start CNSCRFile_complete_obj_dtor
CNSCRFile_complete_obj_dtor: ; 0x02003520
    stmdb sp!, {r4, lr}
    ldr r1, _02003544 ; =PTR_LAB_0208a608
    mov r4, r0
    str r1, [r4]
    bl _ZN11CBinaryFile12sub_020030D4Ev
    mov r0, r4
    bl sub_02002C7C
    mov r0, r4
    ldmia sp!, {r4, pc}
_02003544: .word PTR_LAB_0208a608
    arm_func_end CNSCRFile_complete_obj_dtor

	arm_func_start CNSCRFile_deleting_obj_dtor
CNSCRFile_deleting_obj_dtor: ; 0x02003548
    stmdb sp!, {r4, lr}
    ldr r1, _02003574 ; =PTR_LAB_0208a608
    mov r4, r0
    str r1, [r4]
    bl _ZN11CBinaryFile12sub_020030D4Ev
    mov r0, r4
    bl sub_02002C7C
    mov r0, r4
    bl _ZdlPv
    mov r0, r4
    ldmia sp!, {r4, pc}
_02003574: .word PTR_LAB_0208a608
    arm_func_end CNSCRFile_deleting_obj_dtor
