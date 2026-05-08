    .include "macros.inc"
    .include "include/arm9_02003604.inc"

    .text

	arm_func_start CNANRFile_complete_obj_dtor
CNANRFile_complete_obj_dtor: ; 0x02003604
	stmdb sp!, {r4, lr}
	ldr r1, _02003628 ; =PTR_LAB_0208a630
	mov r4, r0
	str r1, [r4]
	bl _ZN11CBinaryFile12sub_020030D4Ev
	mov r0, r4
	bl sub_02002C7C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02003628: .word PTR_LAB_0208a630
	arm_func_end CNANRFile_complete_obj_dtor

	arm_func_start CNANRFile_deleting_obj_dtor
CNANRFile_deleting_obj_dtor: ; 0x0200362C
	stmdb sp!, {r4, lr}
	ldr r1, _02003658 ; =PTR_LAB_0208a630
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
_02003658: .word PTR_LAB_0208a630
	arm_func_end CNANRFile_deleting_obj_dtor
