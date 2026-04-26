    .include "macros.inc"
    .include "include/arm9_02002AD4.inc"

    .text

    arm_func_start sub_02002AD4
sub_02002AD4: ; 0x02002AD4
	ldr r3, _02002AE8 ; =DAT_02084288
	mov r0, #0xc
	mla r0, r1, r0, r3
	ldr r0, [r0, r2, lsl #2]
	bx lr
	.align 2, 0
_02002AE8: .word DAT_02084288
	arm_func_end sub_02002AD4

	arm_func_start _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
_ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm: ; 0x02002AEC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r0, #0xb8
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl _Znwm
	cmp r0, #0
	beq _02002B3C
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x28]
	str r2, [sp]
	ldr ip, [sp, #0x2c]
	str r1, [sp, #4]
	ldr r3, [sp, #0x20]
	mov r1, r5
	mov r2, r4
	str ip, [sp, #8]
	bl sub_02002BC4
	arm_func_end _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
_02002B3C:
	str r0, [r7, #0x68]
	ldr r2, [r0, #0x4c]
	cmp r2, #0
	addeq sp, sp, #0xc
	moveq r0, r7
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	bl NNS_FndMountArchive
	mov r0, r7
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start _ZN19CSmartNNSFndArchiveD1Ev
_ZN19CSmartNNSFndArchiveD1Ev: ; 0x02002B6C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl NNS_FndUnmountArchive
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _02002B9C
	beq _02002B94
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end _ZN19CSmartNNSFndArchiveD1Ev
_02002B94:
	mov r0, #0
	str r0, [r4, #0x68]
_02002B9C:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start CBinaryFile_simple_ctor
CBinaryFile_simple_ctor: ; 0x02002BA4
	stmdb sp!, {r4, lr}
	ldr r1, _02002BC0 ; =ptr_FUN_02002c34_0208a518
	mov r4, r0
	str r1, [r4]
	bl sub_02002C9C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02002BC0: .word ptr_FUN_02002c34_0208a518
	arm_func_end CBinaryFile_simple_ctor

	arm_func_start sub_02002BC4
sub_02002BC4: ; 0x02002BC4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr ip, _02002C30 ; =ptr_FUN_02002c34_0208a518
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	str ip, [r7]
	bl sub_02002C9C
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [sp]
	ldr ip, [sp, #0x28]
	str r0, [sp, #4]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp, #8]
	bl sub_02002CB4
	cmp r0, #0
	bne _02002C24
	mov r0, r7
	bl sub_02002C9C
	arm_func_end sub_02002BC4
_02002C24:
	mov r0, r7
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02002C30: .word ptr_FUN_02002c34_0208a518

	arm_func_start CBinaryFile_complete_obj_dtor
CBinaryFile_complete_obj_dtor: ; 0x02002C34
	stmdb sp!, {r4, lr}
	ldr r1, _02002C50 ; =ptr_FUN_02002c34_0208a518
	mov r4, r0
	str r1, [r4]
	bl sub_020030D4
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
	bl sub_020030D4
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
	bl sub_020030D4
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02002C98: .word ptr_FUN_02002c34_0208a518
	arm_func_end sub_02002C7C

	arm_func_start sub_02002C9C
sub_02002C9C: ; 0x02002C9C
	mov r1, #0
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	mov r1, #1
	str r1, [r0, #0x54]
	bx lr
	arm_func_end sub_02002C9C

	arm_func_start sub_02002CB4
sub_02002CB4: ; 0x02002CB4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r1
	mov r4, r0
	mov r6, r2
	mov r5, r3
	bl sub_020030D4
	cmp r7, #0
	beq _02002D10
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02002D10
	mov r0, r7
	bl STD_GetStringLength
	cmp r0, #0x60
	addge sp, sp, #8
	movge r0, #0
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r7
	add r0, r4, #0x58
	mov r2, #0x60
	bl STD_CopyLString
	b _02002D20
	arm_func_end sub_02002CB4
_02002D10:
	ldr r1, _02002DCC ; =DAT_0208a564
	add r0, r4, #0x58
	mov r2, #0x60
	bl STD_CopyLString
_02002D20:
	cmp r6, #2
	bne _02002D7C
	mov r0, r7
	bl NNS_FndGetArchiveFileByName
	str r0, [r4, #0x4c]
	cmp r0, #0
	beq _02002D70
	add r0, r4, #4
	bl FS_InitFile
	mov r1, r7
	add r0, r4, #4
	bl FS_OpenFile
	ldr r2, [r4, #0x2c]
	ldr r1, [r4, #0x28]
	add r0, r4, #4
	sub r1, r2, r1
	str r1, [r4, #0x50]
	bl FS_CloseFile
	mov r0, #0
	str r0, [r4, #0x54]
_02002D70:
	add sp, sp, #8
	ldr r0, [r4, #0x4c]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02002D7C:
	ldr r0, [sp, #0x24]
	ldr ip, [sp, #0x28]
	str r0, [sp]
	mov r0, r4
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str ip, [sp, #4]
	bl sub_02002DD0
	movs r5, r0
	beq _02002DC0
	ldr r1, [r4, #0x50]
	bl DC_FlushRange
	ldr r0, [sp, #0x24]
	cmp r0, #0
	movne r0, #0
	strne r0, [r4, #0x54]
_02002DC0:
	mov r0, r5
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02002DCC: .word DAT_0208a564

	arm_func_start sub_02002DD0
sub_02002DD0: ; 0x02002DD0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r4, r1
	add r0, sl, #4
	ldr r8, [sp, #0x28]
	mov fp, r2
	mov sb, r3
	bl FS_InitFile
	mov r1, r4
	add r0, sl, #4
	bl FS_OpenFile
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sl, #0x2c]
	ldr r0, [sl, #0x28]
	cmp r8, #0
	sub r0, r1, r0
	str r0, [sl, #0x50]
	beq _02002E28
	cmp sb, #0
	beq _02002EB0
	arm_func_end sub_02002DD0
_02002E28:
	cmp sb, #0
	beq _02002E4C
	ldr r0, [sl, #0x50]
	cmp r0, #0x20000
	bls _02002E40
	bl OS_Terminate
_02002E40:
	ldr r0, _020030CC ; =_0208F320
	str r0, [sl, #0x4c]
	b _02002ED4
_02002E4C:
	cmp fp, #0
	moveq r1, #4
	mvnne r1, #3
	cmp sb, #0
	mvnne r0, #0
	mulne r0, r1, r0
	movne r1, r0
	mov r0, #1
	str r0, [sl, #0x54]
	ldr r0, [sl, #0x50]
	bl _Z23Heap_AllocWithAlignmentmm
	str r0, [sl, #0x4c]
	cmp r0, #0
	bne _02002ED4
	bl _Z18Heap_GetMainHandlev
	mov r4, r0
	ldr r0, [r4]
	mov r1, #4
	bl NNS_FndGetAllocatableSizeForExpHeapEx
	ldr r0, [r4]
	bl NNS_FndGetTotalFreeSizeForExpHeap
	add r0, sl, #4
	bl FS_CloseFile
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02002EB0:
	ldr r1, [sp, #0x2c]
	ldr r0, [sl, #0x50]
	cmp r1, r0
	bhs _02002ED0
	add r0, sl, #4
	bl FS_CloseFile
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02002ED0:
	str r8, [sl, #0x4c]
_02002ED4:
	ldr r0, _020030D0 ; =_0208F31C
	ldr r0, [r0]
	cmp r0, #0
	bne _02002F38
	ldr r1, [sl, #0x4c]
	ldr r2, [sl, #0x50]
	add r0, sl, #4
	bl FS_ReadFile
	ldr r1, [sl, #0x50]
	cmp r1, r0
	beq _02002FB4
	ldr r0, [sl, #0x4c]
	cmp r8, r0
	beq _02002F28
	cmp sb, #0
	bne _02002F28
	cmp r0, #0
	beq _02002F28
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [sl, #0x4c]
_02002F28:
	add r0, sl, #4
	bl FS_CloseFile
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02002F38:
	ldr r6, [sl, #0x4c]
	ldr r7, [sl, #0x50]
	mov r5, #0x200
	mov r4, #0
	b _02002FAC
_02002F4C:
	mov r1, r6
	mov r2, r5
	add r0, sl, #4
	bl FS_ReadFile
	cmp r0, #0
	bge _02002F9C
	ldr r0, [sl, #0x4c]
	cmp r8, r0
	beq _02002F8C
	cmp sb, #0
	bne _02002F8C
	cmp r0, #0
	beq _02002F8C
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [sl, #0x4c]
_02002F8C:
	add r0, sl, #4
	bl FS_CloseFile
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02002F9C:
	cmp r7, r0
	movlo r7, r4
	add r6, r6, r0
	subhs r7, r7, r0
_02002FAC:
	cmp r7, #0
	bne _02002F4C
_02002FB4:
	cmp sb, #0
	beq _020030BC
	ldr r0, [sl, #0x4c]
	cmp r8, #0
	ldr r0, [r0]
	mov r0, r0, lsr #8
	str r0, [sl, #0x50]
	ldr r0, [sl, #0x4c]
	ldr r0, [r0]
	and r4, r0, #0xf0
	bne _02003028
	cmp fp, #0
	moveq r1, #4
	ldr r0, [sl, #0x50]
	mvnne r1, #3
	bl _Z23Heap_AllocWithAlignmentmm
	movs r8, r0
	bne _02003048
	bl _Z18Heap_GetMainHandlev
	mov r4, r0
	ldr r0, [r4]
	mov r1, #4
	bl NNS_FndGetAllocatableSizeForExpHeapEx
	ldr r0, [r4]
	bl NNS_FndGetTotalFreeSizeForExpHeap
	add r0, sl, #4
	bl FS_CloseFile
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02003028:
	ldr r1, [sp, #0x2c]
	ldr r0, [sl, #0x50]
	cmp r1, r0
	bhs _02003048
	add r0, sl, #4
	bl FS_CloseFile
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02003048:
	cmp r4, #0x20
	bgt _02003060
	bge _0200308C
	cmp r4, #0x10
	beq _0200307C
	b _020030B8
_02003060:
	cmp r4, #0x30
	bgt _02003070
	beq _0200309C
	b _020030B8
_02003070:
	cmp r4, #0x80
	beq _020030AC
	b _020030B8
_0200307C:
	ldr r0, [sl, #0x4c]
	mov r1, r8
	bl MI_UncompressLZ8
	b _020030B8
_0200308C:
	ldr r0, [sl, #0x4c]
	mov r1, r8
	bl MI_UncompressHuffman
	b _020030B8
_0200309C:
	ldr r0, [sl, #0x4c]
	mov r1, r8
	bl MI_UncompressRL8
	b _020030B8
_020030AC:
	ldr r0, [sl, #0x4c]
	mov r1, r8
	bl MI_UnfilterDiff8
_020030B8:
	str r8, [sl, #0x4c]
_020030BC:
	add r0, sl, #4
	bl FS_CloseFile
	ldr r0, [sl, #0x4c]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020030CC: .word MAIN_BSS_0208F320
_020030D0: .word MAIN_BSS_0208F31C

	arm_func_start sub_020030D4
sub_020030D4: ; 0x020030D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	ldrne r0, [r4, #0x4c]
	cmpne r0, #0
	beq _020030FC
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x4c]
	arm_func_end sub_020030D4
_020030FC:
	mov r0, r4
	bl sub_02002C9C
	ldmia sp!, {r4, pc}

	arm_func_start sub_02003108
sub_02003108: ; 0x02003108
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	mov r1, r0
	add r0, sp, #0
	bl FS_ConvertPathToFileID
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	arm_func_end sub_02003108

	arm_func_start sub_02003124
sub_02003124: ; 0x02003124
	stmdb sp!, {r3, lr}
	bl sub_0201001C
	ldr r0, _02003138 ; =ptr_s_jp_mes_0208a4d4_0208a534
	ldr r0, [r0, #4]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02003138: .word ptr_s_jp_mes_0208a4d4_0208a534
	arm_func_end sub_02003124

	arm_func_start CBinaryFileMes_ctor
CBinaryFileMes_ctor: ; 0x0200313C
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x4c
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl CBinaryFile_simple_ctor
	ldr r0, _020031B0 ; =PTR_LAB_0208a508
	str r0, [r6]
	bl sub_02003124
	mov r3, r0
	ldr r1, _020031B4 ; =s_s_s_0208a568
	mov r2, r5
	add r0, sp, #0xc
	bl OS_SPrintf
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r2, r4
	mov r0, r6
	add r1, sp, #0xc
	str r3, [sp, #8]
	bl sub_02002CB4
	cmp r0, #0
	bne _020031A4
	mov r0, r6
	bl sub_02002C9C
	arm_func_end CBinaryFileMes_ctor
_020031A4:
	mov r0, r6
	add sp, sp, #0x4c
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_020031B0: .word PTR_LAB_0208a508
_020031B4: .word s_s_s_0208a568

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

	arm_func_start sub_020031E8
sub_020031E8: ; 0x020031E8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl CBinaryFile_simple_ctor
	ldr r1, _02003270 ; =PTR_LAB_0208a590
	ldr r0, [sp, #0x20]
	str r1, [r7]
	str r0, [sp]
	mov ip, #0
	str ip, [sp, #4]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp, #8]
	bl sub_02002CB4
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, r7
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x4c]
	add r1, r7, #0xb8
	bl NNS_G2dGetUnpackedCellBank
	cmp r0, #0
	addne sp, sp, #0xc
	mov r0, r7
	ldmneia sp!, {r4, r5, r6, r7, pc}
	bl sub_020030D4
	mov r0, r7
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02003270: .word PTR_LAB_0208a590
	arm_func_end sub_020031E8

	arm_func_start CNCERFile_complete_obj_dtor
CNCERFile_complete_obj_dtor: ; 0x02003274
    stmdb sp!, {r4, lr}
    ldr r1, _02003298 ; =PTR_LAB_0208a590
    mov r4, r0
    str r1, [r4]
    bl sub_020030D4
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
    bl sub_020030D4
    mov r0, r4
    bl sub_02002C7C
    mov r0, r4
    bl _ZdlPv
    mov r0, r4
    ldmia sp!, {r4, pc}
_020032C8: .word PTR_LAB_0208a590
    arm_func_end CNCERFile_deleting_obj_dtor

	arm_func_start sub_020032CC
sub_020032CC: ; 0x020032CC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl CBinaryFile_simple_ctor
	ldr r1, _02003354 ; =PTR_LAB_0208a5b8
	ldr r0, [sp, #0x20]
	str r1, [r7]
	str r0, [sp]
	mov ip, #0
	str ip, [sp, #4]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp, #8]
	bl sub_02002CB4
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, r7
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x4c]
	add r1, r7, #0xb8
	bl NNS_G2dGetUnpackedCharacterData
	cmp r0, #0
	addne sp, sp, #0xc
	mov r0, r7
	ldmneia sp!, {r4, r5, r6, r7, pc}
	bl sub_020030D4
	mov r0, r7
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02003354: .word PTR_LAB_0208a5b8
	arm_func_end sub_020032CC

	arm_func_start CNCGRFile_complete_obj_dtor
CNCGRFile_complete_obj_dtor: ; 0x02003358
    stmdb sp!, {r4, lr}
    ldr r1, _0200337C ; =PTR_LAB_0208a5b8
    mov r4, r0
    str r1, [r4]
    bl sub_020030D4
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
    bl sub_020030D4
    mov r0, r4
    bl sub_02002C7C
    mov r0, r4
    bl _ZdlPv
    mov r0, r4
    ldmia sp!, {r4, pc}
_020033AC: .word PTR_LAB_0208a5b8
    arm_func_end CNCGRFile_deleting_obj_dtor

	arm_func_start _ZN9CNCLRFileC1EPcmmm
_ZN9CNCLRFileC1EPcmmm: ; 0x020033B0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl CBinaryFile_simple_ctor
	ldr r1, _02003438 ; =ptr_FUN_0200343c_0208a5e0
	ldr r0, [sp, #0x20]
	str r1, [r7]
	str r0, [sp]
	mov ip, #0
	str ip, [sp, #4]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp, #8]
	bl sub_02002CB4
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, r7
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x4c]
	add r1, r7, #0xb8
	bl NNS_G2dGetUnpackedPaletteData
	cmp r0, #0
	addne sp, sp, #0xc
	mov r0, r7
	ldmneia sp!, {r4, r5, r6, r7, pc}
	bl sub_020030D4
	mov r0, r7
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02003438: .word ptr_FUN_0200343c_0208a5e0
	arm_func_end _ZN9CNCLRFileC1EPcmmm

	arm_func_start CNCLRFile_complete_obj_dtor
CNCLRFile_complete_obj_dtor: ; 0x0200343C
	stmdb sp!, {r4, lr}
	ldr r1, _02003460 ; =ptr_FUN_0200343c_0208a5e0
	mov r4, r0
	str r1, [r4]
	bl sub_020030D4
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
	bl sub_020030D4
	mov r0, r4
	bl sub_02002C7C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02003490: .word ptr_FUN_0200343c_0208a5e0
	arm_func_end CNCLRFile_deleting_obj_dtor

	arm_func_start _ZN9CNSCRFileC1EPcmmm
_ZN9CNSCRFileC1EPcmmm: ; 0x02003494
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl CBinaryFile_simple_ctor
	ldr r1, _0200351C ; =PTR_LAB_0208a608
	ldr r0, [sp, #0x20]
	str r1, [r7]
	str r0, [sp]
	mov ip, #0
	str ip, [sp, #4]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp, #8]
	bl sub_02002CB4
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, r7
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x4c]
	add r1, r7, #0xb8
	bl NNS_G2dGetUnpackedScreenData
	cmp r0, #0
	addne sp, sp, #0xc
	mov r0, r7
	ldmneia sp!, {r4, r5, r6, r7, pc}
	bl sub_020030D4
	mov r0, r7
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_0200351C: .word PTR_LAB_0208a608
	arm_func_end _ZN9CNSCRFileC1EPcmmm

	arm_func_start CNSCRFile_complete_obj_dtor
CNSCRFile_complete_obj_dtor: ; 0x02003520
    stmdb sp!, {r4, lr}
    ldr r1, _02003544 ; =PTR_LAB_0208a608
    mov r4, r0
    str r1, [r4]
    bl sub_020030D4
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
    bl sub_020030D4
    mov r0, r4
    bl sub_02002C7C
    mov r0, r4
    bl _ZdlPv
    mov r0, r4
    ldmia sp!, {r4, pc}
_02003574: .word PTR_LAB_0208a608
    arm_func_end CNSCRFile_deleting_obj_dtor

	arm_func_start sub_02003578
sub_02003578: ; 0x02003578
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl CBinaryFile_simple_ctor
	ldr r1, _02003600 ; =PTR_LAB_0208a630
	ldr r0, [sp, #0x20]
	str r1, [r7]
	str r0, [sp]
	mov ip, #0
	str ip, [sp, #4]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp, #8]
	bl sub_02002CB4
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, r7
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x4c]
	add r1, r7, #0xb8
	bl NNS_G2dGetUnpackedAnimBank
	cmp r0, #0
	addne sp, sp, #0xc
	mov r0, r7
	ldmneia sp!, {r4, r5, r6, r7, pc}
	bl sub_020030D4
	mov r0, r7
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02003600: .word PTR_LAB_0208a630
	arm_func_end sub_02003578

	arm_func_start CNANRFile_complete_obj_dtor
CNANRFile_complete_obj_dtor: ; 0x02003604
	stmdb sp!, {r4, lr}
	ldr r1, _02003628 ; =PTR_LAB_0208a630
	mov r4, r0
	str r1, [r4]
	bl sub_020030D4
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
	bl sub_020030D4
	mov r0, r4
	bl sub_02002C7C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02003658: .word PTR_LAB_0208a630
	arm_func_end CNANRFile_deleting_obj_dtor

	arm_func_start _ZN11CBGNCGRFileC1EPcmmm
_ZN11CBGNCGRFileC1EPcmmm: ; 0x0200365C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl CBinaryFile_simple_ctor
	ldr r1, _020036E4 ; =PTR_LAB_0208a65c
	ldr r0, [sp, #0x20]
	str r1, [r7]
	str r0, [sp]
	mov ip, #0
	str ip, [sp, #4]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp, #8]
	bl sub_02002CB4
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, r7
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x4c]
	add r1, r7, #0xb8
	bl NNS_G2dGetUnpackedBGCharacterData
	cmp r0, #0
	addne sp, sp, #0xc
	mov r0, r7
	ldmneia sp!, {r4, r5, r6, r7, pc}
	bl sub_020030D4
	mov r0, r7
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_020036E4: .word PTR_LAB_0208a65c
	arm_func_end _ZN11CBGNCGRFileC1EPcmmm

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

	arm_func_start sub_02003718
sub_02003718: ; 0x02003718
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003730
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02003718

	arm_func_start sub_0200372C
sub_0200372C: ; 0x0200372C
	bx lr
	arm_func_end sub_0200372C

	arm_func_start sub_02003730
sub_02003730: ; 0x02003730
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r1, #0
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	mov r3, #0x16
	mov r2, #0x100000
	strh r3, [r0, #0x26]
	mov r3, #2
	strh r3, [r0, #0x28]
	str r2, [sp]
	sub r2, r2, #0x500000
	str r2, [sp, #4]
	mov r2, #0x400000
	mov r3, r1
	str r2, [sp, #8]
	mov ip, #0x10000
	mov r2, #0xc0000
	str ip, [sp, #0xc]
	bl sub_02003788
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	arm_func_end sub_02003730

	arm_func_start sub_02003788
sub_02003788: ; 0x02003788
	stmia r0, {r1, r2}
	ldr r2, [sp]
	str r3, [r0, #8]
	str r2, [r0, #0xc]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	str r1, [r0, #0x10]
	ldr r1, [sp, #0xc]
	str r2, [r0, #0x14]
	str r1, [r0, #0x18]
	bx lr
	arm_func_end sub_02003788

	arm_func_start sub_020037B4
sub_020037B4: ; 0x020037B4
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr r2, _02003810 ; =0xBFFF0000
	ldr r1, _02003814 ; =0x04000580
	mov r3, r0
	str r2, [r1]
	ldr r0, [r3, #0x10]
	mov r1, #1
	str r0, [sp]
	ldr r2, [r3, #0x14]
	mov r0, #0
	str r2, [sp, #4]
	ldr r2, [r3, #0x18]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldmia r3, {r0, r1, r2, r3}
	bl G3i_OrthoW_
	ldr r0, _02003818 ; =0x04000440
	mov r1, #1
	str r1, [r0]
	add sp, sp, #0x14
	ldmia sp!, {pc}
	.align 2, 0
_02003810: .word 0xBFFF0000
_02003814: .word 0x04000580
_02003818: .word 0x04000440
	arm_func_end sub_020037B4

	arm_func_start sub_0200381C
sub_0200381C: ; 0x0200381C
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	ldr r1, [r0, #0x1c]
	ldr r2, [r0, #0x20]
	ldr ip, _020038A0 ; =0x04000470
	add r1, r1, #0x80000
	str r1, [ip]
	add r1, r2, #0x60000
	str r1, [ip]
	mov r1, #0
	str r1, [ip]
	ldrh r2, [r0, #0x26]
	mov r3, #1
	sub r1, ip, #4
	mov r2, r3, lsl r2
	str r2, [r1]
	str r2, [r1]
	str r2, [r1]
	ldrh r1, [r0, #0x24]
	ldr r3, _020038A4 ; =FX_SinCosTable_
	add r0, sp, #0
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov ip, r2, lsl #1
	mov r2, r1, lsl #1
	ldrsh r1, [r3, ip]
	ldrsh r2, [r3, r2]
	blx MTX_RotZ33_
	add r0, sp, #0
	bl G3_MultMtx33
	add sp, sp, #0x24
	ldmia sp!, {pc}
	.align 2, 0
_020038A0: .word 0x04000470
_020038A4: .word FX_SinCosTable_
	arm_func_end sub_0200381C

	arm_func_start sub_020038A8
sub_020038A8: ; 0x020038A8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	ldr r3, _02003934 ; =DAT_020842f8
	add r4, sp, #0x10
	mov ip, r2
	mov r5, r0
	mov lr, r1
	ldmia r3, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r0, [r5, #0x1c]
	cmp ip, #0x1000
	rsb r0, r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x20]
	rsb r0, r0, #0
	str r0, [sp, #0x14]
	beq _02003914
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	smull r4, r3, r1, ip
	smull r2, r1, r0, ip
	mov r4, r4, lsr #0xc
	mov r0, r2, lsr #0xc
	orr r4, r4, r3, lsl #20
	orr r0, r0, r1, lsl #20
	str r4, [sp, #0x18]
	str r0, [sp, #0x1c]
	arm_func_end sub_020038A8
_02003914:
	add ip, sp, #0x10
	mov r4, sp
	ldmia lr, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldmia ip, {r0, r1, r2, r3}
	bl sub_02006B60
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02003934: .word DAT_020842f8

	arm_func_start sub_02003938
sub_02003938: ; 0x02003938
	ldr r2, _02003964 ; =PTR_LAB_0208a684
	ldr r1, _02003968 ; =0x00007FFF
	str r2, [r0]
	strh r1, [r0, #8]
	mov r2, #0
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	mov r1, #0x1f
	str r1, [r0, #0x14]
	str r2, [r0, #4]
	bx lr
	.align 2, 0
_02003964: .word PTR_LAB_0208a684
_02003968: .word 0x00007FFF
	arm_func_end sub_02003938

    arm_func_start sub_0200396C
sub_0200396C: ; 0x0200396C
    bx lr
    arm_func_end sub_0200396C

	arm_func_start sub_02003970
sub_02003970: ; 0x02003970
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02003970

	arm_func_start sub_02003984
sub_02003984: ; 0x02003984
	bx lr
	arm_func_end sub_02003984

	arm_func_start sub_02003988
sub_02003988: ; 0x02003988
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003938
	ldr r3, _020039B4 ; =ptr_FUN_020039e8_0208a6b8
	add r0, r4, #0x18
	mov r1, #0
	mov r2, #0x10
	str r3, [r4]
	bl MI_CpuFill8
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_020039B4: .word ptr_FUN_020039e8_0208a6b8
	arm_func_end sub_02003988

	arm_func_start sub_020039B8
sub_020039B8: ; 0x020039B8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003938
	ldr r3, _020039E4 ; =ptr_FUN_020039e8_0208a6b8
	add r0, r4, #0x18
	mov r1, #0
	mov r2, #0x10
	str r3, [r4]
	bl MI_CpuFill8
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_020039E4: .word ptr_FUN_020039e8_0208a6b8
	arm_func_end sub_020039B8

	arm_func_start sub_020039E8
sub_020039E8: ; 0x020039E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020039E8

	arm_func_start sub_020039FC
sub_020039FC: ; 0x020039FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020039FC

	arm_func_start sub_02003A18
sub_02003A18: ; 0x02003A18
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02003A18

	arm_func_start sub_02003A2C
sub_02003A2C: ; 0x02003A2C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldrh ip, [r1, #0x28]
	ldr r3, _02003B60 ; =0x040004A8
	mov r1, #0x40000000
	str r1, [r3]
	ldr r1, [r0, #0xc]
	ldr r2, [r0, #0x10]
	mov r1, r1, lsl #4
	orr r1, r1, #0x20c0
	ldr r4, [r0, #0x14]
	orr r1, r1, r2, lsl #24
	orr r1, r1, r4, lsl #16
	str r1, [r3, #-4]
	mov r2, #0
	str r2, [r3, #0x58]
	ldrh r4, [r0, #8]
	sub r6, r3, #0x1c
	sub r1, r3, #0x14
	str r4, [r3, #-0x28]
	ldr r4, [r0, #0x1c]
	ldr r5, [r0, #0x18]
	mov r4, r4, asr #0xc
	mov r4, r4, lsl ip
	mov r5, r5, asr #0xc
	mov r7, r5, lsl ip
	mov r4, r4, lsl #0x10
	mov r5, r4, asr #0x10
	ldr lr, [r0, #4]
	mov r4, r7, lsl #0x10
	mov r5, r5, lsl #0x10
	mov lr, lr, lsl #0x10
	mov r4, r4, asr #0x10
	mov r7, r5, lsr #0x10
	mov r5, lr, asr #0x10
	mov r5, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r7, r7, lsl #0x10
	orr r4, r7, r4, lsr #16
	str r4, [r6]
	mov r4, r5, lsr #0x10
	str r4, [r6]
	ldr r4, [r0, #0x24]
	ldr r5, [r0, #0x20]
	mov r4, r4, asr #0xc
	mov r4, r4, lsl ip
	mov r5, r5, asr #0xc
	mov lr, r5, lsl ip
	mov r4, r4, lsl #0x10
	mov r5, r4, asr #0x10
	mov r4, lr, lsl #0x10
	mov r5, r5, lsl #0x10
	mov r4, r4, asr #0x10
	mov r5, r5, lsr #0x10
	mov r4, r4, lsl #0x10
	mov r5, r5, lsl #0x10
	orr r4, r5, r4, lsr #16
	str r4, [r1]
	ldr r4, [r0, #0x24]
	ldr r5, [r0, #0x20]
	mov r0, r4, asr #0xc
	mov r0, r0, lsl ip
	mov r4, r5, asr #0xc
	mov r5, r4, lsl ip
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	mov r0, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r0, r0, asr #0x10
	mov r4, r4, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r4, r4, lsl #0x10
	orr r0, r4, r0, lsr #16
	str r0, [r1]
	str r2, [r3, #0x5c]
	str r2, [r3, #-0x60]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02003B60: .word 0x040004A8
	arm_func_end sub_02003A2C

	arm_func_start sub_02003B64
sub_02003B64: ; 0x02003B64
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003938
	ldr r3, _02003BAC ; =ptr_FUN_02003bb0_0208a6ec
	add r0, r4, #0x18
	mov r1, #0
	mov r2, #0x10
	str r3, [r4]
	bl MI_CpuFill8
	add r0, r4, #0x28
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	mov r1, #0
	str r1, [r4, #0x38]
	mov r0, r4
	str r1, [r4, #0x3c]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02003BAC: .word ptr_FUN_02003bb0_0208a6ec
	arm_func_end sub_02003B64

	arm_func_start sub_02003BB0
sub_02003BB0: ; 0x02003BB0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02003BB0

	arm_func_start sub_02003BC4
sub_02003BC4: ; 0x02003BC4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02003BC4

	arm_func_start sub_02003BE0
sub_02003BE0: ; 0x02003BE0
	str r1, [r0, #0x18]
	str r2, [r0, #0x1c]
	ldr r2, [sp]
	str r3, [r0, #0x20]
	ldr r1, [sp, #4]
	str r2, [r0, #0x24]
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_02003BE0

	arm_func_start sub_02003C00
sub_02003C00: ; 0x02003C00
	sub sp, sp, #8
	ldr r2, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	str r2, [sp]
	str r2, [r0]
	str r1, [sp, #4]
	str r1, [r0, #4]
	add sp, sp, #8
	bx lr
	arm_func_end sub_02003C00

	arm_func_start sub_02003C24
sub_02003C24: ; 0x02003C24
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0x38]
	cmp r2, #0
	ldrne r2, [r0, #0x3c]
	cmpne r2, #0
	beq _02003C44
	bl sub_02003C4C
	ldmia sp!, {r3, pc}
	arm_func_end sub_02003C24
_02003C44:
	bl sub_02003F1C
	ldmia sp!, {r3, pc}

	arm_func_start sub_02003C4C
sub_02003C4C: ; 0x02003C4C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, r0
	ldr sb, [r5, #0x38]
	ldrh r4, [r1, #0x28]
	add r0, sb, #8
	mov r1, #0
	ldr r8, [r5, #0x3c]
	ldr r7, [r5, #0x20]
	ldr r6, [r5, #0x24]
	bl NNS_G2dGetImageLocation
	ldr r1, [sb, #0x1c]
	ldr r2, [sb, #0x14]
	mov r1, r1, lsl #0x1a
	orr r0, r1, r0, lsr #3
	orr r0, r0, #0x40000000
	orr r0, r0, r2, lsl #20
	ldr r1, [sb, #0x18]
	ldr r2, [sb, #0x24]
	orr r1, r0, r1, lsl #23
	ldr r0, _02003F14 ; =0x040004A8
	orr r1, r1, r2, lsl #29
	str r1, [r0]
	ldr sb, [sb, #0x1c]
	add r0, r8, #8
	mov r1, #0
	bl NNS_G2dGetImagePaletteLocation
	cmp sb, #2
	moveq r1, #1
	movne r1, #0
	rsb r1, r1, #4
	ldr r3, _02003F18 ; =0x040004AC
	mov r0, r0, lsr r1
	str r0, [r3]
	ldrh r1, [r5, #8]
	mov r0, #1
	sub r2, r3, #0x24
	str r1, [r3, #-0x2c]
	ldr r1, [r5, #0xc]
	ldr r8, [r5, #0x10]
	mov r1, r1, lsl #4
	orr r1, r1, #0xc0
	ldr sb, [r5, #0x14]
	orr r1, r1, r8, lsl #24
	orr r1, r1, sb, lsl #16
	str r1, [r3, #-8]
	str r0, [r3, #0x54]
	ldr r1, [r5, #0x2c]
	ldr sb, [r5, #0x28]
	mov r1, r1, lsl #8
	mov r8, r1, asr #0x10
	mov r1, sb, lsl #8
	mov r8, r8, lsl #0x10
	mov r1, r1, asr #0x10
	mov r8, r8, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r8, r8, lsl #0x10
	orr r1, r8, r1, lsr #16
	str r1, [r2]
	ldr r1, [r5, #0x1c]
	ldr r8, [r5, #0x18]
	sub r1, r1, r6, asr #1
	mov r1, r1, asr #0xc
	sub r8, r8, r7, asr #1
	mov r1, r1, lsl r4
	mov r8, r8, asr #0xc
	mov r8, r8, lsl r4
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	ldr ip, [r5, #4]
	mov r8, r8, lsl #0x10
	mov sb, r1, lsl #0x10
	mov r1, ip, lsl #0x10
	mov ip, r8, asr #0x10
	mov sb, sb, lsr #0x10
	mov r1, r1, asr #0x10
	mov r8, r1, lsl #0x10
	mov r1, ip, lsl #0x10
	mov sb, sb, lsl #0x10
	orr r1, sb, r1, lsr #16
	sub sb, r3, #0x20
	str r1, [sb]
	mov r1, r8, lsr #0x10
	str r1, [sb]
	ldr r1, [r5, #0x34]
	ldr sb, [r5, #0x28]
	mov r1, r1, lsl #8
	mov r8, r1, asr #0x10
	mov r1, sb, lsl #8
	mov r8, r8, lsl #0x10
	mov r1, r1, asr #0x10
	mov r8, r8, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r8, r8, lsl #0x10
	orr r1, r8, r1, lsr #16
	str r1, [r2]
	ldr r1, [r5, #0x1c]
	ldr r8, [r5, #0x18]
	add r1, r1, r6, asr #1
	mov r1, r1, asr #0xc
	sub r8, r8, r7, asr #1
	mov r1, r1, lsl r4
	mov r8, r8, asr #0xc
	mov sb, r8, lsl r4
	mov r1, r1, lsl #0x10
	mov r8, r1, asr #0x10
	mov r1, sb, lsl #0x10
	mov r8, r8, lsl #0x10
	mov r1, r1, asr #0x10
	mov r8, r8, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r8, r8, lsl #0x10
	orr r8, r8, r1, lsr #16
	sub r1, r3, #0x18
	str r8, [r1]
	ldr r8, [r5, #0x34]
	ldr ip, [r5, #0x30]
	mov r8, r8, lsl #8
	mov sb, r8, asr #0x10
	mov r8, ip, lsl #8
	mov sb, sb, lsl #0x10
	mov r8, r8, asr #0x10
	mov sb, sb, lsr #0x10
	mov r8, r8, lsl #0x10
	mov sb, sb, lsl #0x10
	orr r8, sb, r8, lsr #16
	str r8, [r2]
	ldr r8, [r5, #0x1c]
	ldr sb, [r5, #0x18]
	add r8, r8, r6, asr #1
	mov r8, r8, asr #0xc
	add sb, sb, r7, asr #1
	mov r8, r8, lsl r4
	mov sb, sb, asr #0xc
	mov ip, sb, lsl r4
	mov r8, r8, lsl #0x10
	mov sb, r8, asr #0x10
	mov r8, ip, lsl #0x10
	mov sb, sb, lsl #0x10
	mov r8, r8, asr #0x10
	mov sb, sb, lsr #0x10
	mov r8, r8, lsl #0x10
	mov sb, sb, lsl #0x10
	orr r8, sb, r8, lsr #16
	str r8, [r1]
	ldr r8, [r5, #0x2c]
	ldr ip, [r5, #0x30]
	mov r8, r8, lsl #8
	mov sb, r8, asr #0x10
	mov r8, ip, lsl #8
	mov sb, sb, lsl #0x10
	mov r8, r8, asr #0x10
	mov sb, sb, lsr #0x10
	mov r8, r8, lsl #0x10
	mov sb, sb, lsl #0x10
	orr r8, sb, r8, lsr #16
	str r8, [r2]
	ldr r2, [r5, #0x1c]
	ldr r5, [r5, #0x18]
	sub r2, r2, r6, asr #1
	mov r2, r2, asr #0xc
	add r5, r5, r7, asr #1
	mov r2, r2, lsl r4
	mov r5, r5, asr #0xc
	mov r5, r5, lsl r4
	mov r2, r2, lsl #0x10
	mov r4, r2, asr #0x10
	mov r2, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r2, r2, asr #0x10
	mov r4, r4, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r4, r4, lsl #0x10
	orr r2, r4, r2, lsr #16
	str r2, [r1]
	mov r1, #0
	str r1, [r3, #0x58]
	str r1, [r3, #-0x64]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02003F14: .word 0x040004A8
_02003F18: .word 0x040004AC
	arm_func_end sub_02003C4C

	arm_func_start sub_02003F1C
sub_02003F1C: ; 0x02003F1C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldrh ip, [r1, #0x28]
	ldr r3, _020040C4 ; =0x040004A8
	ldr r1, [r0, #0x20]
	ldr r4, [r0, #0x24]
	mov r2, #0x40000000
	str r2, [r3]
	ldrh r5, [r0, #8]
	mov r2, #1
	add r4, r4, r4, lsr #31
	str r5, [r3, #-0x28]
	ldr r5, [r0, #0xc]
	ldr r6, [r0, #0x10]
	mov r5, r5, lsl #4
	orr r5, r5, #0xc0
	ldr r7, [r0, #0x14]
	orr r5, r5, r6, lsl #24
	orr r5, r5, r7, lsl #16
	str r5, [r3, #-4]
	str r2, [r3, #0x58]
	ldr r5, [r0, #0x1c]
	ldr r6, [r0, #0x18]
	sub r5, r5, r4, asr #1
	add lr, r1, r1, lsr #31
	mov r1, r5, asr #0xc
	sub r5, r6, lr, asr #1
	mov r1, r1, lsl ip
	mov r5, r5, asr #0xc
	mov r5, r5, lsl ip
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	ldr r7, [r0, #4]
	mov r5, r5, lsl #0x10
	mov r6, r1, lsl #0x10
	mov r1, r7, lsl #0x10
	mov r7, r5, asr #0x10
	mov r6, r6, lsr #0x10
	mov r1, r1, asr #0x10
	mov r5, r1, lsl #0x10
	mov r1, r7, lsl #0x10
	mov r6, r6, lsl #0x10
	orr r1, r6, r1, lsr #16
	sub r6, r3, #0x1c
	str r1, [r6]
	mov r1, r5, lsr #0x10
	str r1, [r6]
	ldr r1, [r0, #0x1c]
	ldr r5, [r0, #0x18]
	add r1, r1, r4, asr #1
	mov r1, r1, asr #0xc
	sub r5, r5, lr, asr #1
	mov r1, r1, lsl ip
	mov r5, r5, asr #0xc
	mov r6, r5, lsl ip
	mov r1, r1, lsl #0x10
	mov r5, r1, asr #0x10
	mov r1, r6, lsl #0x10
	mov r5, r5, lsl #0x10
	mov r1, r1, asr #0x10
	mov r5, r5, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r5, r5, lsl #0x10
	orr r5, r5, r1, lsr #16
	sub r1, r3, #0x14
	str r5, [r1]
	ldr r5, [r0, #0x1c]
	ldr r6, [r0, #0x18]
	add r5, r5, r4, asr #1
	mov r5, r5, asr #0xc
	add r6, r6, lr, asr #1
	mov r5, r5, lsl ip
	mov r6, r6, asr #0xc
	mov r7, r6, lsl ip
	mov r5, r5, lsl #0x10
	mov r6, r5, asr #0x10
	mov r5, r7, lsl #0x10
	mov r6, r6, lsl #0x10
	mov r5, r5, asr #0x10
	mov r6, r6, lsr #0x10
	mov r5, r5, lsl #0x10
	mov r6, r6, lsl #0x10
	orr r5, r6, r5, lsr #16
	str r5, [r1]
	ldr r5, [r0, #0x1c]
	ldr r6, [r0, #0x18]
	sub r0, r5, r4, asr #1
	mov r0, r0, asr #0xc
	add r4, r6, lr, asr #1
	mov r0, r0, lsl ip
	mov r4, r4, asr #0xc
	mov r5, r4, lsl ip
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	mov r0, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r0, r0, asr #0x10
	mov r4, r4, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r4, r4, lsl #0x10
	orr r0, r4, r0, lsr #16
	str r0, [r1]
	mov r1, #0
	str r1, [r3, #0x5c]
	mov r0, r2
	str r1, [r3, #-0x60]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020040C4: .word 0x040004A8
	arm_func_end sub_02003F1C

	arm_func_start sub_020040C8
sub_020040C8: ; 0x020040C8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003938
	ldr r3, _02004110 ; =ptr_FUN_02004160_0208a720
	add r0, r4, #0x18
	mov r1, #0
	mov r2, #0x20
	str r3, [r4]
	bl MI_CpuFill8
	add r0, r4, #0x38
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	mov r1, #0
	str r1, [r4, #0x58]
	mov r0, r4
	str r1, [r4, #0x5c]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02004110: .word ptr_FUN_02004160_0208a720
	arm_func_end sub_020040C8

	arm_func_start sub_02004114
sub_02004114: ; 0x02004114
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003938
	ldr r3, _0200415C ; =ptr_FUN_02004160_0208a720
	add r0, r4, #0x18
	mov r1, #0
	mov r2, #0x20
	str r3, [r4]
	bl MI_CpuFill8
	add r0, r4, #0x38
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	mov r1, #0
	str r1, [r4, #0x58]
	mov r0, r4
	str r1, [r4, #0x5c]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200415C: .word ptr_FUN_02004160_0208a720
	arm_func_end sub_02004114

	arm_func_start sub_02004160
sub_02004160: ; 0x02004160
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02004160

	arm_func_start sub_02004174
sub_02004174: ; 0x02004174
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02004174

	arm_func_start sub_02004190
sub_02004190: ; 0x02004190
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02004190

	arm_func_start sub_020041A4
sub_020041A4: ; 0x020041A4
	str r1, [r0, #0x18]
	str r2, [r0, #0x1c]
	ldr r2, [sp]
	str r3, [r0, #0x20]
	ldr r1, [sp, #4]
	str r2, [r0, #0x24]
	ldr r2, [sp, #8]
	str r1, [r0, #0x28]
	ldr r1, [sp, #0xc]
	str r2, [r0, #0x2c]
	ldr r2, [sp, #0x10]
	str r1, [r0, #0x30]
	ldr r1, [sp, #0x14]
	str r2, [r0, #0x34]
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020041A4

	arm_func_start sub_020041E4
sub_020041E4: ; 0x020041E4
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0x58]
	cmp r2, #0
	ldrne r2, [r0, #0x5c]
	cmpne r2, #0
	beq _02004204
	bl sub_02004234
	ldmia sp!, {r3, pc}
	arm_func_end sub_020041E4
_02004204:
	bl sub_020044DC
	ldmia sp!, {r3, pc}

	arm_func_start sub_0200420C
sub_0200420C: ; 0x0200420C
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x58]
	cmp r3, #0
	ldrne r3, [r0, #0x5c]
	cmpne r3, #0
	beq _0200422C
	bl sub_02004658
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200420C
_0200422C:
	bl sub_0200483C
	ldmia sp!, {r3, pc}

	arm_func_start sub_02004234
sub_02004234: ; 0x02004234
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r7, [r5, #0x58]
	ldrh r4, [r1, #0x28]
	add r0, r7, #8
	mov r1, #0
	ldr r6, [r5, #0x5c]
	bl NNS_G2dGetImageLocation
	ldr r1, [r7, #0x1c]
	ldr r2, [r7, #0x14]
	mov r1, r1, lsl #0x1a
	orr r0, r1, r0, lsr #3
	orr r0, r0, #0x40000000
	orr r0, r0, r2, lsl #20
	ldr r1, [r7, #0x18]
	ldr r2, [r7, #0x24]
	orr r1, r0, r1, lsl #23
	ldr r0, _020044D4 ; =0x040004A8
	orr r1, r1, r2, lsl #29
	str r1, [r0]
	ldr r7, [r7, #0x1c]
	add r0, r6, #8
	mov r1, #0
	bl NNS_G2dGetImagePaletteLocation
	cmp r7, #2
	moveq r1, #1
	movne r1, #0
	rsb r1, r1, #4
	ldr r3, _020044D8 ; =0x040004AC
	mov r0, r0, lsr r1
	str r0, [r3]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r0, r0, lsl #4
	orr r0, r0, #0xc0
	ldr r2, [r5, #0x14]
	orr r0, r0, r1, lsl #24
	orr r0, r0, r2, lsl #16
	str r0, [r3, #-8]
	mov r0, #1
	str r0, [r3, #0x54]
	ldrh r6, [r5, #8]
	sub r2, r3, #0x24
	sub r1, r3, #0x20
	str r6, [r3, #-0x2c]
	ldr r6, [r5, #0x3c]
	ldr ip, [r5, #0x38]
	mov r6, r6, lsl #8
	mov r7, r6, asr #0x10
	mov r6, ip, lsl #8
	mov r7, r7, lsl #0x10
	mov r6, r6, asr #0x10
	mov r7, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r7, r7, lsl #0x10
	orr r6, r7, r6, lsr #16
	str r6, [r2]
	ldr r6, [r5, #0x1c]
	ldr r7, [r5, #0x18]
	mov r6, r6, asr #0xc
	mov r6, r6, lsl r4
	mov r7, r7, asr #0xc
	mov r7, r7, lsl r4
	mov r6, r6, lsl #0x10
	mov r6, r6, asr #0x10
	ldr lr, [r5, #4]
	mov r7, r7, lsl #0x10
	mov ip, r6, lsl #0x10
	mov r6, lr, lsl #0x10
	mov lr, r7, asr #0x10
	mov ip, ip, lsr #0x10
	mov r6, r6, asr #0x10
	mov r7, r6, lsl #0x10
	mov r6, lr, lsl #0x10
	mov ip, ip, lsl #0x10
	orr r6, ip, r6, lsr #16
	str r6, [r1]
	mov r6, r7, lsr #0x10
	str r6, [r1]
	ldr r1, [r5, #0x44]
	ldr r7, [r5, #0x40]
	mov r1, r1, lsl #8
	mov r6, r1, asr #0x10
	mov r1, r7, lsl #8
	mov r6, r6, lsl #0x10
	mov r1, r1, asr #0x10
	mov r6, r6, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r6, r6, lsl #0x10
	orr r1, r6, r1, lsr #16
	str r1, [r2]
	ldr r1, [r5, #0x24]
	ldr r6, [r5, #0x20]
	mov r1, r1, asr #0xc
	mov r1, r1, lsl r4
	mov r6, r6, asr #0xc
	mov r7, r6, lsl r4
	mov r1, r1, lsl #0x10
	mov r6, r1, asr #0x10
	mov r1, r7, lsl #0x10
	mov r6, r6, lsl #0x10
	mov r1, r1, asr #0x10
	mov r6, r6, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r6, r6, lsl #0x10
	orr r6, r6, r1, lsr #16
	sub r1, r3, #0x18
	str r6, [r1]
	ldr r6, [r5, #0x4c]
	ldr ip, [r5, #0x48]
	mov r6, r6, lsl #8
	mov r7, r6, asr #0x10
	mov r6, ip, lsl #8
	mov r7, r7, lsl #0x10
	mov r6, r6, asr #0x10
	mov r7, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r7, r7, lsl #0x10
	orr r6, r7, r6, lsr #16
	str r6, [r2]
	ldr r6, [r5, #0x2c]
	ldr r7, [r5, #0x28]
	mov r6, r6, asr #0xc
	mov r6, r6, lsl r4
	mov r7, r7, asr #0xc
	mov ip, r7, lsl r4
	mov r6, r6, lsl #0x10
	mov r7, r6, asr #0x10
	mov r6, ip, lsl #0x10
	mov r7, r7, lsl #0x10
	mov r6, r6, asr #0x10
	mov r7, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r7, r7, lsl #0x10
	orr r6, r7, r6, lsr #16
	str r6, [r1]
	ldr r6, [r5, #0x54]
	ldr ip, [r5, #0x50]
	mov r6, r6, lsl #8
	mov r7, r6, asr #0x10
	mov r6, ip, lsl #8
	mov r7, r7, lsl #0x10
	mov r6, r6, asr #0x10
	mov r7, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r7, r7, lsl #0x10
	orr r6, r7, r6, lsr #16
	str r6, [r2]
	ldr r2, [r5, #0x34]
	ldr r5, [r5, #0x30]
	mov r2, r2, asr #0xc
	mov r2, r2, lsl r4
	mov r5, r5, asr #0xc
	mov r5, r5, lsl r4
	mov r2, r2, lsl #0x10
	mov r4, r2, asr #0x10
	mov r2, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r2, r2, asr #0x10
	mov r4, r4, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r4, r4, lsl #0x10
	orr r2, r4, r2, lsr #16
	str r2, [r1]
	mov r1, #0
	str r1, [r3, #0x58]
	str r1, [r3, #-0x64]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020044D4: .word 0x040004A8
_020044D8: .word 0x040004AC
	arm_func_end sub_02004234

	arm_func_start sub_020044DC
sub_020044DC: ; 0x020044DC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldrh ip, [r1, #0x28]
	ldr r3, _02004654 ; =0x040004A8
	mov r1, #0x40000000
	str r1, [r3]
	ldr r1, [r0, #0xc]
	ldr r2, [r0, #0x10]
	mov r1, r1, lsl #4
	orr r1, r1, #0xc0
	ldr r4, [r0, #0x14]
	orr r1, r1, r2, lsl #24
	orr r1, r1, r4, lsl #16
	str r1, [r3, #-4]
	mov r2, #1
	str r2, [r3, #0x58]
	ldrh r4, [r0, #8]
	sub r6, r3, #0x1c
	sub r1, r3, #0x14
	str r4, [r3, #-0x28]
	ldr r4, [r0, #0x1c]
	ldr r5, [r0, #0x18]
	mov r4, r4, asr #0xc
	mov r4, r4, lsl ip
	mov r5, r5, asr #0xc
	mov r7, r5, lsl ip
	mov r4, r4, lsl #0x10
	mov r5, r4, asr #0x10
	ldr lr, [r0, #4]
	mov r4, r7, lsl #0x10
	mov r5, r5, lsl #0x10
	mov lr, lr, lsl #0x10
	mov r4, r4, asr #0x10
	mov r7, r5, lsr #0x10
	mov r5, lr, asr #0x10
	mov r5, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r7, r7, lsl #0x10
	orr r4, r7, r4, lsr #16
	str r4, [r6]
	mov r4, r5, lsr #0x10
	str r4, [r6]
	ldr r4, [r0, #0x24]
	ldr r5, [r0, #0x20]
	mov r4, r4, asr #0xc
	mov r4, r4, lsl ip
	mov r5, r5, asr #0xc
	mov lr, r5, lsl ip
	mov r4, r4, lsl #0x10
	mov r5, r4, asr #0x10
	mov r4, lr, lsl #0x10
	mov r5, r5, lsl #0x10
	mov r4, r4, asr #0x10
	mov r5, r5, lsr #0x10
	mov r4, r4, lsl #0x10
	mov r5, r5, lsl #0x10
	orr r4, r5, r4, lsr #16
	str r4, [r1]
	ldr r4, [r0, #0x2c]
	ldr r5, [r0, #0x28]
	mov r4, r4, asr #0xc
	mov r4, r4, lsl ip
	mov r5, r5, asr #0xc
	mov lr, r5, lsl ip
	mov r4, r4, lsl #0x10
	mov r5, r4, asr #0x10
	mov r4, lr, lsl #0x10
	mov r5, r5, lsl #0x10
	mov r4, r4, asr #0x10
	mov r5, r5, lsr #0x10
	mov r4, r4, lsl #0x10
	mov r5, r5, lsl #0x10
	orr r4, r5, r4, lsr #16
	str r4, [r1]
	ldr r4, [r0, #0x34]
	ldr r5, [r0, #0x30]
	mov r0, r4, asr #0xc
	mov r0, r0, lsl ip
	mov r4, r5, asr #0xc
	mov r5, r4, lsl ip
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	mov r0, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r0, r0, asr #0x10
	mov r4, r4, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r4, r4, lsl #0x10
	orr r0, r4, r0, lsr #16
	str r0, [r1]
	mov r1, #0
	str r1, [r3, #0x5c]
	mov r0, r2
	str r1, [r3, #-0x60]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02004654: .word 0x040004A8
	arm_func_end sub_020044DC

	arm_func_start sub_02004658
sub_02004658: ; 0x02004658
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r8, r0
	ldr r5, [r8, #0x58]
	ldrh r6, [r1, #0x28]
	add r0, r5, #8
	mov r1, #0
	mov r7, r2
	ldr r4, [r8, #0x5c]
	bl NNS_G2dGetImageLocation
	ldr r2, [r5, #0x18]
	mov r1, #0
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [r5, #0x24]
	mov r2, #1
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r1, [r5, #0x1c]
	mov r0, r7
	ldr r3, [r5, #0x14]
	bl G3C_TexImageParam
	add r0, r4, #8
	mov r1, #0
	bl NNS_G2dGetImagePaletteLocation
	ldr r2, [r5, #0x1c]
	mov r1, r0
	mov r0, r7
	bl G3C_TexPlttBase
	ldr r0, [r8, #0x10]
	mov r1, #0
	str r0, [sp]
	ldr r2, [r8, #0x14]
	mov r0, r7
	str r2, [sp, #4]
	str r1, [sp, #8]
	ldr r2, [r8, #0xc]
	mov r3, #3
	bl G3C_PolygonAttr
	mov r0, r7
	mov r1, #1
	bl G3C_Begin
	mov r0, r7
	ldrh r1, [r8, #8]
	bl G3C_Color
	mov r0, r7
	ldr r1, [r8, #0x38]
	ldr r2, [r8, #0x3c]
	bl G3C_TexCoord
	mov r0, r7
	ldr r1, [r8, #0x18]
	ldr r2, [r8, #0x1c]
	mov r1, r1, asr #0xc
	mov r1, r1, lsl r6
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0xc
	mov r2, r2, lsl r6
	mov r2, r2, lsl #0x10
	mov r2, r2, asr #0x10
	ldr r3, [r8, #4]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl G3C_Vtx
	mov r0, r7
	ldr r1, [r8, #0x40]
	ldr r2, [r8, #0x44]
	bl G3C_TexCoord
	mov r0, r7
	ldr r1, [r8, #0x20]
	ldr r2, [r8, #0x24]
	mov r1, r1, asr #0xc
	mov r1, r1, lsl r6
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0xc
	mov r2, r2, lsl r6
	mov r2, r2, lsl #0x10
	mov r2, r2, asr #0x10
	bl G3C_VtxXY
	ldr r1, [r8, #0x48]
	ldr r2, [r8, #0x4c]
	mov r0, r7
	bl G3C_TexCoord
	ldr r1, [r8, #0x28]
	ldr r0, [r8, #0x2c]
	mov r1, r1, asr #0xc
	mov r0, r0, asr #0xc
	mov r1, r1, lsl r6
	mov r0, r0, lsl r6
	mov r1, r1, lsl #0x10
	mov r2, r0, lsl #0x10
	mov r0, r7
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0x10
	bl G3C_VtxXY
	ldr r1, [r8, #0x50]
	ldr r2, [r8, #0x54]
	mov r0, r7
	bl G3C_TexCoord
	ldr r1, [r8, #0x30]
	ldr r0, [r8, #0x34]
	mov r1, r1, asr #0xc
	mov r0, r0, asr #0xc
	mov r1, r1, lsl r6
	mov r0, r0, lsl r6
	mov r1, r1, lsl #0x10
	mov r2, r0, lsl #0x10
	mov r0, r7
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0x10
	bl G3C_VtxXY
	mov r0, r7
	bl G3C_End
	mov r0, r7
	mov r1, #0
	bl G3C_PopMtx
	mov r0, #1
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end sub_02004658

	arm_func_start sub_0200483C
sub_0200483C: ; 0x0200483C
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	ldrh r4, [r1, #0x28]
	mov r1, #0
	mov r5, r2
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r6, r0
	mov r0, r5
	mov r3, r1
	str r1, [sp, #0x10]
	mov r2, #1
	bl G3C_TexImageParam
	ldr r0, [r6, #0x10]
	mov r1, #0
	str r0, [sp]
	ldr r2, [r6, #0x14]
	mov r0, r5
	str r2, [sp, #4]
	str r1, [sp, #8]
	ldr r2, [r6, #0xc]
	mov r3, #3
	bl G3C_PolygonAttr
	mov r0, r5
	mov r1, #1
	bl G3C_Begin
	mov r0, r5
	ldrh r1, [r6, #8]
	bl G3C_Color
	mov r0, r5
	ldr r1, [r6, #0x18]
	ldr r2, [r6, #0x1c]
	mov r1, r1, asr #0xc
	mov r1, r1, lsl r4
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0xc
	mov r2, r2, lsl r4
	mov r2, r2, lsl #0x10
	mov r2, r2, asr #0x10
	ldr r3, [r6, #4]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl G3C_Vtx
	mov r0, r5
	ldr r1, [r6, #0x20]
	ldr r2, [r6, #0x24]
	mov r1, r1, asr #0xc
	mov r1, r1, lsl r4
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0xc
	mov r2, r2, lsl r4
	mov r2, r2, lsl #0x10
	mov r2, r2, asr #0x10
	bl G3C_VtxXY
	mov r0, r5
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x2c]
	mov r1, r1, asr #0xc
	mov r1, r1, lsl r4
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0xc
	mov r2, r2, lsl r4
	mov r2, r2, lsl #0x10
	mov r2, r2, asr #0x10
	bl G3C_VtxXY
	mov r0, r5
	ldr r1, [r6, #0x30]
	ldr r2, [r6, #0x34]
	mov r1, r1, asr #0xc
	mov r1, r1, lsl r4
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0xc
	mov r2, r2, lsl r4
	mov r2, r2, lsl #0x10
	mov r2, r2, asr #0x10
	bl G3C_VtxXY
	mov r0, r5
	bl G3C_End
	mov r0, r5
	mov r1, #0
	bl G3C_PopMtx
	mov r0, #1
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end sub_0200483C

	arm_func_start sub_020049A4
sub_020049A4: ; 0x020049A4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003938
	ldr r3, _020049D0 ; =ptr_FUN_020049d4_0208a754
	add r0, r4, #0x18
	mov r1, #0
	mov r2, #0xc
	str r3, [r4]
	bl MI_CpuFill8
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_020049D0: .word ptr_FUN_020049d4_0208a754
	arm_func_end sub_020049A4

	arm_func_start sub_020049D4
sub_020049D4: ; 0x020049D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020049D4

	arm_func_start sub_020049E8
sub_020049E8: ; 0x020049E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020049E8

	arm_func_start sub_02004A04
sub_02004A04: ; 0x02004A04
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	ldrh r5, [r1, #0x28]
	ldr r1, _02004CA4 ; =0x040004A8
	mov r2, #0x40000000
	str r2, [r1]
	ldr r2, [r0, #0xc]
	ldr r3, [r0, #0x10]
	mov r2, r2, lsl #4
	orr r2, r2, #0xc0
	orr r2, r2, r3, lsl #24
	ldr r4, [r0, #0x14]
	mov r6, #0
	orr r2, r2, r4, lsl #16
	str r2, [r1, #-4]
	str r6, [r1, #0x58]
	ldrh r2, [r0, #8]
	mvn r3, #8
	sub r4, r1, #0x1c
	str r2, [r1, #-0x28]
	mov r2, #8
	sub r1, r1, #0x14
	sub r2, r2, #1
	str r1, [sp, #0x18]
	and r1, r3, r2
	mov r7, r6
	str r1, [sp, #0x14]
	b _02004C80
	arm_func_end sub_02004A04
_02004A74:
	ldr r2, [r0, #0x1c]
	ldr r1, [r0, #0x18]
	mov r2, r2, asr #0xc
	mov r3, r2, lsl r5
	mov r2, r1, asr #0xc
	mov r1, r3, lsl #0x10
	mov r3, r1, asr #0x10
	mov r2, r2, lsl r5
	ldr r1, [r0, #4]
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r2, asr #0x10
	mov r3, r3, lsr #0x10
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	orr r3, r3, r2, lsr #16
	mov r2, r6, asr #4
	str r3, [r4]
	mov r3, r2, lsl #1
	mov r1, r1, lsr #0x10
	str r1, [r4]
	mov r2, r6, asr #4
	mov r1, r2, lsl #1
	add r2, r1, #1
	ldr r1, _02004CA8 ; =FX_SinCosTable_
	mov r3, r3, lsl #1
	ldrsh sb, [r1, r3]
	ldr r3, [r0, #0x20]
	ldr r1, _02004CA8 ; =FX_SinCosTable_
	mov r2, r2, lsl #1
	ldrsh sl, [r1, r2]
	mov r1, r3, asr #0x1f
	str r1, [sp]
	mov r1, sb, asr #0x1f
	str r1, [sp, #4]
	ldr r1, [r0, #0x18]
	ldr r2, [r0, #0x20]
	str r1, [sp, #8]
	mov r1, sl, asr #0x1f
	str r1, [sp, #0x10]
	mov r1, r2, asr #0x1f
	str r1, [sp, #0xc]
	ldr r1, [sp, #4]
	umull fp, ip, r3, sb
	mla ip, r3, r1, ip
	ldr r1, [sp]
	ldr r3, [sp, #0x10]
	mla ip, r1, sb, ip
	mov r1, fp, lsr #0xc
	umull fp, sb, r2, sl
	mla sb, r2, r3, sb
	ldr r2, [sp, #0xc]
	ldr lr, [r0, #0x1c]
	mla sb, r2, sl, sb
	orr r1, r1, ip, lsl #20
	add r1, lr, r1
	mov r3, fp, lsr #0xc
	mov r1, r1, asr #0xc
	mov r1, r1, lsl r5
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	ldr r2, [sp, #8]
	orr r3, r3, sb, lsl #20
	add r2, r2, r3
	mov r2, r2, asr #0xc
	mov r2, r2, lsl r5
	mov r2, r2, lsl #0x10
	mov r2, r2, asr #0x10
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	orr r2, r1, r2, lsr #16
	ldr r1, [sp, #0x18]
	ldr r8, [sp, #0x14]
	str r2, [r1]
	clz r8, r8
	rsb r2, r8, #0x20
	mov r1, #0x10000
	sub r1, r6, r1, asr r2
	mov r2, r1, lsl #0x10
	ldr r1, _02004CAC ; =0x0000FFFF
	ldr r3, [r0, #0x20]
	and r1, r1, r2, lsr #16
	mov r1, r1, lsl #0x10
	mov r6, r1, lsr #0x10
	mov r1, r6, asr #4
	mov r1, r1, lsl #1
	mov r2, r1, lsl #1
	ldr r1, _02004CA8 ; =FX_SinCosTable_
	mov sl, r6, asr #4
	ldrsh sb, [r1, r2]
	mov sl, sl, lsl #1
	add sl, sl, #1
	mov fp, sl, lsl #1
	ldr sl, _02004CA8 ; =FX_SinCosTable_
	mov r1, sb, asr #0x1f
	ldrsh sl, [sl, fp]
	umull ip, fp, r3, sb
	mla fp, r3, r1, fp
	mov r2, r3, asr #0x1f
	mla fp, r2, sb, fp
	mov r1, ip, lsr #0xc
	ldr r8, [r0, #0x1c]
	orr r1, r1, fp, lsl #20
	add r1, r8, r1
	mov r1, r1, asr #0xc
	mov r1, r1, lsl r5
	mov r1, r1, lsl #0x10
	mov sb, r1, asr #0x10
	smull r2, r1, r3, sl
	mov r8, r2, lsr #0xc
	orr r8, r8, r1, lsl #20
	mov r1, sb, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r3, r1, lsl #0x10
	ldr r1, [r0, #0x18]
	add r2, r7, #1
	add r1, r1, r8
	mov r1, r1, asr #0xc
	mov r1, r1, lsl r5
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	orr r3, r3, r1, lsr #16
	ldr r1, [sp, #0x18]
	and r7, r2, #0xff
	str r3, [r1]
_02004C80:
	cmp r7, #8
	blo _02004A74
	ldr r1, _02004CB0 ; =0x04000504
	mov r2, #0
	str r2, [r1]
	mov r0, #8
	str r2, [r1, #-0xbc]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02004CA4: .word 0x040004A8
_02004CA8: .word FX_SinCosTable_
_02004CAC: .word 0x0000FFFF
_02004CB0: .word 0x04000504

	arm_func_start sub_02004CB4
sub_02004CB4: ; 0x02004CB4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003938
	ldr r3, _02004CFC ; =PTR_LAB_0208a774
	add r0, r4, #0x18
	mov r1, #0
	mov r2, #0x18
	str r3, [r4]
	bl MI_CpuFill8
	add r0, r4, #0x30
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	mov r1, #0
	str r1, [r4, #0x48]
	mov r0, r4
	str r1, [r4, #0x4c]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02004CFC: .word PTR_LAB_0208a774
	arm_func_end sub_02004CB4

	arm_func_start sub_02004D00
sub_02004D00: ; 0x02004D00
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02004D00

	arm_func_start sub_02004D14
sub_02004D14: ; 0x02004D14
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02004D14

	arm_func_start sub_02004D30
sub_02004D30: ; 0x02004D30
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0x48]
	cmp r2, #0
	ldrne r2, [r0, #0x4c]
	cmpne r2, #0
	beq _02004D50
	bl sub_02004D58
	ldmia sp!, {r3, pc}
	arm_func_end sub_02004D30
_02004D50:
	bl sub_02004F90
	ldmia sp!, {r3, pc}

	arm_func_start sub_02004D58
sub_02004D58: ; 0x02004D58
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r7, [r5, #0x48]
	ldrh r4, [r1, #0x28]
	add r0, r7, #8
	mov r1, #0
	ldr r6, [r5, #0x4c]
	bl NNS_G2dGetImageLocation
	ldr r1, [r7, #0x1c]
	ldr r2, [r7, #0x14]
	mov r1, r1, lsl #0x1a
	orr r0, r1, r0, lsr #3
	orr r0, r0, #0x40000000
	orr r0, r0, r2, lsl #20
	ldr r1, [r7, #0x18]
	ldr r2, [r7, #0x24]
	orr r1, r0, r1, lsl #23
	ldr r0, _02004F88 ; =0x040004A8
	orr r1, r1, r2, lsl #29
	str r1, [r0]
	ldr r7, [r7, #0x1c]
	add r0, r6, #8
	mov r1, #0
	bl NNS_G2dGetImagePaletteLocation
	cmp r7, #2
	moveq r1, #1
	movne r1, #0
	rsb r1, r1, #4
	ldr r3, _02004F8C ; =0x040004AC
	mov r0, r0, lsr r1
	str r0, [r3]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r0, r0, lsl #4
	orr r0, r0, #0xc0
	ldr r2, [r5, #0x14]
	orr r0, r0, r1, lsl #24
	orr r0, r0, r2, lsl #16
	str r0, [r3, #-8]
	mov r2, #0
	str r2, [r3, #0x54]
	ldrh r6, [r5, #8]
	sub r1, r3, #0x24
	sub r0, r3, #0x20
	str r6, [r3, #-0x2c]
	ldr r6, [r5, #0x34]
	ldr ip, [r5, #0x30]
	mov r6, r6, lsl #8
	mov r7, r6, asr #0x10
	mov r6, ip, lsl #8
	mov r7, r7, lsl #0x10
	mov r6, r6, asr #0x10
	mov r7, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r7, r7, lsl #0x10
	orr r6, r7, r6, lsr #16
	str r6, [r1]
	ldr r6, [r5, #0x1c]
	ldr r7, [r5, #0x18]
	mov r6, r6, asr #0xc
	mov r6, r6, lsl r4
	mov r7, r7, asr #0xc
	mov r7, r7, lsl r4
	mov r6, r6, lsl #0x10
	mov r6, r6, asr #0x10
	ldr lr, [r5, #4]
	mov r7, r7, lsl #0x10
	mov ip, r6, lsl #0x10
	mov r6, lr, lsl #0x10
	mov lr, r7, asr #0x10
	mov ip, ip, lsr #0x10
	mov r6, r6, asr #0x10
	mov r7, r6, lsl #0x10
	mov r6, lr, lsl #0x10
	mov ip, ip, lsl #0x10
	orr r6, ip, r6, lsr #16
	str r6, [r0]
	mov r6, r7, lsr #0x10
	str r6, [r0]
	ldr r0, [r5, #0x3c]
	ldr r7, [r5, #0x38]
	mov r0, r0, lsl #8
	mov r6, r0, asr #0x10
	mov r0, r7, lsl #8
	mov r6, r6, lsl #0x10
	mov r0, r0, asr #0x10
	mov r6, r6, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r6, r6, lsl #0x10
	orr r0, r6, r0, lsr #16
	str r0, [r1]
	ldr r0, [r5, #0x24]
	ldr r6, [r5, #0x20]
	mov r0, r0, asr #0xc
	mov r0, r0, lsl r4
	mov r6, r6, asr #0xc
	mov r7, r6, lsl r4
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	mov r0, r7, lsl #0x10
	mov r6, r6, lsl #0x10
	mov r0, r0, asr #0x10
	mov r6, r6, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r6, r6, lsl #0x10
	orr r6, r6, r0, lsr #16
	sub r0, r3, #0x18
	str r6, [r0]
	ldr r6, [r5, #0x44]
	ldr ip, [r5, #0x40]
	mov r6, r6, lsl #8
	mov r7, r6, asr #0x10
	mov r6, ip, lsl #8
	mov r7, r7, lsl #0x10
	mov r6, r6, asr #0x10
	mov r7, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r7, r7, lsl #0x10
	orr r6, r7, r6, lsr #16
	str r6, [r1]
	ldr r1, [r5, #0x2c]
	ldr r5, [r5, #0x28]
	mov r1, r1, asr #0xc
	mov r1, r1, lsl r4
	mov r5, r5, asr #0xc
	mov r5, r5, lsl r4
	mov r1, r1, lsl #0x10
	mov r4, r1, asr #0x10
	mov r1, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r1, r1, asr #0x10
	mov r4, r4, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r4, r4, lsl #0x10
	orr r1, r4, r1, lsr #16
	str r1, [r0]
	str r2, [r3, #0x58]
	str r2, [r3, #-0x64]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02004F88: .word 0x040004A8
_02004F8C: .word 0x040004AC
	arm_func_end sub_02004D58

	arm_func_start sub_02004F90
sub_02004F90: ; 0x02004F90
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldrh ip, [r1, #0x28]
	ldr r3, _020050C4 ; =0x040004A8
	mov r1, #0x40000000
	str r1, [r3]
	ldr r1, [r0, #0xc]
	ldr r2, [r0, #0x10]
	mov r1, r1, lsl #4
	orr r1, r1, #0xc0
	ldr r4, [r0, #0x14]
	orr r1, r1, r2, lsl #24
	orr r1, r1, r4, lsl #16
	str r1, [r3, #-4]
	mov r2, #0
	str r2, [r3, #0x58]
	ldrh r4, [r0, #8]
	sub r6, r3, #0x1c
	sub r1, r3, #0x14
	str r4, [r3, #-0x28]
	ldr r4, [r0, #0x1c]
	ldr r5, [r0, #0x18]
	mov r4, r4, asr #0xc
	mov r4, r4, lsl ip
	mov r5, r5, asr #0xc
	mov r7, r5, lsl ip
	mov r4, r4, lsl #0x10
	mov r5, r4, asr #0x10
	ldr lr, [r0, #4]
	mov r4, r7, lsl #0x10
	mov r5, r5, lsl #0x10
	mov lr, lr, lsl #0x10
	mov r4, r4, asr #0x10
	mov r7, r5, lsr #0x10
	mov r5, lr, asr #0x10
	mov r5, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r7, r7, lsl #0x10
	orr r4, r7, r4, lsr #16
	str r4, [r6]
	mov r4, r5, lsr #0x10
	str r4, [r6]
	ldr r4, [r0, #0x24]
	ldr r5, [r0, #0x20]
	mov r4, r4, asr #0xc
	mov r4, r4, lsl ip
	mov r5, r5, asr #0xc
	mov lr, r5, lsl ip
	mov r4, r4, lsl #0x10
	mov r5, r4, asr #0x10
	mov r4, lr, lsl #0x10
	mov r5, r5, lsl #0x10
	mov r4, r4, asr #0x10
	mov r5, r5, lsr #0x10
	mov r4, r4, lsl #0x10
	mov r5, r5, lsl #0x10
	orr r4, r5, r4, lsr #16
	str r4, [r1]
	ldr r4, [r0, #0x2c]
	ldr r5, [r0, #0x28]
	mov r0, r4, asr #0xc
	mov r0, r0, lsl ip
	mov r4, r5, asr #0xc
	mov r5, r4, lsl ip
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	mov r0, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r0, r0, asr #0x10
	mov r4, r4, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r4, r4, lsl #0x10
	orr r0, r4, r0, lsr #16
	str r0, [r1]
	str r2, [r3, #0x5c]
	str r2, [r3, #-0x60]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020050C4: .word 0x040004A8
	arm_func_end sub_02004F90

	arm_func_start sub_020050C8
sub_020050C8: ; 0x020050C8
	stmdb sp!, {r3, lr}
	mov r1, #0
	mov r2, r1
	mov r0, #0x20
	bl NNS_GfdAllocLnkPlttVram
	ldr r1, _02005114 ; =MAIN_BSS_020AF320
	str r0, [r1]
	ldr r0, _02005118 ; =MAIN_BSS_020AF324
	bl NNS_G2dInitImagePaletteProxy
	ldr r1, _02005114 ; =MAIN_BSS_020AF320
	ldr r0, _0200511C ; =DAT_0208a7a4
	ldr r1, [r1]
	ldr r3, _02005118 ; =MAIN_BSS_020AF324
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	mov r2, #0
	bl NNS_G2dLoadPalette
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_02005114: .word MAIN_BSS_020AF320
_02005118: .word MAIN_BSS_020AF324
_0200511C: .word DAT_0208a7a4
	arm_func_end sub_020050C8

	arm_func_start sub_02005120
sub_02005120: ; 0x02005120
	stmdb sp!, {r3, lr}
	ldr r0, _0200514C ; =MAIN_BSS_020AF320
	ldr r0, [r0]
	cmp r0, #0
	beq _02005144
	bl NNS_GfdFreeLnkPlttVram
	ldr r0, _0200514C ; =MAIN_BSS_020AF320
	mov r1, #0
	str r1, [r0]
	arm_func_end sub_02005120
_02005144:
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0200514C: .word MAIN_BSS_020AF320

	arm_func_start sub_02005150
sub_02005150: ; 0x02005150
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	bl sub_02003938
	ldr r0, _020051C4 ; =ptr_FUN_020051c8_0208a7f0
	mov r1, #0
	str r0, [r4]
	str r1, [r4, #0x2c]
	str r1, [r4, #0x30]
	str r1, [r4, #0x34]
	str r1, [r4, #0x38]
	strh r1, [r4, #0x2a]
	mov r3, #0x1000
	str r3, [sp]
	str r1, [sp, #4]
	mov r0, r4
	mov r2, r1
	str r1, [sp, #8]
	bl sub_020051F8
	mov r1, #0
	str r1, [r4, #0x3c]
	strh r1, [r4, #0x46]
	strh r1, [r4, #0x44]
	strh r1, [r4, #0x42]
	strh r1, [r4, #0x40]
	mov r0, r4
	str r1, [r4, #0x48]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_020051C4: .word ptr_FUN_020051c8_0208a7f0
	arm_func_end sub_02005150

	arm_func_start sub_020051C8
sub_020051C8: ; 0x020051C8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020051C8

	arm_func_start sub_020051DC
sub_020051DC: ; 0x020051DC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020051DC

	arm_func_start sub_020051F8
sub_020051F8: ; 0x020051F8
	str r1, [r0, #0x18]
	str r2, [r0, #0x1c]
	ldr r1, [sp]
	str r3, [r0, #0x20]
	ldrh r2, [sp, #4]
	str r1, [r0, #0x24]
	ldr r1, [sp, #8]
	strh r2, [r0, #0x28]
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020051F8

	arm_func_start sub_02005220
sub_02005220: ; 0x02005220
	stmdb sp!, {r4, lr}
	ldr r2, [r0, #0x14]
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, [r0, #0x2c]
	mov r4, #0
	cmp r2, #0
	beq _02005258
	bl sub_0200527C
	add r0, r4, r0
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	b _02005274
	arm_func_end sub_02005220
_02005258:
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _02005274
	bl sub_020058BC
	add r0, r4, r0
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
_02005274:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start sub_0200527C
sub_0200527C: ; 0x0200527C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x68
	mov sl, r0
	ldr r0, [sl, #0x38]
	mov r4, r1
	ldrh r1, [sl, #0x2a]
	ldr r0, [r0, #0xb8]
	bl NNS_G2dGetCellDataByIdx
	str r0, [sp, #0x24]
	cmp r0, #0
	bne _020052AC
	bl OS_Terminate
	arm_func_end sub_0200527C
_020052AC:
	ldrh r0, [r4, #0x28]
	ldr r3, _02005898 ; =0x04000450
	mov r4, #0
	str r4, [r3]
	str r0, [sp, #8]
	ldr r0, [sl, #0x18]
	ldr r2, [sl, #0x1c]
	mov r1, r0, asr #0xc
	ldr r0, [sp, #8]
	mov r2, r2, asr #0xc
	mov r1, r1, lsl r0
	mov r0, r2, lsl r0
	str r1, [r3, #0x20]
	str r0, [r3, #0x20]
	str r4, [r3, #0x20]
	ldr r0, [sl, #0x20]
	cmp r0, #0x1000
	ldreq r0, [sl, #0x24]
	cmpeq r0, #0x1000
	ldreqh r0, [sl, #0x28]
	cmpeq r0, #0
	beq _02005354
	ldrh r1, [sl, #0x28]
	ldr r3, _0200589C ; =FX_SinCosTable_
	add r0, sp, #0x44
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov r4, r2, lsl #1
	mov r2, r1, lsl #1
	ldrsh r1, [r3, r4]
	ldrsh r2, [r3, r2]
	blx MTX_RotZ33_
	add r0, sp, #0x44
	bl G3_MultMtx33
	ldr r3, [sl, #0x24]
	ldr r2, [sl, #0x20]
	ldr r1, _020058A0 ; =0x0400046C
	mov r0, #0x1000
	str r2, [r1]
	str r3, [r1]
	str r0, [r1]
_02005354:
	ldr r0, [sl, #0x2c]
	ldr r2, [sl, #0x34]
	str r0, [sp, #0x28]
	mov r1, #0
	add r0, r0, #8
	str r2, [sp, #0x2c]
	bl NNS_G2dGetImageLocation
	ldr r1, [sp, #0x28]
	ldr r2, [r1, #0x1c]
	ldr r3, [r1, #0x14]
	mov r1, r2, lsl #0x1a
	orr r0, r1, r0, lsr #3
	orr r1, r0, #0x40000000
	ldr r0, [sp, #0x28]
	orr r1, r1, r3, lsl #20
	ldr r2, [r0, #0x18]
	ldr r3, [r0, #0x24]
	orr r0, r1, r2, lsl #23
	orr r1, r0, r3, lsl #29
	ldr r0, _020058A4 ; =0x040004A8
	str r1, [r0]
	ldrh r2, [sl, #8]
	mov r0, #0
	mov r1, #1
	str r0, [sp, #0x20]
	ldr r0, _020058A4 ; =0x040004A8
	str r2, [r0, #-0x28]
	ldr r0, [sl, #0xc]
	ldr r2, [sl, #0x10]
	mov r0, r0, lsl #4
	orr r0, r0, #0xc0
	ldr r3, [sl, #0x14]
	orr r0, r0, r2, lsl #24
	orr r2, r0, r3, lsl #16
	ldr r0, _020058A4 ; =0x040004A8
	str r2, [r0, #-4]
	str r1, [r0, #0x58]
	ldr r0, [sp, #0x24]
	ldrh r1, [r0]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	cmp r1, #0
	bls _02005878
	ldr r0, _020058A4 ; =0x040004A8
	sub r0, r0, #0x20
	str r0, [sp, #0x30]
	ldr r0, _020058A4 ; =0x040004A8
	sub r0, r0, #0x1c
	str r0, [sp, #0x34]
	ldr r0, _020058A4 ; =0x040004A8
	sub r0, r0, #0x14
	str r0, [sp, #0x38]
_02005424:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	ldr r2, [r0, #4]
	mov r0, #6
	mul r0, r1, r0
	add r3, r2, r0
	ldrh r2, [r2, r0]
	mov r0, sl
	add r1, sp, #0x3c
	strh r2, [sp, #0x3c]
	ldrh r2, [r3, #2]
	strh r2, [sp, #0x3e]
	ldrh r2, [r3, #4]
	strh r2, [sp, #0x40]
	ldr r2, [sp, #0x40]
	mov r2, r2, lsl #0x16
	mov r2, r2, lsr #0x16
	mov r2, r2, lsl #0x10
	mov r5, r2, lsr #0x10
	bl sub_02005F04
	mov r1, r0
	mov r0, sl
	bl sub_02005F30
	mov r4, r0
	mov r0, sl
	add r1, sp, #0x3c
	bl sub_02005F24
	mov r1, r0
	mov r0, sl
	bl sub_02005F48
	mov sb, r0
	ldr r2, [sp, #0x3c]
	ldr r0, _020058A8 ; =0xC000C000
	mov r1, r5, lsr #0x1f
	and r2, r2, r0
	and r0, r2, #0xc000
	mov r3, r0, asr #0xe
	and r0, r2, #0xc0000000
	mov r0, r0, lsr #0x1e
	mov r2, r0, lsl #1
	ldr r0, _020058AC ; =NNSi_objSizeWTbl
	add r0, r0, r3, lsl #3
	ldrh r7, [r2, r0]
	ldr r0, _020058B0 ; =NNSi_objSizeHTbl
	add r0, r0, r3, lsl #3
	ldrh r8, [r2, r0]
	rsb r0, r1, r5, lsl #27
	add r0, r1, r0, ror #27
	mov r0, r0, lsl #0xf
	mov r1, r5, lsr #5
	mov r5, r1, lsl #0xf
	ldr r1, [sp, #0x3c]
	add fp, r0, r7, lsl #12
	mov r1, r1, lsl #3
	movs r1, r1, lsr #0x1f
	subne r2, fp, #1
	str r0, [sp, #0x18]
	subne fp, r0, #1
	ldr r0, [sp, #0x3c]
	strne r2, [sp, #0x18]
	mov r0, r0, lsl #2
	movs r0, r0, lsr #0x1f
	str r0, [sp, #4]
	add r6, r5, r8, lsl #12
	movne r0, r5
	subne r5, r6, #1
	subne r6, r0, #1
	ldr r0, [sl, #0x48]
	cmp r0, #0
	beq _02005670
	ldrsh r2, [sl, #0x42]
	cmp r4, r2
	bge _02005854
	ldrsh r0, [sl, #0x40]
	add r3, r4, r7
	cmp r3, r0
	ble _02005854
	ldrsh r3, [sl, #0x46]
	str r3, [sp]
	cmp sb, r3
	bge _02005854
	ldrsh r3, [sl, #0x44]
	add ip, sb, r8
	cmp ip, r3
	ble _02005854
	cmp r4, r0
	bge _020055C0
	sub r0, r0, r4
	mov ip, r0, lsl #0x10
	mov r0, ip, asr #0x10
	cmp r1, #0
	add r4, r4, ip, asr #16
	sub r7, r7, ip, asr #16
	movne r0, r0, lsl #0xc
	rsbne ip, r0, #0
	moveq ip, r0, lsl #0xc
	ldr r0, [sp, #0x18]
	mov r4, r4, lsl #0x10
	mov r7, r7, lsl #0x10
	add r0, r0, ip
	mov r4, r4, asr #0x10
	mov r7, r7, lsr #0x10
	str r0, [sp, #0x18]
_020055C0:
	add r0, r4, r7
	cmp r0, r2
	ble _020055F4
	sub r0, r0, r2
	mov r0, r0, lsl #0x10
	cmp r1, #0
	mov r1, r0, asr #0x10
	sub r0, r7, r0, asr #16
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	mov r0, r1, lsl #0xc
	rsbeq r0, r0, #0
	add fp, fp, r0
_020055F4:
	cmp sb, r3
	bge _02005634
	sub r0, r3, sb
	mov r1, r0, lsl #0x10
	ldr r0, [sp, #4]
	add r2, sb, r1, asr #16
	cmp r0, #0
	mov r0, r1, asr #0x10
	sub r1, r8, r1, asr #16
	mov r0, r0, lsl #0xc
	mov r2, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	rsbne r0, r0, #0
	mov sb, r2, asr #0x10
	mov r8, r1, lsr #0x10
	add r5, r5, r0
_02005634:
	ldr r0, [sp]
	add r1, sb, r8
	cmp r1, r0
	ble _02005670
	sub r1, r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	mov r0, r1, lsl #0x10
	mov r1, r0, asr #0x10
	sub r0, r8, r0, asr #16
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	mov r0, r1, lsl #0xc
	rsbeq r0, r0, #0
	add r6, r6, r0
_02005670:
	ldr r0, [sl, #0x3c]
	cmp r0, #1
	beq _020056D8
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x40]
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0x10]
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x1c
	and r0, r0, #0xff
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x2c]
	mov r1, #0
	add r0, r0, #8
	bl NNS_G2dGetImagePaletteLocation
	ldr r1, [sp, #0x14]
	add r1, r0, r1, lsl #5
	ldr r0, [sp, #0x10]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #4
	mov r1, r1, lsr r0
	ldr r0, _020058A4 ; =0x040004A8
	str r1, [r0, #4]
	b _02005710
_020056D8:
	ldr r0, [sp, #0x28]
	mov r1, #0
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, _020058B4 ; =MAIN_BSS_020AF324
	bl NNS_G2dGetImagePaletteLocation
	ldr r1, [sp, #0xc]
	cmp r1, #2
	moveq r1, #1
	movne r1, #0
	rsb r1, r1, #4
	mov r1, r0, lsr r1
	ldr r0, _020058A4 ; =0x040004A8
	str r1, [r0, #4]
_02005710:
	mov r0, r5, lsl #8
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #8]
	mov r0, r0, lsl #8
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r3, r0, lsr #0x10
	mov r0, r6, lsl #8
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldr r6, [sp, #8]
	add r0, sb, r8
	mov r0, r0, lsl r6
	mov r6, fp, lsl #8
	mov r6, r6, asr #0x10
	mov r6, r6, lsl #0x10
	mov r2, sb, lsl r2
	mov r8, r6, lsr #0x10
	add r6, r4, r7
	ldr r7, [sp, #8]
	mov r2, r2, lsl #0x10
	mov r4, r4, lsl r7
	mov r4, r4, lsl #0x10
	mov r4, r4, asr #0x10
	mov r4, r4, lsl #0x10
	mov r7, r4, lsr #0x10
	ldr r4, [sp, #8]
	mov r2, r2, asr #0x10
	mov r4, r6, lsl r4
	mov r2, r2, lsl #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r4, r4, asr #0x10
	mov r4, r4, lsl #0x10
	ldr r6, [sp, #0x30]
	orr sb, r3, r5, lsl #16
	str sb, [r6]
	orr r6, r3, r1, lsl #16
	orr r3, r8, r1, lsl #16
	orr r1, r8, r5, lsl #16
	mov r2, r2, lsr #0x10
	ldr sb, [sl, #4]
	ldr r5, [sp, #0x34]
	orr r8, r7, r2, lsl #16
	str r8, [r5]
	ldr r5, [sp, #0x20]
	mov r4, r4, lsr #0x10
	add r5, r5, sb
	mov r5, r5, lsl #0x10
	mov r5, r5, asr #0x10
	mov r5, r5, lsl #0x10
	mov r8, r5, lsr #0x10
	ldr r5, [sp, #0x34]
	mov r0, r0, lsr #0x10
	str r8, [r5]
	ldr r5, [sp, #0x30]
	orr r2, r4, r2, lsl #16
	str r6, [r5]
	ldr r5, [sp, #0x38]
	orr r6, r7, r0, lsl #16
	str r6, [r5]
	ldr r5, [sp, #0x30]
	str r3, [r5]
	orr r3, r4, r0, lsl #16
	ldr r0, [sp, #0x38]
	str r3, [r0]
	mov r0, r5
	str r1, [r0]
	ldr r0, [sp, #0x38]
	str r2, [r0]
	ldr r0, [sp, #0x20]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp, #0x20]
_02005854:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	mov r1, r0, lsl #0x10
	mov r0, r1, lsr #0x10
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	ldrh r0, [r0]
	cmp r0, r1, lsr #16
	bhi _02005424
_02005878:
	ldr r0, _020058B8 ; =0x04000504
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #-0xbc]
	ldr r0, [sp, #0x24]
	ldrh r0, [r0]
	add sp, sp, #0x68
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02005898: .word 0x04000450
_0200589C: .word FX_SinCosTable_
_020058A0: .word 0x0400046C
_020058A4: .word 0x040004A8
_020058A8: .word 0xC000C000
_020058AC: .word NNSi_objSizeWTbl
_020058B0: .word NNSi_objSizeHTbl
_020058B4: .word MAIN_BSS_020AF324
_020058B8: .word 0x04000504

	arm_func_start sub_020058BC
sub_020058BC: ; 0x020058BC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x7c
	mov sl, r0
	ldr r0, [sl, #0x38]
	mov r4, r1
	ldrh r1, [sl, #0x2a]
	ldr r0, [r0, #0xb8]
	bl NNS_G2dGetCellDataByIdx
	ldrh r1, [r4, #0x28]
	ldr r4, _02005EE0 ; =0x04000450
	mov r5, #0
	str r5, [r4]
	str r1, [sp, #8]
	ldr r1, [sl, #0x18]
	ldr r3, [sl, #0x1c]
	mov r2, r1, asr #0xc
	ldr r1, [sp, #8]
	mov r3, r3, asr #0xc
	mov r2, r2, lsl r1
	mov r1, r3, lsl r1
	str r2, [r4, #0x20]
	str r1, [r4, #0x20]
	str r5, [r4, #0x20]
	ldr r1, [sl, #0x20]
	str r0, [sp, #0x3c]
	cmp r1, #0x1000
	ldreq r0, [sl, #0x24]
	cmpeq r0, #0x1000
	ldreqh r0, [sl, #0x28]
	cmpeq r0, #0
	beq _02005988
	ldrh r1, [sl, #0x28]
	ldr r3, _02005EE4 ; =FX_SinCosTable_
	add r0, sp, #0x58
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov r4, r2, lsl #1
	mov r2, r1, lsl #1
	ldrsh r1, [r3, r4]
	ldrsh r2, [r3, r2]
	blx MTX_RotZ33_
	add r0, sp, #0x58
	bl G3_MultMtx33
	ldr r3, [sl, #0x24]
	ldr r2, [sl, #0x20]
	ldr r1, _02005EE8 ; =0x0400046C
	mov r0, #0x1000
	str r2, [r1]
	str r3, [r1]
	str r0, [r1]
	arm_func_end sub_020058BC
_02005988:
	ldr r0, [sl, #0x34]
	ldr r2, [sl, #0x30]
	str r0, [sp, #0x40]
	ldr r0, [r2]
	ldrh r1, [sl, #8]
	str r0, [sp, #0x44]
	mov r0, #0
	ldr r4, _02005EEC ; =0x04000480
	str r0, [sp, #0x38]
	str r1, [r4]
	ldr r0, [sl, #0xc]
	ldr r1, [sl, #0x10]
	mov r0, r0, lsl #4
	orr r0, r0, #0xc0
	ldr r2, [sl, #0x14]
	orr r0, r0, r1, lsl #24
	orr r0, r0, r2, lsl #16
	str r0, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0x80]
	ldr r0, [sp, #0x3c]
	ldrh r1, [r0]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0x34]
	str r0, [sp, #0x30]
	cmp r1, #0
	bls _02005EC0
	mvn r0, #0
	str r0, [sp, #0x48]
_020059FC:
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x30]
	ldr r2, [r0, #4]
	mov r0, #6
	mul r0, r1, r0
	add r3, r2, r0
	ldrh r2, [r2, r0]
	mov r0, sl
	add r1, sp, #0x50
	strh r2, [sp, #0x50]
	ldrh r2, [r3, #2]
	strh r2, [sp, #0x52]
	ldrh r2, [r3, #4]
	strh r2, [sp, #0x54]
	bl sub_02005F04
	mov r1, r0
	mov r0, sl
	bl sub_02005F30
	mov r5, r0
	mov r0, sl
	add r1, sp, #0x50
	bl sub_02005F24
	mov r1, r0
	mov r0, sl
	bl sub_02005F48
	mov sb, r0
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x50]
	ldr r0, _02005EF0 ; =0xC000C000
	and r1, r1, r0
	and r0, r1, #0xc000
	mov r3, r0, asr #0xe
	and r0, r1, #0xc0000000
	mov r0, r0, lsr #0x1e
	mov r1, r0, lsl #1
	ldr r0, _02005EF4 ; =NNSi_objSizeWTbl
	add r0, r0, r3, lsl #3
	ldrsh r2, [r1, r0]
	ldr r0, _02005EF8 ; =NNSi_objSizeHTbl
	add r0, r0, r3, lsl #3
	ldrsh r1, [r1, r0]
	mov r0, r2, lsl #0x10
	mov r7, r0, lsr #0x10
	mov r0, r1, lsl #0x10
	mov r8, r0, lsr #0x10
	str r7, [sp, #0x2c]
	mov r0, #0
	str r8, [sp, #0x28]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x50]
	mov fp, r7, lsl #0xc
	mov r0, r0, lsl #3
	movs r2, r0, lsr #0x1f
	subne r0, fp, #1
	strne r0, [sp, #0x24]
	ldr r0, [sp, #0x50]
	mov r6, r8, lsl #0xc
	mov r0, r0, lsl #2
	ldrne fp, [sp, #0x48]
	movs r0, r0, lsr #0x1f
	str r0, [sp]
	subne r0, r6, #1
	strne r0, [sp, #0x20]
	ldr r0, [sl, #0x48]
	ldrne r6, [sp, #0x48]
	cmp r0, #0
	beq _02005C60
	ldrsh r3, [sl, #0x42]
	cmp r5, r3
	bge _02005B48
	ldrsh lr, [sl, #0x40]
	add r0, r5, r7
	cmp r0, lr
	ble _02005B48
	ldrsh ip, [sl, #0x46]
	cmp sb, ip
	bge _02005B48
	ldrsh r0, [sl, #0x44]
	add r1, sb, r8
	str r0, [sp, #4]
	cmp r1, r0
	bgt _02005B5C
_02005B48:
	mul r1, r7, r8
	ldr r0, [sp, #0x34]
	add r0, r0, r1, asr #1
	str r0, [sp, #0x34]
	b _02005E9C
_02005B5C:
	cmp r5, lr
	bge _02005BA4
	sub r0, lr, r5
	mov r1, r0, lsl #0x10
	add r5, r5, r1, asr #16
	mov r0, r1, asr #0x10
	sub r1, r7, r1, asr #16
	cmp r2, #0
	mov r1, r1, lsl #0x10
	mov r5, r5, lsl #0x10
	movne r0, r0, lsl #0xc
	mov r7, r1, lsr #0x10
	rsbne r1, r0, #0
	moveq r1, r0, lsl #0xc
	ldr r0, [sp, #0x24]
	mov r5, r5, asr #0x10
	add r0, r0, r1
	str r0, [sp, #0x24]
_02005BA4:
	add r0, r5, r7
	cmp r0, r3
	ble _02005BD8
	sub r0, r0, r3
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	sub r0, r7, r0, asr #16
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	mov r0, r1, lsl #0xc
	cmp r2, #0
	rsbeq r0, r0, #0
	add fp, fp, r0
_02005BD8:
	ldr r0, [sp, #4]
	cmp sb, r0
	bge _02005C28
	sub r0, r0, sb
	mov r1, r0, lsl #0x10
	ldr r0, [sp]
	add r2, sb, r1, asr #16
	cmp r0, #0
	mov r0, r1, asr #0x10
	sub r1, r8, r1, asr #16
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	movne r0, r0, lsl #0xc
	mov r8, r1, lsr #0x10
	rsbne r1, r0, #0
	moveq r1, r0, lsl #0xc
	ldr r0, [sp, #0x20]
	mov sb, r2, asr #0x10
	add r0, r0, r1
	str r0, [sp, #0x20]
_02005C28:
	add r0, sb, r8
	cmp r0, ip
	ble _02005C60
	sub r1, r0, ip
	ldr r0, [sp]
	cmp r0, #0
	mov r0, r1, lsl #0x10
	mov r1, r0, asr #0x10
	sub r0, r8, r0, asr #16
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	mov r0, r1, lsl #0xc
	rsbeq r0, r0, #0
	add r6, r6, r0
_02005C60:
	ldr r0, [sp, #0x44]
	ldr r1, [sl, #0x30]
	ldr r0, [r0, #0x24]
	str r0, [sp, #0x18]
	ldr r0, [r1, #8]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0xc]
	mov r0, sl
	bl sub_02005F60
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x2c]
	mov r0, sl
	bl sub_02005F60
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #0xc]
	add r2, r2, r1
	ldr r1, [sp, #0x44]
	ldr r1, [r1, #0x1c]
	mov r1, r1, lsl #0x1a
	orr r1, r1, r2, lsr #3
	orr r1, r1, #0x40000000
	orr r1, r1, r0, lsl #20
	ldr r0, [sp, #0x4c]
	orr r1, r1, r0, lsl #23
	ldr r0, [sp, #0x18]
	orr r0, r1, r0, lsl #29
	str r0, [r4, #0x28]
	ldr r0, [sl, #0x3c]
	cmp r0, #1
	beq _02005D30
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x54]
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0x14]
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x1c
	and r0, r0, #0xff
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x40]
	mov r1, #0
	add r0, r0, #8
	bl NNS_G2dGetImagePaletteLocation
	ldr r1, [sp, #0x1c]
	add r1, r0, r1, lsl #5
	ldr r0, [sp, #0x14]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #4
	mov r0, r1, lsr r0
	str r0, [r4, #0x2c]
	b _02005D64
_02005D30:
	ldr r0, [sp, #0x44]
	mov r1, #0
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0x10]
	ldr r0, _02005EFC ; =MAIN_BSS_020AF324
	bl NNS_G2dGetImagePaletteLocation
	ldr r1, [sp, #0x10]
	cmp r1, #2
	moveq r1, #1
	movne r1, #0
	rsb r1, r1, #4
	mov r0, r0, lsr r1
	str r0, [r4, #0x2c]
_02005D64:
	mov r3, r6, lsl #8
	ldr r6, [sp, #8]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	mov r6, sb, lsl r6
	mul r2, r1, r0
	ldr r0, [sp, #0x20]
	mov r6, r6, lsl #0x10
	mov r3, r3, asr #0x10
	mov r6, r6, asr #0x10
	mov r0, r0, lsl #8
	mov r3, r3, lsl #0x10
	mov r0, r0, asr #0x10
	mov ip, r3, lsr #0x10
	add r3, sb, r8
	mov r6, r6, lsl #0x10
	mov r8, r6, lsr #0x10
	ldr r6, [sp, #8]
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldr r0, [sp, #0x24]
	mov r3, r3, lsl r6
	mov r0, r0, lsl #8
	mov r3, r3, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r3, asr #0x10
	mov r0, r0, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r6, r3, lsr #0x10
	mov r3, fp, lsl #8
	mov r3, r3, asr #0x10
	mov r3, r3, lsl #0x10
	ldr sb, [sp, #8]
	add r7, r5, r7
	mov r5, r5, lsl sb
	mov r7, r7, lsl sb
	ldr sb, [sp, #0x34]
	mov r5, r5, lsl #0x10
	add r2, sb, r2, asr #1
	mov r5, r5, asr #0x10
	mov r5, r5, lsl #0x10
	mov r7, r7, lsl #0x10
	mov r7, r7, asr #0x10
	mov r7, r7, lsl #0x10
	mov r0, r0, lsr #0x10
	str r2, [sp, #0x34]
	orr r2, r0, r1, lsl #16
	str r2, [r4, #8]
	mov r3, r3, lsr #0x10
	orr r2, r0, ip, lsl #16
	orr r0, r3, ip, lsl #16
	mov r5, r5, lsr #0x10
	orr r3, r3, r1, lsl #16
	ldr sb, [sl, #4]
	orr r1, r5, r8, lsl #16
	str r1, [r4, #0xc]
	ldr r1, [sp, #0x38]
	mov r7, r7, lsr #0x10
	add r1, r1, sb
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [r4, #0xc]
	str r2, [r4, #8]
	orr r1, r5, r6, lsl #16
	str r1, [r4, #0x14]
	str r0, [r4, #8]
	orr r1, r7, r6, lsl #16
	str r1, [r4, #0x14]
	orr r0, r7, r8, lsl #16
	str r3, [r4, #8]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x38]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp, #0x38]
_02005E9C:
	ldr r0, [sp, #0x30]
	add r0, r0, #1
	mov r1, r0, lsl #0x10
	mov r0, r1, lsr #0x10
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x3c]
	ldrh r0, [r0]
	cmp r0, r1, lsr #16
	bhi _020059FC
_02005EC0:
	ldr r0, _02005F00 ; =0x04000504
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #-0xbc]
	ldr r0, [sp, #0x3c]
	ldrh r0, [r0]
	add sp, sp, #0x7c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02005EE0: .word 0x04000450
_02005EE4: .word FX_SinCosTable_
_02005EE8: .word 0x0400046C
_02005EEC: .word 0x04000480
_02005EF0: .word 0xC000C000
_02005EF4: .word NNSi_objSizeWTbl
_02005EF8: .word NNSi_objSizeHTbl
_02005EFC: .word MAIN_BSS_020AF324
_02005F00: .word 0x04000504

	arm_func_start sub_02005F04
sub_02005F04: ; 0x02005F04
	ldr r1, [r1]
	ldr r0, _02005F20 ; =0x01FF0000
	and r0, r1, r0
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bx lr
	.align 2, 0
_02005F20: .word 0x01FF0000
	arm_func_end sub_02005F04

	arm_func_start sub_02005F24
sub_02005F24: ; 0x02005F24
	ldr r0, [r1]
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_02005F24

	arm_func_start sub_02005F30
sub_02005F30: ; 0x02005F30
	cmp r1, #0xff
	orrgt r0, r1, #0xff00
	movgt r0, r0, lsl #0x10
	movgt r1, r0, asr #0x10
	mov r0, r1
	bx lr
	arm_func_end sub_02005F30

	arm_func_start sub_02005F48
sub_02005F48: ; 0x02005F48
	cmp r1, #0x7f
	orrgt r0, r1, #0xff00
	movgt r0, r0, lsl #0x10
	movgt r1, r0, asr #0x10
	mov r0, r1
	bx lr
	arm_func_end sub_02005F48

	arm_func_start sub_02005F60
sub_02005F60: ; 0x02005F60
	cmp r1, #0x40
	bgt _02005F90
	bge _02005FCC
	cmp r1, #0x10
	bgt _02005F84
	bge _02005FC4
	cmp r1, #8
	moveq r0, #0
	bx lr
	arm_func_end sub_02005F60
_02005F84:
	cmp r1, #0x20
	moveq r0, #2
	bx lr
_02005F90:
	cmp r1, #0x100
	bgt _02005FA8
	bge _02005FD4
	cmp r1, #0x80
	moveq r0, #4
	bx lr
_02005FA8:
	cmp r1, #0x200
	bgt _02005FB8
	moveq r0, #6
	bx lr
_02005FB8:
	cmp r1, #0x400
	moveq r0, #7
	bx lr
_02005FC4:
	mov r0, #1
	bx lr
_02005FCC:
	mov r0, #3
	bx lr
_02005FD4:
	mov r0, #5
	bx lr

	arm_func_start sub_02005FDC
sub_02005FDC: ; 0x02005FDC
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x38]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0xb8]
	bl NNS_G2dGetCellDataByIdx
	ldrh r0, [r0]
	ldmia sp!, {r3, pc}
	arm_func_end sub_02005FDC

	arm_func_start sub_02006000
sub_02006000: ; 0x02006000
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	ldr r4, [sp, #0x20]
	ldr r3, [sp, #0x14]
	cmp r4, #0
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	beq _020060B8
	cmp r4, #1
	beq _0200607C
	cmp r4, #2
	bne _020060B8
	ldr ip, [sp, #0x10]
	ldr r4, [sp, #8]
	sub lr, ip, r1, asr #1
	cmp lr, r4
	bgt _020060F0
	add r1, ip, r1, asr #1
	cmp r4, r1
	bge _020060F0
	sub r1, r3, r0, asr #1
	cmp r1, r2
	bgt _020060F0
	add r0, r3, r0, asr #1
	cmp r2, r0
	bge _020060F0
	mov r0, #1
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02006000
_0200607C:
	ldr ip, [sp, #0x10]
	ldr r4, [sp, #8]
	sub lr, ip, r1, asr #1
	cmp lr, r4
	addle r1, ip, r1, asr #1
	cmple r4, r1
	suble r1, r3, r0, asr #1
	cmple r1, r2
	addle r0, r3, r0, asr #1
	cmple r2, r0
	bgt _020060F0
	mov r0, #1
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020060B8:
	ldr lr, [sp, #0x10]
	ldr ip, [sp, #8]
	sub r4, lr, r1, asr #1
	cmp r4, ip
	addlt r1, lr, r1, asr #1
	cmplt ip, r1
	sublt r1, r3, r0, asr #1
	cmplt r1, r2
	addlt r0, r3, r0, asr #1
	cmplt r2, r0
	movlt r0, #1
	ldmltia sp!, {r4, lr}
	addlt sp, sp, #0x10
	bxlt lr
_020060F0:
	mov r0, #0
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02006100
sub_02006100: ; 0x02006100
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x10]
	ldr ip, [sp, #0x18]
	sub r0, r1, r0
	smull r3, r2, r0, r0
	smull r1, r0, ip, ip
	mov ip, r3, lsr #0xc
	ldr lr, [sp, #0xc]
	ldr r3, [sp, #0x14]
	mov r1, r1, lsr #0xc
	sub lr, lr, r3
	orr ip, ip, r2, lsl #20
	smull r3, r2, lr, lr
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r2, ip, r3
	orr r1, r1, r0, lsl #20
	cmp r2, r1
	movle r0, #1
	movgt r0, #0
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02006100

	arm_func_start sub_02006164
sub_02006164: ; 0x02006164
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r7, [sp, #0x24]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x20]
	sub r5, r0, r7
	sub r4, r2, r1
	ldr r2, [sp, #0x34]
	ldr r6, [sp, #0x28]
	mov r0, r4
	mov r1, r5
	add r8, r6, r2
	ldr sb, [sp, #0x38]
	bl sub_02007254
	cmp r0, r8
	bgt _02006228
	cmp sb, #0
	beq _02006218
	smull r1, r0, r4, r6
	mov ip, r1, lsr #0xc
	orr ip, ip, r0, lsl #20
	mov r0, ip, asr #0x1f
	mov r4, r8, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r2, r8
	mov r3, r4
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	bl _ll_div
	smull r2, r1, r5, r6
	mov r5, r2, lsr #0xc
	orr r5, r5, r1, lsl #20
	mov r1, r5, asr #0x1f
	ldr r2, [sp, #0x20]
	mov r1, r1, lsl #0xc
	add r0, r2, r0
	str r0, [sb]
	mov r2, r8
	mov r3, r4
	orr r1, r1, r5, lsr #20
	mov r0, r5, lsl #0xc
	bl _ll_div
	add r0, r7, r0
	str r0, [sb, #4]
	arm_func_end sub_02006164
_02006218:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
_02006228:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02006238
sub_02006238: ; 0x02006238
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r4, [sp, #0x34]
	ldr r3, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	mov r1, #0
	str r4, [sp, #0xc]
	str r3, [sp, #0x10]
	add r0, sp, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0x14]
	sub r3, sp, #4
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r0, sp, #0x28
	ldr r3, [r3]
	ldr r5, [sp, #0x44]
	ldr r4, [sp, #0x40]
	ldmia r0, {r0, r1, r2}
	bl sub_02006164
	cmp r0, #0
	beq _0200633C
	ldr r3, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0xc]
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	add r1, r5, r5, lsr #31
	add r2, r4, r1, asr #1
	sub r1, r4, r1, asr #1
	mov r2, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r0, r0, lsl #0x10
	cmp r2, r1, lsr #16
	mov r1, r1, lsr #0x10
	mov r0, r0, lsr #0x10
	ble _020062FC
	cmp r1, r0
	cmple r0, r2
	bgt _0200633C
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02006238
_020062FC:
	cmp r2, r1
	bge _02006324
	cmp r1, r0
	cmpgt r0, r2
	bgt _0200633C
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_02006324:
	cmp r2, r0
	addeq sp, sp, #0x18
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
_0200633C:
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02006350
sub_02006350: ; 0x02006350
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r0, [sp, #0x54]
	ldr r4, [sp, #0x50]
	cmp r0, #0
	add r0, sp, #0x30
	bne _02006428
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r2, [sp]
	str r1, [sp, #4]
	ldmia r0, {r0, r1, r2, r3}
	bl sub_02006AE0
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #0x4c]
	str r1, [sp]
	add r1, sp, #0x30
	mov r5, r0
	str r2, [sp, #4]
	ldmia r1, {r0, r1, r2, r3}
	bl sub_02006AE0
	mul r0, r5, r0
	mov r0, r0, lsl #0x18
	movs r0, r0, asr #0x18
	addpl sp, sp, #0xc
	movpl r0, #0
	ldmplia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addpl sp, sp, #0x10
	bxpl lr
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
	str r2, [sp]
	add r0, sp, #0x40
	str r1, [sp, #4]
	ldmia r0, {r0, r1, r2, r3}
	bl sub_02006AE0
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	str r1, [sp]
	add r1, sp, #0x40
	mov r5, r0
	str r2, [sp, #4]
	ldmia r1, {r0, r1, r2, r3}
	bl sub_02006AE0
	mul r0, r5, r0
	mov r0, r0, lsl #0x18
	movs r0, r0, asr #0x18
	bmi _020064E4
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02006350
_02006428:
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r2, [sp]
	str r1, [sp, #4]
	ldmia r0, {r0, r1, r2, r3}
	bl sub_02006AE0
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #0x4c]
	str r1, [sp]
	add r1, sp, #0x30
	mov r5, r0
	str r2, [sp, #4]
	ldmia r1, {r0, r1, r2, r3}
	bl sub_02006AE0
	mul r0, r5, r0
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	cmp r0, #0
	addgt sp, sp, #0xc
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
	str r2, [sp]
	add r0, sp, #0x40
	str r1, [sp, #4]
	ldmia r0, {r0, r1, r2, r3}
	bl sub_02006AE0
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	str r1, [sp]
	add r1, sp, #0x40
	mov r5, r0
	str r2, [sp, #4]
	ldmia r1, {r0, r1, r2, r3}
	bl sub_02006AE0
	mul r0, r5, r0
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	cmp r0, #0
	addgt sp, sp, #0xc
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
_020064E4:
	cmp r4, #0
	beq _020065FC
	ldr r5, [sp, #0x34]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x30]
	ldr r1, [sp, #0x38]
	sub r8, r0, r5
	sub r2, r3, r1
	smull r1, r0, r2, r5
	smull r3, fp, r8, r3
	mov r5, r3, lsr #0xc
	str r0, [sp, #8]
	mov r3, r1, lsr #0xc
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x4c]
	ldr r6, [sp, #0x40]
	sub r7, r1, r0
	ldr r1, [sp, #0x48]
	smull sb, lr, r7, r6
	sub r1, r6, r1
	smull r0, r6, r1, r0
	mov ip, r0, lsr #0xc
	mov sb, sb, lsr #0xc
	smull r0, sl, r2, r7
	mov r0, r0, lsr #0xc
	orr sb, sb, lr, lsl #20
	orr ip, ip, r6, lsl #20
	add r6, sb, ip
	ldr sb, [sp, #8]
	orr r5, r5, fp, lsl #20
	orr r3, r3, sb, lsl #20
	add r3, r5, r3
	rsb r5, r3, #0
	smull r3, sb, r5, r1
	mov r3, r3, lsr #0xc
	orr r0, r0, sl, lsl #20
	orr r3, r3, sb, lsl #20
	smull sl, sb, r1, r8
	mov r1, sl, lsr #0xc
	orr r1, r1, sb, lsl #20
	sub sb, r0, r1
	rsb r6, r6, #0
	smull r1, r0, r6, r2
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r2, r3, r1
	mov r0, r2, asr #0x1f
	mov r1, r0, lsl #0xc
	mov sl, sb, asr #0x1f
	orr r1, r1, r2, lsr #20
	mov r0, r2, lsl #0xc
	mov r2, sb
	mov r3, sl
	bl _ll_div
	smull r2, r1, r7, r5
	smull r6, r3, r8, r6
	mov r5, r6, lsr #0xc
	mov r2, r2, lsr #0xc
	orr r5, r5, r3, lsl #20
	orr r2, r2, r1, lsl #20
	sub r5, r5, r2
	str r0, [r4]
	mov r0, r5, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r2, sb
	mov r3, sl
	orr r1, r1, r5, lsr #20
	mov r0, r5, lsl #0xc
	bl _ll_div
	str r0, [r4, #4]
_020065FC:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02006610
sub_02006610: ; 0x02006610
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x20]
	cmp r1, r2
	blt _02006668
	ldr r0, [sp, #0x30]
	cmp r1, r0
	ldrlt r0, [sp, #0x38]
	cmplt r1, r0
	blt _02006654
	ldr r0, [sp, #0x30]
	cmp r2, r0
	ldrgt r0, [sp, #0x38]
	cmpgt r2, r0
	ble _020066A8
	arm_func_end sub_02006610
_02006654:
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_02006668:
	ldr r0, [sp, #0x30]
	cmp r2, r0
	ldrlt r0, [sp, #0x38]
	cmplt r2, r0
	blt _02006694
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x30]
	cmp r1, r0
	ldrgt r0, [sp, #0x38]
	cmpgt r1, r0
	ble _020066A8
_02006694:
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_020066A8:
	ldr r3, [sp, #0x2c]
	ldr r1, [sp, #0x24]
	cmp r1, r3
	blt _020066F0
	ldr r2, [sp, #0x34]
	cmp r1, r2
	ldrlt r0, [sp, #0x3c]
	cmplt r1, r0
	blt _020066DC
	cmp r3, r2
	ldrgt r0, [sp, #0x3c]
	cmpgt r3, r0
	ble _02006728
_020066DC:
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_020066F0:
	ldr r2, [sp, #0x34]
	cmp r3, r2
	ldrlt r0, [sp, #0x3c]
	cmplt r3, r0
	blt _02006714
	cmp r1, r2
	ldrgt r0, [sp, #0x3c]
	cmpgt r1, r0
	ble _02006728
_02006714:
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_02006728:
	add r0, sp, #0x30
	mov ip, sp
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	ldr r1, [sp, #0x40]
	add r0, sp, #0x20
	str r1, [sp, #0x10]
	mov ip, #0
	ldmia r0, {r0, r1, r2, r3}
	str ip, [sp, #0x14]
	bl sub_02006350
	add sp, sp, #0x18
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02006764
sub_02006764: ; 0x02006764
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x80
	ldr r7, [sp, #0xa8]
	ldr r0, [sp, #0xb8]
	ldr r5, [sp, #0xac]
	sub r4, r0, r7
	ldr r8, [sp, #0xbc]
	ldr fp, [sp, #0xb0]
	sub r3, r8, r5
	sub r2, fp, r7
	ldr r6, [sp, #0xb4]
	ldr r0, [sp, #0xc8]
	sub r1, r6, r5
	cmp r0, #8
	movgt r0, #8
	str r7, [sp, #0x50]
	str r7, [sp, #0x40]
	str r5, [sp, #0x54]
	str r4, [sp, #0x48]
	str r4, [sp, #0x78]
	str r3, [sp, #0x4c]
	str r3, [sp, #0x7c]
	str r5, [sp, #0x44]
	str r2, [sp, #0x38]
	str r2, [sp, #0x70]
	str r1, [sp, #0x3c]
	str r1, [sp, #0x74]
	ldr sb, [sp, #0xc4]
	ldr r7, [sp, #0xc0]
	mov r4, #0
	cmp r0, #0
	mov r2, #0
	ble _02006800
	mov r1, #1
	arm_func_end sub_02006764
_020067F0:
	orr r4, r4, r1, lsl r2
	add r2, r2, #1
	cmp r2, r0
	blt _020067F0
_02006800:
	add r0, sp, #0x70
	add r1, sp, #0x78
	bl sub_020072C4
	cmp r0, #0
	bge _02006860
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl sub_02007254
	mvn r1, r4
	add r0, r0, r4
	and r0, r1, r0
	cmp r0, r7
	bge _02006ACC
	cmp sb, #0
	beq _0200684C
	ldr r1, [sp, #0xa8]
	ldr r0, [sp, #0xac]
	str r1, [sb]
	str r0, [sb, #4]
_0200684C:
	add sp, sp, #0x80
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_02006860:
	ldr sl, [sp, #0xb4]
	ldr r1, [sp, #0xb0]
	sub ip, r8, sl
	ldr r2, [sp, #0xb8]
	ldr r0, [sp, #0xa8]
	sub lr, r2, r1
	sub r3, r0, r1
	ldr r5, [sp, #0xac]
	add r0, sp, #0x70
	sub r2, r5, sl
	str r1, [sp]
	str r1, [sp, #0x30]
	str r1, [sp, #0x20]
	add r1, sp, #0x78
	str sl, [sp, #4]
	str sl, [sp, #0x34]
	str sl, [sp, #0x24]
	str lr, [sp, #0x28]
	str ip, [sp, #0x2c]
	str lr, [sp, #0x68]
	str ip, [sp, #0x6c]
	str lr, [sp, #0x78]
	str ip, [sp, #0x7c]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r3, [sp, #0x60]
	str r2, [sp, #0x64]
	str r3, [sp, #0x70]
	str r2, [sp, #0x74]
	bl sub_020072C4
	cmp r0, #0
	bge _0200692C
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl sub_02007254
	mvn r1, r4
	add r0, r0, r4
	and r0, r1, r0
	cmp r0, r7
	bge _02006ACC
	cmp sb, #0
	beq _02006918
	ldr r1, [sp, #0xb0]
	ldr r0, [sp, #0xb4]
	str r1, [sb]
	str r0, [sb, #4]
_02006918:
	add sp, sp, #0x80
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_0200692C:
	ldr r0, [sp, #0x70]
	cmp r0, #0
	bne _02006970
	ldr r1, [sp, #0xb8]
	ldr r0, [sp, #0xa8]
	subs r0, r1, r0
	rsbmi r0, r0, #0
	cmp r0, r7
	bge _02006ACC
	cmp sb, #0
	ldrne r0, [sp, #0xa8]
	add sp, sp, #0x80
	stmneia sb, {r0, r8}
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_02006970:
	ldr r1, [sp, #0x74]
	cmp r1, #0
	bne _020069AC
	subs r0, r8, r5
	rsbmi r0, r0, #0
	cmp r0, r7
	bge _02006ACC
	cmp sb, #0
	ldrne r0, [sp, #0xb8]
	add sp, sp, #0x80
	stmneia sb, {r0, r5}
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020069AC:
	ldr r3, [sp, #0x78]
	ldr r2, [sp, #0x7c]
	smull r8, r5, r1, r3
	smull r3, r2, r0, r2
	mov r8, r8, lsr #0xc
	mov r3, r3, lsr #0xc
	orr r8, r8, r5, lsl #20
	orr r3, r3, r2, lsl #20
	subs r5, r8, r3
	rsbmi r5, r5, #0
	bl sub_02007254
	mov r2, r0
	mov r0, r5, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r5, lsr #20
	mov r0, r5, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	mvn r1, r4
	add r0, r0, r4
	and r4, r1, r0
	cmp r4, r7
	bge _02006ACC
	cmp sb, #0
	beq _02006AB8
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl sub_02007254
	smull r3, r2, r0, r0
	smull r1, r0, r4, r4
	mov r3, r3, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	sub r0, r3, r1
	bl FX_Sqrt
	mov r4, r0
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	bl sub_02007254
	mov r2, r0
	mov r0, r4, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r4, lsr #20
	mov r0, r4, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	ldr r2, [sp, #0x70]
	ldr r1, [sp, #0x74]
	smull r4, r3, r2, r0
	smull r2, r0, r1, r0
	mov r4, r4, lsr #0xc
	orr r4, r4, r3, lsl #20
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r1, fp, r4
	add r0, r6, r2
	str r4, [sp, #0x70]
	str r4, [sp, #0x10]
	str r2, [sp, #0x74]
	str r2, [sp, #0x14]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x58]
	str r1, [sb]
	str r0, [sb, #4]
	str r0, [sp, #0x5c]
_02006AB8:
	add sp, sp, #0x80
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_02006ACC:
	mov r0, #0
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02006AE0
sub_02006AE0: ; 0x02006AE0
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	ldr r4, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	ldr ip, [sp, #0x10]
	ldr r3, [sp, #8]
	sub r2, r2, r4
	sub ip, ip, r3
	smull r2, lr, ip, r2
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov ip, r2, lsr #0xc
	sub r1, r1, r4
	sub r0, r0, r3
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr ip, ip, lr, lsl #20
	orr r1, r1, r0, lsl #20
	subs r0, ip, r1
	movmi r0, #1
	ldmmiia sp!, {r4, lr}
	addmi sp, sp, #0x10
	bxmi lr
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	rsb r0, r0, #0
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02006AE0

	arm_func_start sub_02006B60
sub_02006B60: ; 0x02006B60
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r1, [sp, #0x28]
	ldr r3, [sp, #0x20]
	ldr r6, [sp, #0x38]
	sub r7, r3, r1, asr #1
	ldr r3, [sp, #0x30]
	ldr r5, [sp, #0x3c]
	sub ip, r3, r6, asr #1
	ldr r3, [sp, #0x34]
	add r8, r7, r1
	sub lr, r3, r5, asr #1
	cmp r7, ip
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	add r3, ip, r6
	movge r7, ip
	cmp r8, r3
	movle r8, r3
	sub r2, r2, r0, asr #1
	sub r3, r8, r7
	add r1, r1, r6
	add sb, r2, r0
	cmp r2, lr
	movge r2, lr
	add r4, lr, r5
	cmp r3, r1
	bge _02006BF4
	cmp sb, r4
	movle sb, r4
	sub r1, sb, r2
	add r0, r0, r5
	cmp r1, r0
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	addlt sp, sp, #0x10
	bxlt lr
	arm_func_end sub_02006B60
_02006BF4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02006C04
sub_02006C04: ; 0x02006C04
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x70
	mov r1, #1
	add r0, sp, #0x98
	str r1, [sp, #8]
	sub r4, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, sp, #0x88
	ldr r5, [sp, #0xa8]
	ldmia r4, {r2, r3}
	ldmia r0, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	beq _02006C70
	cmp r5, #0
	beq _02006C5C
	ldr r1, [sp, #0x88]
	ldr r0, [sp, #0x8c]
	str r1, [r5]
	str r0, [r5, #4]
	arm_func_end sub_02006C04
_02006C5C:
	add sp, sp, #0x70
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
_02006C70:
	add lr, sp, #0x88
	add r4, sp, #0x20
	ldmia lr, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r1, [sp, #0xa0]
	ldr r0, [sp, #0x98]
	ldr r2, [sp, #0xa4]
	sub ip, r0, r1, asr #1
	add r7, r0, r1, asr #1
	ldr r1, [sp, #0x9c]
	add r0, sp, #0x60
	sub r8, r1, r2, asr #1
	add r6, r1, r2, asr #1
	mov r4, sp
	str ip, [sp, #0x60]
	str r8, [sp, #0x64]
	str r7, [sp, #0x68]
	str r8, [sp, #0x6c]
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, sp, #0x18
	str r0, [sp, #0x10]
	mov r4, #1
	str r4, [sp, #0x14]
	ldmia lr, {r0, r1, r2, r3}
	str ip, [sp, #0x50]
	str r6, [sp, #0x54]
	str r7, [sp, #0x58]
	str r6, [sp, #0x5c]
	str ip, [sp, #0x40]
	str ip, [sp, #0x48]
	str r8, [sp, #0x44]
	str r8, [sp, #0x34]
	str r6, [sp, #0x4c]
	str r6, [sp, #0x3c]
	str r7, [sp, #0x30]
	str r7, [sp, #0x38]
	mov r4, #0
	bl sub_02006350
	cmp r0, #0
	beq _02006D28
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	mov r4, #1
_02006D28:
	add r0, sp, #0x50
	mov ip, sp
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	add r0, sp, #0x18
	str r0, [sp, #0x10]
	mov r1, #1
	add r0, sp, #0x20
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2, r3}
	bl sub_02006350
	cmp r0, #0
	beq _02006D70
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	mov r4, #1
_02006D70:
	add r0, sp, #0x40
	mov ip, sp
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	add r0, sp, #0x18
	str r0, [sp, #0x10]
	mov r1, #1
	add r0, sp, #0x20
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2, r3}
	bl sub_02006350
	cmp r0, #0
	beq _02006DB8
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	mov r4, #1
_02006DB8:
	add r0, sp, #0x30
	mov ip, sp
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	add r0, sp, #0x18
	str r0, [sp, #0x10]
	mov r1, #1
	add r0, sp, #0x20
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2, r3}
	bl sub_02006350
	cmp r0, #0
	beq _02006E00
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	mov r4, #1
_02006E00:
	cmp r4, #0
	cmpne r5, #0
	beq _02006E1C
	ldr r0, [sp, #0x28]
	str r0, [r5]
	ldr r0, [sp, #0x2c]
	str r0, [r5, #4]
_02006E1C:
	mov r0, r4
	add sp, sp, #0x70
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02006E30
sub_02006E30: ; 0x02006E30
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x44]
	ldr r3, [sp, #0x4c]
	subs r5, r1, r0
	ldr r4, [sp, #0x40]
	rsbmi r5, r5, #0
	add r0, r4, r3, asr #1
	ldr r2, [sp, #0x48]
	ldr r1, [sp, #0x50]
	cmp r5, r0
	bge _02006E80
	ldr r0, [sp, #0x3c]
	add ip, r4, r1, asr #1
	subs r5, r0, r2
	rsbmi r5, r5, #0
	cmp r5, ip
	blt _02006E94
	arm_func_end sub_02006E30
_02006E80:
	add sp, sp, #0x24
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
_02006E94:
	ldr lr, [sp, #0x44]
	ldr ip, [sp, #0x38]
	sub r6, lr, r3, asr #1
	mov r4, #0
	cmp ip, lr
	add r3, lr, r3, asr #1
	mov r5, r4
	sub lr, r2, r1, asr #1
	add r7, r2, r1, asr #1
	sublt r1, r6, ip
	movlt r4, #1
	subge r1, ip, r3
	cmp r0, r2
	sublt r0, lr, r0
	subge r0, r0, r7
	movlt r5, #1
	cmp r0, #0
	cmpge r1, r0
	bge _02006F18
	cmp r1, #0
	blt _02006F18
	cmp r4, #0
	beq _02006F04
	str r6, [sp, #0x1c]
	str r6, [sp, #0x14]
	str lr, [sp, #0x18]
	str r7, [sp, #0x20]
	b _02006F44
_02006F04:
	str r3, [sp, #0x1c]
	str r3, [sp, #0x14]
	str lr, [sp, #0x18]
	str r7, [sp, #0x20]
	b _02006F44
_02006F18:
	cmp r5, #0
	beq _02006F34
	str r6, [sp, #0x14]
	str r3, [sp, #0x1c]
	str lr, [sp, #0x20]
	str lr, [sp, #0x18]
	b _02006F44
_02006F34:
	str r6, [sp, #0x14]
	str r3, [sp, #0x1c]
	str r7, [sp, #0x20]
	str r7, [sp, #0x18]
_02006F44:
	add r0, sp, #0x38
	mov r3, sp
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [sp, #0x54]
	add r0, sp, #0x14
	str r1, [sp, #0xc]
	ldr ip, [sp, #0x58]
	ldmia r0, {r0, r1, r2, r3}
	str ip, [sp, #0x10]
	bl sub_02006764
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02006F80
sub_02006F80: ; 0x02006F80
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	ldr r5, [sp, #0x24]
	subs r2, r1, r0
	ldr r0, [sp, #0x18]
	rsbmi r2, r2, #0
	add r1, r0, r5, asr #1
	ldr lr, [sp, #0x20]
	ldr ip, [sp, #0x14]
	ldr r4, [sp, #0x28]
	cmp r2, r1
	bge _02006FCC
	subs r2, ip, lr
	rsbmi r2, r2, #0
	add r1, r0, r4, asr #1
	cmp r2, r1
	blt _02006FDC
	arm_func_end sub_02006F80
_02006FCC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_02006FDC:
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	sub r3, r2, r5, asr #1
	cmp r1, r3
	blt _02006FFC
	add r3, r2, r5, asr #1
	cmp r1, r3
	movle r3, r1
_02006FFC:
	sub r2, lr, r4, asr #1
	cmp ip, r2
	blt _02007014
	add r2, lr, r4, asr #1
	cmp ip, r2
	movle r2, ip
_02007014:
	ldr r1, [sp, #0x10]
	subs r1, r1, r3
	rsbmi r1, r1, #0
	subs r2, ip, r2
	rsbmi r2, r2, #0
	smull r4, lr, r1, r1
	smull ip, r3, r2, r2
	smull r2, r1, r0, r0
	mov r4, r4, lsr #0xc
	mov ip, ip, lsr #0xc
	mov r0, r2, lsr #0xc
	orr r4, r4, lr, lsl #20
	orr ip, ip, r3, lsl #20
	add r2, r4, ip
	orr r0, r0, r1, lsl #20
	cmp r2, r0
	movgt r0, #0
	movle r0, #1
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02007068
sub_02007068: ; 0x02007068
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r2
	mov r1, r3
	bl sub_02007210
	rsb r1, r0, #0x1000
	smull r3, r2, r5, r1
	smull r1, r0, r4, r0
	mov r3, r3, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02007068

	arm_func_start sub_020070A4
sub_020070A4: ; 0x020070A4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r1
	mov r6, r0
	ldr r1, [sp, #0x18]
	mov r0, r3
	mov r4, r2
	bl sub_02007210
	mov r1, r0, asr #0x1f
	mov ip, r1, lsl #0xd
	mov lr, r0, lsl #0xd
	rsb r1, r0, #0x1000
	smull r8, r7, r1, r1
	smull r3, r2, r0, r0
	mov r8, r8, lsr #0xc
	orr r8, r8, r7, lsl #20
	smull r8, r7, r6, r8
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r3, r2, r4, r3
	mov r4, r8, lsr #0xc
	orr r4, r4, r7, lsl #20
	mov r3, r3, lsr #0xc
	orr ip, ip, r0, lsr #19
	add r6, r4, #0
	mov r0, lr, lsr #0xc
	orr r0, r0, ip, lsl #20
	smull r4, r0, r1, r0
	mov r1, r4, lsr #0xc
	orr r1, r1, r0, lsl #20
	smull r1, r0, r5, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r6, r1
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020070A4

	arm_func_start sub_02007134
sub_02007134: ; 0x02007134
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, r1
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	mov r5, r2
	mov r4, r3
	bl sub_02007210
	rsb r1, r0, #0x1000
	smull lr, ip, r1, r1
	smull r3, r2, r0, r0
	mov r8, lr, lsr #0xc
	orr r8, r8, ip, lsl #20
	mov lr, r3, lsr #0xc
	orr lr, lr, r2, lsl #20
	smull r2, r3, r0, r8
	mov r2, r2, lsr #0xc
	orr r2, r2, r3, lsl #20
	smull ip, r3, r1, r8
	mov ip, ip, lsr #0xc
	orr ip, ip, r3, lsl #20
	smull ip, r3, r7, ip
	mov r7, ip, lsr #0xc
	orr r7, r7, r3, lsl #20
	add r3, r7, #0
	smull ip, r7, r1, lr
	mov r1, ip, lsr #0xc
	orr r1, r1, r7, lsl #20
	smull ip, r7, r0, lr
	mov r0, ip, lsr #0xc
	orr r0, r0, r7, lsl #20
	smull r7, r0, r4, r0
	mov r4, r7, lsr #0xc
	orr r4, r4, r0, lsl #20
	mov r7, r2, asr #0x1f
	mov r0, #0x3000
	umull lr, ip, r2, r0
	mla ip, r7, r0, ip
	mov r2, lr, lsr #0xc
	orr r2, r2, ip, lsl #20
	smull r7, r2, r6, r2
	mov r6, r7, lsr #0xc
	orr r6, r6, r2, lsl #20
	add r7, r3, r6
	mov r2, r1, asr #0x1f
	umull r6, r3, r1, r0
	mla r3, r2, r0, r3
	mov r0, r6, lsr #0xc
	orr r0, r0, r3, lsl #20
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r7, r1
	add r0, r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_02007134

	arm_func_start sub_02007210
sub_02007210: ; 0x02007210
	stmdb sp!, {r3, lr}
	cmp r0, #0
	mov r2, r1
	movle r0, #0
	ldmleia sp!, {r3, pc}
	cmp r0, r2
	movge r0, #0x1000
	ldmgeia sp!, {r3, pc}
	mov r3, r0, lsl #0xc
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r2, r2, lsl #0xc
	orr r1, r1, r3, lsr #20
	mov r0, r3, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	ldmia sp!, {r3, pc}
	arm_func_end sub_02007210

	arm_func_start sub_02007254
sub_02007254: ; 0x02007254
	stmdb sp!, {r4, lr}
	movs r4, r0
	rsbmi r4, r4, #0
	cmp r1, #0
	mov r0, r4
	rsblt r1, r1, #0
	cmp r0, r1
	movlt r4, r1
	movlt r1, r0
	smull r2, r0, r1, r1
	mov r3, r2, lsr #0xc
	orr r3, r3, r0, lsl #20
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r2, r4
	orr r1, r1, r3, lsr #20
	mov r0, r3, lsl #0xc
	mov r3, r4, asr #0x1f
	bl _ll_div
	ldr r1, _020072C0 ; =0x000006DD
	mov r2, r0, asr #0x1f
	umull ip, r3, r0, r1
	mla r3, r2, r1, r3
	mov r0, ip, lsr #0xc
	orr r0, r0, r3, lsl #20
	add r0, r4, r0
	ldmia sp!, {r4, pc}
	.align 2, 0
_020072C0: .word 0x000006DD
	arm_func_end sub_02007254

	arm_func_start sub_020072C4
sub_020072C4: ; 0x020072C4
	stmdb sp!, {r3, lr}
	ldr ip, [r0]
	ldr r3, [r1]
	ldr r2, [r0, #4]
	ldr r0, [r1, #4]
	smull lr, r3, ip, r3
	smull r1, r0, r2, r0
	mov r2, lr, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r2, r2, r3, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	ldmia sp!, {r3, pc}
	arm_func_end sub_020072C4

	arm_func_start sub_020072F8
sub_020072F8: ; 0x020072F8
	stmdb sp!, {r3, lr}
	ldr ip, [r0]
	ldr r3, [r1, #4]
	ldr r2, [r0, #4]
	ldr r0, [r1]
	smull lr, r3, ip, r3
	smull r1, r0, r2, r0
	mov r2, lr, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r2, r2, r3, lsl #20
	orr r1, r1, r0, lsl #20
	sub r0, r2, r1
	ldmia sp!, {r3, pc}
	arm_func_end sub_020072F8

	arm_func_start sub_0200732C
sub_0200732C: ; 0x0200732C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x38
	mov r6, r1
	ldr r5, [r2]
	ldr r4, [r2, #4]
	ldr r1, [r6, #4]
	ldr r3, [r6]
	sub r1, r1, r4
	mov r7, r0
	subs r0, r3, r5
	str r5, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	bne _020073A8
	ldmia r2, {r0, r2}
	str r0, [sp, #0x28]
	str r2, [sp, #0x2c]
	cmp r1, #0
	ble _02007394
	ldr r0, [r6, #8]
	add r0, r2, r0
	str r0, [sp, #0x2c]
	b _020074BC
	arm_func_end sub_0200732C
_02007394:
	bge _020074BC
	ldr r0, [r6, #8]
	sub r0, r2, r0
	str r0, [sp, #0x2c]
	b _020074BC
_020073A8:
	cmp r1, #0
	bne _020073EC
	ldr r3, [r2]
	ldr r1, [r2, #4]
	str r3, [sp, #0x28]
	str r1, [sp, #0x2c]
	cmp r0, #0
	ble _020073D8
	ldr r0, [r6, #8]
	add r0, r3, r0
	str r0, [sp, #0x28]
	b _020074BC
_020073D8:
	bge _020074BC
	ldr r0, [r6, #8]
	sub r0, r3, r0
	str r0, [sp, #0x28]
	b _020074BC
_020073EC:
	bl sub_02007254
	ldr r1, [r6, #8]
	mov r5, r0
	cmp r1, r5
	ble _020074AC
	ldr r0, [sp, #0x30]
	sub r3, r1, r5
	smull r2, r1, r0, r3
	ldr r0, [sp, #0x34]
	mov ip, r2, lsr #0xc
	orr ip, ip, r1, lsl #20
	smull r2, r1, r0, r3
	mov lr, r2, lsr #0xc
	mov r0, ip, asr #0x1f
	orr lr, lr, r1, lsl #20
	mov r4, r5, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r2, r5
	mov r3, r4
	str lr, [sp, #0x34]
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	str ip, [sp, #0x30]
	bl _ll_div
	ldr ip, [sp, #0x34]
	str r0, [sp, #0x30]
	mov r0, ip, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r2, r5
	mov r3, r4
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	bl _ll_div
	ldr r3, [sp, #0x30]
	ldr r2, [r6]
	ldr r1, [r6, #4]
	add r2, r2, r3
	add r1, r1, r0
	str r0, [sp, #0x34]
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	str r2, [sp]
	str r1, [sp, #4]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	b _020074BC
_020074AC:
	ldr r1, [r6]
	ldr r0, [r6, #4]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
_020074BC:
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	str r1, [r7]
	str r0, [r7, #4]
	add sp, sp, #0x38
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_020074D4
sub_020074D4: ; 0x020074D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0200755C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020074D4

	arm_func_start sub_020074E8
sub_020074E8: ; 0x020074E8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_0200755C
	mov ip, #0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp]
	bl sub_02007590
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020074E8

	arm_func_start sub_02007524
sub_02007524: ; 0x02007524
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_0200755C
	mov r0, r5
	mov r1, r4
	bl sub_0200763C
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02007524

	arm_func_start sub_02007548
sub_02007548: ; 0x02007548
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020076B0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007548

	arm_func_start sub_0200755C
sub_0200755C: ; 0x0200755C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4]
	add r0, r4, #8
	str r1, [r4, #4]
	bl NNS_G2dInitImageProxy
	mov r0, #0
	strb r0, [r4, #0x30]
	strh r0, [r4, #0x32]
	strh r0, [r4, #0x34]
	str r0, [r4, #0x38]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0200755C

	arm_func_start sub_02007590
sub_02007590: ; 0x02007590
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl sub_020076B0
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _020075CC
	ldr r2, [sp, #0x18]
	mov r1, r7
	mov r3, r6
	str r5, [sp]
	bl sub_020032CC
	arm_func_end sub_02007590
_020075CC:
	str r0, [r4]
	add r0, r4, #8
	bl NNS_G2dInitImageProxy
	mov r2, #0
	strb r2, [r4, #0x30]
	ldr r1, [r4]
	mov r0, #1
	ldr r1, [r1, #0xb8]
	str r1, [r4, #4]
	ldr r1, [r1, #4]
	str r1, [r4, #0x1c]
	str r2, [r4, #0x20]
	str r0, [r4, #0x24]
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	str r0, [r4, #0x28]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	str r0, [r4, #0x38]
	ldr r0, [r4, #4]
	ldrh r0, [r0, #2]
	mov r0, r0, lsl #3
	strh r0, [r4, #0x32]
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	mov r0, r0, lsl #3
	strh r0, [r4, #0x34]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0200763C
sub_0200763C: ; 0x0200763C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl sub_020076B0
	add r0, r4, #8
	bl NNS_G2dInitImageProxy
	mov r2, #0
	strb r2, [r4, #0x30]
	str r5, [r4, #4]
	ldr r1, [r5, #4]
	mov r0, #1
	str r1, [r4, #0x1c]
	str r2, [r4, #0x20]
	str r0, [r4, #0x24]
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	str r0, [r4, #0x28]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	str r0, [r4, #0x38]
	ldr r0, [r4, #4]
	ldrh r0, [r0, #2]
	mov r0, r0, lsl #3
	strh r0, [r4, #0x32]
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	mov r0, r0, lsl #3
	strh r0, [r4, #0x34]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200763C

	arm_func_start sub_020076B0
sub_020076B0: ; 0x020076B0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _020076DC
	beq _020076D4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_020076B0
_020076D4:
	mov r0, #0
	str r0, [r4]
_020076DC:
	mov r0, #0
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}

	arm_func_start sub_020076E8
sub_020076E8: ; 0x020076E8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	add r3, r5, #8
	mov r2, #0
	mov r4, r1
	bl NNS_G2dLoadImage2DMapping
	str r4, [r5, #0x2c]
	mov r0, #1
	strb r0, [r5, #0x30]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020076E8

	arm_func_start sub_02007714
sub_02007714: ; 0x02007714
	mov r2, r0
	mov r0, #0
	strb r0, [r2, #0x30]
	str r1, [r2, #0x2c]
	ldr r0, _02007738 ; =_0208F304
	ldr ip, _0200773C ; =_ZN5CGame12sub_020100E4EPFvvEm
	ldr r1, _02007740 ; =sub_02007744
	ldr r0, [r0]
	bx ip
	.align 2, 0
_02007738: .word MAIN_BSS_0208F304
_0200773C: .word _ZN5CGame12sub_020100E4EPFvvEm
_02007740: .word sub_02007744
	arm_func_end sub_02007714

	arm_func_start sub_02007744
sub_02007744: ; 0x02007744
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x2c]
	add r3, r4, #8
	mov r2, #0
	bl NNS_G2dLoadImage2DMapping
	mov r0, #1
	strb r0, [r4, #0x30]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007744

	arm_func_start sub_02007770
sub_02007770: ; 0x02007770
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007798
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007770

	arm_func_start sub_02007784
sub_02007784: ; 0x02007784
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020077B4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007784

	arm_func_start sub_02007798
sub_02007798: ; 0x02007798
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #8]
	bx lr
	arm_func_end sub_02007798

	arm_func_start sub_020077B4
sub_020077B4: ; 0x020077B4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007848
	mov r0, r4
	bl sub_02007854
	ldmia sp!, {r4, pc}
	arm_func_end sub_020077B4

	arm_func_start sub_020077CC
sub_020077CC: ; 0x020077CC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02007848
	str r4, [r5]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020077CC

	arm_func_start sub_020077E4
sub_020077E4: ; 0x020077E4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	bl sub_02007854
	mov r4, #0
	mov r5, r4
	str r6, [r7, #4]
	arm_func_end sub_020077E4
_02007800:
	ldr r0, [r6, #0xb8]
	mov r1, r5
	bl NNS_G2dGetCellDataByIdx
	movs r1, r0
	beq _02007834
	mov r0, r7
	bl sub_02007880
	cmp r4, r0
	movlo r4, r0
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	b _02007800
_02007834:
	mov r0, r4, lsl #5
	str r0, [r7, #0x10]
	bl _Z10Heap_Allocm
	str r0, [r7, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02007848
sub_02007848: ; 0x02007848
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end sub_02007848

	arm_func_start sub_02007854
sub_02007854: ; 0x02007854
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02007874
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x14]
	arm_func_end sub_02007854
_02007874:
	mov r0, #0
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02007880
sub_02007880: ; 0x02007880
	stmdb sp!, {r3, r4, r5, lr}
	ldrh r3, [r1]
	mov r0, #0
	mov r2, r0
	cmp r3, #0
	ldr r1, [r1, #4]
	ldmleia sp!, {r3, r4, r5, pc}
	ldr r4, _020078E0 ; =DAT_02084348
	arm_func_end sub_02007880
_020078A0:
	ldrh r5, [r1]
	ldrh ip, [r1, #2]
	add r2, r2, #1
	and r5, r5, #0xc000
	mov r5, r5, asr #0xe
	and ip, ip, #0xc000
	and r5, r5, #0xff
	mov ip, ip, asr #0xe
	and lr, ip, #0xff
	add ip, r4, r5, lsl #4
	ldr ip, [ip, lr, lsl #2]
	cmp r2, r3
	add r0, r0, ip
	add r1, r1, #6
	blt _020078A0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020078E0: .word DAT_02084348

	arm_func_start sub_020078E4
sub_020078E4: ; 0x020078E4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov sb, r0
	ldr r0, [sb, #4]
	mov r8, r1
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, [r0, #0xb8]
	bl NNS_G2dGetCellDataByIdx
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldrh r0, [r4]
	mov r5, #0
	mov r6, r5
	cmp r0, #0
	ldr r7, [r4, #4]
	ble _02007998
	ldr sl, _020079B4 ; =0x000003FF
	arm_func_end sub_020078E4
_0200793C:
	ldrh r1, [r7, #4]
	mov r0, sb
	and r1, r1, sl
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp]
	ldrh r3, [r7]
	ldrh r2, [r7, #2]
	ldr r1, [sb, #0x14]
	and r3, r3, #0xc000
	and r2, r2, #0xc000
	mov ip, r3, asr #0xe
	mov r3, r2, asr #0xe
	add r1, r1, r5
	and r2, ip, #0xff
	and r3, r3, #0xff
	bl sub_020079B8
	ldrh r1, [r4]
	add r6, r6, #1
	add r5, r5, r0
	cmp r6, r1
	add r7, r7, #6
	blt _0200793C
_02007998:
	ldr r0, [sb, #0x14]
	ldr r1, [sb, #0x10]
	bl DC_FlushRange
	mov r0, r5
	strh r8, [sb, #0xc]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_020079B4: .word 0x000003FF

	arm_func_start sub_020079B8
sub_020079B8: ; 0x020079B8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldrh r5, [sp, #0x28]
	ldr r4, [r0]
	str r0, [sp]
	mov r0, r5, asr #4
	add r0, r5, r0, lsr #27
	mov r8, r0, asr #5
	ldrh r7, [r4, #0x32]
	ldr r6, _02007A8C ; =DAT_02084308
	ldr r0, [r4, #4]
	mul fp, r8, r7
	add sb, r6, r2, lsl #4
	ldr r4, _02007A90 ; =DAT_02084388
	mov r6, r5, lsr #0x1f
	rsb r5, r6, r5, lsl #27
	add r2, r4, r2, lsl #4
	ldr r4, [sb, r3, lsl #2]
	ldr r3, [r2, r3, lsl #2]
	mov r2, r4, lsl #3
	mov r4, #0
	ldr r8, [r0, #0x14]
	add r5, r6, r5, ror #27
	add r5, r8, r5, lsl #2
	add r6, r5, fp, lsl #2
	mov sl, r1
	mov r7, r4
	mov sb, r2, lsr #1
	movs fp, r3, lsl #3
	ldr r5, [r0, #0x10]
	beq _02007A84
	arm_func_end sub_020079B8
_02007A30:
	sub r0, r6, r8
	cmp r0, r5
	bhs _02007A50
	mov r0, r6
	mov r1, sl
	mov r2, sb
	bl MI_CpuCopy8
	b _02007A60
_02007A50:
	mov r0, sl
	mov r1, #0
	mov r2, sb
	bl MI_CpuFill8
_02007A60:
	ldr r0, [sp]
	add r7, r7, #1
	ldr r0, [r0]
	cmp r7, fp
	ldrh r0, [r0, #0x32]
	add sl, sl, sb
	add r4, r4, sb
	add r6, r6, r0, asr #1
	blo _02007A30
_02007A84:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02007A8C: .word DAT_02084308
_02007A90: .word DAT_02084388

	arm_func_start sub_02007A94
sub_02007A94: ; 0x02007A94
	ldr r2, [r0, #8]
	str r1, [r0, #8]
	mov r0, r2
	bx lr
	arm_func_end sub_02007A94

	arm_func_start sub_02007AA4
sub_02007AA4: ; 0x02007AA4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	strb r1, [r4, #0x20]
	bl sub_02007B3C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007AA4

	arm_func_start sub_02007AC0
sub_02007AC0: ; 0x02007AC0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov ip, #0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	strb ip, [r7, #0x20]
	bl sub_02007B3C
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_02007B60
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_02007AC0

	arm_func_start sub_02007AFC
sub_02007AFC: ; 0x02007AFC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r2, #0
	mov r4, r1
	strb r2, [r5, #0x20]
	bl sub_02007B3C
	mov r0, r5
	mov r1, r4
	bl sub_02007BAC
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02007AFC

	arm_func_start sub_02007B28
sub_02007B28: ; 0x02007B28
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007BC4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007B28

	arm_func_start sub_02007B3C
sub_02007B3C: ; 0x02007B3C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	add r0, r4, #8
	str r1, [r4]
	bl NNS_G2dInitImagePaletteProxy
	mov r0, #0
	strb r0, [r4, #0x20]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007B3C

	arm_func_start sub_02007B60
sub_02007B60: ; 0x02007B60
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_02007BC4
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02007B9C
	mov r1, r6
	mov r3, r5
	mov r2, #0
	str r4, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
	arm_func_end sub_02007B60
_02007B9C:
	str r0, [r7]
	ldr r0, [r0, #0xb8]
	str r0, [r7, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02007BAC
sub_02007BAC: ; 0x02007BAC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02007BC4
	str r4, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02007BAC

	arm_func_start sub_02007BC4
sub_02007BC4: ; 0x02007BC4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _02007BF0
	beq _02007BE8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_02007BC4
_02007BE8:
	mov r0, #0
	str r0, [r4]
_02007BF0:
	mov r0, #0
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02007BFC
sub_02007BFC: ; 0x02007BFC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #8
	mov r4, r1
	bl NNS_G2dInitImagePaletteProxy
	ldr r0, [r5, #4]
	mov r1, r4
	add r3, r5, #8
	mov r2, #0
	bl NNS_G2dLoadPalette
	str r4, [r5, #0x1c]
	mov r0, #1
	strb r0, [r5, #0x20]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02007BFC

	arm_func_start sub_02007C34
sub_02007C34: ; 0x02007C34
	mov r2, r0
	str r1, [r2, #0x1c]
	mov r1, #0
	strb r1, [r2, #0x20]
	ldr r0, _02007C58 ; =_0208F304
	ldr ip, _02007C5C ; =_ZN5CGame12sub_020100E4EPFvvEm
	ldr r0, [r0]
	ldr r1, _02007C60 ; =sub_02007C64
	bx ip
	.align 2, 0
_02007C58: .word MAIN_BSS_0208F304
_02007C5C: .word _ZN5CGame12sub_020100E4EPFvvEm
_02007C60: .word sub_02007C64
	arm_func_end sub_02007C34

	arm_func_start sub_02007C64
sub_02007C64: ; 0x02007C64
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #8
	bl NNS_G2dInitImagePaletteProxy
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x1c]
	add r3, r4, #8
	mov r2, #0
	bl NNS_G2dLoadPalette
	mov r0, #1
	strb r0, [r4, #0x20]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007C64

	arm_func_start _ZN6CSceneC2Ev
_ZN6CSceneC2Ev: ; 0x02007C98
	ldr r1, _02007CA4 ; =PTR_LAB_0208a814
	str r1, [r0]
	bx lr
	.align 2, 0
_02007CA4: .word PTR_LAB_0208a814
	arm_func_end _ZN6CSceneC2Ev

    arm_func_start sub_02007CA8
sub_02007CA8: ; 0x02007CA8
    bx lr
    arm_func_end sub_02007CA8

	arm_func_start sub_02007CAC
sub_02007CAC: ; 0x02007CAC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007CAC

	arm_func_start sub_02007CC0
sub_02007CC0: ; 0x02007CC0
	bx lr
	arm_func_end sub_02007CC0

	arm_func_start sub_02007CC4
sub_02007CC4: ; 0x02007CC4
	stmdb sp!, {r3, lr}
	bl sub_0201001C
	bl sub_02010124
	ldmia sp!, {r3, pc}
	arm_func_end sub_02007CC4

	arm_func_start sub_02007CD4
sub_02007CD4: ; 0x02007CD4
	ldr ip, _02007CDC ; =_Z12sub_02001210v
	bx ip
	.align 2, 0
_02007CDC: .word _Z12sub_02001210v
	arm_func_end sub_02007CD4

	arm_func_start sub_02007CE0
sub_02007CE0: ; 0x02007CE0
	stmdb sp!, {r3, lr}
	bl sub_02007D78
	bl sub_02007D98
	ldmia sp!, {r3, pc}
	arm_func_end sub_02007CE0

	arm_func_start sub_02007CF0
sub_02007CF0: ; 0x02007CF0
	stmdb sp!, {r3, lr}
	ldr r1, _02007D28 ; =0x0400000E
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0x700
	strh r0, [r1]
	bl sub_0201001C
	mov r3, #0
	str r3, [sp]
	ldr r0, [r0, #0xc24]
	mov r1, #3
	mov r2, #0x2000
	bl sub_02002434
	ldmia sp!, {r3, pc}
	.align 2, 0
_02007D28: .word 0x0400000E
	arm_func_end sub_02007CF0

	arm_func_start sub_02007D2C
sub_02007D2C: ; 0x02007D2C
	stmdb sp!, {r3, lr}
	ldr r1, _02007D64 ; =0x0400100E
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0xf00
	strh r0, [r1]
	bl sub_0201001C
	mov r3, #0
	str r3, [sp]
	ldr r0, [r0, #0xc28]
	mov r1, #7
	mov r2, #0x6000
	bl sub_02002434
	ldmia sp!, {r3, pc}
	.align 2, 0
_02007D64: .word 0x0400100E
	arm_func_end sub_02007D2C

	arm_func_start sub_02007D68
sub_02007D68: ; 0x02007D68
	stmdb sp!, {r3, lr}
	bl sub_02007CF0
	bl sub_02007D2C
	ldmia sp!, {r3, pc}
	arm_func_end sub_02007D68

	arm_func_start sub_02007D78
sub_02007D78: ; 0x02007D78
	stmdb sp!, {r4, lr}
	bl sub_0201001C
	mov r4, r0
	ldr r0, [r4, #0xc24]
	bl sub_020027E8
	ldr r0, [r4, #0xc28]
	bl sub_020027E8
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007D78

	arm_func_start sub_02007D98
sub_02007D98: ; 0x02007D98
	stmdb sp!, {r4, lr}
	bl sub_0201001C
	mov r4, r0
	add r0, r4, #0x24
	mov r1, #0x400
	bl DC_FlushRange
	add r0, r4, #0x24
	mov r1, #0
	mov r2, #0x400
	bl GX_LoadOAM
	add r4, r4, #0x24
	add r0, r4, #0x400
	mov r1, #0x400
	bl DC_FlushRange
	add r0, r4, #0x400
	mov r1, #0
	mov r2, #0x400
	bl GXS_LoadOAM
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007D98

	arm_func_start sub_02007DE4
sub_02007DE4: ; 0x02007DE4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0xc
	bx lr
	arm_func_end sub_02007DE4

	arm_func_start sub_02007DF0
sub_02007DF0: ; 0x02007DF0
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02007F90
_02007DFC: ; jump table
	b _02007F90 ; case 0
	b _02007F90 ; case 1
	b _02007EF4 ; case 2
	b _02007F90 ; case 3
	b _02007E20 ; case 4
	b _02007F04 ; case 5
	b _02007F90 ; case 6
	b _02007F38 ; case 7
	b _02007E84 ; case 8
	arm_func_end sub_02007DF0
_02007E20:
	cmp r2, #0
	beq _02007E5C
	cmp r1, #0x2000
	blo _02007E38
	cmp r1, #0xe000
	bls _02007E40
_02007E38:
	mov r0, #3
	bx lr
_02007E40:
	cmp r1, #0x6000
	movls r0, #0
	bxls lr
	cmp r1, #0xa000
	movlo r0, #1
	movhs r0, #2
	bx lr
_02007E5C:
	cmp r1, #0x4000
	movlo r0, #3
	bxlo lr
	cmp r1, #0x8000
	movls r0, #0
	bxls lr
	cmp r1, #0xc000
	movlo r0, #1
	movhs r0, #2
	bx lr
_02007E84:
	cmp r1, #0x1000
	blo _02007E94
	cmp r1, #0xf000
	blo _02007E9C
_02007E94:
	mov r0, #6
	bx lr
_02007E9C:
	cmp r1, #0x3000
	movlo r0, #7
	bxlo lr
	cmp r1, #0x5000
	movlo r0, #0
	bxlo lr
	cmp r1, #0x7000
	movlo r0, #1
	bxlo lr
	cmp r1, #0x9000
	movlo r0, #2
	bxlo lr
	cmp r1, #0xb000
	movlo r0, #3
	bxlo lr
	cmp r1, #0xd000
	movlo r0, #4
	bxlo lr
	cmp r1, #0xf000
	bhs _02007F90
	mov r0, #5
	bx lr
_02007EF4:
	cmp r1, #0x8000
	movhi r0, #1
	movls r0, #0
	bx lr
_02007F04:
	cmp r1, #0x3000
	movlo r0, #3
	bxlo lr
	cmp r1, #0x5000
	movlo r0, #4
	bxlo lr
	cmp r1, #0x8000
	movls r0, #0
	bxls lr
	cmp r1, #0xc000
	movlo r0, #1
	movhs r0, #2
	bx lr
_02007F38:
	cmp r1, #0x1000
	blo _02007F48
	cmp r1, #0xf000
	blo _02007F50
_02007F48:
	mov r0, #5
	bx lr
_02007F50:
	cmp r1, #0x3000
	movlo r0, #3
	bxlo lr
	cmp r1, #0x5000
	movlo r0, #6
	bxlo lr
	cmp r1, #0x7000
	movlo r0, #0
	bxlo lr
	cmp r1, #0x9000
	movlo r0, #4
	bxlo lr
	cmp r1, #0xc000
	movlo r0, #1
	movhs r0, #2
	bx lr
_02007F90:
	mov r0, #0
	bx lr

	arm_func_start sub_02007F98
sub_02007F98: ; 0x02007F98
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02008064
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007F98

	arm_func_start sub_02007FAC
sub_02007FAC: ; 0x02007FAC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	movne r0, #0
	strne r0, [r4, #0x30]
	ldr r0, [r4]
	cmp r0, #0
	beq _02007FDC
	bl _ZdaPv
	mov r0, #0
	str r0, [r4]
	arm_func_end sub_02007FAC
_02007FDC:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02007FF4
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #4]
_02007FF4:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0200800C
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #8]
_0200800C:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start sub_02008014
sub_02008014: ; 0x02008014
	ldrb r1, [r0, #0x11]
	ldr r0, [r0]
	ldrb r0, [r0, r1]
	bx lr
	arm_func_end sub_02008014

	arm_func_start sub_02008024
sub_02008024: ; 0x02008024
	add r0, r0, #0x14
	bx lr
	arm_func_end sub_02008024

	arm_func_start sub_0200802C
sub_0200802C: ; 0x0200802C
	ldrb r1, [r0, #0x2f]
	cmp r1, #0
	mvnne r0, #0
	bxne lr
	ldrh r2, [r0, #0xe]
	ldrh r1, [r0, #0x2c]
	cmp r2, r1
	ldreqb r0, [r0, #0xc]
	cmpeq r0, #0
	moveq r0, #0
	movne r0, #1
	bx lr
	arm_func_end sub_0200802C

	arm_func_start sub_0200805C
sub_0200805C: ; 0x0200805C
	str r1, [r0, #0x38]
	bx lr
	arm_func_end sub_0200805C

	arm_func_start sub_02008064
sub_02008064: ; 0x02008064
	stmdb sp!, {r3, lr}
	mov lr, #0
	str lr, [r0]
	str lr, [r0, #4]
	str lr, [r0, #8]
	ldrb r3, [r0, #0x2e]
	cmp r3, #0
	ble _020080B0
	mov ip, lr
	arm_func_end sub_02008064
_02008088:
	ldr r3, [r0]
	strb ip, [r3, lr]
	ldr r3, [r0, #4]
	strb ip, [r3, lr]
	ldr r3, [r0, #8]
	strb ip, [r3, lr]
	ldrb r3, [r0, #0x2e]
	add lr, lr, #1
	cmp lr, r3
	blt _02008088
_020080B0:
	strh r1, [r0, #0x3c]
	strh r2, [r0, #0x48]
	mov r2, #0
	strb r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x2c]
	strb r2, [r0, #0x10]
	strb r2, [r0, #0x11]
	strb r2, [r0, #0x2e]
	strb r2, [r0, #0x2f]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	str r2, [r0, #0x24]
	str r2, [r0, #0x28]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x20]
	str r2, [r0, #0x30]
	mov r1, #0x1000
	str r2, [r0, #0x34]
	bl sub_0200805C
	ldmia sp!, {r3, pc}

	arm_func_start sub_02008104
sub_02008104: ; 0x02008104
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x2e]
	ldrh r2, [r4, #0x48]
	bl sub_02007DF0
	ldrb r1, [r4, #0x11]
	cmp r1, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r1, [r4, #0x2e]
	cmp r1, r0
	movle r0, #1
	ldmleia sp!, {r4, pc}
	mov r1, #0
	strb r1, [r4, #0xc]
	str r1, [r4, #0x14]
	str r1, [r4, #0x18]
	str r1, [r4, #0x24]
	str r1, [r4, #0x28]
	str r1, [r4, #0x1c]
	str r1, [r4, #0x20]
	str r1, [r4, #0x34]
	strb r0, [r4, #0x11]
	mov r0, r4
	bl sub_0200827C
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02008104

	arm_func_start sub_02008170
sub_02008170: ; 0x02008170
	ldrb r1, [r0, #0x2e]
	mov r3, #0
	cmp r1, #0
	ble _020081AC
	mov r2, r3
	arm_func_end sub_02008170
_02008184:
	ldr r1, [r0]
	strb r2, [r1, r3]
	ldr r1, [r0, #4]
	strb r2, [r1, r3]
	ldr r1, [r0, #8]
	strb r2, [r1, r3]
	ldrb r1, [r0, #0x2e]
	add r3, r3, #1
	cmp r3, r1
	blt _02008184
_020081AC:
	mov r1, #0
	strb r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strb r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	ldr ip, _020081E0 ; =sub_0200827C
	str r1, [r0, #0x34]
	bx ip
	.align 2, 0
_020081E0: .word sub_0200827C

	arm_func_start sub_020081E4
sub_020081E4: ; 0x020081E4
	stmdb sp!, {r3, lr}
	ldrb r2, [r0, #0x11]
	cmp r2, r1
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldrb r2, [r0, #0x2e]
	cmp r2, r1
	movle r0, #1
	ldmleia sp!, {r3, pc}
	cmp r2, #0
	mov ip, #0
	ble _02008240
	mov r3, ip
	arm_func_end sub_020081E4
_02008218:
	ldr r2, [r0]
	strb r3, [r2, ip]
	ldr r2, [r0, #4]
	strb r3, [r2, ip]
	ldr r2, [r0, #8]
	strb r3, [r2, ip]
	ldrb r2, [r0, #0x2e]
	add ip, ip, #1
	cmp ip, r2
	blt _02008218
_02008240:
	mov r2, #0
	strb r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	strb r2, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	str r2, [r0, #0x24]
	str r2, [r0, #0x28]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x20]
	str r2, [r0, #0x34]
	strb r1, [r0, #0x11]
	bl sub_0200827C
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0200827C
sub_0200827C: ; 0x0200827C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x30]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldrh r1, [r4, #0x3c]
	cmp r1, #0
	bne _020082A4
	bl sub_02008584
	ldmia sp!, {r4, pc}
	arm_func_end sub_0200827C
_020082A4:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _02008314
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	ldr r1, [r4, #0x24]
	cmp r1, #0
	ldrne r0, [r4, #0x1c]
	addne r0, r0, r1
	strne r0, [r4, #0x1c]
	ldr r1, [r4, #0x28]
	cmp r1, #0
	ldrne r0, [r4, #0x20]
	addne r0, r0, r1
	strne r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	ldrne r0, [r4, #0x14]
	addne r0, r0, r1
	strne r0, [r4, #0x14]
	ldr r1, [r4, #0x20]
	cmp r1, #0
	ldrne r0, [r4, #0x18]
	addne r0, r0, r1
	strne r0, [r4, #0x18]
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
_02008314:
	ldrb r0, [r4, #0x2f]
	cmp r0, #0
	bne _02008330
	ldrh r1, [r4, #0xe]
	ldrh r0, [r4, #0x2c]
	cmp r1, r0
	ldmhsia sp!, {r4, pc}
_02008330:
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	bne _02008358
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
_02008358:
	ldrh r2, [r4, #0xe]
	ldrh r1, [r4, #0x2c]
	ldrb r0, [r4, #0x11]
	ldr r3, [r4, #0x30]
	mla r0, r1, r0, r2
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldrb r0, [r3, r1, lsl #2]
	mov r1, r1, lsl #2
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0200854C
_02008388: ; jump table
	b _0200854C ; case 0
	b _020083AC ; case 1
	b _0200845C ; case 2
	b _0200849C ; case 3
	b _020084D8 ; case 4
	b _02008500 ; case 5
	b _02008514 ; case 6
	b _02008528 ; case 7
	b _0200853C ; case 8
_020083AC:
	ldrb r1, [r4, #0x2e]
	mov r0, #0
	cmp r1, #0
	ble _0200854C
_020083BC:
	ldrh r3, [r4, #0xe]
	ldrh r2, [r4, #0x2c]
	ldr ip, [r4, #0x30]
	ldr r1, [r4]
	mla r3, r2, r0, r3
	add r2, ip, r3, lsl #2
	ldrh r2, [r2, #2]
	strb r2, [r1, r0]
	ldrh r3, [r4, #0xe]
	ldrh r2, [r4, #0x2c]
	ldr ip, [r4, #0x30]
	ldr r1, [r4, #4]
	mla r3, r2, r0, r3
	add r2, ip, r3, lsl #2
	ldrh r2, [r2, #2]
	mov r2, r2, asr #8
	strb r2, [r1, r0]
	ldr r2, [r4, #8]
	ldrb r1, [r2, r0]
	cmp r1, #0xff
	ldreq r1, [r4]
	ldreqb r1, [r1, r0]
	streqb r1, [r2, r0]
	ldr r3, [r4, #4]
	ldrb r2, [r3, r0]
	tst r2, #0x80
	beq _02008448
	ldrb r1, [r4, #0x10]
	cmp r1, #0
	andeq r1, r2, #0x7f
	streqb r1, [r3, r0]
	beq _02008448
	ldr r1, [r4, #8]
	ldrb r1, [r1, r0]
	strb r1, [r3, r0]
_02008448:
	ldrb r1, [r4, #0x2e]
	add r0, r0, #1
	cmp r0, r1
	blt _020083BC
	b _0200854C
_0200845C:
	add r0, r3, r1
	ldrh r0, [r0, #2]
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	add r0, r0, #1
	strh r0, [r4, #0xe]
	ldrh r1, [r4, #0x2c]
	ldrh r0, [r4, #0xe]
	cmp r0, r1
	ldmloia sp!, {r4, pc}
	ldrb r0, [r4, #0x2f]
	cmp r0, #0
	movne r0, #0
	strneh r0, [r4, #0xe]
	streqh r1, [r4, #0xe]
	ldmia sp!, {r4, pc}
_0200849C:
	add r0, r3, r1
	ldrh r0, [r0, #2]
	mov r2, #0
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x2e]
	cmp r0, #0
	ble _0200854C
	mov r1, #0xff
_020084BC:
	ldr r0, [r4, #8]
	strb r1, [r0, r2]
	ldrb r0, [r4, #0x2e]
	add r2, r2, #1
	cmp r2, r0
	blt _020084BC
	b _0200854C
_020084D8:
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0200854C
	add r0, r3, r1
	ldrh r0, [r0, #2]
	strh r0, [r4, #0xe]
	ldrb r0, [r4, #0x10]
	sub r0, r0, #1
	strb r0, [r4, #0x10]
	b _0200854C
_02008500:
	add r0, r3, r1
	ldrh r0, [r0, #2]
	bl sub_02007DE4
	str r0, [r4, #0x1c]
	b _0200854C
_02008514:
	add r0, r3, r1
	ldrh r0, [r0, #2]
	bl sub_02007DE4
	str r0, [r4, #0x20]
	b _0200854C
_02008528:
	add r0, r3, r1
	ldrh r0, [r0, #2]
	bl sub_02007DE4
	str r0, [r4, #0x24]
	b _0200854C
_0200853C:
	add r0, r3, r1
	ldrh r0, [r0, #2]
	bl sub_02007DE4
	str r0, [r4, #0x28]
_0200854C:
	ldrh r0, [r4, #0xe]
	add r0, r0, #1
	strh r0, [r4, #0xe]
	ldrh r1, [r4, #0x2c]
	ldrh r0, [r4, #0xe]
	cmp r0, r1
	blo _02008358
	ldrb r0, [r4, #0x2f]
	cmp r0, #0
	movne r0, #0
	strneh r0, [r4, #0xe]
	bne _02008358
	strh r1, [r4, #0xe]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02008584
sub_02008584: ; 0x02008584
	stmdb sp!, {r3, lr}
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _020085A4
	sub r1, r1, #1
	strb r1, [r0, #0xc]
	tst r1, #0xff
	ldmneia sp!, {r3, pc}
	arm_func_end sub_02008584
_020085A4:
	ldrb r1, [r0, #0x2f]
	cmp r1, #0
	bne _020085C0
	ldrh r2, [r0, #0xe]
	ldrh r1, [r0, #0x2c]
	cmp r2, r1
	ldmhsia sp!, {r3, pc}
_020085C0:
	ldrh r3, [r0, #0xe]
	ldrh r2, [r0, #0x2c]
	ldrb r1, [r0, #0x11]
	ldr ip, [r0, #0x30]
	mla r1, r2, r1, r3
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	ldrb r1, [ip, r2, lsl #2]
	mov r2, r2, lsl #2
	cmp r1, #1
	beq _020085F8
	cmp r1, #2
	beq _0200863C
	b _0200867C
_020085F8:
	ldrb r1, [r0, #0x2e]
	mov lr, #0
	cmp r1, #0
	ble _0200867C
_02008608:
	ldrh r3, [r0, #0xe]
	ldrh r2, [r0, #0x2c]
	ldr ip, [r0, #0x30]
	ldr r1, [r0]
	mla r3, r2, lr, r3
	add r2, ip, r3, lsl #2
	ldrh r2, [r2, #2]
	strb r2, [r1, lr]
	ldrb r1, [r0, #0x2e]
	add lr, lr, #1
	cmp lr, r1
	blt _02008608
	b _0200867C
_0200863C:
	add r1, ip, r2
	ldrh r1, [r1, #2]
	strb r1, [r0, #0xc]
	ldrh r1, [r0, #0xe]
	add r1, r1, #1
	strh r1, [r0, #0xe]
	ldrh r2, [r0, #0x2c]
	ldrh r1, [r0, #0xe]
	cmp r1, r2
	ldmloia sp!, {r3, pc}
	ldrb r1, [r0, #0x2f]
	cmp r1, #0
	movne r1, #0
	strneh r1, [r0, #0xe]
	streqh r2, [r0, #0xe]
	ldmia sp!, {r3, pc}
_0200867C:
	ldrh r1, [r0, #0xe]
	add r1, r1, #1
	strh r1, [r0, #0xe]
	ldrh r2, [r0, #0x2c]
	ldrh r1, [r0, #0xe]
	cmp r1, r2
	blo _020085C0
	ldrb r1, [r0, #0x2f]
	cmp r1, #0
	movne r1, #0
	strneh r1, [r0, #0xe]
	bne _020085C0
	strh r2, [r0, #0xe]
	ldmia sp!, {r3, pc}

	arm_func_start sub_020086B4
sub_020086B4: ; 0x020086B4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x38]
	mov r0, #0x3c
	mul r0, r1, r0
	ldr r1, _02008708 ; =DAT_0208a840
	ldrh r1, [r1]
	bl _s32_div_f
	ldr r1, [r4, #0x34]
	add r0, r1, r0
	str r0, [r4, #0x34]
	cmp r0, #0x1000
	ldmltia sp!, {r4, pc}
	arm_func_end sub_020086B4
_020086E8:
	mov r0, r4
	bl sub_0200827C
	ldr r0, [r4, #0x34]
	sub r0, r0, #0x1000
	str r0, [r4, #0x34]
	cmp r0, #0x1000
	bge _020086E8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02008708: .word DAT_0208a840

	arm_func_start sub_0200870C
sub_0200870C: ; 0x0200870C
	str r1, [r0, #0x44]
	bx lr
	arm_func_end sub_0200870C

	arm_func_start sub_02008714
sub_02008714: ; 0x02008714
	str r1, [r0, #0x40]
	bx lr
	arm_func_end sub_02008714

	arm_func_start sub_0200871C
sub_0200871C: ; 0x0200871C
	ldr r0, [r0, #0x44]
	bx lr
	arm_func_end sub_0200871C

	arm_func_start sub_02008724
sub_02008724: ; 0x02008724
	ldr r0, [r0, #0x40]
	bx lr
	arm_func_end sub_02008724

	arm_func_start sub_0200872C
sub_0200872C: ; 0x0200872C
	ldrh r0, [r0, #0x3e]
	bx lr
	arm_func_end sub_0200872C

	arm_func_start sub_02008734
sub_02008734: ; 0x02008734
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x30]
	strh r2, [r4, #0x2c]
	ldrb r0, [sp, #8]
	strb r3, [r4, #0x2e]
	strb r0, [r4, #0x2f]
	ldrb r0, [r4, #0x2e]
	bl _Znam
	str r0, [r4]
	ldrb r0, [r4, #0x2e]
	bl _Znam
	str r0, [r4, #4]
	ldrb r0, [r4, #0x2e]
	bl _Znam
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02008734

	arm_func_start sub_02008778
sub_02008778: ; 0x02008778
	strh r1, [r0, #0x3e]
	bx lr
	arm_func_end sub_02008778

	arm_func_start sub_02008780
sub_02008780: ; 0x02008780
	ldrb r0, [r0, #0x2e]
	bx lr
	arm_func_end sub_02008780

	arm_func_start sub_02008788
sub_02008788: ; 0x02008788
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02008C74
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02008788

	arm_func_start sub_0200879C
sub_0200879C: ; 0x0200879C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02008C74
	mov r2, #0
	mov r0, r5
	mov r1, r4
	mov r3, r2
	bl sub_0200887C
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200879C

	arm_func_start sub_020087C8
sub_020087C8: ; 0x020087C8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r1, [r5, #8]
	cmp r1, #0
	beq _020087E0
	bl sub_02008BF0
	arm_func_end sub_020087C8
_020087E0:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020087F8
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r5, #4]
_020087F8:
	ldr r4, [r5, #0xc]
	cmp r4, #0
	beq _02008820
	beq _02008818
	mov r0, r4
	bl sub_02007FAC
	mov r0, r4
	bl _ZdlPv
_02008818:
	mov r0, #0
	str r0, [r5, #0xc]
_02008820:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02008828
sub_02008828: ; 0x02008828
	stmdb sp!, {r3, lr}
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02008014
	ldmia sp!, {r3, pc}
	arm_func_end sub_02008828

	arm_func_start sub_02008844
sub_02008844: ; 0x02008844
	stmdb sp!, {r3, lr}
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02008024
	ldmia sp!, {r3, pc}
	arm_func_end sub_02008844

	arm_func_start sub_02008860
sub_02008860: ; 0x02008860
	stmdb sp!, {r3, lr}
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r3, pc}
	bl sub_0200802C
	ldmia sp!, {r3, pc}
	arm_func_end sub_02008860

	arm_func_start sub_0200887C
sub_0200887C: ; 0x0200887C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r6, r0
	ldr r0, [r6, #4]
	mov r8, r1
	cmp r0, #0
	mov r4, r2
	mov r7, r3
	addne sp, sp, #0xc
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, #0xb8
	bl _Znwm
	movs r5, r0
	beq _020088E4
	cmp r7, #0
	moveq r2, #1
	str r4, [sp]
	mov r3, #0
	str r3, [sp, #4]
	movne r2, #0
	mov r0, r5
	mov r1, r8
	str r3, [sp, #8]
	bl sub_02002BC4
	mov r5, r0
	arm_func_end sub_0200887C
_020088E4:
	ldr r4, [r5, #0x4c]
	cmp r7, #0
	ldr r0, [r4, #8]
	moveq r1, #4
	mov r0, r0, lsr #2
	strh r0, [r6]
	ldrb r0, [r4, #6]
	mvnne r1, #3
	strb r0, [r6, #2]
	ldrb r0, [r4, #7]
	strb r0, [r6, #3]
	ldrh r0, [r6]
	ldrb r2, [r4, #6]
	mov r0, r0, lsl #2
	mul r0, r2, r0
	bl _Z23Heap_AllocWithAlignmentmm
	str r0, [r6, #4]
	ldrh r0, [r6]
	ldrb r3, [r4, #6]
	ldr r1, [r6, #4]
	mov r0, r0, lsl #2
	mul r2, r3, r0
	add r0, r4, #0xc
	bl MIi_CpuCopy32
	cmp r5, #0
	beq _0200895C
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200895C:
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}

	arm_func_start sub_02008968
sub_02008968: ; 0x02008968
	stmdb sp!, {r4, lr}
	mov r4, r2
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	mov r1, r4
	bl sub_02008104
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02008968

	arm_func_start sub_02008990
sub_02008990: ; 0x02008990
	stmdb sp!, {r4, lr}
	mov r4, r2
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	mov r1, r4
	bl sub_020081E4
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02008990

	arm_func_start sub_020089B8
sub_020089B8: ; 0x020089B8
	stmdb sp!, {r3, lr}
	bl sub_02008CD0
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02008170
	ldmia sp!, {r3, pc}
	arm_func_end sub_020089B8

	arm_func_start sub_020089D0
sub_020089D0: ; 0x020089D0
	stmdb sp!, {r3, lr}
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02008780
	ldmia sp!, {r3, pc}
	arm_func_end sub_020089D0

	arm_func_start sub_020089EC
sub_020089EC: ; 0x020089EC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xc]
	bl sub_02008724
	mov r4, r0
	b _02008A18
	arm_func_end sub_020089EC
_02008A04:
	mov r0, r4
	bl sub_020086B4
	mov r0, r4
	bl sub_02008724
	mov r4, r0
_02008A18:
	ldr r0, [r5, #0xc]
	cmp r4, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl sub_02008C6C
	cmp r0, #0
	bne _02008A04
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02008A38
sub_02008A38: ; 0x02008A38
	stmdb sp!, {r3, lr}
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl sub_020086B4
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02008A38

	arm_func_start sub_02008A58
sub_02008A58: ; 0x02008A58
	stmdb sp!, {r4, lr}
	mov r4, r2
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	mov r1, r4
	bl sub_0200805C
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02008A58

	arm_func_start sub_02008A80
sub_02008A80: ; 0x02008A80
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	mov r5, r1
	cmp r0, #0
	mov r4, r2
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6, #0xa]
	mov r0, #0x4c
	add r1, r1, #1
	strh r1, [r6, #0xa]
	ldrb r1, [r6, #8]
	add r1, r1, #1
	strb r1, [r6, #8]
	bl _Znwm
	movs r7, r0
	beq _02008AD8
	mov r1, r5
	mov r2, r4
	bl sub_02007F98
	mov r7, r0
	arm_func_end sub_02008A80
_02008AD8:
	ldrb r1, [r6, #3]
	mov r0, r7
	str r1, [sp]
	ldrh r2, [r6]
	ldrb r3, [r6, #2]
	ldr r1, [r6, #4]
	bl sub_02008734
	ldrh r1, [r6, #0xa]
	mov r0, r7
	bl sub_02008778
	ldr r0, [r6, #0xc]
	bl sub_0200871C
	ldr r1, [r6, #0xc]
	mov r4, r0
	cmp r4, r1
	bne _02008B4C
	mov r0, r1
	mov r1, r7
	bl sub_0200870C
	ldr r0, [r6, #0xc]
	mov r1, r7
	bl sub_02008714
	ldr r1, [r6, #0xc]
	mov r0, r7
	bl sub_0200870C
	ldr r1, [r6, #0xc]
	mov r0, r7
	bl sub_02008714
	b _02008B78
_02008B4C:
	mov r1, r7
	bl sub_02008714
	mov r0, r7
	mov r1, r4
	bl sub_0200870C
	ldr r1, [r6, #0xc]
	mov r0, r7
	bl sub_02008714
	ldr r0, [r6, #0xc]
	mov r1, r7
	bl sub_0200870C
_02008B78:
	ldrh r0, [r6, #0xa]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02008B80
sub_02008B80: ; 0x02008B80
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl sub_02008CD0
	movs r6, r0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl sub_0200871C
	mov r5, r0
	mov r0, r6
	bl sub_02008724
	mov r4, r0
	mov r0, r5
	mov r1, r4
	bl sub_02008714
	mov r0, r4
	mov r1, r5
	bl sub_0200870C
	cmp r6, #0
	beq _02008BDC
	mov r0, r6
	bl sub_02007FAC
	mov r0, r6
	bl _ZdlPv
	arm_func_end sub_02008B80
_02008BDC:
	ldrb r1, [r7, #8]
	mov r0, #0
	sub r1, r1, #1
	strb r1, [r7, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02008BF0
sub_02008BF0: ; 0x02008BF0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xc]
	bl sub_02008724
	ldr r1, [r6, #0xc]
	mov r4, r0
	cmp r4, r1
	beq _02008C44
	arm_func_end sub_02008BF0
_02008C10:
	mov r0, r4
	bl sub_02008724
	mov r5, r0
	cmp r4, #0
	beq _02008C34
	mov r0, r4
	bl sub_02007FAC
	mov r0, r4
	bl _ZdlPv
_02008C34:
	ldr r0, [r6, #0xc]
	mov r4, r5
	cmp r5, r0
	bne _02008C10
_02008C44:
	mov r0, #0
	strb r0, [r6, #8]
	ldr r0, [r6, #0xc]
	mov r1, r0
	bl sub_0200870C
	ldr r0, [r6, #0xc]
	mov r1, r0
	bl sub_02008714
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02008C6C
sub_02008C6C: ; 0x02008C6C
	ldrb r0, [r0, #8]
	bx lr
	arm_func_end sub_02008C6C

	arm_func_start sub_02008C74
sub_02008C74: ; 0x02008C74
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	strh r1, [r4]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	str r1, [r4, #4]
	strb r1, [r4, #8]
	mov r0, #0x4c
	strh r1, [r4, #0xa]
	bl _Znwm
	cmp r0, #0
	beq _02008CB4
	mov r1, #0
	mov r2, r1
	bl sub_02007F98
	arm_func_end sub_02008C74
_02008CB4:
	str r0, [r4, #0xc]
	mov r1, r0
	bl sub_0200870C
	ldr r0, [r4, #0xc]
	mov r1, r0
	bl sub_02008714
	ldmia sp!, {r4, pc}

	arm_func_start sub_02008CD0
sub_02008CD0: ; 0x02008CD0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xc]
	mov r5, r1
	bl sub_02008724
	mov r4, r0
	arm_func_end sub_02008CD0
_02008CE8:
	ldr r0, [r6, #0xc]
	cmp r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl sub_0200872C
	cmp r5, r0
	beq _02008D18
	mov r0, r4
	bl sub_02008724
	mov r4, r0
	b _02008CE8
_02008D18:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02008D20
sub_02008D20: ; 0x02008D20
	stmdb sp!, {r3, lr}
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #0
	ldrneh r0, [r0, #0xe]
	ldmia sp!, {r3, pc}
	arm_func_end sub_02008D20

	arm_func_start sub_02008D38
sub_02008D38: ; 0x02008D38
	stmdb sp!, {r3, lr}
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #0
	ldrneb r0, [r0, #0x10]
	ldmia sp!, {r3, pc}
	arm_func_end sub_02008D38

	arm_func_start sub_02008D50
sub_02008D50: ; 0x02008D50
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	mov r1, #0x1e
	strh r2, [r4, #0x12]
	bl sub_02008DB4
	mov r1, #0
	str r1, [r4, #0x18]
	mov r0, r4
	str r1, [r4, #0x1c]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02008D50

	arm_func_start sub_02008D7C
sub_02008D7C: ; 0x02008D7C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #0x14]
	arm_func_end sub_02008D7C
_02008D88:
	ldrh r0, [r4, #0x12]
	cmp r0, r1
	blo _02008D88
	mov r0, #0
	strh r0, [r4, #0x12]
	mov r0, #1
	str r0, [r4, #0x1c]
	bl OS_WaitVBlankIntr
	mov r0, #0
	str r0, [r4, #0x1c]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02008DB4
sub_02008DB4: ; 0x02008DB4
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0x3c
	ldmhiia sp!, {r3, r4, r5, pc}
	mov r0, #0x3c
	strh r4, [r5, #0x10]
	bl _s32_div_f
	ldr r1, _02008E34 ; =0x01FF7D0E
	ldr r2, _02008E38 ; =0x88888889
	mul r3, r4, r1
	smull r1, ip, r2, r3
	add ip, r3, ip
	mov r1, r3, lsr #0x1f
	add ip, r1, ip, asr #5
	strh r0, [r5, #0x14]
	str ip, [r5, #8]
	mov r0, ip, asr #0x1f
	ldr ip, _02008E3C ; =DAT_0208a840
	str r0, [r5, #0xc]
	ldr r3, _02008E40 ; =DAT_0208b46c
	ldr r2, _02008E44 ; =DAT_0208aaf4
	ldr r1, _02008E48 ; =DAT_0208aafa
	mov lr, #0x3c
	ldr r0, _02008E4C ; =MAIN_BSS_020AF338
	mov r5, #0x1000
	strh r4, [ip]
	strh r4, [r3]
	strh r4, [r2]
	strh lr, [r1]
	str r5, [r0]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02008E34: .word 0x01FF7D0E
_02008E38: .word 0x88888889
_02008E3C: .word DAT_0208a840
_02008E40: .word DAT_0208b46c
_02008E44: .word DAT_0208aaf4
_02008E48: .word DAT_0208aafa
_02008E4C: .word MAIN_BSS_020AF338
	arm_func_end sub_02008DB4

	arm_func_start sub_02008E50
sub_02008E50: ; 0x02008E50
	ldrh r0, [r0, #0x10]
	bx lr
	arm_func_end sub_02008E50

	arm_func_start sub_02008E58
sub_02008E58: ; 0x02008E58
	ldrh r1, [r0, #0x12]
	add r1, r1, #1
	strh r1, [r0, #0x12]
	bx lr
	arm_func_end sub_02008E58

	arm_func_start sub_02008E68
sub_02008E68: ; 0x02008E68
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl OS_GetTick
	stmia r4, {r0, r1}
	ldmia sp!, {r4, pc}
	arm_func_end sub_02008E68

	arm_func_start sub_02008E88
sub_02008E88: ; 0x02008E88
	mov r3, #0
	strh r3, [r0, #0x48]
	strh r3, [r0, #0x4a]
	strh r3, [r0, #0x4c]
	strh r3, [r0, #0x4e]
	strh r3, [r0, #0x50]
	mov r1, #1
	strh r1, [r0, #0x54]
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #0x58]
	str r3, [r0, #0x5c]
	str r3, [r0, #0x60]
	mov r2, r3
	arm_func_end sub_02008E88
_02008EC0:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #8]
	cmp r3, #0x10
	blt _02008EC0
	bx lr

	arm_func_start sub_02008ED8
sub_02008ED8: ; 0x02008ED8
	bx lr
	arm_func_end sub_02008ED8

	arm_func_start sub_02008EDC
sub_02008EDC: ; 0x02008EDC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl sub_02008F90
	cmp r0, r6
	beq _02008F38
	ldr r5, [r6, #0x58]
	mov r0, r5
	bl sub_02008F80
	movs r4, r0
	cmpne r4, #0
	beq _02008F14
	bl sub_02008ED8
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02008EDC
_02008F14:
	mov r0, r5
	mov r1, #0
	bl sub_02008F78
	mov r1, #1
	mov r0, r6
	strh r1, [r5, #0x50]
	bl sub_02008F90
	mov r1, r5
	bl sub_0200911C
_02008F38:
	mov r0, r6
	bl sub_02008F90
	cmp r0, r6
	bne _02008F60
	mov r0, r6
	bl sub_02008F98
	mov r1, #0
	ldr r3, _02008F74 ; =DAT_0208a844
	mov r2, r1
	bl sub_020028A4
_02008F60:
	mov r0, r6
	bl sub_02008F90
	mov r1, #1
	bl sub_02009124
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02008F74: .word DAT_0208a844

	arm_func_start sub_02008F78
sub_02008F78: ; 0x02008F78
	str r1, [r0, #0x5c]
	bx lr
	arm_func_end sub_02008F78

	arm_func_start sub_02008F80
sub_02008F80: ; 0x02008F80
	ldr r0, [r0, #0x5c]
	bx lr
	arm_func_end sub_02008F80

	arm_func_start sub_02008F88
sub_02008F88: ; 0x02008F88
	str r1, [r0, #0x60]
	bx lr
	arm_func_end sub_02008F88

	arm_func_start sub_02008F90
sub_02008F90: ; 0x02008F90
	ldr r0, [r0, #0x60]
	bx lr
	arm_func_end sub_02008F90

	arm_func_start sub_02008F98
sub_02008F98: ; 0x02008F98
	stmdb sp!, {r3, lr}
	bl sub_02008F90
	bl sub_02009100
	ldmia sp!, {r3, pc}
	arm_func_end sub_02008F98

	arm_func_start sub_02008FA8
sub_02008FA8: ; 0x02008FA8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_02008E88
	str r5, [r6, #0x68]
	mov r0, r6
	mov r1, #0
	str r4, [r6, #0x6c]
	bl sub_02008F78
	mov r0, r6
	mov r1, r6
	bl sub_02008F88
	mov r2, #0
	str r6, [r6, #0x64]
	mov r1, r2
	arm_func_end sub_02008FA8
_02008FE8:
	add r0, r6, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x74]
	cmp r2, #0x10
	blt _02008FE8
	mov r0, r6
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02009004
sub_02009004: ; 0x02009004
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02009020
	mov r0, r4
	bl sub_02008ED8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02009004

	arm_func_start sub_02009020
sub_02009020: ; 0x02009020
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x64]
	cmp r4, r0
	beq _02009044
	arm_func_end sub_02009020
_02009034:
	bl sub_02008EDC
	ldr r0, [r4, #0x64]
	cmp r4, r0
	bne _02009034
_02009044:
	mov r0, #1
	strh r0, [r4, #0x70]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02009050
sub_02009050: ; 0x02009050
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02009108
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02009084
	blx r1
	ldrh r1, [r4, #0x70]
	orr r0, r1, r0
	strh r0, [r4, #0x70]
	arm_func_end sub_02009050
_02009084:
	mov r0, r4
	bl sub_02009090
	ldmia sp!, {r4, pc}

	arm_func_start sub_02009090
sub_02009090: ; 0x02009090
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r1, [r5, #0x70]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl sub_02008F80
	movs r4, r0
	beq _020090DC
	arm_func_end sub_02009090
_020090B0:
	ldr r0, [r5, #0x64]
	ldr r0, [r0]
	cmp r0, #0
	beq _020090CC
	ldr r1, [r4]
	mov r0, r4
	blx r1
_020090CC:
	mov r0, r4
	bl sub_02008F80
	movs r4, r0
	bne _020090B0
_020090DC:
	mov r0, #0
	strh r0, [r5, #0x70]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020090E8
sub_020090E8: ; 0x020090E8
	add r0, r0, r1, lsl #2
	str r2, [r0, #0x74]
	bx lr
	arm_func_end sub_020090E8

	arm_func_start sub_020090F4
sub_020090F4: ; 0x020090F4
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x74]
	bx lr
	arm_func_end sub_020090F4

	arm_func_start sub_02009100
sub_02009100: ; 0x02009100
	ldr r0, [r0, #0x68]
	bx lr
	arm_func_end sub_02009100

	arm_func_start sub_02009108
sub_02009108: ; 0x02009108
	ldr r1, [r0, #0x64]
	cmp r0, r1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02009108

	arm_func_start sub_0200911C
sub_0200911C: ; 0x0200911C
	str r1, [r0, #0x64]
	bx lr
	arm_func_end sub_0200911C

	arm_func_start sub_02009124
sub_02009124: ; 0x02009124
	strh r1, [r0, #0x70]
	bx lr
	arm_func_end sub_02009124

	arm_func_start sub_0200912C
sub_0200912C: ; 0x0200912C
	stmdb sp!, {r3, lr}
	cmp r1, #0
	beq _02009180
	ldr ip, [r0]
	mov r3, #0
	cmp ip, #0
	beq _02009168
	ldr lr, [r1, #4]
	arm_func_end sub_0200912C
_0200914C:
	ldr r2, [ip, #4]
	cmp lr, r2
	bgt _02009168
	mov r3, ip
	ldr ip, [ip, #8]
	cmp ip, #0
	bne _0200914C
_02009168:
	cmp r3, #0
	streq r1, [r0]
	strne r1, [r3, #8]
	str ip, [r1, #8]
	mov r0, #1
	ldmia sp!, {r3, pc}
_02009180:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_02009188
sub_02009188: ; 0x02009188
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, [r0]
	mov r7, r1
	mov r6, r2
	cmp r5, #0
	mov r4, #0
	beq _020091CC
	arm_func_end sub_02009188
_020091A4:
	mov r0, r5
	ldr r3, [r0]
	mov r1, r7
	ldr r3, [r3, #8]
	sub r2, r6, r4
	blx r3
	ldr r5, [r5, #8]
	add r4, r4, r0
	cmp r5, #0
	bne _020091A4
_020091CC:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_020091D4
sub_020091D4: ; 0x020091D4
	mov r0, #0
	bx lr
	arm_func_end sub_020091D4

	arm_func_start sub_020091DC
sub_020091DC: ; 0x020091DC
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end sub_020091DC
