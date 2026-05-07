    .include "macros.inc"
    .include "include/arm9_02003274.inc"

    .text

	arm_func_start CNCERFile_complete_obj_dtor
CNCERFile_complete_obj_dtor: ; 0x02003274
    stmdb sp!, {r4, lr}
    ldr r1, _02003298 ; =PTR_LAB_0208a590
    mov r4, r0
    str r1, [r4]
    bl _ZN11CBinaryFile12sub_020030D4Ev
    mov r0, r4
    bl sub_02002C7C
    mov r0, r4
    ldmia sp!, {r4, pc}
_02003298: .word PTR_LAB_0208a590
    arm_func_end CNCERFile_complete_obj_dtor

	arm_func_start CNCERFile_deleting_obj_dtor
CNCERFile_deleting_obj_dtor: ; 0x0200329C
    stmdb sp!, {r4, lr}
    ldr r1, _020032C8 ; =PTR_LAB_0208a590
    mov r4, r0
    str r1, [r4]
    bl _ZN11CBinaryFile12sub_020030D4Ev
    mov r0, r4
    bl sub_02002C7C
    mov r0, r4
    bl _ZdlPv
    mov r0, r4
    ldmia sp!, {r4, pc}
_020032C8: .word PTR_LAB_0208a590
    arm_func_end CNCERFile_deleting_obj_dtor
