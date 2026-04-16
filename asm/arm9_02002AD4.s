    .include "macros.inc"
    .include "include/arm9.inc"
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

	arm_func_start sub_02002AEC
sub_02002AEC: ; 0x02002AEC
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
	arm_func_end sub_02002AEC
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

	arm_func_start sub_02002B6C
sub_02002B6C: ; 0x02002B6C
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
	arm_func_end sub_02002B6C
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

	arm_func_start sub_020033B0
sub_020033B0: ; 0x020033B0
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
	arm_func_end sub_020033B0

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

	arm_func_start sub_02003494
sub_02003494: ; 0x02003494
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
	arm_func_end sub_02003494

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

	arm_func_start sub_0200365C
sub_0200365C: ; 0x0200365C
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
	arm_func_end sub_0200365C

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
_0200396C:
	.byte 0x1E, 0xFF, 0x2F, 0xE1

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
	ldr ip, _0200773C ; =sub_020100E4
	ldr r1, _02007740 ; =sub_02007744
	ldr r0, [r0]
	bx ip
	.align 2, 0
_02007738: .word MAIN_BSS_0208F304
_0200773C: .word sub_020100E4
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
	bl sub_020033B0
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
	ldr ip, _02007C5C ; =sub_020100E4
	ldr r0, [r0]
	ldr r1, _02007C60 ; =sub_02007C64
	bx ip
	.align 2, 0
_02007C58: .word MAIN_BSS_0208F304
_02007C5C: .word sub_020100E4
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
_02007CA8:
	.byte 0x1E, 0xFF, 0x2F, 0xE1

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
	ldr ip, _02007CDC ; =sub_02001210
	bx ip
	.align 2, 0
_02007CDC: .word sub_02001210
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

	arm_func_start sub_020091E8
sub_020091E8: ; 0x020091E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020093B4
	mov r1, #0
	str r1, [r4, #0x88]
	ldr r0, _02009270 ; =0x0000163C
	str r1, [r4, #0x8c]
	bl _Znwm
	cmp r0, #0
	beq _02009214
	bl sub_0200BBC8
	arm_func_end sub_020091E8
_02009214:
	str r0, [r4, #0x14c]
	mov r1, #0
	str r1, [r4, #0x90]
	str r1, [r4, #0x2c]
	mov r0, #2
	str r1, [r4, #0x70]
	str r0, [r4, #0x74]
	str r1, [r4, #0x84]
	str r1, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	str r1, [r4, #0x14]
	sub r0, r0, #3
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r1, [r4, #0x150]
	mov r0, r4
	str r1, [r4, #0x154]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02009270: .word 0x0000163C

	arm_func_start sub_02009274
sub_02009274: ; 0x02009274
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x84]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	beq _02009298
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_02009274
_02009298:
	mov r0, #0
	str r0, [r4, #0x84]
	ldmia sp!, {r4, pc}

	arm_func_start sub_020092A4
sub_020092A4: ; 0x020092A4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0200AC90
	mov r0, r4
	bl sub_0200AED0
	mov r0, r4
	bl sub_0200B12C
	mov r0, r4
	bl sub_0200B36C
	mov r0, r4
	bl sub_0200B59C
	ldmia sp!, {r4, pc}
	arm_func_end sub_020092A4

	arm_func_start sub_020092D4
sub_020092D4: ; 0x020092D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02009274
	mov r0, r4
	bl sub_020092A4
	mov r0, r4
	bl sub_020093B4
	mov r0, #0
	str r0, [r4, #0x88]
	str r0, [r4, #0x8c]
	str r0, [r4, #0x90]
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	beq _0200931C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_020092D4
_0200931C:
	mov r0, #0
	str r0, [r4, #0x2c]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02009328
sub_02009328: ; 0x02009328
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r5, r3
	mov r7, r1
	mov r6, r2
	bl sub_020092D4
	str r5, [r4, #0xf4]
	str r7, [r4, #0x88]
	ldr r0, [sp, #0x28]
	str r6, [r4, #0x8c]
	ldr r1, [sp, #0x30]
	str r0, [r4]
	mov r0, r4
	str r1, [r4, #0x90]
	bl sub_02009430
	mov r0, r4
	bl sub_020095D0
	mov r0, r4
	bl sub_02009670
	ldr r1, [r4, #0x90]
	ldr r0, [sp, #0x34]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14c]
	ldr r1, [sp, #0x2c]
	ldr r2, [r4, #0x88]
	ldr r3, [r4, #0x8c]
	bl sub_0200BC64
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_02009328

	arm_func_start sub_020093B4
sub_020093B4: ; 0x020093B4
	mov r3, #0
	str r3, [r0, #0x50]
	str r3, [r0, #0x54]
	str r3, [r0, #0x58]
	str r3, [r0, #0x5c]
	mov r1, #0x1e
	str r1, [r0, #0x60]
	str r3, [r0, #0x64]
	mov r1, #0x3c
	str r3, [r0, #0x68]
	str r1, [r0, #0x6c]
	str r3, [r0, #0x4c]
	str r3, [r0, #0x7c]
	str r3, [r0, #0x48]
	ldr r2, [r0, #0x74]
	sub r1, r1, #0x3d
	str r2, [r0, #0x9c]
	str r3, [r0, #0xa0]
	str r3, [r0, #0x78]
	str r3, [r0, #0x84]
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #0xc]
	str r3, [r0, #0x10]
	str r3, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	bx lr
	arm_func_end sub_020093B4

	arm_func_start sub_02009430
sub_02009430: ; 0x02009430
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _02009474
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _020095B8 ; =s_BGT_0208a848
	ldr r2, _020095BC ; =s_data_interface_i059_LZ_bin_0208a84c
	str ip, [sp, #0xc]
	bl sub_02002AEC
	mov r4, r0
	arm_func_end sub_02009430
_02009474:
	mov r0, #0xbc
	bl _Znwm
	movs r5, r0
	beq _0200949C
	ldr r1, _020095C0 ; =s_BGT_i059_00_NCGR_0208a868
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_0200365C
	mov r5, r0
_0200949C:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _020094C4
	ldr r1, _020095C4 ; =s_BGT_i059_00_NSCR_0208a87c
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_02003494
	mov r6, r0
_020094C4:
	mov r0, #0xbc
	bl _Znwm
	movs r7, r0
	beq _020094EC
	ldr r1, _020095C8 ; =s_BGT_i059_NCLR_0208a890
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_020033B0
	mov r7, r0
_020094EC:
	ldr r0, [r8, #0x2c]
	cmp r0, #0
	bne _02009520
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0200951C
	mov r2, #0
	ldr r1, _020095CC ; =s_BGT_i059_00_NCLR_0208a8a0
	mov r3, r2
	str r2, [sp]
	bl sub_020033B0
_0200951C:
	str r0, [r8, #0x2c]
_02009520:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r6, #0xb8]
	ldr r2, [r5, #0xb8]
	ldr r3, [r7, #0xb8]
	mov r0, #1
	bl NNS_G2dBGSetupEx
	cmp r7, #0
	beq _02009564
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02009564:
	cmp r6, #0
	beq _0200957C
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200957C:
	cmp r5, #0
	beq _02009594
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02009594:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_020095B8: .word s_BGT_0208a848
_020095BC: .word s_data_interface_i059_LZ_bin_0208a84c
_020095C0: .word s_BGT_i059_00_NCGR_0208a868
_020095C4: .word s_BGT_i059_00_NSCR_0208a87c
_020095C8: .word s_BGT_i059_NCLR_0208a890
_020095CC: .word s_BGT_i059_00_NCLR_0208a8a0

	arm_func_start sub_020095D0
sub_020095D0: ; 0x020095D0
	ldr r2, _020095EC ; =0x0400000A
	ldr ip, _020095F0 ; =sub_020095F4
	ldrh r1, [r2]
	and r1, r1, #0x43
	orr r1, r1, #0x600
	strh r1, [r2]
	bx ip
	.align 2, 0
_020095EC: .word 0x0400000A
_020095F0: .word sub_020095F4
	arm_func_end sub_020095D0

	arm_func_start sub_020095F4
sub_020095F4: ; 0x020095F4
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r0, #0xbc
	bl _Znwm
	movs r4, r0
	beq _02009624
	ldr r1, _0200966C ; =s_data_font_prs_jp_NCLR_0208a8b4
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_020033B0
	mov r4, r0
	arm_func_end sub_020095F4
_02009624:
	ldr r0, [r4, #0xb8]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [r4, #0xb8]
	mov r1, #0x1e0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GX_LoadBGPltt
	cmp r4, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0200966C: .word s_data_font_prs_jp_NCLR_0208a8b4

	arm_func_start sub_02009670
sub_02009670: ; 0x02009670
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	bl G2_GetBG1CharPtr
	mov r4, r0
	mov r3, #4
	str r3, [sp]
	add r0, r5, #0xf8
	add r1, r4, #0xc00
	mov r2, #0x1c
	bl NNS_G2dCharCanvasInitForBG
	ldr r1, [r5, #0xf4]
	add r0, r5, #0xf8
	str r0, [r5, #0x110]
	str r1, [r5, #0x114]
	mov r0, #0
	str r0, [r5, #0x118]
	mov r0, #4
	str r0, [r5, #0x11c]
	bl G2_GetBG1ScrPtr
	mov r1, #0x19
	str r1, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r1, #0x60
	str r1, [sp, #8]
	mov r1, #0xf
	str r1, [sp, #0xc]
	mov r1, #0x1c
	mov r2, #4
	mov r3, #2
	bl NNS_G2dMapScrToCharText
	add r1, r4, #0x1c00
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0x120
	mov r2, #0xe
	mov r3, #2
	bl NNS_G2dCharCanvasInitForBG
	ldr r1, [r5, #0xf4]
	add r0, r5, #0x120
	str r0, [r5, #0x138]
	str r1, [r5, #0x13c]
	mov r0, #0
	str r0, [r5, #0x140]
	mov r0, #4
	str r0, [r5, #0x144]
	bl G2_GetBG1ScrPtr
	mov r1, #0x1e
	str r1, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r1, #0xe0
	str r1, [sp, #8]
	mov r1, #0xf
	str r1, [sp, #0xc]
	mov r1, #0xe
	mov r2, #2
	mov r3, #0
	bl NNS_G2dMapScrToCharText
	ldr r0, _02009788 ; =0x33333333
	ldr r1, [r5, #0xf8]
	mov r2, #0xe00
	bl MIi_CpuClearFast
	ldr r1, [r5, #0x120]
	ldr r0, _02009788 ; =0x33333333
	mov r2, #0x380
	bl MIi_CpuClearFast
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02009788: .word 0x33333333
	arm_func_end sub_02009670

	arm_func_start sub_0200978C
sub_0200978C: ; 0x0200978C
	stmdb sp!, {r4, lr}
	cmp r1, #0
	mov r4, #0
	beq _020097B0
	cmp r1, #1
	beq _020097B8
	cmp r1, #2
	moveq r4, #0xa
	b _020097BC
	arm_func_end sub_0200978C
_020097B0:
	ldr r4, [r0, #0x70]
	b _020097BC
_020097B8:
	mov r4, #9
_020097BC:
	ldr r1, [r0, #0x2c]
	mov r0, #0xf
	ldr r2, [r1, #0xb8]
	mov r1, #0xc0
	ldr r2, [r2, #0xc]
	mov r3, #0x20
	add r2, r2, r4, lsl #5
	bl NNS_GfdRegisterNewVramTransferTask
	add r0, r4, #1
	mov r0, r0, lsl #8
	add r2, r0, #0x6000000
	mov r0, #5
	mov r1, #0
	mov r3, #0x100
	bl NNS_GfdRegisterNewVramTransferTask
	ldmia sp!, {r4, pc}

	arm_func_start sub_020097FC
sub_020097FC: ; 0x020097FC
	add r0, r0, r1, lsl #2
	str r2, [r0, #0xb4]
	bx lr
	arm_func_end sub_020097FC

	arm_func_start sub_02009808
sub_02009808: ; 0x02009808
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0xb4]
	bx lr
	arm_func_end sub_02009808

	arm_func_start sub_02009814
sub_02009814: ; 0x02009814
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	sub r1, r1, #0x42
	mov r4, r0
	cmp r1, #0x17
	addls pc, pc, r1, lsl #2
	b _02009D70
_02009830: ; jump table
	b _02009890 ; case 0
	b _020099D8 ; case 1
	b _02009D70 ; case 2
	b _020098B8 ; case 3
	b _02009D20 ; case 4
	b _02009D70 ; case 5
	b _02009D70 ; case 6
	b _02009AC4 ; case 7
	b _02009D70 ; case 8
	b _02009BB4 ; case 9
	b _02009D70 ; case 10
	b _020099AC ; case 11
	b _02009B64 ; case 12
	b _02009C14 ; case 13
	b _02009A30 ; case 14
	b _02009990 ; case 15
	b _0200993C ; case 16
	b _02009CF8 ; case 17
	b _02009D70 ; case 18
	b _02009D70 ; case 19
	b _02009A80 ; case 20
	b _02009C9C ; case 21
	b _02009D70 ; case 22
	b _02009B14 ; case 23
	arm_func_end sub_02009814
_02009890:
	ldr r0, [r4, #0xa4]
	add sp, sp, #0x1c
	cmp r0, #0
	moveq r0, #1
	streq r0, [r4, #0x78]
	ldr r1, [r4, #0x7c]
	mov r0, #0
	add r1, r1, #1
	str r1, [r4, #0x7c]
	ldmia sp!, {r4, r5, pc}
_020098B8:
	ldr r0, [r4, #0xa8]
	cmp r0, #0
	bne _020098E0
	mov r0, #0
	str r0, [r4, #0xa4]
	ldr r1, [r4, #0xa8]
	ldr r0, [r4, #0x80]
	add r0, r1, r0
	str r0, [r4, #0xa8]
	b _02009920
_020098E0:
	mov r1, #0
	str r1, [r4, #0xa4]
	str r1, [r4, #0xb0]
	mov r0, #3
	str r0, [r4, #0x50]
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #0x94]
	mov r0, #0x12
	mul r0, r2, r0
	add r0, r0, #1
	mov r2, r0, lsl #3
	ldr r0, [r4, #0x14c]
	add r3, r2, #0x10
	mov r2, #0xf0
	bl sub_0200BE28
_02009920:
	ldr r1, [r4, #0x7c]
	mov r0, #0
	add r1, r1, #1
	str r1, [r4, #0x7c]
	add sp, sp, #0x1c
	str r0, [r4, #0x78]
	ldmia sp!, {r4, r5, pc}
_0200993C:
	mov r0, #4
	str r0, [r4, #0x50]
	mov r0, #1
	str r0, [sp]
	ldr r1, [r4, #0x94]
	mov r0, #0x12
	mul r0, r1, r0
	add r0, r0, #1
	mov r1, r0, lsl #3
	add r3, r1, #0x10
	ldr r0, [r4, #0x14c]
	mov r1, #0
	mov r2, #0xf0
	bl sub_0200BE28
	ldr r1, [r4, #0x7c]
	mov r0, #0
	add r1, r1, #1
	str r1, [r4, #0x7c]
	add sp, sp, #0x1c
	str r0, [r4, #0x78]
	ldmia sp!, {r4, r5, pc}
_02009990:
	mov r0, #9
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x14c]
	bl sub_0200C060
	add sp, sp, #0x1c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_020099AC:
	ldr r1, [r4, #0x7c]
	ldr r0, _02009D7C ; =MAIN_BSS_020BAE83
	add r1, r1, #1
	str r1, [r4, #0x7c]
	str r1, [r4, #0x48]
	str r0, [r4, #0x7c]
	mov r0, #1
	str r0, [r4, #0x4c]
	add sp, sp, #0x1c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_020099D8:
	ldr r0, [r4, #0x7c]
	add lr, sp, #4
	add r0, r0, #1
	ldr r5, _02009D80 ; =DAT_020843e0
	str r0, [r4, #0x7c]
	mov ip, lr
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1}
	stmia lr, {r0, r1}
	ldr r1, [r4, #0x7c]
	add sp, sp, #0x1c
	ldrb r1, [r1]
	mov r0, #1
	and r1, r1, #0xf
	ldr r1, [ip, r1, lsl #2]
	str r1, [r4, #0xac]
	ldr r1, [r4, #0x7c]
	add r1, r1, #1
	add r1, r1, #1
	str r1, [r4, #0x7c]
	ldmia sp!, {r4, r5, pc}
_02009A30:
	ldr r1, [r4, #0x7c]
	add r1, r1, #1
	str r1, [r4, #0x7c]
	ldrb r1, [r1]
	and r1, r1, #0xf
	bl sub_02009808
	ldr r2, [r4, #0x7c]
	mov r1, r0
	add r2, r2, #1
	add r0, r2, #1
	str r0, [r4, #0x7c]
	str r0, [r4, #0x48]
	ldr r0, [r4]
	bl sub_02018B10
	str r0, [r4, #0x7c]
	mov r0, #1
	str r0, [r4, #0x4c]
	add sp, sp, #0x1c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_02009A80:
	ldr r1, [r4, #0x7c]
	add r1, r1, #1
	str r1, [r4, #0x7c]
	ldrb r1, [r1]
	and r1, r1, #0xf
	bl sub_02009808
	ldr r2, [r4, #0x7c]
	mov r1, r0
	add r0, r2, #1
	add r0, r0, #1
	str r0, [r4, #0x7c]
	ldr r0, [r4, #0x90]
	mov r2, #0x40
	bl sub_02034CF4
	add sp, sp, #0x1c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_02009AC4:
	ldr r1, [r4, #0x7c]
	add r1, r1, #1
	str r1, [r4, #0x7c]
	ldrb r1, [r1]
	and r1, r1, #0xf
	bl sub_02009808
	ldr r2, [r4, #0x7c]
	mov r1, r0
	add r2, r2, #1
	add r0, r2, #1
	str r0, [r4, #0x7c]
	str r0, [r4, #0x48]
	ldr r0, [r4]
	bl sub_02018B2C
	str r0, [r4, #0x7c]
	mov r0, #1
	str r0, [r4, #0x4c]
	add sp, sp, #0x1c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_02009B14:
	ldr r1, [r4, #0x7c]
	add r1, r1, #1
	str r1, [r4, #0x7c]
	ldrb r1, [r1]
	and r1, r1, #0xf
	bl sub_02009808
	ldr r2, [r4, #0x7c]
	mov r1, r0
	add r2, r2, #1
	add r0, r2, #1
	str r0, [r4, #0x7c]
	str r0, [r4, #0x48]
	ldr r0, [r4]
	bl sub_02018B48
	str r0, [r4, #0x7c]
	mov r0, #1
	str r0, [r4, #0x4c]
	add sp, sp, #0x1c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_02009B64:
	ldr r1, [r4, #0x7c]
	add r1, r1, #1
	str r1, [r4, #0x7c]
	ldrb r1, [r1]
	and r1, r1, #0xf
	bl sub_02009808
	ldr r2, [r4, #0x7c]
	mov r1, r0
	add r2, r2, #1
	add r0, r2, #1
	str r0, [r4, #0x7c]
	str r0, [r4, #0x48]
	ldr r0, [r4]
	bl sub_02018B64
	str r0, [r4, #0x7c]
	mov r0, #1
	str r0, [r4, #0x4c]
	add sp, sp, #0x1c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_02009BB4:
	ldr r1, [r4, #0x7c]
	add r1, r1, #1
	str r1, [r4, #0x7c]
	ldrb r1, [r1]
	and r1, r1, #0xf
	bl sub_02009808
	ldr r1, [r4, #0x7c]
	mov r2, r0
	add r0, r1, #1
	str r0, [r4, #0x7c]
	add r0, r0, #1
	str r0, [r4, #0x7c]
	ldr r1, _02009D84 ; =s_d_0208a8cc
	add r0, r4, #0x30
	bl OS_SPrintf
	ldr r1, [r4, #0x7c]
	add r0, r4, #0x30
	str r1, [r4, #0x48]
	str r0, [r4, #0x7c]
	mov r0, #1
	str r0, [r4, #0x4c]
	add sp, sp, #0x1c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_02009C14:
	ldr r1, [r4, #0x7c]
	ldr r0, _02009D88 ; =DAT_020843c8
	add r2, r1, #1
	add r1, r2, #1
	str r1, [r4, #0x7c]
	ldrb r3, [r2]
	ldrb ip, [r1]
	add r2, r1, #1
	add r1, r2, #1
	str r1, [r4, #0x7c]
	str r1, [r4, #0x48]
	str r0, [r4, #0x7c]
	mov r0, #1
	str r0, [r4, #0x4c]
	str r0, [sp]
	ldr r1, [r4, #0x94]
	mov r0, #0x12
	mul r0, r1, r0
	add r0, r0, #1
	mov r2, r0, lsl #3
	and r1, ip, #0xf
	and r3, r3, #0xf
	mov r0, #0xa
	mla r1, r3, r0, r1
	ldr lr, [r4, #0xa4]
	sub r3, r2, #2
	ldr ip, [r4, #0xa8]
	ldr r0, [r4, #0x14c]
	add r2, lr, #0xe
	add r3, ip, r3
	bl sub_0200BE28
	add sp, sp, #0x1c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_02009C9C:
	ldr r1, [r4, #0x7c]
	mov r0, #0xa
	add r2, r1, #1
	add r1, r2, #1
	str r1, [r4, #0x7c]
	ldrb r2, [r2]
	ldrb r3, [r1], #1
	and r2, r2, #0xf
	smulbb r2, r2, r0
	add r0, r1, #1
	and r3, r3, #0xf
	str r0, [r4, #0x7c]
	adds r0, r3, r2
	strne r0, [r4, #0x9c]
	movne r0, #1
	bne _02009CE8
	ldr r1, [r4, #0x74]
	mov r0, #0
	str r1, [r4, #0x9c]
_02009CE8:
	add sp, sp, #0x1c
	str r0, [r4, #0x54]
	mov r0, #1
	ldmia sp!, {r4, r5, pc}
_02009CF8:
	ldr r1, [r4, #0x7c]
	add sp, sp, #0x1c
	add r3, r1, #1
	add r1, r3, #1
	add r2, r1, #1
	add r1, r2, #1
	add r1, r1, #1
	mov r0, #1
	str r1, [r4, #0x7c]
	ldmia sp!, {r4, r5, pc}
_02009D20:
	ldr r1, [r4, #0x7c]
	add r1, r1, #1
	str r1, [r4, #0x7c]
	ldrb r1, [r1]
	and r1, r1, #0xf
	bl sub_02009808
	ldr r2, [r4, #0x7c]
	mov r1, r0
	add r2, r2, #1
	add r0, r2, #1
	str r0, [r4, #0x7c]
	str r0, [r4, #0x48]
	ldr r0, [r4]
	bl sub_02018B80
	str r0, [r4, #0x7c]
	mov r0, #1
	str r0, [r4, #0x4c]
	add sp, sp, #0x1c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_02009D70:
	mov r0, #1
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02009D7C: .word MAIN_BSS_020BAE83
_02009D80: .word DAT_020843e0
_02009D84: .word s_d_0208a8cc
_02009D88: .word DAT_020843c8

	arm_func_start sub_02009D8C
sub_02009D8C: ; 0x02009D8C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr ip, [r5, #0x50]
	mov r4, r1
	mov r7, r2
	mov r6, r3
	cmp ip, #0
	beq _02009DB0
	bl sub_02009F28
	arm_func_end sub_02009D8C
_02009DB0:
	ldr r1, [sp, #0x18]
	mov r0, r5
	bl sub_0200978C
	str r7, [r5, #0x94]
	str r6, [r5, #0x98]
	ldr r0, [r5, #0x74]
	cmp r0, #0
	moveq r0, #2
	streq r0, [r5, #0x74]
	cmp r7, #0
	beq _02009DE8
	cmp r7, #1
	beq _02009E04
	b _02009E58
_02009DE8:
	bl G2_GetBG1ScrPtr
	add r2, r0, #0x600
	mov r0, #9
	mov r1, #0
	mov r3, #0x180
	bl NNS_GfdRegisterNewVramTransferTask
	b _02009E58
_02009E04:
	cmp r6, #0
	bne _02009E40
	bl G2_GetBG1ScrPtr
	add r2, r0, #0x600
	mov r0, #9
	mov r1, #0x500
	mov r3, #0xc0
	bl NNS_GfdRegisterNewVramTransferTask
	bl G2_GetBG1ScrPtr
	add r2, r0, #0x740
	mov r0, #9
	mov r1, #0x5c0
	mov r3, #0x40
	bl NNS_GfdRegisterNewVramTransferTask
	b _02009E58
_02009E40:
	bl G2_GetBG1ScrPtr
	add r2, r0, #0x600
	mov r0, #9
	mov r1, #0x480
	mov r3, #0x180
	bl NNS_GfdRegisterNewVramTransferTask
_02009E58:
	mov r0, #0x4000000
	ldr r2, [r0]
	ldr r1, [r0]
	and r2, r2, #0x1f00
	mov r3, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, r3, #2
	orr r1, r2, r1, lsl #8
	str r1, [r0]
	ldr r2, [r0]
	ldr r1, [r0]
	and r2, r2, #0x1f00
	mov r3, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, r3, #0x10
	orr r1, r2, r1, lsl #8
	str r1, [r0]
	str r4, [r5, #0x7c]
	mov r0, #4
	str r0, [r5, #0xac]
	mov r2, #0
	str r2, [r5, #0xa4]
	mov r0, r5
	mov r1, #2
	str r2, [r5, #0xa8]
	bl sub_0200AA68
	mov r0, #1
	str r0, [r5, #0x50]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02009ECC
sub_02009ECC: ; 0x02009ECC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0200A110
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl sub_0200A110
	cmp r0, #5
	ldreq r0, [r4, #0x64]
	cmpeq r0, #0
	bne _02009F10
	mov r0, r4
	bl sub_0200A97C
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	arm_func_end sub_02009ECC
_02009F10:
	mov r0, r4
	bl sub_0200A110
	cmp r0, #9
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02009F28
sub_02009F28: ; 0x02009F28
	stmdb sp!, {r4, lr}
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov ip, r2, lsr #8
	bic r2, r1, #0x1f00
	eor r1, ip, #0x12
	orr r1, r2, r1, lsl #8
	mov r4, r0
	str r1, [r3]
	ldr r0, [r4, #0x14c]
	bl sub_0200BF58
	ldr r0, _02009FA4 ; =_0208F304
	ldr r1, _02009FA8 ; =sub_0200B6E4
	ldr r0, [r0]
	mov r2, #0
	bl sub_020100E4
	ldr r1, [r4, #0xf8]
	ldr r0, _02009FAC ; =0x33333333
	mov r2, #0xe00
	bl MIi_CpuClearFast
	ldr r1, [r4, #0x120]
	ldr r0, _02009FAC ; =0x33333333
	mov r2, #0x380
	bl MIi_CpuClearFast
	mov r0, #0
	str r0, [r4, #0x50]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x78]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02009FA4: .word MAIN_BSS_0208F304
_02009FA8: .word sub_0200B6E4
_02009FAC: .word 0x33333333
	arm_func_end sub_02009F28

	arm_func_start sub_02009FB0
sub_02009FB0: ; 0x02009FB0
	stmdb sp!, {r3, r4, r5, lr}
	cmp r2, #0
	mov r2, #0x4000000
	mov r4, r1
	ldr r1, [r2]
	mov r5, r0
	mov ip, #2
	ldr r0, [r2]
	and r3, r1, #0x1f00
	orrne ip, ip, #0x10
	bic r1, r0, #0x1f00
	eor r0, ip, r3, lsr #8
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	ldr r0, [r5, #0x14c]
	bl sub_0200BF58
	ldr r0, _0200A07C ; =_0208F304
	ldr r1, _0200A080 ; =sub_0200B6E4
	ldr r0, [r0]
	mov r2, #0
	bl sub_020100E4
	ldr r1, [r5, #0xf8]
	ldr r0, _0200A084 ; =0x33333333
	mov r2, #0xe00
	bl MIi_CpuClearFast
	ldr r1, [r5, #0x120]
	ldr r0, _0200A084 ; =0x33333333
	mov r2, #0x380
	bl MIi_CpuClearFast
	mov r1, #0
	str r1, [r5, #0x50]
	str r1, [r5, #0x54]
	str r1, [r5, #0x58]
	str r1, [r5, #0x5c]
	mov r0, #0x1e
	str r0, [r5, #0x60]
	str r1, [r5, #0x64]
	str r1, [r5, #0x68]
	mov r0, #0x3c
	str r0, [r5, #0x6c]
	ldr r0, [r5, #0x74]
	cmp r4, #0
	str r0, [r5, #0x9c]
	str r1, [r5, #0xa0]
	str r1, [r5, #0x78]
	str r1, [r5, #0x4c]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #3
	bl sub_0200AA68
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0200A07C: .word MAIN_BSS_0208F304
_0200A080: .word sub_0200B6E4
_0200A084: .word 0x33333333
	arm_func_end sub_02009FB0

	arm_func_start sub_0200A088
sub_0200A088: ; 0x0200A088
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r1, [r5, #0xf8]
	ldr r0, _0200A10C ; =0x33333333
	mov r2, #0xe00
	bl MIi_CpuClearFast
	ldr r1, [r5, #0x120]
	ldr r0, _0200A10C ; =0x33333333
	mov r2, #0x380
	bl MIi_CpuClearFast
	mov r1, #0
	str r1, [r5, #0x50]
	str r1, [r5, #0x54]
	str r1, [r5, #0x58]
	str r1, [r5, #0x5c]
	mov r0, #0x1e
	str r0, [r5, #0x60]
	str r1, [r5, #0x64]
	str r1, [r5, #0x68]
	mov r0, #0x3c
	str r0, [r5, #0x6c]
	ldr r0, [r5, #0x74]
	cmp r4, #0
	str r0, [r5, #0x9c]
	str r1, [r5, #0xa0]
	str r1, [r5, #0x78]
	str r1, [r5, #0x4c]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #3
	bl sub_0200AA68
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0200A10C: .word 0x33333333
	arm_func_end sub_0200A088

	arm_func_start sub_0200A110
sub_0200A110: ; 0x0200A110
	ldr r0, [r0, #0x50]
	bx lr
	arm_func_end sub_0200A110

	arm_func_start sub_0200A118
sub_0200A118: ; 0x0200A118
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x80
	mov r4, r0
	ldr r1, [r4, #0x50]
	cmp r1, #0
	addeq sp, sp, #0x80
	moveq r0, r1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r1, #0xa
	beq _0200A144
	bl sub_0200A84C
	arm_func_end sub_0200A118
_0200A144:
	ldr r0, [r4, #0x14c]
	bl sub_0200BEBC
	ldr r0, [r4, #0x50]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _0200A2F4
_0200A15C: ; jump table
	b _0200A188 ; case 0
	b _0200A2F4 ; case 1
	b _0200A2F4 ; case 2
	b _0200A188 ; case 3
	b _0200A188 ; case 4
	b _0200A188 ; case 5
	b _0200A190 ; case 6
	b _0200A224 ; case 7
	b _0200A25C ; case 8
	b _0200A2EC ; case 9
	b _0200A2EC ; case 10
_0200A188:
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0200A190:
	ldr r0, [r4, #0x58]
	cmp r0, #1
	bne _0200A1BC
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _0200A1BC
	sub r0, r0, #1
	str r0, [r4, #0x60]
	add sp, sp, #0x80
	ldr r0, [r4, #0x50]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0200A1BC:
	ldr r0, [r4, #0xb0]
	add r0, r0, #1
	str r0, [r4, #0xb0]
	cmp r0, #3
	bge _0200A200
	ldr r1, [r4, #0xf8]
	mov r2, #0xa80
	add r0, r1, #0x380
	bl MIi_CpuCopyFast
	ldr r1, [r4, #0xf8]
	ldr r0, _0200A7FC ; =0x33333333
	add r1, r1, #0xa80
	mov r2, #0x380
	bl MIi_CpuClearFast
	add sp, sp, #0x80
	ldr r0, [r4, #0x50]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0200A200:
	mov r0, #2
	str r0, [r4, #0x50]
	mov r0, #0
	str r0, [r4, #0xb0]
	ldr r1, [r4, #0x120]
	ldr r0, _0200A7FC ; =0x33333333
	mov r2, #0x380
	bl MIi_CpuClearFast
	b _0200A2F4
_0200A224:
	ldr r0, [r4, #0x58]
	cmp r0, #1
	bne _0200A25C
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _0200A25C
	subs r0, r0, #1
	str r0, [r4, #0x60]
	bne _0200A250
	ldr r0, [r4, #0x14c]
	bl sub_0200BF58
_0200A250:
	add sp, sp, #0x80
	ldr r0, [r4, #0x50]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0200A25C:
	ldr r0, [r4, #0xb0]
	add r0, r0, #1
	str r0, [r4, #0xb0]
	cmp r0, #3
	bge _0200A2C4
	ldr r1, [r4, #0xf8]
	mov r2, #0xa80
	add r0, r1, #0x380
	bl MIi_CpuCopyFast
	ldr r1, [r4, #0xf8]
	ldr r0, _0200A7FC ; =0x33333333
	add r1, r1, #0xa80
	mov r2, #0x380
	bl MIi_CpuClearFast
	ldr r0, [r4, #0xb0]
	cmp r0, #2
	ldreq r0, [r4, #0x50]
	cmpeq r0, #7
	bne _0200A2B8
	mov r0, #8
	str r0, [r4, #0x50]
	mov r0, #0
	str r0, [r4, #0xb0]
_0200A2B8:
	add sp, sp, #0x80
	ldr r0, [r4, #0x50]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0200A2C4:
	mov r0, #0
	str r0, [r4, #0xa4]
	str r0, [r4, #0xa8]
	mov r0, #2
	str r0, [r4, #0x50]
	ldr r1, [r4, #0x120]
	ldr r0, _0200A800 ; =0x11111111
	mov r2, #0x380
	bl MIi_CpuClearFast
	b _0200A2F4
_0200A2EC:
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0200A2F4:
	ldr r0, [r4, #0xa0]
	add r1, r0, #1
	str r1, [r4, #0xa0]
	ldr r0, [r4, #0x9c]
	cmp r1, r0
	addlt sp, sp, #0x80
	ldrlt r0, [r4, #0x50]
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	str r0, [r4, #0xa0]
	ldr r0, [r4, #0x78]
	cmp r0, #0
	bne _0200A348
	ldr r0, [r4, #0x110]
	ldr r2, [r4, #0x11c]
	str r0, [sp, #0x6c]
	ldr r0, [r4, #0x114]
	str r0, [sp, #0x68]
	ldr r0, [r4, #0x118]
	str r0, [sp, #0x64]
	b _0200A364
_0200A348:
	ldr r0, [r4, #0x138]
	ldr r2, [r4, #0x144]
	str r0, [sp, #0x6c]
	ldr r0, [r4, #0x13c]
	str r0, [sp, #0x68]
	ldr r0, [r4, #0x140]
	str r0, [sp, #0x64]
_0200A364:
	ldr r0, [sp, #0x68]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [sp, #0x70]
	ldrsb r0, [r1, #1]
	add r0, r2, r0
	str r0, [r4, #0x80]
_0200A380:
	ldr r1, [sp, #0x70]
	add r0, r4, #0x7c
	blx r1
	cmp r0, #0
	cmpne r0, #0xa
	beq _0200A790
	cmp r0, #0x5b
	bne _0200A3BC
	ldr r1, [sp, #0x70]
	add r0, r4, #0x7c
	blx r1
	mov r1, r0
	mov r0, r4
	bl sub_02009814
	b _0200A7CC
_0200A3BC:
	ldr r2, [r4, #0xa4]
	ldr r3, [r4, #0xac]
	mov r1, r2, asr #2
	str r3, [sp]
	str r0, [sp, #4]
	add r5, r2, r1, lsr #29
	mov r5, r5, asr #3
	ldr r3, [r4, #0xa8]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x68]
	str r5, [sp, #0x78]
	bl NNS_G2dCharCanvasDrawChar
	ldr r1, [r4, #0xa4]
	add r2, r1, r0
	ldr r0, [sp, #0x64]
	add r1, r2, r0
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	str r1, [r4, #0xa4]
	ldr r1, [r4, #0x78]
	mov r0, r0, asr #3
	add r0, r0, #1
	cmp r1, #1
	str r0, [sp, #0x7c]
	bne _0200A7D4
	mov r1, r5
	cmp r1, r0
	bge _0200A7D4
	mov r0, r5
	mov r0, r0, lsl #5
	str r0, [sp, #0x60]
	mov r0, r5
	mov r0, r0, lsl #6
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x60]
	add r1, r0, #0xc2
	add r2, r0, #0xd2
	ldr r0, [sp, #0x5c]
	add r0, r0, #0x20
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x60]
	add r0, r0, #0x10
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x5c]
	add r0, r0, #0x380
	str r0, [sp, #0x50]
	add r0, r1, #0x100
	str r0, [sp, #0x3c]
	add r0, r2, #0x100
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x60]
	add r0, r0, #0x12
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x5c]
	add r0, r0, #0x3a0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x60]
	add r0, r0, #0x1c0
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x5c]
	add r0, r0, #0x700
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x5c]
	add r0, r0, #0x720
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x60]
	add r0, r0, #0x1d0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x5c]
	add r0, r0, #0xa80
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x5c]
	add r0, r0, #0xaa0
	str r0, [sp, #0x28]
_0200A4E4:
	mov r0, #0
	str r0, [sp, #0x74]
	ldr r0, [sp, #0x5c]
	ldr r5, [sp, #0x60]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x58]
	ldr fp, [sp, #0x50]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x54]
	ldr r6, [sp, #0x48]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x4c]
	ldr r7, [sp, #0x40]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x44]
	ldr r8, [sp, #0x38]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x3c]
	ldr sb, [sp, #0x30]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	ldr sl, [sp, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
_0200A548:
	mov r0, r4
	mov r1, r5
	bl sub_0200A804
	ldr r3, [r4, #0xf8]
	ldr r1, [sp, #0x24]
	mov r2, #8
	add r1, r3, r1
	bl MIi_CpuClearFast
	mov r0, r4
	add r1, r5, #2
	bl sub_0200A804
	ldr r3, [r4, #0xf8]
	ldr r1, [sp, #0x20]
	mov r2, #8
	add r1, r3, r1
	bl MIi_CpuClearFast
	ldr r1, [sp, #0x1c]
	mov r0, r4
	bl sub_0200A804
	ldr r1, [r4, #0xf8]
	mov r2, #8
	add r1, r1, fp
	bl MIi_CpuClearFast
	ldr r1, [sp, #0x18]
	mov r0, r4
	bl sub_0200A804
	ldr r1, [r4, #0xf8]
	mov r2, #8
	add r1, r1, r6
	bl MIi_CpuClearFast
	ldr r1, [sp, #0x14]
	mov r0, r4
	bl sub_0200A804
	ldr r1, [r4, #0xf8]
	mov r2, #8
	add r1, r1, r7
	bl MIi_CpuClearFast
	ldr r1, [sp, #0x10]
	mov r0, r4
	bl sub_0200A804
	ldr r1, [r4, #0xf8]
	mov r2, #8
	add r1, r1, r8
	bl MIi_CpuClearFast
	ldr r1, [sp, #0xc]
	mov r0, r4
	bl sub_0200A804
	ldr r1, [r4, #0xf8]
	mov r2, #8
	add r1, r1, sb
	bl MIi_CpuClearFast
	ldr r1, [sp, #8]
	mov r0, r4
	bl sub_0200A804
	ldr r1, [r4, #0xf8]
	mov r2, #8
	add r1, r1, sl
	bl MIi_CpuClearFast
	ldr r0, [sp, #0x24]
	add r5, r5, #4
	add r0, r0, #8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add fp, fp, #8
	add r0, r0, #8
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r6, r6, #8
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r7, r7, #8
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r8, r8, #8
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add sb, sb, #8
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add sl, sl, #8
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x74]
	add r0, r0, #1
	str r0, [sp, #0x74]
	cmp r0, #4
	blt _0200A548
	ldr r0, [sp, #0x60]
	add r0, r0, #0x20
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x5c]
	add r0, r0, #0x40
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x58]
	add r0, r0, #0x40
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x54]
	add r0, r0, #0x20
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x50]
	add r0, r0, #0x40
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x4c]
	add r0, r0, #0x20
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x48]
	add r0, r0, #0x40
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x44]
	add r0, r0, #0x20
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x40]
	add r0, r0, #0x40
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	add r0, r0, #0x20
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	add r0, r0, #0x40
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	add r0, r0, #0x20
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	add r0, r0, #0x40
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	add r0, r0, #0x20
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r0, r0, #0x40
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x78]
	add r1, r0, #1
	ldr r0, [sp, #0x7c]
	str r1, [sp, #0x78]
	cmp r1, r0
	blt _0200A4E4
	b _0200A7D4
_0200A790:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0200A7B0
	mov r0, #0
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x48]
	str r0, [r4, #0x7c]
	b _0200A7D4
_0200A7B0:
	mov r0, #5
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x64]
	cmp r0, #1
	ldreq r0, [r4, #0x68]
	streq r0, [r4, #0x6c]
	b _0200A7D4
_0200A7CC:
	cmp r0, #0
	bne _0200A380
_0200A7D4:
	ldr r0, [r4, #0x9c]
	cmp r0, #0
	bne _0200A7F0
	ldr r0, [r4, #0x50]
	cmp r0, #1
	cmpne r0, #2
	beq _0200A380
_0200A7F0:
	ldr r0, [r4, #0x50]
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0200A7FC: .word 0x33333333
_0200A800: .word 0x11111111

	arm_func_start sub_0200A804
sub_0200A804: ; 0x0200A804
	ldr r2, [r0, #0x120]
	add r0, r1, #1
	ldrb r3, [r2, r1]
	ldrb r2, [r2, r0]
	and r1, r3, #0xf0
	mov r0, r1, lsl #4
	orr r0, r0, r1, lsl #8
	and r1, r3, #0xf
	orr r0, r0, r1
	mov r1, r3, lsl #0x1c
	orr r0, r0, r1, lsr #24
	and r1, r2, #0xf0
	orr r0, r0, r1, lsl #24
	orr r0, r0, r1, lsl #20
	mov r1, r2, lsl #0x1c
	orr r0, r0, r1, lsr #8
	orr r0, r0, r1, lsr #12
	bx lr
	arm_func_end sub_0200A804

	arm_func_start sub_0200A84C
sub_0200A84C: ; 0x0200A84C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x54]
	cmp r1, #0
	bne _0200A878
	bl sub_0200A9C0
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #0x9c]
	ldreq r0, [r4, #0x74]
	streq r0, [r4, #0x9c]
	arm_func_end sub_0200A84C
_0200A878:
	ldr r0, [r4, #0x50]
	cmp r0, #3
	beq _0200A898
	cmp r0, #4
	beq _0200A8F0
	cmp r0, #5
	beq _0200A948
	ldmia sp!, {r4, pc}
_0200A898:
	mov r0, r4
	bl sub_0200A97C
	cmp r0, #0
	bne _0200A8B4
	ldr r0, [r4, #0x58]
	cmp r0, #1
	ldmneia sp!, {r4, pc}
_0200A8B4:
	mov r0, #6
	str r0, [r4, #0x50]
	mov r0, #0
	str r0, [r4, #0xb0]
	ldr r1, [r4, #0x5c]
	mov r0, r4
	str r1, [r4, #0x60]
	mov r1, #5
	bl sub_0200AA68
	ldr r0, [r4, #0x58]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x14c]
	bl sub_0200BFB4
	ldmia sp!, {r4, pc}
_0200A8F0:
	mov r0, r4
	bl sub_0200A97C
	cmp r0, #0
	bne _0200A90C
	ldr r0, [r4, #0x58]
	cmp r0, #1
	ldmneia sp!, {r4, pc}
_0200A90C:
	mov r0, #7
	str r0, [r4, #0x50]
	mov r0, #0
	str r0, [r4, #0xb0]
	ldr r1, [r4, #0x5c]
	mov r0, r4
	str r1, [r4, #0x60]
	mov r1, #5
	bl sub_0200AA68
	ldr r0, [r4, #0x58]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x14c]
	bl sub_0200BF58
	ldmia sp!, {r4, pc}
_0200A948:
	ldr r0, [r4, #0x64]
	cmp r0, #1
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r4, #0x6c]
	ldmneia sp!, {r4, pc}
	mov r1, #1
	mov r0, r4
	mov r2, r1
	bl sub_02009FB0
	ldmia sp!, {r4, pc}

	arm_func_start sub_0200A97C
sub_0200A97C: ; 0x0200A97C
	ldr r1, [r0, #0x88]
	ldrh r2, [r1, #2]
	and r1, r2, #1
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	bne _0200A9B0
	and r1, r2, #2
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	ldreq r0, [r0, #0x8c]
	ldreqb r0, [r0, #4]
	cmpeq r0, #0
	beq _0200A9B8
	arm_func_end sub_0200A97C
_0200A9B0:
	mov r0, #1
	bx lr
_0200A9B8:
	mov r0, #0
	bx lr

	arm_func_start sub_0200A9C0
sub_0200A9C0: ; 0x0200A9C0
	ldr r1, [r0, #0x88]
	ldrh r2, [r1]
	and r1, r2, #1
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	bne _0200A9F4
	and r1, r2, #2
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	ldreq r0, [r0, #0x8c]
	ldreqb r0, [r0, #5]
	cmpeq r0, #0
	beq _0200A9FC
	arm_func_end sub_0200A9C0
_0200A9F4:
	mov r0, #1
	bx lr
_0200A9FC:
	mov r0, #0
	bx lr

	arm_func_start sub_0200AA04
sub_0200AA04: ; 0x0200AA04
	mov r2, #1
	str r2, [r0, #0x54]
	str r1, [r0, #0x9c]
	bx lr
	arm_func_end sub_0200AA04

	arm_func_start sub_0200AA14
sub_0200AA14: ; 0x0200AA14
	mov r1, #0
	str r1, [r0, #0x54]
	ldr r1, [r0, #0x74]
	str r1, [r0, #0x9c]
	bx lr
	arm_func_end sub_0200AA14

	arm_func_start sub_0200AA28
sub_0200AA28: ; 0x0200AA28
	mov r2, #1
	str r2, [r0, #0x58]
	str r1, [r0, #0x5c]
	bx lr
	arm_func_end sub_0200AA28

	arm_func_start sub_0200AA38
sub_0200AA38: ; 0x0200AA38
	mov r1, #0
	str r1, [r0, #0x58]
	str r1, [r0, #0x5c]
	bx lr
	arm_func_end sub_0200AA38

	arm_func_start sub_0200AA48
sub_0200AA48: ; 0x0200AA48
	mov r2, #1
	str r2, [r0, #0x64]
	str r1, [r0, #0x68]
	bx lr
	arm_func_end sub_0200AA48

	arm_func_start sub_0200AA58
sub_0200AA58: ; 0x0200AA58
	mov r1, #0
	str r1, [r0, #0x64]
	str r1, [r0, #0x68]
	bx lr
	arm_func_end sub_0200AA58

	arm_func_start sub_0200AA68
sub_0200AA68: ; 0x0200AA68
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x90]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02034C44
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200AA68

	arm_func_start sub_0200AA84
sub_0200AA84: ; 0x0200AA84
	stmdb sp!, {r3, lr}
	ldr lr, [sp, #8]
	ldr ip, [sp, #0xc]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, pc}
_0200AA9C: ; jump table
	b _0200AAB0 ; case 0
	b _0200AAC8 ; case 1
	b _0200AAE0 ; case 2
	b _0200AAF8 ; case 3
	b _0200AB10 ; case 4
	arm_func_end sub_0200AA84
_0200AAB0:
	mov r1, r2
	mov r2, r3
	mov r3, lr
	str ip, [sp]
	bl sub_0200AD34
	ldmia sp!, {r3, pc}
_0200AAC8:
	mov r1, r2
	mov r2, r3
	mov r3, lr
	str ip, [sp]
	bl sub_0200AF74
	ldmia sp!, {r3, pc}
_0200AAE0:
	mov r1, r2
	mov r2, r3
	mov r3, lr
	str ip, [sp]
	bl sub_0200B1D0
	ldmia sp!, {r3, pc}
_0200AAF8:
	mov r1, r2
	mov r2, r3
	mov r3, lr
	str ip, [sp]
	bl sub_0200B410
	ldmia sp!, {r3, pc}
_0200AB10:
	mov r1, r2
	mov r2, r3
	mov r3, lr
	str ip, [sp]
	bl sub_0200B640
	ldmia sp!, {r3, pc}

	arm_func_start sub_0200AB28
sub_0200AB28: ; 0x0200AB28
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	mov r8, r0
	ldr r2, [r8, #4]
	mov r7, r1
	cmp r2, #0
	beq _0200AB58
	ldr r1, [r8, #0x18]
	cmp r1, r7
	addeq sp, sp, #0x40
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl sub_0200AC90
	arm_func_end sub_0200AB28
_0200AB58:
	cmp r7, #0
	add r0, sp, #0
	bne _0200AB70
	ldr r1, _0200AC88 ; =s_data_message_system_system_mes_0208a8d0
	bl OS_SPrintf
	b _0200AB7C
_0200AB70:
	ldr r1, _0200AC8C ; =s_data_message_system_system_03d_m_0208a8f0
	mov r2, r7
	bl OS_SPrintf
_0200AB7C:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0200AB9C
	add r1, sp, #0
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_0200AB9C:
	mov r0, #0xc
	bl _Znwm
	str r0, [r8, #4]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r8, #4]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r8, #4]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r8, #4]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r8, #4]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0200AC64
_0200ABF4:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r8, #4]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r8, #4]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r8, #4]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r8, #4]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0200ABF4
_0200AC64:
	cmp r6, #0
	beq _0200AC7C
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200AC7C:
	str r7, [r8, #0x18]
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0200AC88: .word s_data_message_system_system_mes_0208a8d0
_0200AC8C: .word s_data_message_system_system_03d_m_0208a8f0

	arm_func_start sub_0200AC90
sub_0200AC90: ; 0x0200AC90
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mvn r0, #0
	str r0, [r5, #0x18]
	ldr r1, [r5, #4]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0200ACFC
	mov r6, r4
	arm_func_end sub_0200AC90
_0200ACC0:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0200ACE8
	bl _ZdaPv
	ldr r0, [r5, #4]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0200ACE8:
	ldr r1, [r5, #4]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0200ACC0
_0200ACFC:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0200AD18
	bl _ZdaPv
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0, #8]
_0200AD18:
	ldr r0, [r5, #4]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #4]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0200AD34
sub_0200AD34: ; 0x0200AD34
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr ip, [r5, #4]
	mov r4, r1
	cmp ip, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [ip, #4]
	cmp r4, r1
	ldmhsia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x10]
	str r1, [sp]
	ldr r1, [ip, #8]
	add r1, r1, r4, lsl #3
	ldr r1, [r1, #4]
	bl sub_02009D8C
	mov r0, #0
	str r0, [r5, #0x150]
	str r4, [r5, #0x154]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200AD34

	arm_func_start sub_0200AD80
sub_0200AD80: ; 0x0200AD80
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	mov r8, r0
	ldr r2, [r8, #8]
	mov r7, r1
	cmp r2, #0
	beq _0200ADB0
	ldr r1, [r8, #0x1c]
	cmp r1, r7
	addeq sp, sp, #0x40
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl sub_0200AED0
	arm_func_end sub_0200AD80
_0200ADB0:
	ldr r1, _0200AECC ; =s_data_message_area_m_03d_mes_0208a914
	add r0, sp, #0
	mov r2, r7
	bl OS_SPrintf
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0200ADE0
	add r1, sp, #0
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_0200ADE0:
	mov r0, #0xc
	bl _Znwm
	str r0, [r8, #8]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r8, #8]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r8, #8]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r8, #8]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r8, #8]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0200AEA8
_0200AE38:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r8, #8]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r8, #8]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r8, #8]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r8, #8]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0200AE38
_0200AEA8:
	cmp r6, #0
	beq _0200AEC0
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200AEC0:
	str r7, [r8, #0x1c]
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0200AECC: .word s_data_message_area_m_03d_mes_0208a914

	arm_func_start sub_0200AED0
sub_0200AED0: ; 0x0200AED0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mvn r0, #0
	str r0, [r5, #0x1c]
	ldr r1, [r5, #8]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0200AF3C
	mov r6, r4
	arm_func_end sub_0200AED0
_0200AF00:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0200AF28
	bl _ZdaPv
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0200AF28:
	ldr r1, [r5, #8]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0200AF00
_0200AF3C:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0200AF58
	bl _ZdaPv
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, #8]
_0200AF58:
	ldr r0, [r5, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #8]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0200AF74
sub_0200AF74: ; 0x0200AF74
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr ip, [r5, #8]
	mov r4, r1
	cmp ip, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [ip, #4]
	cmp r4, r1
	ldmhsia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x10]
	str r1, [sp]
	ldr r1, [ip, #8]
	add r1, r1, r4, lsl #3
	ldr r1, [r1, #4]
	bl sub_02009D8C
	mov r0, #1
	str r0, [r5, #0x150]
	str r4, [r5, #0x154]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200AF74

	arm_func_start sub_0200AFC0
sub_0200AFC0: ; 0x0200AFC0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	mov r8, r0
	ldr r2, [r8, #0xc]
	mov r7, r1
	cmp r2, #0
	beq _0200AFF0
	ldr r1, [r8, #0x20]
	cmp r1, r7
	addeq sp, sp, #0x40
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl sub_0200B12C
	arm_func_end sub_0200AFC0
_0200AFF0:
	cmp r7, #0x46
	add r0, sp, #0
	bge _0200B00C
	ldr r1, _0200B124 ; =s_data_message_chapter_chapter_03d_0208a930
	mov r2, r7
	bl OS_SPrintf
	b _0200B018
_0200B00C:
	ldr r1, _0200B128 ; =s_data_message_chapter_chapterx_02_0208a958
	sub r2, r7, #0x45
	bl OS_SPrintf
_0200B018:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0200B038
	add r1, sp, #0
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_0200B038:
	mov r0, #0xc
	bl _Znwm
	str r0, [r8, #0xc]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r8, #0xc]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r8, #0xc]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r8, #0xc]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r8, #0xc]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0200B100
_0200B090:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r8, #0xc]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r8, #0xc]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r8, #0xc]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r8, #0xc]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0200B090
_0200B100:
	cmp r6, #0
	beq _0200B118
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200B118:
	str r7, [r8, #0x20]
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0200B124: .word s_data_message_chapter_chapter_03d_0208a930
_0200B128: .word s_data_message_chapter_chapterx_02_0208a958

	arm_func_start sub_0200B12C
sub_0200B12C: ; 0x0200B12C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mvn r0, #0
	str r0, [r5, #0x20]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0200B198
	mov r6, r4
	arm_func_end sub_0200B12C
_0200B15C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0200B184
	bl _ZdaPv
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0200B184:
	ldr r1, [r5, #0xc]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0200B15C
_0200B198:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0200B1B4
	bl _ZdaPv
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r1, [r0, #8]
_0200B1B4:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0xc]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0200B1D0
sub_0200B1D0: ; 0x0200B1D0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr ip, [r5, #0xc]
	mov r4, r1
	cmp ip, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [ip, #4]
	cmp r4, r1
	ldmhsia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x10]
	str r1, [sp]
	ldr r1, [ip, #8]
	add r1, r1, r4, lsl #3
	ldr r1, [r1, #4]
	bl sub_02009D8C
	mov r0, #2
	str r0, [r5, #0x150]
	str r4, [r5, #0x154]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200B1D0

	arm_func_start sub_0200B21C
sub_0200B21C: ; 0x0200B21C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	mov r8, r0
	ldr r2, [r8, #0x10]
	mov r7, r1
	cmp r2, #0
	beq _0200B24C
	ldr r1, [r8, #0x24]
	cmp r1, r7
	addeq sp, sp, #0x40
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl sub_0200B36C
	arm_func_end sub_0200B21C
_0200B24C:
	ldr r1, _0200B368 ; =s_data_message_quest_quest_03d_mes_0208a980
	add r0, sp, #0
	mov r2, r7
	bl OS_SPrintf
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0200B27C
	add r1, sp, #0
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_0200B27C:
	mov r0, #0xc
	bl _Znwm
	str r0, [r8, #0x10]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r8, #0x10]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r8, #0x10]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r8, #0x10]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r8, #0x10]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0200B344
_0200B2D4:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r8, #0x10]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r8, #0x10]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r8, #0x10]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r8, #0x10]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0200B2D4
_0200B344:
	cmp r6, #0
	beq _0200B35C
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200B35C:
	str r7, [r8, #0x24]
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0200B368: .word s_data_message_quest_quest_03d_mes_0208a980

	arm_func_start sub_0200B36C
sub_0200B36C: ; 0x0200B36C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mvn r0, #0
	str r0, [r5, #0x24]
	ldr r1, [r5, #0x10]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0200B3D8
	mov r6, r4
	arm_func_end sub_0200B36C
_0200B39C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0200B3C4
	bl _ZdaPv
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0200B3C4:
	ldr r1, [r5, #0x10]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0200B39C
_0200B3D8:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0200B3F4
	bl _ZdaPv
	ldr r0, [r5, #0x10]
	mov r1, #0
	str r1, [r0, #8]
_0200B3F4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x10]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0200B410
sub_0200B410: ; 0x0200B410
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr ip, [r5, #0x10]
	mov r4, r1
	cmp ip, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [ip, #4]
	cmp r4, r1
	ldmhsia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x10]
	str r1, [sp]
	ldr r1, [ip, #8]
	add r1, r1, r4, lsl #3
	ldr r1, [r1, #4]
	bl sub_02009D8C
	mov r0, #3
	str r0, [r5, #0x150]
	str r4, [r5, #0x154]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200B410

	arm_func_start sub_0200B45C
sub_0200B45C: ; 0x0200B45C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	mov r8, r0
	ldr r2, [r8, #0x14]
	mov r7, r1
	cmp r2, #0
	beq _0200B47C
	bl sub_0200B59C
	arm_func_end sub_0200B45C
_0200B47C:
	ldr r1, _0200B598 ; =s_data_message_battle_battle_02d_m_0208a9a4
	add r0, sp, #0
	mov r2, r7
	bl OS_SPrintf
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0200B4AC
	add r1, sp, #0
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_0200B4AC:
	mov r0, #0xc
	bl _Znwm
	str r0, [r8, #0x14]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r8, #0x14]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r8, #0x14]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r8, #0x14]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r8, #0x14]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0200B574
_0200B504:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r8, #0x14]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r8, #0x14]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r8, #0x14]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r8, #0x14]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0200B504
_0200B574:
	cmp r6, #0
	beq _0200B58C
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200B58C:
	str r7, [r8, #0x28]
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0200B598: .word s_data_message_battle_battle_02d_m_0208a9a4

	arm_func_start sub_0200B59C
sub_0200B59C: ; 0x0200B59C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mvn r0, #0
	str r0, [r5, #0x28]
	ldr r1, [r5, #0x14]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0200B608
	mov r6, r4
	arm_func_end sub_0200B59C
_0200B5CC:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0200B5F4
	bl _ZdaPv
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0200B5F4:
	ldr r1, [r5, #0x14]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0200B5CC
_0200B608:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0200B624
	bl _ZdaPv
	ldr r0, [r5, #0x14]
	mov r1, #0
	str r1, [r0, #8]
_0200B624:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x14]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0200B640
sub_0200B640: ; 0x0200B640
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr ip, [r5, #0x14]
	mov r4, r1
	cmp ip, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [ip, #4]
	cmp r4, r1
	ldmhsia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x10]
	str r1, [sp]
	ldr r1, [ip, #8]
	add r1, r1, r4, lsl #3
	ldr r1, [r1, #4]
	bl sub_02009D8C
	mov r0, #4
	str r0, [r5, #0x150]
	str r4, [r5, #0x154]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200B640

	arm_func_start sub_0200B68C
sub_0200B68C: ; 0x0200B68C
	ldr ip, _0200B6A0 ; =sub_0200C060
	mov r1, #9
	str r1, [r0, #0x50]
	ldr r0, [r0, #0x14c]
	bx ip
	.align 2, 0
_0200B6A0: .word sub_0200C060
	arm_func_end sub_0200B68C

	arm_func_start sub_0200B6A4
sub_0200B6A4: ; 0x0200B6A4
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x14c]
	mov r2, r1
	add r1, r3, #0x1000
	ldr r1, [r1, #0x608]
	cmp r1, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
	mov r1, #0
	bl sub_02009FB0
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200B6A4

	arm_func_start sub_0200B6D4
sub_0200B6D4: ; 0x0200B6D4
	ldr r0, [r0, #0x14c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x60c]
	bx lr
	arm_func_end sub_0200B6D4

	arm_func_start sub_0200B6E4
sub_0200B6E4: ; 0x0200B6E4
	stmdb sp!, {r3, lr}
	bl G2_GetBG1ScrPtr
	mov r1, r0
	mov r0, #0
	mov r2, #0x180
	bl MIi_CpuClearFast
	bl G2_GetBG1ScrPtr
	add r1, r0, #0x480
	mov r0, #0
	mov r2, #0x180
	bl MIi_CpuClearFast
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200B6E4

	arm_func_start sub_0200B714
sub_0200B714: ; 0x0200B714
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	bx lr
	arm_func_end sub_0200B714

	arm_func_start sub_0200B744
sub_0200B744: ; 0x0200B744
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov lr, r0
	ldr r0, [lr, #4]
	ldr ip, [lr, #0xc]
	cmp r0, #1
	bgt _0200B7A4
	ldr r0, [lr, #0x20]
	add r4, sp, #0
	add r0, r0, #1
	str r0, [lr, #0x20]
	cmp r0, #0x28
	moveq r0, #0
	streq r0, [lr, #0x20]
	ldr r0, _0200B810 ; =DAT_020843d0
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r1, [lr, #0x20]
	ldr r2, _0200B814 ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #2
	ldr r0, [r4, r3, lsl #2]
	add ip, ip, r0
	arm_func_end sub_0200B744
_0200B7A4:
	ldr r0, [lr, #4]
	cmp r0, #0xf
	blt _0200B7CC
	ldr r0, [lr, #0x24]
	cmp r0, #0
	ldreq ip, [lr, #0xc]
	beq _0200B7CC
	mov r0, #1
	str r0, [lr, #0x28]
	ldr ip, [lr, #0xc]
_0200B7CC:
	ldr r0, [lr, #0x28]
	and r1, ip, #0xff
	ldr r2, [lr, #8]
	ldr r3, [lr, #0x1c]
	orr r0, r1, r0, lsl #25
	mov r1, r2, lsl #0x17
	orr r0, r3, r0
	orr r0, r0, r1, lsr #7
	ldr r3, [lr, #0x18]
	ldr r2, [lr, #0x14]
	ldr r1, [lr]
	orr r0, r0, #0x100
	str r0, [r1]
	orr r0, r2, r3, lsl #12
	strh r0, [r1, #4]
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200B810: .word DAT_020843d0
_0200B814: .word 0x66666667

	arm_func_start sub_0200B818
sub_0200B818: ; 0x0200B818
	stmdb sp!, {r4, lr}
	stmib r0, {r1, r2}
	ldr r1, [sp, #8]
	str r3, [r0, #0xc]
	str r1, [r0, #0x10]
	ldr lr, [sp, #0xc]
	ldr ip, _0200BBB8 ; =0x00100010
	ldr r4, [sp, #0x10]
	cmp lr, ip
	ldr r2, [sp, #0x14]
	mov r1, #0
	bgt _0200B86C
	cmp lr, ip
	bge _0200B898
	cmp lr, #0
	bgt _0200B860
	beq _0200B890
	b _0200B89C
	arm_func_end sub_0200B818
_0200B860:
	cmp lr, #0x10
	beq _0200B890
	b _0200B89C
_0200B86C:
	add r3, ip, #0x100000
	cmp lr, r3
	bgt _0200B880
	moveq r1, #2
	b _0200B89C
_0200B880:
	add r3, ip, #0x200000
	cmp lr, r3
	moveq r1, #3
	b _0200B89C
_0200B890:
	mov r1, #0
	b _0200B89C
_0200B898:
	mov r1, #1
_0200B89C:
	ldr r3, [r0, #4]
	cmp r3, #0x10
	addls pc, pc, r3, lsl #2
	b _0200BB90
_0200B8AC: ; jump table
	b _0200B8F0 ; case 0
	b _0200B918 ; case 1
	b _0200B940 ; case 2
	b _0200B964 ; case 3
	b _0200B98C ; case 4
	b _0200B9B4 ; case 5
	b _0200B9DC ; case 6
	b _0200BA04 ; case 7
	b _0200BA2C ; case 8
	b _0200BA54 ; case 9
	b _0200BA7C ; case 10
	b _0200BAA4 ; case 11
	b _0200BACC ; case 12
	b _0200BAF4 ; case 13
	b _0200BB1C ; case 14
	b _0200BB44 ; case 15
	b _0200BB6C ; case 16
_0200B8F0:
	mov r3, r4, lsr #5
	add r3, r3, #0x34
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #3
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B918:
	mov r3, r4, lsr #5
	add r3, r3, #0x38
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #3
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B940:
	mov r3, r4, lsr #5
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #2
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B964:
	mov r3, r4, lsr #5
	add r3, r3, #4
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #2
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B98C:
	mov r3, r4, lsr #5
	add r3, r3, #8
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #2
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B9B4:
	mov r3, r4, lsr #5
	add r3, r3, #0xc
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #2
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B9DC:
	mov r3, r4, lsr #5
	add r3, r3, #0x10
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #2
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BA04:
	mov r3, r4, lsr #5
	add r3, r3, #0x14
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BA2C:
	mov r3, r4, lsr #5
	add r3, r3, #0x18
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BA54:
	mov r3, r4, lsr #5
	add r3, r3, #0x1c
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BA7C:
	mov r3, r4, lsr #5
	add r3, r3, #0x20
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BAA4:
	mov r3, r4, lsr #5
	add r3, r3, #0x24
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BACC:
	mov r3, r4, lsr #5
	add r3, r3, #0x28
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BAF4:
	mov r3, r4, lsr #5
	add r3, r3, #0x2c
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BB1C:
	mov r3, r4, lsr #5
	add r3, r3, #0x30
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BB44:
	mov r3, r4, lsr #5
	add r3, r3, #0x44
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #1
	str r1, [r0, #0x18]
	mov r1, #0xc0000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BB6C:
	mov r3, r4, lsr #5
	add r3, r3, #0x84
	mov r1, r3, lsr r1
	str r1, [r0, #0x14]
	mov r1, r2, lsr #5
	str r1, [r0, #0x18]
	mov r1, #0xc0000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BB90:
	mov r3, r4, lsr #5
	add r3, r3, #0x104
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r2, r1, #1
	ldr r1, _0200BBBC ; =0x40004000
	str r2, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200BBB8: .word 0x00100010
_0200BBBC: .word 0x40004000
_0200BBC0:
	.byte 0x1E, 0xFF, 0x2F, 0xE1, 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start sub_0200BBC8
sub_0200BBC8: ; 0x0200BBC8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr ip, _0200BC5C ; =0x0200BBC4
	ldr r3, _0200BC60 ; =0x0200BBC0
	add r0, r4, #4
	mov r1, #0x80
	mov r2, #0x2c
	str ip, [sp]
	bl __cxa_vec_ctor
	mov r2, #0
	str r2, [r4]
	add r0, r4, #0x1000
	str r2, [r0, #0x604]
	str r2, [r0, #0x608]
	str r2, [r0, #0x60c]
	str r2, [r0, #0x610]
	mov r1, #0x1000
	arm_func_end sub_0200BBC8
_0200BC10:
	add r0, r4, r2, lsl #2
	add r0, r0, #0x1000
	add r2, r2, #1
	str r1, [r0, #0x620]
	cmp r2, #4
	blt _0200BC10
	add r1, r4, #0x1000
	mov r2, #0
	str r2, [r1, #0x614]
	str r2, [r1, #0x618]
	str r2, [r1, #0x61c]
	mov r0, #0x10
	str r0, [r1, #0x630]
	mov r0, #0x4000
	str r0, [r1, #0x634]
	mov r0, r4
	str r2, [r1, #0x638]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0200BC5C: .word 0x0200BBC4
_0200BC60: .word 0x0200BBC0

	arm_func_start sub_0200BC64
sub_0200BC64: ; 0x0200BC64
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr ip, [sp, #0x1c]
	add r0, r4, #0x1000
	str ip, [r0, #0x630]
	ldr lr, [sp, #0x20]
	ldr ip, [sp, #0x24]
	str lr, [r0, #0x634]
	str ip, [r0, #0x638]
	cmp r1, #0
	strne r1, [r4]
	cmp r2, #0
	addne r0, r4, #0x1000
	strne r2, [r0, #0x614]
	cmp r3, #0
	addne r0, r4, #0x1000
	ldr r1, [sp, #0x18]
	strne r3, [r0, #0x618]
	cmp r1, #0
	addne r0, r4, #0x1000
	strne r1, [r0, #0x61c]
	mov r0, r4
	bl sub_0200BCF4
	mov r5, #0
	mov r6, r5
	add r7, r4, #4
	arm_func_end sub_0200BC64
_0200BCCC:
	ldr r1, [r4]
	mov r0, r7
	add r1, r1, r6
	bl sub_0200B714
	add r5, r5, #1
	cmp r5, #0x80
	add r6, r6, #8
	add r7, r7, #0x2c
	blt _0200BCCC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0200BCF4
sub_0200BCF4: ; 0x0200BCF4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _0200BD38
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _0200BE18 ; =s_ICN_0208a9c8
	ldr r2, _0200BE1C ; =s_data_interface_i058_LZ_bin_0208a9cc
	str r4, [sp, #0xc]
	bl sub_02002AEC
	mov r4, r0
	arm_func_end sub_0200BCF4
_0200BD38:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _0200BD60
	ldr r1, _0200BE20 ; =s_ICN_i058_00_NCGR_0208a9e8
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_020032CC
	mov r6, r0
_0200BD60:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x634]
	ldr r2, [r6, #0xb8]
	add r1, r1, #0x6400000
	ldr r0, [r2, #0x14]
	ldr r2, [r2, #0x10]
	bl MIi_CpuCopyFast
	cmp r6, #0
	beq _0200BD94
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200BD94:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _0200BDBC
	ldr r1, _0200BE24 ; =s_ICN_i058_NCLR_0208a9fc
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_020033B0
	mov r6, r0
_0200BDBC:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x638]
	ldr r2, [r6, #0xb8]
	add r1, r1, #0x200
	ldr r0, [r2, #0xc]
	ldr r2, [r2, #8]
	add r1, r1, #0x5000000
	bl MIi_CpuCopyFast
	cmp r6, #0
	beq _0200BDF4
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200BDF4:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0200BE18: .word s_ICN_0208a9c8
_0200BE1C: .word s_data_interface_i058_LZ_bin_0208a9cc
_0200BE20: .word s_ICN_i058_00_NCGR_0208a9e8
_0200BE24: .word s_ICN_i058_NCLR_0208a9fc

	arm_func_start sub_0200BE28
sub_0200BE28: ; 0x0200BE28
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov lr, #0x4000000
	ldr ip, [lr]
	ldr r4, [lr]
	and ip, ip, #0x1f00
	mov r5, ip, lsr #8
	bic ip, r4, #0x1f00
	orr r4, r5, #0x10
	orr r4, ip, r4, lsl #8
	mov ip, r0
	str r4, [lr]
	mov r5, #0
	arm_func_end sub_0200BE28
_0200BE5C:
	ldr r4, [ip, #0x14]
	cmp r4, #0
	bne _0200BEA4
	ldr r4, [sp, #0x20]
	add ip, r0, #0x1000
	str r4, [sp]
	ldr r4, [ip, #0x630]
	add lr, r0, #4
	mov r0, #0x2c
	str r4, [sp, #4]
	ldr r4, [ip, #0x634]
	mla r0, r5, r0, lr
	str r4, [sp, #8]
	ldr ip, [ip, #0x638]
	str ip, [sp, #0xc]
	bl sub_0200B818
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
_0200BEA4:
	add r5, r5, #1
	cmp r5, #0x80
	add ip, ip, #0x2c
	blt _0200BE5C
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0200BEBC
sub_0200BEBC: ; 0x0200BEBC
	stmdb sp!, {r4, r5, r6, lr}
	mov r3, #0
	mov r4, r0
	mov r5, r3
	mov r1, r3
	arm_func_end sub_0200BEBC
_0200BED0:
	add r0, r4, r3, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x620]
	ldr r2, [r4]
	mov r0, r0, lsl #0xc
	add r2, r2, r5, lsl #3
	mov r0, r0, asr #0x10
	strh r0, [r2, #6]
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	add r3, r3, #1
	strh r0, [r2, #0x1e]
	cmp r3, #4
	add r5, r5, #4
	blt _0200BED0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x604]
	cmp r0, #1
	bne _0200BF24
	mov r0, r4
	bl sub_0200C0C8
_0200BF24:
	add r6, r4, #4
	mov r5, #0
_0200BF2C:
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _0200BF40
	mov r0, r6
	bl sub_0200B744
_0200BF40:
	add r5, r5, #1
	cmp r5, #0x80
	add r4, r4, #0x2c
	add r6, r6, #0x2c
	blt _0200BF2C
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0200BF58
sub_0200BF58: ; 0x0200BF58
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r5, #0
	mov r6, r5
	add r7, r4, #4
	arm_func_end sub_0200BF58
_0200BF6C:
	ldr r1, [r4]
	mov r0, r7
	add r1, r1, r6
	bl sub_0200B714
	add r5, r5, #1
	cmp r5, #0x80
	add r6, r6, #8
	add r7, r7, #0x2c
	blt _0200BF6C
	mov r2, #0
	mov r1, #0x1000
_0200BF98:
	add r0, r4, r2, lsl #2
	add r0, r0, #0x1000
	add r2, r2, #1
	str r1, [r0, #0x620]
	cmp r2, #4
	blt _0200BF98
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0200BFB4
sub_0200BFB4: ; 0x0200BFB4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r4, #0
	mov r5, r8
	mov r6, r4
	add r7, r8, #4
	arm_func_end sub_0200BFB4
_0200BFCC:
	ldr r0, [r5, #8]
	cmp r0, #0xf
	bgt _0200BFF8
	bge _0200C000
	cmp r0, #1
	bgt _0200C014
	cmp r0, #0
	blt _0200C014
	cmpne r0, #1
	beq _0200C000
	b _0200C014
_0200BFF8:
	cmp r0, #0x10
	bne _0200C014
_0200C000:
	ldr r1, [r8]
	mov r0, r7
	add r1, r1, r6
	bl sub_0200B714
	b _0200C044
_0200C014:
	ldr r0, [r5, #0x10]
	cmp r0, #0x18
	cmpne r0, #0xa8
	bne _0200C034
	ldr r0, [r5, #0x10]
	sub r0, r0, #0x10
	str r0, [r5, #0x10]
	b _0200C044
_0200C034:
	ldr r1, [r8]
	mov r0, r7
	add r1, r1, r6
	bl sub_0200B714
_0200C044:
	add r4, r4, #1
	cmp r4, #0x80
	add r5, r5, #0x2c
	add r6, r6, #8
	add r7, r7, #0x2c
	blt _0200BFCC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start sub_0200C060
sub_0200C060: ; 0x0200C060
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov ip, #1
	mov r4, r0
	mov r1, #0xf
	mov r2, #0x20
	mov r3, #0x40
	str ip, [sp]
	bl sub_0200BE28
	mov ip, #1
	mov r0, r4
	mov r1, #0x10
	mov r2, #0xa0
	mov r3, #0x40
	str ip, [sp]
	bl sub_0200BE28
	add r0, r4, #0x1000
	mov r1, #1
	str r1, [r0, #0x604]
	str r1, [r0, #0x608]
	mov r1, #0
	str r1, [r0, #0x60c]
	mov r1, #0xa
	str r1, [r0, #0x610]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_0200C060

	arm_func_start sub_0200C0C8
sub_0200C0C8: ; 0x0200C0C8
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r2, r4, #0x1000
	ldr r1, [r2, #0x608]
	cmp r1, #2
	bne _0200C12C
	ldr r0, [r2, #0x610]
	cmp r0, #0
	beq _0200C11C
	cmp r0, #0x28
	moveq r0, #0x1400
	streq r0, [r2, #0x624]
	beq _0200C108
	cmp r0, #0x24
	moveq r0, #0x1000
	streq r0, [r2, #0x624]
	arm_func_end sub_0200C0C8
_0200C108:
	add r0, r4, #0x1000
	ldr r1, [r0, #0x610]
	sub r1, r1, #1
	str r1, [r0, #0x610]
	ldmia sp!, {r4, pc}
_0200C11C:
	mov r0, #0
	str r0, [r2, #0x604]
	str r0, [r2, #0x608]
	ldmia sp!, {r4, pc}
_0200C12C:
	ldr r1, [r2, #0x610]
	cmp r1, #0
	subne r0, r1, #1
	strne r0, [r2, #0x610]
	ldmneia sp!, {r4, pc}
	ldr r1, [r2, #0x614]
	ldrh r3, [r1, #2]
	and r1, r3, #1
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	beq _0200C190
	mov r1, #2
	str r1, [r2, #0x608]
	mov r1, #0
	str r1, [r2, #0x60c]
	mov r3, #0x28
	mov r1, #6
	str r3, [r2, #0x610]
	bl sub_0200C36C
	cmp r0, #0
	bne _0200C2A8
	mov r0, r4
	mov r1, #0x43
	bl sub_0200C36C
	b _0200C2A8
_0200C190:
	and r1, r3, #2
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	beq _0200C1D8
	mov r1, #2
	str r1, [r2, #0x608]
	mov r1, #1
	str r1, [r2, #0x60c]
	mov r3, #0x28
	mov r1, #8
	str r3, [r2, #0x610]
	bl sub_0200C36C
	cmp r0, #0
	bne _0200C2A8
	mov r0, r4
	mov r1, #0x44
	bl sub_0200C36C
	b _0200C2A8
_0200C1D8:
	ldr r3, [r2, #0x618]
	ldrb r1, [r3, #4]
	cmp r1, #0
	beq _0200C2A8
	ldrh ip, [r3, #0xc]
	cmp ip, #0x40
	blo _0200C248
	cmp ip, #0x80
	bhi _0200C248
	ldrh r1, [r3, #0xa]
	cmp r1, #0x20
	blo _0200C248
	cmp r1, #0x60
	bhi _0200C248
	mov r1, #2
	str r1, [r2, #0x608]
	mov r1, #0
	str r1, [r2, #0x60c]
	mov r3, #0x28
	mov r1, #6
	str r3, [r2, #0x610]
	bl sub_0200C36C
	cmp r0, #0
	bne _0200C2A8
	mov r0, r4
	mov r1, #0x43
	bl sub_0200C36C
	b _0200C2A8
_0200C248:
	cmp ip, #0x40
	blo _0200C2A8
	cmp ip, #0x80
	bhi _0200C2A8
	ldrh r0, [r3, #0xa]
	cmp r0, #0xa0
	blo _0200C2A8
	cmp r0, #0xe0
	bhi _0200C2A8
	add r2, r4, #0x1000
	mov r0, #2
	str r0, [r2, #0x608]
	mov r1, #1
	mov r0, r4
	str r1, [r2, #0x60c]
	mov r3, #0x28
	mov r1, #8
	str r3, [r2, #0x610]
	bl sub_0200C36C
	cmp r0, #0
	bne _0200C2A8
	mov r0, r4
	mov r1, #0x44
	bl sub_0200C36C
_0200C2A8:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x608]
	cmp r0, #2
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl sub_0200C2C4
	ldmia sp!, {r4, pc}

	arm_func_start sub_0200C2C4
sub_0200C2C4: ; 0x0200C2C4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r6, #0
	mov fp, #1
	mov r7, sl
	mov r8, r6
	add sb, sl, #4
	add r4, sl, #0x1000
	mov r5, fp
	arm_func_end sub_0200C2C4
_0200C2E8:
	ldr r1, [r7, #0x14]
	cmp r1, #1
	ldreq r0, [r7, #8]
	cmpeq r0, #0xf
	bne _0200C320
	ldr r0, [r4, #0x60c]
	cmp r0, #0
	streq r5, [r7, #0x28]
	beq _0200C350
	ldr r1, [sl]
	mov r0, sb
	add r1, r1, r8
	bl sub_0200B714
	b _0200C350
_0200C320:
	cmp r1, #1
	ldreq r0, [r7, #8]
	cmpeq r0, #0x10
	bne _0200C350
	ldr r0, [r4, #0x60c]
	cmp r0, #1
	streq fp, [r7, #0x28]
	beq _0200C350
	ldr r1, [sl]
	mov r0, sb
	add r1, r1, r8
	bl sub_0200B714
_0200C350:
	add r6, r6, #1
	cmp r6, #0x80
	add r7, r7, #0x2c
	add r8, r8, #8
	add sb, sb, #0x2c
	blt _0200C2E8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start sub_0200C36C
sub_0200C36C: ; 0x0200C36C
	stmdb sp!, {r3, lr}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x61c]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02034C44
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200C36C

	arm_func_start sub_0200C38C
sub_0200C38C: ; 0x0200C38C
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #0xc]
	str r2, [r0]
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	bx lr
	arm_func_end sub_0200C38C

	arm_func_start sub_0200C3A8
sub_0200C3A8: ; 0x0200C3A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0200C3D0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0200C3A8

	arm_func_start sub_0200C3BC
sub_0200C3BC: ; 0x0200C3BC
	ldr ip, _0200C3CC ; =sub_0200C588
	str r2, [r0, #0xc]
	str r1, [r0, #4]
	bx ip
	.align 2, 0
_0200C3CC: .word sub_0200C588
	arm_func_end sub_0200C3BC

	arm_func_start sub_0200C3D0
sub_0200C3D0: ; 0x0200C3D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, _0200C400 ; =0x0200C404
	mov r1, #0x30
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200C400: .word 0x0200C404
	arm_func_end sub_0200C3D0
_0200C404:
	.byte 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start sub_0200C408
sub_0200C408: ; 0x0200C408
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	str r1, [r4, #0x10]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _0200C52C
_0200C420: ; jump table
	b _0200C430 ; case 0
	b _0200C470 ; case 1
	b _0200C4B0 ; case 2
	b _0200C4F0 ; case 3
	arm_func_end sub_0200C408
_0200C430:
	ldr r1, _0200C578 ; =0x04000008
	mov r5, #0x4000000
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, r2, lsl #8
	orr r0, r0, r3, lsl #2
	strh r0, [r1]
	ldr r1, [r5]
	ldr r0, [r5]
	and r1, r1, #0x1f00
	mov r2, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r2, #1
	orr r0, r1, r0, lsl #8
	str r0, [r5]
	b _0200C52C
_0200C470:
	ldr r1, _0200C57C ; =0x0400000A
	mov r5, #0x4000000
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, r2, lsl #8
	orr r0, r0, r3, lsl #2
	strh r0, [r1]
	ldr r1, [r5]
	ldr r0, [r5]
	and r1, r1, #0x1f00
	mov r2, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r2, #2
	orr r0, r1, r0, lsl #8
	str r0, [r5]
	b _0200C52C
_0200C4B0:
	ldr r1, _0200C580 ; =0x0400000C
	mov r5, #0x4000000
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, r2, lsl #8
	orr r0, r0, r3, lsl #2
	strh r0, [r1]
	ldr r1, [r5]
	ldr r0, [r5]
	and r1, r1, #0x1f00
	mov r2, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r2, #4
	orr r0, r1, r0, lsl #8
	str r0, [r5]
	b _0200C52C
_0200C4F0:
	ldr r1, _0200C584 ; =0x0400000E
	mov r5, #0x4000000
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, r2, lsl #8
	orr r0, r0, r3, lsl #2
	strh r0, [r1]
	ldr r1, [r5]
	ldr r0, [r5]
	and r1, r1, #0x1f00
	mov r2, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r2, #8
	orr r0, r1, r0, lsl #8
	str r0, [r5]
_0200C52C:
	ldr r1, [r4, #0x10]
	mov r0, r4
	bl sub_0200C9E8
	mov r6, r0
	ldr r1, [r4, #0x10]
	mov r0, r4
	bl sub_0200CA2C
	mov r5, r0
	mov r0, r4
	bl sub_0200C588
	mov r1, r6
	mov r0, #0
	mov r2, #0x20
	bl MIi_CpuClearFast
	mov r1, r5
	mov r0, #0
	mov r2, #0x800
	bl MIi_CpuClearFast
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0200C578: .word 0x04000008
_0200C57C: .word 0x0400000A
_0200C580: .word 0x0400000C
_0200C584: .word 0x0400000E

	arm_func_start sub_0200C588
sub_0200C588: ; 0x0200C588
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, [r0, #0xc]
	cmp r0, #0
	mov r0, #0xbc
	bne _0200C60C
	bl _Znwm
	movs r4, r0
	beq _0200C5C4
	ldr r1, _0200C678 ; =s_data_font_prs_lc_jp_NCLR_0208aa0c
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_020033B0
	mov r4, r0
	arm_func_end sub_0200C588
_0200C5C4:
	ldr r0, [r4, #0xb8]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [r4, #0xb8]
	mov r1, #0x1c0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GX_LoadBGPltt
	cmp r4, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0200C60C:
	bl _Znwm
	movs r4, r0
	beq _0200C630
	ldr r1, _0200C67C ; =s_data_font_prs_jp_NCLR_0208aa28
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_020033B0
	mov r4, r0
_0200C630:
	ldr r0, [r4, #0xb8]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [r4, #0xb8]
	mov r1, #0x1c0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GX_LoadBGPltt
	cmp r4, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0200C678: .word s_data_font_prs_lc_jp_NCLR_0208aa0c
_0200C67C: .word s_data_font_prs_jp_NCLR_0208aa28

	arm_func_start sub_0200C680
sub_0200C680: ; 0x0200C680
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0200C6BC
	mov r3, #0
	mov r0, r1
	mov r1, #0x30
	mov r2, #8
	str r3, [sp]
	bl __cxa_vec_new
	add sp, sp, #4
	str r0, [r4, #8]
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_0200C680
_0200C6BC:
	bl OS_Terminate
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}

	arm_func_start sub_0200C6C8
sub_0200C6C8: ; 0x0200C6C8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	mov r7, r1
	ldr r1, [r8, #0x10]
	mov r6, r2
	mov r5, r3
	bl sub_0200C9E8
	mov r1, #0x30
	mul r4, r7, r1
	ldr r1, [r8, #8]
	mov r2, #4
	add r1, r1, r4
	str r6, [r1, #0x28]
	str r5, [r1, #0x2c]
	ldr r3, [r8, #8]
	mov r5, r0
	ldr r1, [sp, #0x30]
	str r2, [sp]
	add r0, r3, r4
	ldr r2, [r0, #0x28]
	add r1, r5, r1, lsl #5
	ldr r3, [r0, #0x2c]
	bl NNS_G2dCharCanvasInitForBG
	ldr r3, [r8, #4]
	ldr r1, [r8, #8]
	ldr r0, [sp, #0x34]
	add r2, r1, r4
	str r2, [r2, #0x18]
	str r3, [r2, #0x1c]
	str r0, [r2, #0x20]
	ldr r1, [sp, #0x38]
	mov r0, r8
	str r1, [r2, #0x24]
	ldr r2, [r8, #8]
	ldr r1, [r8, #0x10]
	add r4, r2, r4
	bl sub_0200CA2C
	ldr r2, [sp, #0x2c]
	mov r1, #0x20
	str r2, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x30]
	mov r1, #0xe
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	ldr r3, [sp, #0x28]
	bl NNS_G2dMapScrToCharText
	mov r0, r8
	mov r1, r7
	bl sub_0200C980
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_0200C6C8

	arm_func_start sub_0200C7A4
sub_0200C7A4: ; 0x0200C7A4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	ldr r4, [sl, #8]
	mov r0, #0x30
	mla r4, r1, r0, r4
	ldr r0, [sp, #0x40]
	mov sb, r2
	cmp r0, #0
	ldr r0, [r4, #0x20]
	mov r6, r3
	ldr r8, [sp, #0x38]
	str r0, [sp, #0xc]
	beq _0200C804
	ldr r5, [r4, #0x28]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [sp, #0x3c]
	mov r3, #0
	bl NNSi_G2dFontGetStringWidth
	rsb r0, r0, r5, lsl #3
	ldr r1, [sp, #0x44]
	add r0, r0, r0, lsr #31
	rsb sb, r1, r0, asr #1
	arm_func_end sub_0200C7A4
_0200C804:
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	str r0, [sp, #8]
	ldmia r0, {r1, r7}
	ldrsb r0, [r1, #1]
	mov r5, sb
	sub r6, r6, #2
	add fp, r2, r0
	add r0, sl, #0x14
	str r0, [sp, #0x10]
_0200C82C:
	add r0, sp, #0x3c
	blx r7
	cmp r0, #0
	beq _0200C950
	cmp r0, #0x5b
	bne _0200C924
	add r0, sp, #0x3c
	blx r7
	cmp r0, #0x45
	bgt _0200C85C
	beq _0200C884
	b _0200C82C
_0200C85C:
	cmp r0, #0x50
	bgt _0200C82C
	cmp r0, #0x4b
	blt _0200C82C
	beq _0200C900
	cmp r0, #0x4d
	beq _0200C89C
	cmp r0, #0x50
	beq _0200C8C0
	b _0200C82C
_0200C884:
	ldr r0, [sp, #0x3c]
	mov r5, sb
	add r0, r0, #1
	str r0, [sp, #0x3c]
	add r6, r6, fp
	b _0200C82C
_0200C89C:
	ldr r0, [sp, #0x3c]
	add r0, r0, #1
	str r0, [sp, #0x3c]
	str r0, [sl, #0x2c]
	ldr r0, _0200C97C ; =MAIN_BSS_020BAE83
	str r0, [sp, #0x3c]
	mov r0, #1
	str r0, [sl, #0x30]
	b _0200C82C
_0200C8C0:
	ldr r0, [sp, #0x3c]
	add r2, r0, #1
	str r2, [sp, #0x3c]
	ldrb r1, [r0, #1]
	add r0, r2, #2
	mov r1, r1, lsl #0x1c
	add r1, sl, r1, lsr #26
	ldr r1, [r1, #0x34]
	str r0, [sp, #0x3c]
	str r0, [sl, #0x2c]
	ldr r0, [sl]
	bl sub_02018B10
	str r0, [sp, #0x3c]
	mov r0, #1
	str r0, [sl, #0x30]
	b _0200C82C
_0200C900:
	ldr r0, [sp, #0x3c]
	add r0, r0, #3
	str r0, [sp, #0x3c]
	str r0, [sl, #0x2c]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x3c]
	mov r0, #1
	str r0, [sl, #0x30]
	b _0200C82C
_0200C924:
	str r8, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [sp, #8]
	mov r2, r5
	mov r3, r6
	bl NNS_G2dCharCanvasDrawChar
	add r1, r5, r0
	ldr r0, [sp, #0xc]
	add r5, r1, r0
	b _0200C82C
_0200C950:
	ldr r0, [sl, #0x30]
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	str r0, [sl, #0x30]
	ldr r0, [sl, #0x2c]
	str r0, [sp, #0x3c]
	b _0200C82C
_0200C974:
	.byte 0x14, 0xD0, 0x8D, 0xE2, 0xF0, 0x8F, 0xBD, 0xE8
_0200C97C: .word MAIN_BSS_020BAE83

	arm_func_start sub_0200C980
sub_0200C980: ; 0x0200C980
	stmdb sp!, {r3, lr}
	mov r2, #0x30
	mul ip, r1, r2
	ldr lr, [r0, #8]
	mov r0, #0
	add r2, lr, ip
	ldr r1, [r2, #0x28]
	ldr r3, [r2, #0x2c]
	mov r1, r1, lsl #5
	mul r2, r3, r1
	ldr r1, [lr, ip]
	bl MIi_CpuClearFast
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200C980

	arm_func_start sub_0200C9B4
sub_0200C9B4: ; 0x0200C9B4
	stmdb sp!, {r3, lr}
	mov r3, #0x30
	mul ip, r1, r3
	ldr lr, [r0, #8]
	mov r0, r2
	add r2, lr, ip
	ldr r1, [r2, #0x28]
	ldr r3, [r2, #0x2c]
	mov r1, r1, lsl #5
	mul r2, r3, r1
	ldr r1, [lr, ip]
	bl MIi_CpuClearFast
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200C9B4

	arm_func_start sub_0200C9E8
sub_0200C9E8: ; 0x0200C9E8
	stmdb sp!, {r3, lr}
	cmp r1, #3
	mov r0, #0
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, pc}
_0200C9FC: ; jump table
	b _0200CA0C ; case 0
	b _0200CA14 ; case 1
	b _0200CA1C ; case 2
	b _0200CA24 ; case 3
	arm_func_end sub_0200C9E8
_0200CA0C:
	bl G2_GetBG0CharPtr
	ldmia sp!, {r3, pc}
_0200CA14:
	bl G2_GetBG1CharPtr
	ldmia sp!, {r3, pc}
_0200CA1C:
	bl G2_GetBG2CharPtr
	ldmia sp!, {r3, pc}
_0200CA24:
	bl G2_GetBG3CharPtr
	ldmia sp!, {r3, pc}

	arm_func_start sub_0200CA2C
sub_0200CA2C: ; 0x0200CA2C
	stmdb sp!, {r3, lr}
	cmp r1, #3
	mov r0, #0
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, pc}
_0200CA40: ; jump table
	b _0200CA50 ; case 0
	b _0200CA58 ; case 1
	b _0200CA60 ; case 2
	b _0200CA68 ; case 3
	arm_func_end sub_0200CA2C
_0200CA50:
	bl G2_GetBG0ScrPtr
	ldmia sp!, {r3, pc}
_0200CA58:
	bl G2_GetBG1ScrPtr
	ldmia sp!, {r3, pc}
_0200CA60:
	bl G2_GetBG2ScrPtr
	ldmia sp!, {r3, pc}
_0200CA68:
	bl G2_GetBG3ScrPtr
	ldmia sp!, {r3, pc}

	arm_func_start sub_0200CA70
sub_0200CA70: ; 0x0200CA70
	ldr ip, _0200CA7C ; =STD_CopyString
	add r0, r0, #0x14
	bx ip
	.align 2, 0
_0200CA7C: .word STD_CopyString
	arm_func_end sub_0200CA70

	arm_func_start sub_0200CA80
sub_0200CA80: ; 0x0200CA80
	stmdb sp!, {r3, r4, r5, lr}
	ldr ip, [r0, #8]
	mov r0, #0x30
	mla ip, r1, r0, ip
	ldr r0, [ip, #0x1c]
	mov r5, r3
	ldr r1, [ip, #0x20]
	ldr r4, [ip, #0x28]
	mov r3, #0
	bl NNSi_G2dFontGetStringWidth
	rsb r0, r0, r4, lsl #3
	sub r0, r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200CA80

	arm_func_start sub_0200CAB4
sub_0200CAB4: ; 0x0200CAB4
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #0xc]
	str r2, [r0]
	str r1, [r0, #8]
	bx lr
	arm_func_end sub_0200CAB4

	arm_func_start sub_0200CACC
sub_0200CACC: ; 0x0200CACC
	ldr ip, _0200CADC ; =sub_0200CB90
	str r2, [r0, #0xc]
	str r1, [r0, #4]
	bx ip
	.align 2, 0
_0200CADC: .word sub_0200CB90
	arm_func_end sub_0200CACC

	arm_func_start sub_0200CAE0
sub_0200CAE0: ; 0x0200CAE0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, _0200CB10 ; =0x0200C404
	mov r1, #0x30
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200CB10: .word 0x0200C404
	arm_func_end sub_0200CAE0

	arm_func_start sub_0200CB14
sub_0200CB14: ; 0x0200CB14
	stmdb sp!, {r3, lr}
	ldr r2, _0200CB8C ; =0x04001008
	ldrh r1, [r2]
	sub r3, r2, #8
	and r1, r1, #0x43
	orr r1, r1, #0x2c00
	strh r1, [r2]
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov ip, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, ip, #1
	orr r1, r2, r1, lsl #8
	str r1, [r3]
	bl sub_0200CB90
	ldr ip, _0200CB8C ; =0x04001008
	mov r0, #0
	ldrh r3, [ip]
	mov r1, #0x6200000
	mov r2, #0x20
	bic r3, r3, #3
	strh r3, [ip]
	bl MIi_CpuClearFast
	bl G2S_GetBG0ScrPtr
	mov r1, r0
	mov r0, #0
	mov r2, #0x800
	bl MIi_CpuClearFast
	ldmia sp!, {r3, pc}
	.align 2, 0
_0200CB8C: .word 0x04001008
	arm_func_end sub_0200CB14

	arm_func_start sub_0200CB90
sub_0200CB90: ; 0x0200CB90
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, [r0, #0xc]
	cmp r0, #0
	mov r0, #0xbc
	bne _0200CC14
	bl _Znwm
	movs r4, r0
	beq _0200CBCC
	ldr r1, _0200CC80 ; =s_data_font_prs_lc_jp_NCLR_0208aa40
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_020033B0
	mov r4, r0
	arm_func_end sub_0200CB90
_0200CBCC:
	ldr r0, [r4, #0xb8]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [r4, #0xb8]
	mov r1, #0x1c0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GXS_LoadBGPltt
	cmp r4, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0200CC14:
	bl _Znwm
	movs r4, r0
	beq _0200CC38
	ldr r1, _0200CC84 ; =s_data_font_prs_jp_NCLR_0208aa5c
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_020033B0
	mov r4, r0
_0200CC38:
	ldr r0, [r4, #0xb8]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [r4, #0xb8]
	mov r1, #0x1c0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GXS_LoadBGPltt
	cmp r4, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0200CC80: .word s_data_font_prs_lc_jp_NCLR_0208aa40
_0200CC84: .word s_data_font_prs_jp_NCLR_0208aa5c

	arm_func_start sub_0200CC88
sub_0200CC88: ; 0x0200CC88
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0200CCC4
	mov r3, #0
	mov r0, r1
	mov r1, #0x30
	mov r2, #8
	str r3, [sp]
	bl __cxa_vec_new
	add sp, sp, #4
	str r0, [r4, #8]
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_0200CC88
_0200CCC4:
	bl OS_Terminate
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}

	arm_func_start sub_0200CCD0
sub_0200CCD0: ; 0x0200CCD0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl G2S_GetBG0CharPtr
	mov r1, #0x30
	mul r4, r7, r1
	ldr r1, [r8, #8]
	mov r3, r0
	add r0, r1, r4
	str r6, [r0, #0x28]
	str r5, [r0, #0x2c]
	ldr r1, [r8, #8]
	mov r0, #4
	str r0, [sp]
	add r0, r1, r4
	ldr r1, [sp, #0x30]
	ldr r2, [r0, #0x28]
	add r1, r3, r1, lsl #5
	ldr r3, [r0, #0x2c]
	bl NNS_G2dCharCanvasInitForBG
	ldr r2, [r8, #4]
	ldr r1, [r8, #8]
	ldr r0, [sp, #0x34]
	add r1, r1, r4
	str r1, [r1, #0x18]
	str r2, [r1, #0x1c]
	str r0, [r1, #0x20]
	ldr r0, [sp, #0x38]
	str r0, [r1, #0x24]
	ldr r0, [r8, #8]
	add r4, r0, r4
	bl G2S_GetBG0ScrPtr
	ldr r2, [sp, #0x2c]
	mov r1, #0x20
	str r2, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x30]
	mov r1, #0xe
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	ldr r3, [sp, #0x28]
	bl NNS_G2dMapScrToCharText
	mov r0, r8
	mov r1, r7
	bl sub_0200CF7C
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_0200CCD0

	arm_func_start sub_0200CDA0
sub_0200CDA0: ; 0x0200CDA0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	ldr r4, [sl, #8]
	mov r0, #0x30
	mla r4, r1, r0, r4
	ldr r0, [sp, #0x40]
	mov sb, r2
	cmp r0, #0
	ldr r0, [r4, #0x20]
	mov r6, r3
	ldr r8, [sp, #0x38]
	str r0, [sp, #0xc]
	beq _0200CE00
	ldr r5, [r4, #0x28]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [sp, #0x3c]
	mov r3, #0
	bl NNSi_G2dFontGetStringWidth
	rsb r0, r0, r5, lsl #3
	ldr r1, [sp, #0x44]
	add r0, r0, r0, lsr #31
	rsb sb, r1, r0, asr #1
	arm_func_end sub_0200CDA0
_0200CE00:
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	str r0, [sp, #8]
	ldmia r0, {r1, r7}
	ldrsb r0, [r1, #1]
	mov r5, sb
	sub r6, r6, #2
	add fp, r2, r0
	add r0, sl, #0x10
	str r0, [sp, #0x10]
_0200CE28:
	add r0, sp, #0x3c
	blx r7
	cmp r0, #0
	beq _0200CF4C
	cmp r0, #0x5b
	bne _0200CF20
	add r0, sp, #0x3c
	blx r7
	cmp r0, #0x45
	bgt _0200CE58
	beq _0200CE80
	b _0200CE28
_0200CE58:
	cmp r0, #0x50
	bgt _0200CE28
	cmp r0, #0x4b
	blt _0200CE28
	beq _0200CEFC
	cmp r0, #0x4d
	beq _0200CE98
	cmp r0, #0x50
	beq _0200CEBC
	b _0200CE28
_0200CE80:
	ldr r0, [sp, #0x3c]
	mov r5, sb
	add r0, r0, #1
	str r0, [sp, #0x3c]
	add r6, r6, fp
	b _0200CE28
_0200CE98:
	ldr r0, [sp, #0x3c]
	add r0, r0, #1
	str r0, [sp, #0x3c]
	str r0, [sl, #0x28]
	ldr r0, _0200CF78 ; =MAIN_BSS_020BAE83
	str r0, [sp, #0x3c]
	mov r0, #1
	str r0, [sl, #0x2c]
	b _0200CE28
_0200CEBC:
	ldr r0, [sp, #0x3c]
	add r2, r0, #1
	str r2, [sp, #0x3c]
	ldrb r1, [r0, #1]
	add r0, r2, #2
	mov r1, r1, lsl #0x1c
	add r1, sl, r1, lsr #26
	ldr r1, [r1, #0x30]
	str r0, [sp, #0x3c]
	str r0, [sl, #0x28]
	ldr r0, [sl]
	bl sub_02018B10
	str r0, [sp, #0x3c]
	mov r0, #1
	str r0, [sl, #0x2c]
	b _0200CE28
_0200CEFC:
	ldr r0, [sp, #0x3c]
	add r0, r0, #3
	str r0, [sp, #0x3c]
	str r0, [sl, #0x28]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x3c]
	mov r0, #1
	str r0, [sl, #0x2c]
	b _0200CE28
_0200CF20:
	str r8, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [sp, #8]
	mov r2, r5
	mov r3, r6
	bl NNS_G2dCharCanvasDrawChar
	add r1, r5, r0
	ldr r0, [sp, #0xc]
	add r5, r1, r0
	b _0200CE28
_0200CF4C:
	ldr r0, [sl, #0x2c]
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	str r0, [sl, #0x2c]
	ldr r0, [sl, #0x28]
	str r0, [sp, #0x3c]
	b _0200CE28
_0200CF70:
	.byte 0x14, 0xD0, 0x8D, 0xE2, 0xF0, 0x8F, 0xBD, 0xE8
_0200CF78: .word MAIN_BSS_020BAE83

	arm_func_start sub_0200CF7C
sub_0200CF7C: ; 0x0200CF7C
	stmdb sp!, {r3, lr}
	mov r2, #0x30
	mul ip, r1, r2
	ldr lr, [r0, #8]
	mov r0, #0
	add r2, lr, ip
	ldr r1, [r2, #0x28]
	ldr r3, [r2, #0x2c]
	mov r1, r1, lsl #5
	mul r2, r3, r1
	ldr r1, [lr, ip]
	bl MIi_CpuClearFast
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200CF7C

	arm_func_start sub_0200CFB0
sub_0200CFB0: ; 0x0200CFB0
	ldr ip, _0200CFBC ; =STD_CopyString
	add r0, r0, #0x10
	bx ip
	.align 2, 0
_0200CFBC: .word STD_CopyString
	arm_func_end sub_0200CFB0

	arm_func_start sub_0200CFC0
sub_0200CFC0: ; 0x0200CFC0
	stmdb sp!, {r3, r4, r5, lr}
	ldr ip, [r0, #8]
	mov r0, #0x30
	mla ip, r1, r0, ip
	ldr r0, [ip, #0x1c]
	mov r5, r3
	ldr r1, [ip, #0x20]
	ldr r4, [ip, #0x28]
	mov r3, #0
	bl NNSi_G2dFontGetStringWidth
	rsb r0, r0, r4, lsl #3
	sub r0, r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200CFC0

	arm_func_start sub_0200CFF4
sub_0200CFF4: ; 0x0200CFF4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, #0
	mov r5, r0
	bl sub_0201001C
	cmp r0, #0
	movne r4, #1
	cmp r4, #0
	mov r0, #0xb8
	bne _0200D07C
	bl _Znwm
	cmp r0, #0
	beq _0200D044
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r1, _0200D104 ; =s_data_font_font_jp_utf8_NFTR_0208aa74
	mov r3, r2
	str r2, [sp, #8]
	bl sub_02002BC4
	arm_func_end sub_0200CFF4
_0200D044:
	str r0, [r5]
	mov r0, #0xb8
	bl _Znwm
	cmp r0, #0
	beq _0200D074
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r1, _0200D108 ; =s_data_font_font_jp_lc_utf8_NFTR_0208aa94
	mov r3, r2
	str r2, [sp, #8]
	bl sub_02002BC4
_0200D074:
	str r0, [r5, #4]
	b _0200D0D8
_0200D07C:
	bl _Znwm
	cmp r0, #0
	beq _0200D0A4
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r1, _0200D10C ; =s_data_font_font_us_utf8_NFTR_0208aab4
	mov r3, r2
	str r2, [sp, #8]
	bl sub_02002BC4
_0200D0A4:
	str r0, [r5]
	mov r0, #0xb8
	bl _Znwm
	cmp r0, #0
	beq _0200D0D4
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r1, _0200D110 ; =s_data_font_font_us_lc_utf8_NFTR_0208aad4
	mov r3, r2
	str r2, [sp, #8]
	bl sub_02002BC4
_0200D0D4:
	str r0, [r5, #4]
_0200D0D8:
	ldr r1, [r5]
	add r0, r5, #0xc
	ldr r1, [r1, #0x4c]
	bl NNS_G2dFontInitAuto
	ldr r1, [r5, #4]
	add r0, r5, #0x14
	ldr r1, [r1, #0x4c]
	bl NNS_G2dFontInitAuto
	mov r0, r5
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0200D104: .word s_data_font_font_jp_utf8_NFTR_0208aa74
_0200D108: .word s_data_font_font_jp_lc_utf8_NFTR_0208aa94
_0200D10C: .word s_data_font_font_us_utf8_NFTR_0208aab4
_0200D110: .word s_data_font_font_us_lc_utf8_NFTR_0208aad4

	arm_func_start sub_0200D114
sub_0200D114: ; 0x0200D114
	mov r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	str r1, [r0, #8]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	bx lr
	arm_func_end sub_0200D114

	arm_func_start sub_0200D134
sub_0200D134: ; 0x0200D134
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0200D1A0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0200D134

	arm_func_start sub_0200D148
sub_0200D148: ; 0x0200D148
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r0, #0xb8
	mov r4, r1
	bl _Znwm
	cmp r0, #0
	beq _0200D184
	ldr r1, [r5, #8]
	mov r3, #0
	stmia sp, {r1, r3}
	mov r1, r4
	mov r2, #1
	str r3, [sp, #8]
	bl sub_02002BC4
	arm_func_end sub_0200D148
_0200D184:
	str r0, [r5]
	ldr r1, [r0, #0x4c]
	mov r0, r5
	str r1, [r5, #4]
	bl sub_0200D200
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}

	arm_func_start sub_0200D1A0
sub_0200D1A0: ; 0x0200D1A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0200D1CC
	beq _0200D1C4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0200D1A0
_0200D1C4:
	mov r0, #0
	str r0, [r4]
_0200D1CC:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0200D1E4
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0xc]
_0200D1E4:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x10]
	ldmia sp!, {r4, pc}

	arm_func_start sub_0200D200
sub_0200D200: ; 0x0200D200
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r1, [r4]
	ldr r0, [r4, #4]
	ldr r2, [r1, #0x4c]
	ldr r1, [r0, #4]
	add r5, r2, #0x10
	str r1, [r4, #0x14]
	ldr r0, [r4, #4]
	add r6, r5, r1
	ldr r0, [r0, #0xc]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x14]
	bl _Znam
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	mov r0, r0, lsl #2
	bl _Znam
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	mov r2, #0
	cmp r1, #0
	ble _0200D27C
	arm_func_end sub_0200D200
_0200D260:
	ldrsb r1, [r5, r2]
	ldr r0, [r4, #0xc]
	strb r1, [r0, r2]
	ldr r1, [r4, #0x14]
	add r2, r2, #1
	cmp r2, r1
	blt _0200D260
_0200D27C:
	ldr r0, [r4, #0x18]
	bl _s32_div_f
	cmp r0, #0
	mov r3, #0
	addle sp, sp, #4
	str r0, [r4, #0x1c]
	ldmleia sp!, {r3, r4, r5, r6, pc}
_0200D298:
	ldr r0, [r4, #0x14]
	mov r5, #0
	cmp r0, #0
	ble _0200D378
	add r0, sp, #0
	mov r2, r5
_0200D2B0:
	str r2, [sp]
	ldr r1, [r4, #0x14]
	ldr ip, [r4, #0xc]
	mla r1, r3, r1, r5
	ldrsb ip, [ip, r5]
	cmp ip, #7
	addls pc, pc, ip, lsl #2
	b _0200D368
_0200D2D0: ; jump table
	b _0200D368 ; case 0
	b _0200D2F0 ; case 1
	b _0200D2F0 ; case 2
	b _0200D308 ; case 3
	b _0200D308 ; case 4
	b _0200D32C ; case 5
	b _0200D32C ; case 6
	b _0200D360 ; case 7
_0200D2F0:
	ldrb ip, [r6], #1
	strb ip, [r0]
	ldr lr, [sp]
	ldr ip, [r4, #0x10]
	str lr, [ip, r1, lsl #2]
	b _0200D368
_0200D308:
	ldrb lr, [r6]
	ldrb ip, [r6, #1]
	add r6, r6, #2
	strb lr, [r0]
	strb ip, [r0, #1]
	ldr lr, [sp]
	ldr ip, [r4, #0x10]
	str lr, [ip, r1, lsl #2]
	b _0200D368
_0200D32C:
	ldrb lr, [r6]
	ldrb ip, [r6, #1]
	strb lr, [r0]
	strb ip, [r0, #1]
	ldrb lr, [r6, #2]
	ldrb ip, [r6, #3]
	add r6, r6, #4
	strb lr, [r0, #2]
	strb ip, [r0, #3]
	ldr lr, [sp]
	ldr ip, [r4, #0x10]
	str lr, [ip, r1, lsl #2]
	b _0200D368
_0200D360:
	ldr ip, [r4, #0x10]
	str r2, [ip, r1, lsl #2]
_0200D368:
	ldr r1, [r4, #0x14]
	add r5, r5, #1
	cmp r5, r1
	blt _0200D2B0
_0200D378:
	ldr r0, [r4, #0x1c]
	add r3, r3, #1
	cmp r3, r0
	blt _0200D298
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}

	arm_func_start sub_0200D390
sub_0200D390: ; 0x0200D390
	ldr r0, [r0, #0x1c]
	bx lr
	arm_func_end sub_0200D390

	arm_func_start sub_0200D398
sub_0200D398: ; 0x0200D398
	ldr ip, [r0, #0x14]
	sub r0, ip, #1
	cmp r2, r0
	movgt r0, #0
	mlale r0, r1, ip, r2
	strle r0, [r3]
	movle r0, #1
	bx lr
	arm_func_end sub_0200D398

	arm_func_start sub_0200D3B8
sub_0200D3B8: ; 0x0200D3B8
	stmdb sp!, {r3, r4, r5, lr}
	mov ip, #0
	mov r4, r3
	add r3, sp, #0
	mov r5, r0
	str ip, [sp]
	bl sub_0200D398
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0x10]
	ldr r1, [sp]
	mov r0, #1
	ldr r1, [r2, r1, lsl #2]
	str r1, [r4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200D3B8

	arm_func_start sub_0200D3F8
sub_0200D3F8: ; 0x0200D3F8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0200E0AC
	mov r0, r4
	bl sub_0200D418
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0200D3F8

	arm_func_start sub_0200D414
sub_0200D414: ; 0x0200D414
	bx lr
	arm_func_end sub_0200D414

	arm_func_start sub_0200D418
sub_0200D418: ; 0x0200D418
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x20]
	strh r1, [r0, #0x1e]
	mov r1, #0x1000
	str r1, [r0, #0x24]
	bx lr
	arm_func_end sub_0200D418

	arm_func_start sub_0200D44C
sub_0200D44C: ; 0x0200D44C
	ldr r3, [r0]
	str r1, [r3, #0x1c]
	ldr r0, [r0]
	str r2, [r0, #0x20]
	bx lr
	arm_func_end sub_0200D44C

	arm_func_start sub_0200D460
sub_0200D460: ; 0x0200D460
	str r1, [r0, #0x24]
	bx lr
	arm_func_end sub_0200D460

	arm_func_start sub_0200D468
sub_0200D468: ; 0x0200D468
	stmdb sp!, {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	ldr ip, [r3, #0x1c]
	ldr r3, [r3, #0x20]
	add r1, r1, ip
	add r2, r2, r3
	bl sub_0200D44C
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200D468

	arm_func_start sub_0200D490
sub_0200D490: ; 0x0200D490
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	ldr r4, [sl]
	mov sb, r1
	cmp r4, #0
	mov r8, r2
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r0, [sl, #4]
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0x3c
	mul r0, r3, r0
	ldr r1, _0200D5F8 ; =DAT_0208aaf4
	ldrh r1, [r1]
	bl _s32_div_f
	ldr r2, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	sub r6, r8, r2
	sub r5, sb, r1
	smull r4, r3, r5, r5
	smull r2, r1, r6, r6
	mov r4, r4, lsr #0xc
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	mov r1, r5, asr #0x1f
	orr r4, r4, r3, lsl #20
	mov r7, r0
	add r0, r4, r2
	mov fp, r6, asr #0x1f
	str r1, [sp]
	bl FX_Sqrt
	mov r4, r0
	cmp r4, r7
	ble _0200D5D4
	mov r0, r4, asr #0x1f
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r3, [sp, #4]
	mov r1, r0, lsl #0xc
	mov r2, r4
	orr r1, r1, r5, lsr #20
	mov r0, r5, lsl #0xc
	bl _ll_div
	smull r1, r0, r7, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sl, #0x14]
	mov r1, fp, lsl #0xc
	ldr r3, [sp, #4]
	mov r2, r4
	orr r1, r1, r6, lsr #20
	mov r0, r6, lsl #0xc
	bl _ll_div
	smull r1, r0, r7, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sl, #0x18]
	ldr r0, [sl, #0x14]
	cmp r0, #0
	ldreq r0, [sl, #0x18]
	cmpeq r0, #0
	bne _0200D5B8
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl sub_0200D44C
	ldrh r0, [sl, #4]
	add sp, sp, #8
	bic r0, r0, #1
	strh r0, [sl, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_0200D490
_0200D5B8:
	str sb, [sl, #0xc]
	str r8, [sl, #0x10]
	ldrh r0, [sl, #4]
	add sp, sp, #8
	orr r0, r0, #1
	strh r0, [sl, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0200D5D4:
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl sub_0200D44C
	ldrh r0, [sl, #4]
	bic r0, r0, #1
	strh r0, [sl, #4]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0200D5F8: .word DAT_0208aaf4

	arm_func_start sub_0200D5FC
sub_0200D5FC: ; 0x0200D5FC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	ldr r0, [r7]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrh r1, [r7, #4]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r1, _0200D6E0 ; =DAT_0208aaf4
	ldrh r2, [r1]
	cmp r2, #0x1e
	addls r1, r4, #1
    movls r1, r1, lsl #0x10
	movls r4, r1, lsr #0x10
	mul r3, r4, r2
	ldr r2, [r0, #0x1c]
	ldr r1, _0200D6E4 ; =0x88888889
	sub ip, r6, r2
	smull r0, r4, r1, r3
	mov r0, ip, asr #0x1f
	mov r1, r0, lsl #0xc
	add r4, r3, r4
	mov r0, r3, lsr #0x1f
	add r4, r0, r4, asr #5
	mov r0, r4, lsl #0x10
	mov r4, r0, lsr #0x10
	mov sb, r4, lsl #0xc
	mov r8, sb, asr #0x1f
	mov r2, sb
	mov r3, r8
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	bl _ll_div
	str r0, [r7, #0x14]
	ldr r0, [r7]
	mov r2, sb
	ldr r0, [r0, #0x20]
	mov r3, r8
	sub ip, r5, r0
	mov r0, ip, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	bl _ll_div
	str r0, [r7, #0x18]
	str r6, [r7, #0xc]
	str r5, [r7, #0x10]
	mov r0, #0
	strh r0, [r7, #6]
	strh r4, [r7, #8]
	ldrh r0, [r7, #4]
	orr r0, r0, #2
	strh r0, [r7, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0200D6E0: .word DAT_0208aaf4
_0200D6E4: .word 0x88888889
	arm_func_end sub_0200D5FC

	arm_func_start sub_0200D6E8
sub_0200D6E8: ; 0x0200D6E8
	ldr ip, [r0]
	cmp ip, #0
	bxeq lr
	ldrh ip, [r0, #4]
	cmp ip, #0
	bxne lr
	ldr ip, _0200D744 ; =0x00003FFF
	str r1, [r0, #0x20]
	strh ip, [r0, #0x1e]
	strh r2, [r0, #0x1c]
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0x1c]
	str r2, [r0, #0xc]
	ldr r2, [r0]
	ldr r2, [r2, #0x20]
	str r2, [r0, #0x10]
	strh r1, [r0, #6]
	strh r3, [r0, #8]
	ldrh r1, [r0, #4]
	orr r1, r1, #4
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_0200D744: .word 0x00003FFF
	arm_func_end sub_0200D6E8

	arm_func_start sub_0200D748
sub_0200D748: ; 0x0200D748
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrh r0, [r6, #4]
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x24]
	mov r2, r4, lsl #0xc
	sub r3, r5, r0
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r3, lsr #20
	mov r0, r3, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	str r0, [r6, #0x20]
	str r5, [r6, #0xc]
	mov r0, #0
	strh r0, [r6, #6]
	strh r4, [r6, #8]
	ldrh r0, [r6, #4]
	orr r0, r0, #8
	strh r0, [r6, #4]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0200D748

	arm_func_start sub_0200D7B8
sub_0200D7B8: ; 0x0200D7B8
	ldr r3, [r0]
	cmp r3, #0
	bxeq lr
	ldrh r3, [r0, #4]
	cmp r3, #0
	bxne lr
	strh r1, [r0, #0x1c]
	mov r1, #0
	strh r1, [r0, #0x1e]
	strh r1, [r0, #6]
	strh r2, [r0, #8]
	ldrh r1, [r0, #4]
	orr r1, r1, #0x10
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_0200D7B8

	arm_func_start sub_0200D7F4
sub_0200D7F4: ; 0x0200D7F4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r7, #4]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x24]
	mov r2, r4, lsl #0xc
	sub r3, r6, r0
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r3, lsr #20
	mov r0, r3, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	str r0, [r7, #0x20]
	str r6, [r7, #0xc]
	strh r5, [r7, #0x1c]
	mov r0, #0
	strh r0, [r7, #0x1e]
	strh r0, [r7, #6]
	strh r4, [r7, #8]
	ldrh r0, [r7, #4]
	orr r0, r0, #0x20
	strh r0, [r7, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0200D7F4

	arm_func_start sub_0200D870
sub_0200D870: ; 0x0200D870
	ldr r3, [r0]
	cmp r3, #0
	bxeq lr
	ldrh r3, [r0, #4]
	cmp r3, #0
	bxne lr
	str r1, [r0, #0x20]
	mov r3, #0
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	str r1, [r0, #0xc]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	str r1, [r0, #0x10]
	strh r3, [r0, #6]
	strh r2, [r0, #8]
	ldrh r1, [r0, #4]
	orr r1, r1, #0x40
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_0200D870

	arm_func_start sub_0200D8C8
sub_0200D8C8: ; 0x0200D8C8
	ldr r2, [r0]
	cmp r2, #0
	bxeq lr
	ldrh r2, [r0, #4]
	cmp r2, #0
	bxne lr
	str r1, [r0, #0x20]
	mov r3, #0
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0x1c]
	str r2, [r0, #0xc]
	ldr r2, [r0]
	ldr r2, [r2, #0x20]
	str r2, [r0, #0x10]
	strh r3, [r0, #6]
	strh r1, [r0, #8]
	ldrh r1, [r0, #4]
	orr r1, r1, #0x100
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_0200D8C8

	arm_func_start sub_0200D924
sub_0200D924: ; 0x0200D924
	ldr r2, [r0]
	cmp r2, #0
	bxeq lr
	ldrh r2, [r0, #4]
	cmp r2, #0
	bxne lr
	str r1, [r0, #0x20]
	mov r3, #0
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0x1c]
	str r2, [r0, #0xc]
	ldr r2, [r0]
	ldr r2, [r2, #0x20]
	str r2, [r0, #0x10]
	strh r3, [r0, #6]
	strh r1, [r0, #8]
	ldrh r1, [r0, #4]
	orr r1, r1, #0x200
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_0200D924

	arm_func_start sub_0200D980
sub_0200D980: ; 0x0200D980
	ldrh r1, [r0, #4]
	tst r1, #0x100
	movne r1, #1
	strneh r1, [r0, #6]
	bx lr
	arm_func_end sub_0200D980

	arm_func_start sub_0200D994
sub_0200D994: ; 0x0200D994
	ldrh r1, [r0, #4]
	tst r1, #0x200
	movne r1, #1
	strneh r1, [r0, #6]
	bx lr
	arm_func_end sub_0200D994

	arm_func_start sub_0200D9A8
sub_0200D9A8: ; 0x0200D9A8
	ldrh r2, [r0, #4]
	tst r2, #0x100
	strne r1, [r0, #0x20]
	bx lr
	arm_func_end sub_0200D9A8

	arm_func_start sub_0200D9B8
sub_0200D9B8: ; 0x0200D9B8
	ldrh r0, [r0, #4]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_0200D9B8

	arm_func_start sub_0200D9CC
sub_0200D9CC: ; 0x0200D9CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r3, [r4]
	cmp r3, #0
	ldmeqia sp!, {r4, pc}
	ldrh r0, [r4, #4]
	tst r0, #1
	beq _0200DA64
	ldr r1, [r4, #0xc]
	ldr r0, [r3, #0x1c]
	ldr ip, [r4, #0x14]
	subs r0, r1, r0
	rsbmi r0, r0, #0
	cmp ip, #0
	rsblt r2, ip, #0
	movge r2, ip
	cmp r0, r2
	blt _0200DA3C
	ldr r2, [r4, #0x10]
	ldr r0, [r3, #0x20]
	subs r0, r2, r0
	ldr r2, [r4, #0x18]
	rsbmi r0, r0, #0
	cmp r2, #0
	rsblt r3, r2, #0
	movge r3, r2
	cmp r0, r3
	bge _0200DA58
	arm_func_end sub_0200D9CC
_0200DA3C:
	ldr r2, [r4, #0x10]
	mov r0, r4
	bl sub_0200D44C
	ldrh r0, [r4, #4]
	bic r0, r0, #1
	strh r0, [r4, #4]
	b _0200DA64
_0200DA58:
	mov r0, r4
	mov r1, ip
	bl sub_0200D468
_0200DA64:
	ldrh r0, [r4, #4]
	tst r0, #2
	beq _0200DAC8
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DA9C
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, r4
	bl sub_0200D44C
	ldrh r0, [r4, #4]
	bic r0, r0, #2
	strh r0, [r4, #4]
_0200DA9C:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bhs _0200DAC8
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	mov r0, r4
	bl sub_0200D468
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
_0200DAC8:
	ldrh r0, [r4, #4]
	tst r0, #4
	beq _0200DBA4
	ldrh r2, [r4, #0x1e]
	ldr r0, _0200E080 ; =0x0000FFFF
	ldrh r1, [r4, #0x1c]
	sub r0, r0, r2
	cmp r0, r1
	movlt r0, #0
	blt _0200DB38
	mov r0, r2, asr #4
	mov r0, r0, lsl #1
	add r1, r0, #1
	ldr r0, _0200E084 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	ldr r1, [r4, #0x20]
	ldr r3, [r4, #0xc]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r2, [r4, #0x10]
	mov r0, r4
	add r1, r3, r1
	bl sub_0200D44C
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r4, #0x1c]
	add r0, r1, r0
_0200DB38:
	strh r0, [r4, #0x1e]
	ldrh r1, [r4, #0x1c]
	ldr r0, _0200E088 ; =0x00003FFF
	ldrh r2, [r4, #0x1e]
	sub r0, r0, r1
	cmp r0, r2
	bge _0200DB90
	add r0, r1, #0xff
	add r0, r0, #0x3f00
	cmp r0, r2
	ble _0200DB90
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DB90
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, r4
	bl sub_0200D44C
	ldrh r0, [r4, #4]
	bic r0, r0, #4
	strh r0, [r4, #4]
_0200DB90:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	addlo r0, r1, #1
	strloh r0, [r4, #6]
_0200DBA4:
	ldrh r0, [r4, #4]
	tst r0, #8
	beq _0200DC08
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DBD8
	ldr r1, [r4, #0xc]
	mov r0, r4
	bl sub_0200D460
	ldrh r0, [r4, #4]
	bic r0, r0, #8
	strh r0, [r4, #4]
_0200DBD8:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bhs _0200DC08
	ldr r2, [r4, #0x24]
	ldr r1, [r4, #0x20]
	mov r0, r4
	add r1, r2, r1
	bl sub_0200D460
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
_0200DC08:
	ldrh r0, [r4, #4]
	tst r0, #0x10
	beq _0200DC8C
	ldrh r2, [r4, #0x1e]
	ldr r0, _0200E080 ; =0x0000FFFF
	ldrh r1, [r4, #0x1c]
	sub r0, r0, r2
	cmp r0, r1
	bge _0200DC60
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DC54
	ldr r0, [r4]
	mov r1, #0
	strh r1, [r0, #0x24]
	ldrh r0, [r4, #4]
	bic r0, r0, #0x10
	strh r0, [r4, #4]
_0200DC54:
	mov r0, #0
	strh r0, [r4, #0x1e]
	b _0200DC78
_0200DC60:
	ldr r0, [r4]
	strh r2, [r0, #0x24]
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r4, #0x1c]
	add r0, r1, r0
	strh r0, [r4, #0x1e]
_0200DC78:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	addlo r0, r1, #1
	strloh r0, [r4, #6]
_0200DC8C:
	ldrh r0, [r4, #4]
	tst r0, #0x20
	beq _0200DD38
	ldrh r2, [r4, #0x1e]
	ldr r0, _0200E080 ; =0x0000FFFF
	ldrh r1, [r4, #0x1c]
	sub r0, r0, r2
	cmp r0, r1
	bge _0200DCF0
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DCE4
	ldr r1, [r4, #0xc]
	mov r0, r4
	bl sub_0200D460
	ldr r0, [r4]
	mov r1, #0
	strh r1, [r0, #0x24]
	ldrh r0, [r4, #4]
	bic r0, r0, #0x20
	strh r0, [r4, #4]
_0200DCE4:
	mov r0, #0
	strh r0, [r4, #0x1e]
	b _0200DD08
_0200DCF0:
	ldr r0, [r4]
	strh r2, [r0, #0x24]
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r4, #0x1c]
	add r0, r1, r0
	strh r0, [r4, #0x1e]
_0200DD08:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bhs _0200DD38
	ldr r2, [r4, #0x24]
	ldr r1, [r4, #0x20]
	mov r0, r4
	add r1, r2, r1
	bl sub_0200D460
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
_0200DD38:
	ldrh r0, [r4, #4]
	tst r0, #0x40
	beq _0200DE18
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DD70
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, r4
	bl sub_0200D44C
	ldrh r0, [r4, #4]
	bic r0, r0, #0x40
	strh r0, [r4, #4]
_0200DD70:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bhs _0200DDD4
	ldrh r2, [r4, #0x1e]
	ldr r1, _0200E08C ; =DAT_020843f8
	ldr r0, _0200E090 ; =DAT_02084410
	ldr ip, [r4, #0x20]
	ldr r1, [r1, r2, lsl #2]
	ldr r0, [r0, r2, lsl #2]
	smull r2, r3, ip, r1
	smull r1, r0, ip, r0
	mov ip, r2, lsr #0xc
	mov r2, r1, lsr #0xc
	ldr r1, [r4, #0xc]
	orr ip, ip, r3, lsl #20
	ldr r3, [r4, #0x10]
	orr r2, r2, r0, lsl #20
	mov r0, r4
	add r1, r1, ip
	add r2, r3, r2
	bl sub_0200D44C
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
_0200DDD4:
	ldrh r0, [r4, #0x1c]
	cmp r0, #3
	addlo r0, r0, #1
	strloh r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1c]
	cmp r0, #3
	bne _0200DE18
	ldrh r0, [r4, #0x1e]
	cmp r0, #6
	addlo r0, r0, #1
	strloh r0, [r4, #0x1e]
	ldrh r0, [r4, #0x1e]
	cmp r0, #6
	moveq r0, #0
	streqh r0, [r4, #0x1e]
	mov r0, #0
	strh r0, [r4, #0x1c]
_0200DE18:
	ldrh r0, [r4, #4]
	tst r0, #0x80
	beq _0200DEE0
	ldrh r2, [r4, #0x1e]
	ldr r0, _0200E080 ; =0x0000FFFF
	ldrh r1, [r4, #0x1c]
	sub r0, r0, r2
	cmp r0, r1
	movlt r0, #0
	blt _0200DE88
	mov r0, r2, asr #4
	mov r0, r0, lsl #1
	add r1, r0, #1
	ldr r0, _0200E084 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	ldr r1, [r4, #0x20]
	ldr r3, [r4, #0xc]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r2, [r4, #0x10]
	mov r0, r4
	add r1, r3, r1
	bl sub_0200D44C
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r4, #0x1c]
	add r0, r1, r0
_0200DE88:
	strh r0, [r4, #0x1e]
	ldrh r1, [r4, #0x1c]
	ldr r0, _0200E088 ; =0x00003FFF
	ldrh r2, [r4, #0x1e]
	sub r0, r0, r1
	cmp r0, r2
	bge _0200DEE0
	add r0, r1, #0xff
	add r0, r0, #0x3f00
	cmp r0, r2
	ble _0200DEE0
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DEE0
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, r4
	bl sub_0200D44C
	ldrh r0, [r4, #4]
	bic r0, r0, #0x80
	strh r0, [r4, #4]
_0200DEE0:
	ldrh r0, [r4, #4]
	tst r0, #0x100
	beq _0200DFB4
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DF18
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, r4
	bl sub_0200D44C
	ldrh r0, [r4, #4]
	bic r0, r0, #0x100
	strh r0, [r4, #4]
_0200DF18:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bhs _0200DF70
	ldrh r2, [r4, #0x1e]
	ldr r1, _0200E08C ; =DAT_020843f8
	ldr r0, _0200E090 ; =DAT_02084410
	ldr ip, [r4, #0x20]
	ldr r1, [r1, r2, lsl #2]
	ldr r0, [r0, r2, lsl #2]
	smull r2, r3, ip, r1
	smull r1, r0, ip, r0
	mov ip, r2, lsr #0xc
	mov r2, r1, lsr #0xc
	ldr r1, [r4, #0xc]
	orr ip, ip, r3, lsl #20
	ldr r3, [r4, #0x10]
	orr r2, r2, r0, lsl #20
	mov r0, r4
	add r1, r1, ip
	add r2, r3, r2
	bl sub_0200D44C
_0200DF70:
	ldrh r0, [r4, #0x1c]
	cmp r0, #3
	addlo r0, r0, #1
	strloh r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1c]
	cmp r0, #3
	bne _0200DFB4
	ldrh r0, [r4, #0x1e]
	cmp r0, #6
	addlo r0, r0, #1
	strloh r0, [r4, #0x1e]
	ldrh r0, [r4, #0x1e]
	cmp r0, #6
	moveq r0, #0
	streqh r0, [r4, #0x1e]
	mov r0, #0
	strh r0, [r4, #0x1c]
_0200DFB4:
	ldrh r0, [r4, #4]
	tst r0, #0x200
	beq _0200E068
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DFEC
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, r4
	bl sub_0200D44C
	ldrh r0, [r4, #4]
	bic r0, r0, #0x200
	strh r0, [r4, #4]
_0200DFEC:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bhs _0200E030
	ldrh r0, [r4, #0x1e]
	mov r1, #0x1000
	ldr ip, [r4, #0xc]
	cmp r0, #0
	ldr r0, [r4, #0x20]
	subne r1, r1, #0x2000
	smull r2, r1, r0, r1
	mov r3, r2, lsr #0xc
	orr r3, r3, r1, lsl #20
	ldr r2, [r4, #0x10]
	mov r0, r4
	add r1, ip, r3
	bl sub_0200D44C
_0200E030:
	ldrh r0, [r4, #0x1c]
	cmp r0, #3
	addlo r0, r0, #1
	strloh r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1c]
	cmp r0, #3
	bne _0200E068
	ldrh r0, [r4, #0x1e]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	strh r0, [r4, #0x1e]
	mov r0, #0
	strh r0, [r4, #0x1c]
_0200E068:
	ldr r1, [r4, #0x24]
	ldr r0, _0200E094 ; =0x0400046C
	str r1, [r0]
	str r1, [r0]
	str r1, [r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200E080: .word 0x0000FFFF
_0200E084: .word FX_SinCosTable_
_0200E088: .word 0x00003FFF
_0200E08C: .word DAT_020843f8
_0200E090: .word DAT_02084410
_0200E094: .word 0x0400046C

	arm_func_start sub_0200E098
sub_0200E098: ; 0x0200E098
	ldrh r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_0200E098

	arm_func_start sub_0200E0AC
sub_0200E0AC: ; 0x0200E0AC
	str r1, [r0]
	bx lr
	arm_func_end sub_0200E0AC

	arm_func_start sub_0200E0B4
sub_0200E0B4: ; 0x0200E0B4
	mov r3, #0
	strh r3, [r0]
	strb r1, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	str r2, [r0, #8]
	str r3, [r0, #0xc]
	str r3, [r0, #0x10]
	str r3, [r0, #0x14]
	str r3, [r0, #0x18]
	bx lr
	arm_func_end sub_0200E0B4

	arm_func_start sub_0200E0E0
sub_0200E0E0: ; 0x0200E0E0
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl sub_0200E310
	cmp r0, #0
	bne _0200E10C
	mov r0, r4
	mov r1, r6
	bl sub_0200E1DC
	str r0, [r4, #8]
	arm_func_end sub_0200E0E0
_0200E10C:
	strh r6, [r4]
	strh r5, [r4, #6]
	mov r0, #0
	strh r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r0, r4
	mov r1, r6
	str r2, [r4, #0xc]
	bl sub_0200E1A4
	ldr r1, [r4, #0xc]
	cmp r5, #0
	rsb r1, r1, #0
	add r0, r1, r0
	str r0, [r4, #0x10]
	beq _0200E174
	mov r2, r5, lsl #0xc
	mov r1, #0
	str r1, [r4, #0x14]
	mov r3, r2, asr #0x1f
	mov r0, #0x1000000
	bl _ll_div
	str r0, [r4, #0x18]
	ldrh r0, [r4]
	orr r0, r0, #0x10
	strh r0, [r4]
	ldmia sp!, {r4, r5, r6, pc}
_0200E174:
	mov r0, r4
	bl sub_0200E324
	mov r1, r0
	mov r0, r4
	bl sub_0200E1A4
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	ldrh r0, [r4]
	bic r0, r0, #0x10
	strh r0, [r4]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0200E1A4
sub_0200E1A4: ; 0x0200E1A4
	cmp r1, #4
	mov r0, #0
	addls pc, pc, r1, lsl #2
	bx lr
_0200E1B4: ; jump table
	bx lr ; case 0
	b _0200E1C8 ; case 1
	b _0200E1CC ; case 2
	b _0200E1C8 ; case 3
	b _0200E1D4 ; case 4
	arm_func_end sub_0200E1A4
_0200E1C8:
	bx lr
_0200E1CC:
	mov r0, #0x10
	bx lr
_0200E1D4:
	sub r0, r0, #0x10
	bx lr

	arm_func_start sub_0200E1DC
sub_0200E1DC: ; 0x0200E1DC
	cmp r1, #4
	mov r0, #0
	addls pc, pc, r1, lsl #2
	bx lr
_0200E1EC: ; jump table
	bx lr ; case 0
	b _0200E200 ; case 1
	bx lr ; case 2
	b _0200E208 ; case 3
	bx lr ; case 4
	arm_func_end sub_0200E1DC
_0200E200:
	mov r0, #0x10
	bx lr
_0200E208:
	sub r0, r0, #0x10
	bx lr

	arm_func_start sub_0200E210
sub_0200E210: ; 0x0200E210
	stmdb sp!, {r4, lr}
	ldr r1, _0200E2CC ; =DAT_0208aaf8
	mov r4, r0
	ldrb r1, [r1]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200E310
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #4]
	cmp r0, r1
	bne _0200E274
	mov r0, r4
	bl sub_0200E324
	mov r1, r0
	mov r0, r4
	bl sub_0200E1A4
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	ldrh r0, [r4]
	bic r0, r0, #0x10
	strh r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0200E210
_0200E274:
	ldmhsia sp!, {r4, pc}
	ldr r0, _0200E2D0 ; =MAIN_BSS_020AF338
	ldr r1, [r4, #0x18]
	ldr r0, [r0]
	ldr r3, [r4, #0x14]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r2, r3, r1
	str r2, [r4, #0x14]
	ldr r0, [r4, #0x10]
	mov r0, r0, lsl #0xc
	smull r1, r0, r2, r0
	mov r1, r1, lsr #0xc
	ldr r2, [r4, #0xc]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1, asr #12
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200E2CC: .word DAT_0208aaf8
_0200E2D0: .word MAIN_BSS_020AF338

	arm_func_start sub_0200E2D4
sub_0200E2D4: ; 0x0200E2D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0200E210
	ldrb r0, [r4, #2]
	ldr r1, [r4, #8]
	tst r0, #1
	beq _0200E2FC
	ldr r0, _0200E308 ; =0x0400006C
	bl GXx_SetMasterBrightness_
	ldmia sp!, {r4, pc}
	arm_func_end sub_0200E2D4
_0200E2FC:
	ldr r0, _0200E30C ; =0x0400106C
	bl GXx_SetMasterBrightness_
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200E308: .word 0x0400006C
_0200E30C: .word 0x0400106C

	arm_func_start sub_0200E310
sub_0200E310: ; 0x0200E310
	ldrh r0, [r0]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_0200E310

	arm_func_start sub_0200E324
sub_0200E324: ; 0x0200E324
	ldrh r0, [r0]
	and r0, r0, #7
	bx lr
	arm_func_end sub_0200E324

	arm_func_start sub_0200E330
sub_0200E330: ; 0x0200E330
	mov r2, #0
	strh r2, [r0]
	strb r1, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #8]
	tst r1, #1
	ldrne r1, _0200E370 ; =0x04000040
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	ldreq r1, _0200E374 ; =0x04001040
	strb r2, [r0, #0x1c]
	str r1, [r0, #0x20]
	bx lr
	.align 2, 0
_0200E370: .word 0x04000040
_0200E374: .word 0x04001040
	arm_func_end sub_0200E330

	arm_func_start sub_0200E378
sub_0200E378: ; 0x0200E378
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r0, #0x140
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	cmp r3, #3
	str r2, [r4, #0x10]
	mov r0, #0
	movls r3, #3
	strh r0, [r4, #4]
	strh r3, [r4, #6]
	str r0, [r4, #0x14]
	ldr r0, [r4, #8]
	mov r2, r3, lsl #0xc
	mov r3, r0, lsl #0xc
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r3, lsr #20
	mov r0, r3, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	ldrh r1, [sp, #0x10]
	str r0, [r4, #0x18]
	and r0, r1, #3
	strh r0, [r4]
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	moveq r6, #1
	mov r0, r4
	movne r6, #0
	bl sub_0200E904
	mov r5, r0
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl sub_0200E614
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl sub_0200E6F8
	ldr r1, _0200E448 ; =0x04000048
	ldrh r0, [r1]
	bic r0, r0, #0x3f
	orr r0, r0, #0x1f
	strh r0, [r1]
	ldrh r0, [r4]
	bic r0, r0, #0x20
	strh r0, [r4]
	ldrh r0, [r4]
	orr r0, r0, #0x18
	strh r0, [r4]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0200E448: .word 0x04000048
	arm_func_end sub_0200E378

	arm_func_start sub_0200E44C
sub_0200E44C: ; 0x0200E44C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0200E4A4 ; =DAT_0208aaf8
	mov r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r0, [r5]
	tst r0, #8
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	moveq r4, #1
	movne r4, #0
	mov r0, r5
	bl sub_0200E904
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl sub_0200E6F8
	mov r0, r5
	bl sub_0200E834
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0200E4A4: .word DAT_0208aaf8
	arm_func_end sub_0200E44C

	arm_func_start sub_0200E4A8
sub_0200E4A8: ; 0x0200E4A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4]
	tst r0, #8
	beq _0200E524
	tst r0, #0x40
	beq _0200E4E0
	ldrb r0, [r4, #0x1c]
	eor r0, r0, #1
	and r0, r0, #1
	strb r0, [r4, #0x1c]
	ldrh r0, [r4]
	bic r0, r0, #0x40
	strh r0, [r4]
	arm_func_end sub_0200E4A8
_0200E4E0:
	ldrh r0, [r4]
	tst r0, #0x10
	beq _0200E504
	mov r0, r4
	mov r1, #1
	bl sub_0200E5C8
	ldrh r0, [r4]
	bic r0, r0, #0x10
	strh r0, [r4]
_0200E504:
	ldrh r0, [r4]
	tst r0, #0x20
	beq _0200E524
	bic r0, r0, #0x20
	strh r0, [r4]
	ldrh r0, [r4]
	bic r0, r0, #8
	strh r0, [r4]
_0200E524:
	ldrh r0, [r4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r2, [r4, #0x1c]
	ldr r0, _0200E5A0 ; =0x0000041C
	add r3, r4, #0x28
	mla r0, r2, r0, r3
	ldrb r1, [r4, #2]
	ldrb r2, [r0]
	ldrb r0, [r0, #2]
	tst r1, #1
	beq _0200E580
	mov r2, r2, lsl #8
	and r2, r2, #0xff00
	ldr r1, _0200E5A4 ; =0x04000040
	orr r0, r2, r0
	strh r0, [r1]
	mov r0, #0xbf
	strh r0, [r1, #4]
	ldmia sp!, {r4, pc}
_0200E580:
	mov r2, r2, lsl #8
	and r2, r2, #0xff00
	ldr r1, _0200E5A8 ; =0x04001040
	orr r0, r2, r0
	strh r0, [r1]
	mov r0, #0xbf
	strh r0, [r1, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200E5A0: .word 0x0000041C
_0200E5A4: .word 0x04000040
_0200E5A8: .word 0x04001040

	arm_func_start sub_0200E5AC
sub_0200E5AC: ; 0x0200E5AC
	cmp r2, r1
	andgt r0, r2, #0xff
	bxgt lr
	cmp r3, r1
	andlt r0, r3, #0xff
	andge r0, r1, #0xff
	bx lr
	arm_func_end sub_0200E5AC

	arm_func_start sub_0200E5C8
sub_0200E5C8: ; 0x0200E5C8
	ldrb r2, [r0, #2]
	tst r2, #1
	beq _0200E5EC
	mov r3, #0x4000000
	ldr r2, [r3]
	bic r2, r2, #0xe000
	orr r1, r2, r1, lsl #13
	str r1, [r3]
	b _0200E600
	arm_func_end sub_0200E5C8
_0200E5EC:
	ldr r3, _0200E610 ; =0x04001000
	ldr r2, [r3]
	bic r2, r2, #0xe000
	orr r1, r2, r1, lsl #13
	str r1, [r3]
_0200E600:
	ldrb r1, [r0, #2]
	orr r1, r1, #4
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
_0200E610: .word 0x04001000

	arm_func_start sub_0200E614
sub_0200E614: ; 0x0200E614
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r3, _0200E6F4 ; =0x0000041C
	mov sl, r0
	mov r0, r3, lsr #1
	mla r7, r1, r3, sl
	mov r6, #0
	mla r8, r1, r0, sl
	mov sb, r2
	mov r5, r6
	mov r4, #0xff
	mov fp, r6
	arm_func_end sub_0200E614
_0200E640:
	ldr r1, [sl, #0xc]
	mov r0, sl
	sub r1, r1, #1
	mov r2, r5
	mov r3, r4
	bl sub_0200E5AC
	add r1, r7, r6, lsl #2
	strb r0, [r1, #0x28]
	ldr r1, [sl, #0xc]
	mov r0, sl
	mov r2, fp
	add r1, r1, #1
	mov r3, #0xff
	bl sub_0200E5AC
	add r1, r7, r6, lsl #2
	strb r0, [r1, #0x2a]
	ldr r1, [sl, #0x10]
	mov r0, sl
	mov r2, #0
	sub r1, r1, sb
	mov r3, #0xbf
	bl sub_0200E5AC
	add r1, r7, r6, lsl #2
	strb r0, [r1, #0x29]
	ldr r1, [sl, #0x10]
	mov r0, sl
	add r1, r1, sb
	mov r2, #0
	add r1, r1, #2
	mov r3, #0xbf
	bl sub_0200E5AC
	add r1, r7, r6, lsl #2
	strb r0, [r1, #0x2b]
	ldrb r2, [r1, #0x28]
	add r0, r8, r6, lsl #1
	add r6, r6, #1
	mov r2, r2, lsl #8
	ldrb r1, [r1, #0x2a]
	and r2, r2, #0xff00
	add r0, r0, #0x800
	orr r1, r2, r1
	strh r1, [r0, #0x60]
	cmp r6, #0xc0
	blt _0200E640
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0200E6F4: .word 0x0000041C

	arm_func_start sub_0200E6F8
sub_0200E6F8: ; 0x0200E6F8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r2
	mov r2, sb, lsl #0xc
	smull r4, r3, r2, r2
	mov r5, r4, lsr #0xc
	ldr r2, _0200E830 ; =0x0000041C
	mov sl, r0
	mov r0, r2, lsr #1
	mla r6, r1, r2, sl
	mla r7, r1, r0, sl
	orr r5, r5, r3, lsl #20
	mov r8, #0
	mov fp, #0x80
	arm_func_end sub_0200E6F8
_0200E72C:
	ldr r0, [sl, #0x10]
	mov r4, #0
	cmp r8, r0
	bge _0200E768
	sub r0, r0, r8
	cmp r0, sb
	bge _0200E79C
	mov r2, r0, lsl #0xc
	smull r1, r0, r2, r2
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r0, r5, r1
	bl FX_Sqrt
	mov r4, r0, asr #0xc
	b _0200E79C
_0200E768:
	ble _0200E798
	sub r0, r8, r0
	cmp r0, sb
	bge _0200E79C
	mov r2, r0, lsl #0xc
	smull r1, r0, r2, r2
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r0, r5, r1
	bl FX_Sqrt
	mov r4, r0, asr #0xc
	b _0200E79C
_0200E798:
	mov r4, sb
_0200E79C:
	cmp r4, #0
	addle r0, r6, r8, lsl #2
	strleb fp, [r0, #0x28]
	strleb fp, [r0, #0x2a]
	ble _0200E7F0
	ldr r1, [sl, #0xc]
	mov r0, sl
	sub r1, r1, r4
	mov r2, #0
	mov r3, #0xff
	bl sub_0200E5AC
	add r1, r6, r8, lsl #2
	strb r0, [r1, #0x28]
	ldr r1, [sl, #0xc]
	mov r0, sl
	mov r2, #0
	add r1, r1, r4
	mov r3, #0xff
	bl sub_0200E5AC
	add r1, r6, r8, lsl #2
	strb r0, [r1, #0x2a]
_0200E7F0:
	add r0, r6, r8, lsl #2
	ldrb r2, [r0, #0x28]
	ldrb r1, [r0, #0x2a]
	add r0, r7, r8, lsl #1
	mov r2, r2, lsl #8
	and r2, r2, #0xff00
	orr r1, r2, r1
	add r0, r0, #0x800
	strh r1, [r0, #0x60]
	add r8, r8, #1
	cmp r8, #0xc0
	blt _0200E72C
	ldrh r0, [sl]
	orr r0, r0, #0x40
	strh r0, [sl]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0200E830: .word 0x0000041C

	arm_func_start sub_0200E834
sub_0200E834: ; 0x0200E834
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r2, [r4, #6]
	ldrh r1, [r4, #4]
	cmp r1, r2
	bne _0200E8A0
	ldrh r1, [r4]
	tst r1, #1
	beq _0200E860
	mov r1, #0
	bl sub_0200E5C8
	arm_func_end sub_0200E834
_0200E860:
	ldrh r0, [r4]
	tst r0, #2
	beq _0200E884
	mov r0, #0
	strb r0, [r4, #0x24]
	strb r0, [r4, #0x25]
	mov r0, #1
	strb r0, [r4, #0x26]
	strb r0, [r4, #0x27]
_0200E884:
	ldrh r0, [r4]
	orr r0, r0, #0x20
	strh r0, [r4]
	ldrb r0, [r4, #2]
	bic r0, r0, #4
	strb r0, [r4, #2]
	ldmia sp!, {r4, pc}
_0200E8A0:
	ldmhsia sp!, {r4, pc}
	ldr r1, [r4, #0x18]
	mov r0, #0x3c000
	umull ip, r3, r1, r0
	mov r2, r1, asr #0x1f
	ldr r1, _0200E900 ; =DAT_0208aafa
	mla r3, r2, r0, r3
	mov ip, ip, lsr #0xc
	orr ip, ip, r3, lsl #20
	ldrh r0, [r1]
	mov r1, ip, asr #0x1f
	mov r1, r1, lsl #0xc
	mov r2, r0, lsl #0xc
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	ldr r1, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200E900: .word DAT_0208aafa

	arm_func_start sub_0200E904
sub_0200E904: ; 0x0200E904
	ldrh r1, [r0]
	ldr r0, [r0, #0x14]
	mov r0, r0, asr #0xc
	tst r1, #1
	rsbeq r0, r0, #0x140
	bx lr
	arm_func_end sub_0200E904

	arm_func_start sub_0200E91C
sub_0200E91C: ; 0x0200E91C
	ldrh r3, [r0]
	mov r1, #0
	mov r2, r1
	tst r3, #8
	movne ip, #1
	moveq ip, r1
	cmp ip, #0
	bne _0200E944
	tst r3, #2
	movne r2, #1
	arm_func_end sub_0200E91C
_0200E944:
	cmp r2, #0
	beq _0200E958
	ldrb r0, [r0, #2]
	tst r0, #4
	moveq r1, #1
_0200E958:
	mov r0, r1
	bx lr

	arm_func_start sub_0200E960
sub_0200E960: ; 0x0200E960
	stmdb sp!, {r3, lr}
	str r1, [r0]
	mov r1, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	str r1, [r0, #0x14]
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x24]
	strh r1, [r0, #0x26]
	strb r1, [r0, #0x30]
	mov r2, r1
	mov r3, r1
	str r1, [sp]
	bl sub_0200EBF4
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200E960

	arm_func_start sub_0200E9A4
sub_0200E9A4: ; 0x0200E9A4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r5, [r0, #4]
	ldr r4, [r0, #8]
	ldr lr, [r5, #4]
	cmp r4, #0
	mov r4, #0
	ble _0200EA78
	ldr r5, _0200EA80 ; =0x000001FF
	add r6, r5, #0x200
	arm_func_end sub_0200E9A4
_0200E9C8:
	ldrh sl, [lr]
	ldrsh r8, [r0, #0xe]
	ldrh r7, [r0, #0x24]
	and sb, sl, #0xff00
	add r8, sl, r8
	and r8, r8, #0xff
	mov r8, r8, lsl #0x10
	orr r8, sb, r8, lsr #16
	ldrb sb, [r0, #0x28]
	orr r8, r8, r7, lsl #8
	ldrb r7, [r0, #0x30]
	orr fp, r8, sb, lsl #10
	ldrh ip, [lr, #2]
	ldrsh r8, [r0, #0xc]
	ldrh sl, [lr, #4]
	ldrh sb, [r0, #0x1a]
	add ip, ip, r8
	ldrh r8, [r0, #0x18]
	orr r7, fp, r7, lsl #12
	and ip, ip, r5
	strh r7, [r1]
	ldrh r7, [lr, #2]
	add r8, r8, sl, lsl r3
	add sl, sb, sl, asr #12
	and sb, r6, r8, asr r2
	ldrh r8, [r0, #0x26]
	mov ip, ip, lsl #0x10
	and r7, r7, #0xfe00
	orr r7, r7, ip, lsr #16
	orr r7, r7, r8, lsl #9
	strh r7, [r1, #2]
	ldrh ip, [r0, #0x1c]
	mov r7, sl, lsl #0x10
	mov r8, sb, lsl #0x10
	mov sb, ip, lsl #0xa
	orr r7, sb, r7, lsr #4
	orr r7, r7, r8, lsr #16
	strh r7, [r1, #4]
	ldr r7, [r0, #8]
	add r4, r4, #1
	cmp r4, r7
	add lr, lr, #6
	add r1, r1, #8
	blt _0200E9C8
_0200EA78:
	mov r0, r1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0200EA80: .word 0x000001FF

	arm_func_start sub_0200EA84
sub_0200EA84: ; 0x0200EA84
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	str r1, [r4, #4]
	mov r1, r2
	mov r2, r3
	bl sub_0200EB28
	mov r1, #0
	mov r2, #1
	ldr r0, [sp, #0x14]
	str r2, [r4, #0x14]
	ldr r2, [sp, #0x10]
	strh r0, [r4, #0x18]
	ldr r0, [sp, #0x18]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r1, [r4, #0x24]
	strh r1, [r4, #0x26]
	strb r1, [r4, #0x30]
	ldr r2, [r4, #4]
	mov r0, r4
	ldrh ip, [r2]
	mov r2, r1
	mov r3, r1
	str ip, [r4, #8]
	str r1, [sp]
	bl sub_0200EBF4
	ldr r0, [r4, #8]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_0200EA84

	arm_func_start sub_0200EAFC
sub_0200EAFC: ; 0x0200EAFC
	ldr r2, [r0, #4]
	cmp r2, r1
	ldreq r0, [r0, #8]
	bxeq lr
	str r1, [r0, #4]
	ldrh r1, [r1]
	str r1, [r0, #8]
	mov r0, r1
	bx lr
	arm_func_end sub_0200EAFC

	arm_func_start sub_0200EB20
sub_0200EB20: ; 0x0200EB20
	strh r1, [r0, #0x1a]
	bx lr
	arm_func_end sub_0200EB20

	arm_func_start sub_0200EB28
sub_0200EB28: ; 0x0200EB28
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	bx lr
	arm_func_end sub_0200EB28

	arm_func_start sub_0200EB34
sub_0200EB34: ; 0x0200EB34
	cmp r1, #0x20
	bge _0200EB54
	cmp r2, #0
	movne r2, #3
	moveq r2, #1
	strh r2, [r0, #0x24]
	strh r1, [r0, #0x26]
	bx lr
	arm_func_end sub_0200EB34
_0200EB54:
	mov r1, #0
	strh r1, [r0, #0x24]
	strh r1, [r0, #0x26]
	bx lr

	arm_func_start sub_0200EB64
sub_0200EB64: ; 0x0200EB64
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	strb r1, [r0, #0x30]
	bx lr
	arm_func_end sub_0200EB64

	arm_func_start sub_0200EB78
sub_0200EB78: ; 0x0200EB78
	ldr ip, _0200EB80 ; =sub_0200E9A4
	bx ip
	.align 2, 0
_0200EB80: .word sub_0200E9A4
	arm_func_end sub_0200EB78

	arm_func_start sub_0200EB84
sub_0200EB84: ; 0x0200EB84
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_0201001C
	ldr r0, [r0, #0x20]
	ldrb r4, [r0, #4]
	cmp r4, #0
	beq _0200EBB4
	mov r0, r5
	bl sub_0200EC0C
	cmp r0, #0
	movne r0, r4
	ldmneia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200EB84
_0200EBB4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0200EBBC
sub_0200EBBC: ; 0x0200EBBC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_0201001C
	ldr r0, [r0, #0x20]
	ldrb r4, [r0, #5]
	cmp r4, #0
	beq _0200EBEC
	mov r0, r5
	bl sub_0200EC0C
	cmp r0, #0
	movne r0, r4
	ldmneia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200EBBC
_0200EBEC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0200EBF4
sub_0200EBF4: ; 0x0200EBF4
	strh r1, [r0, #0x32]
	strh r2, [r0, #0x34]
	ldrsh r1, [sp]
	strh r3, [r0, #0x36]
	strh r1, [r0, #0x38]
	bx lr
	arm_func_end sub_0200EBF4

	arm_func_start sub_0200EC0C
sub_0200EC0C: ; 0x0200EC0C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrsh r0, [r4, #0x32]
	cmp r0, #0
	ldrgtsh r0, [r4, #0x34]
	cmpgt r0, #0
	movle r0, #0
	ldmleia sp!, {r3, r4, r5, pc}
	bl sub_0201001C
	ldr r5, [r0, #0x20]
	ldrsh r0, [r4, #0x32]
	ldrsh lr, [r4, #0xc]
	ldrsh r2, [r4, #0x36]
	ldrsh r1, [r4, #0x34]
	ldrsh ip, [r4, #0xe]
	ldrsh r3, [r4, #0x38]
	add lr, lr, r2
	add r2, r0, r0, lsr #31
	add r4, ip, r3
	subs ip, lr, r2, asr #1
	add r3, r1, r1, lsr #31
	sub r4, r4, r3, asr #1
	ldrh r2, [r5, #0xa]
	ldrh r3, [r5, #0xc]
	movmi ip, #0
	bmi _0200EC7C
	cmp ip, #0x100
	movgt ip, #0x100
	arm_func_end sub_0200EC0C
_0200EC7C:
	cmp r4, #0
	movlt r4, #0
	blt _0200EC90
	cmp r4, #0xc0
	movgt r4, #0xc0
_0200EC90:
	cmp r2, ip
	blt _0200ECA4
	add r0, ip, r0
	cmp r2, r0
	ble _0200ECAC
_0200ECA4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0200ECAC:
	cmp r3, r4
	blt _0200ECC0
	add r0, r4, r1
	cmp r3, r0
	ble _0200ECC8
_0200ECC0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0200ECC8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0200ECD0
sub_0200ECD0: ; 0x0200ECD0
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	str r3, [r4, #0x2c]
	str r2, [r4]
	str r1, [r4, #4]
	mov r1, #0
	ldr r0, [sp, #0x10]
	str r1, [r4, #0x30]
	str r0, [r4, #0x10]
	mov r0, r0, lsl #1
	bl _Znam
	str r0, [r4, #8]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x10]
	mov r1, #0x3c
	mov r2, #8
	bl __cxa_vec_new
	str r0, [r4, #0xc]
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_0200ECD0

	arm_func_start sub_0200ED2C
sub_0200ED2C: ; 0x0200ED2C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0200ED4C
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #8]
	arm_func_end sub_0200ED2C
_0200ED4C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0200ED70
	ldr r3, _0200EE0C ; =0x0200EE10
	mov r1, #0x3c
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0xc]
_0200ED70:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0200ED94
	beq _0200ED8C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200ED8C:
	mov r0, #0
	str r0, [r4, #0x34]
_0200ED94:
	ldr r5, [r4, #0x38]
	cmp r5, #0
	beq _0200EDBC
	beq _0200EDB4
	mov r0, r5
	bl sub_020087C8
	mov r0, r5
	bl _ZdlPv
_0200EDB4:
	mov r0, #0
	str r0, [r4, #0x38]
_0200EDBC:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0200EDE0
	beq _0200EDD8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200EDD8:
	mov r0, #0
	str r0, [r4, #0x3c]
_0200EDE0:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0200EE04
	beq _0200EDFC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200EDFC:
	mov r0, #0
	str r0, [r4, #0x40]
_0200EE04:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0200EE0C: .word 0x0200EE10
_0200EE10:
	.byte 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start sub_0200EE14
sub_0200EE14: ; 0x0200EE14
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x250
	mov r4, r0
	ldr r7, [sp, #0x268]
	str r3, [r4, #0x20]
	str r7, [r4, #0x1c]
	ldr r0, [r4, #0x2c]
	mov r8, r3, lsl #5
	cmp r0, #0
	movne r0, r7, lsl #5
	mov r6, r1
	mov r5, r2
	addne r1, r8, #0x6600000
	addne r0, r0, #0x600
	bne _0200EE5C
	mov r0, r7, lsl #5
	add r1, r8, #0x6400000
	add r0, r0, #0x200
	arm_func_end sub_0200EE14
_0200EE5C:
	str r1, [r4, #0x14]
	add r0, r0, #0x5000000
	str r0, [r4, #0x18]
	ldr r1, _0200F150 ; =s_COM_0208aafc
	add r0, sp, #0x10
	bl OS_SPrintf
	ldr r1, _0200F154 ; =s_s_s_LZ_bin_0208ab00
	add r0, sp, #0x70
	mov r2, r6
	mov r3, r5
	bl OS_SPrintf
	ldr r1, _0200F158 ; =s_s_s_NCGR_0208ab10
	add r0, sp, #0xd0
	add r2, sp, #0x10
	mov r3, r5
	bl OS_SPrintf
	ldr r1, _0200F15C ; =s_s_s_NCLR_0208ab1c
	add r0, sp, #0x130
	add r2, sp, #0x10
	mov r3, r5
	bl OS_SPrintf
	ldr r1, _0200F160 ; =s_s_s_NCER_0208ab28
	add r0, sp, #0x190
	add r2, sp, #0x10
	mov r3, r5
	bl OS_SPrintf
	ldr r1, _0200F164 ; =s_s_s_cac_0208ab34
	mov r3, r5
	add r0, sp, #0x1f0
	add r2, sp, #0x10
	bl OS_SPrintf
	mov r0, #0x6c
	bl _Znwm
	movs r7, r0
	beq _0200EF10
	mov r3, #1
	str r3, [sp]
	ldr r1, [r4]
	mov r5, #0
	stmib sp, {r1, r5}
	add r1, sp, #0x10
	add r2, sp, #0x70
	str r5, [sp, #0xc]
	bl sub_02002AEC
	mov r7, r0
_0200EF10:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0200EF34
	mov r3, #0
	add r1, sp, #0xd0
	mov r2, #1
	str r3, [sp]
	bl sub_020032CC
_0200EF34:
	str r0, [r4, #0x3c]
	ldr r1, [r0, #0xb8]
	ldr r0, [r4, #0x2c]
	ldr r5, [r1, #0x10]
	cmp r0, #1
	mov r6, #0
	bne _0200EF78
	bl GX_GetBankForSubOBJ
	cmp r0, #0
	beq _0200F014
	cmp r0, #8
	beq _0200EF70
	cmp r0, #0x100
	moveq r6, #0x4000
	b _0200F014
_0200EF70:
	mov r6, #0x20000
	b _0200F014
_0200EF78:
	bl GX_GetBankForOBJ
	cmp r0, #0x30
	bgt _0200EFBC
	bge _0200F000
	cmp r0, #0x10
	bgt _0200EFB0
	bge _0200EFF8
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0200F014
_0200EFA0: ; jump table
	b _0200F014 ; case 0
	b _0200F008 ; case 1
	b _0200F008 ; case 2
	b _0200F010 ; case 3
_0200EFB0:
	cmp r0, #0x20
	beq _0200EFF0
	b _0200F014
_0200EFBC:
	cmp r0, #0x50
	bgt _0200EFD4
	bge _0200F000
	cmp r0, #0x40
	beq _0200EFF0
	b _0200F014
_0200EFD4:
	cmp r0, #0x60
	bgt _0200EFE4
	moveq r6, #0x8000
	b _0200F014
_0200EFE4:
	cmp r0, #0x70
	moveq r6, #0x18000
	b _0200F014
_0200EFF0:
	mov r6, #0x4000
	b _0200F014
_0200EFF8:
	mov r6, #0x10000
	b _0200F014
_0200F000:
	mov r6, #0x14000
	b _0200F014
_0200F008:
	mov r6, #0x20000
	b _0200F014
_0200F010:
	mov r6, #0x40000
_0200F014:
	ldr r0, [r4, #0x2c]
	cmp r0, #1
	bne _0200F030
	add r0, r5, r8
	cmp r0, r6
	ble _0200F030
	bl OS_Terminate
_0200F030:
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x14]
	ldr r0, [r0, #0xb8]
	mov r2, r5
	ldr r0, [r0, #0x14]
	bl MIi_CpuCopyFast
	mov r0, r5, asr #4
	add r0, r5, r0, lsr #27
	mov r0, r0, asr #5
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0200F07C
	beq _0200F074
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200F074:
	mov r0, #0
	str r0, [r4, #0x3c]
_0200F07C:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0200F0A0
	mov r3, #0
	add r1, sp, #0x130
	mov r2, #1
	str r3, [sp]
	bl sub_020033B0
_0200F0A0:
	str r0, [r4, #0x40]
	ldr r2, [r0, #0xb8]
	ldr r1, [r4, #0x18]
	ldr r0, [r2, #0xc]
	ldr r2, [r2, #8]
	bl MIi_CpuCopyFast
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0200F0DC
	beq _0200F0D4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200F0D4:
	mov r0, #0
	str r0, [r4, #0x40]
_0200F0DC:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0200F100
	mov r2, #0
	add r1, sp, #0x190
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_0200F100:
	str r0, [r4, #0x34]
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _0200F118
	bl sub_02008788
_0200F118:
	mov r2, #0
	add r1, sp, #0x1f0
	mov r3, r2
	str r0, [r4, #0x38]
	bl sub_0200887C
	cmp r7, #0
	beq _0200F144
	mov r0, r7
	bl sub_02002B6C
	mov r0, r7
	bl _ZdlPv
_0200F144:
	mov r0, r5
	add sp, sp, #0x250
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0200F150: .word s_COM_0208aafc
_0200F154: .word s_s_s_LZ_bin_0208ab00
_0200F158: .word s_s_s_NCGR_0208ab10
_0200F15C: .word s_s_s_NCLR_0208ab1c
_0200F160: .word s_s_s_NCER_0208ab28
_0200F164: .word s_s_s_cac_0208ab34

	arm_func_start sub_0200F168
sub_0200F168: ; 0x0200F168
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x250
	mov r6, r0
	ldr ip, [sp, #0x260]
	str r3, [r6, #0x20]
	str ip, [r6, #0x1c]
	ldr r0, [r6, #0x2c]
	mov r5, r1
	cmp r0, #0
	mov r1, r3, lsl #5
	movne r0, ip, lsl #5
	mov r4, r2
	addne r1, r1, #0x6600000
	addne r0, r0, #0x600
	bne _0200F1B0
	mov r0, ip, lsl #5
	add r1, r1, #0x6400000
	add r0, r0, #0x200
	arm_func_end sub_0200F168
_0200F1B0:
	str r1, [r6, #0x14]
	add r0, r0, #0x5000000
	str r0, [r6, #0x18]
	ldr r1, _0200F340 ; =s_COM_0208aafc
	add r0, sp, #0x10
	bl OS_SPrintf
	ldr r1, _0200F344 ; =s_s_s_LZ_bin_0208ab00
	add r0, sp, #0x70
	mov r2, r5
	mov r3, r4
	bl OS_SPrintf
	ldr r1, _0200F348 ; =s_s_s_NCGR_0208ab10
	add r0, sp, #0xd0
	add r2, sp, #0x10
	mov r3, r4
	bl OS_SPrintf
	ldr r1, _0200F34C ; =s_s_s_NCLR_0208ab1c
	add r0, sp, #0x130
	add r2, sp, #0x10
	mov r3, r4
	bl OS_SPrintf
	ldr r1, _0200F350 ; =s_s_s_NCER_0208ab28
	add r0, sp, #0x190
	add r2, sp, #0x10
	mov r3, r4
	bl OS_SPrintf
	ldr r1, _0200F354 ; =s_s_s_cac_0208ab34
	mov r3, r4
	add r0, sp, #0x1f0
	add r2, sp, #0x10
	bl OS_SPrintf
	mov r0, #0x6c
	bl _Znwm
	movs r5, r0
	beq _0200F264
	mov r3, #1
	str r3, [sp]
	ldr r1, [r6]
	mov r4, #0
	stmib sp, {r1, r4}
	add r1, sp, #0x10
	add r2, sp, #0x70
	str r4, [sp, #0xc]
	bl sub_02002AEC
	mov r5, r0
_0200F264:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0200F288
	mov r2, #0
	add r1, sp, #0xd0
	mov r3, r2
	str r2, [sp]
	bl sub_020032CC
_0200F288:
	str r0, [r6, #0x3c]
	ldr r1, [r0, #0xb8]
	mov r0, #0xbc
	ldr r4, [r1, #0x10]
	mov r1, r4, asr #4
	add r1, r4, r1, lsr #27
	mov r1, r1, asr #5
	str r1, [r6, #0x28]
	bl _Znwm
	cmp r0, #0
	beq _0200F2C8
	mov r2, #0
	add r1, sp, #0x130
	mov r3, r2
	str r2, [sp]
	bl sub_020033B0
_0200F2C8:
	str r0, [r6, #0x40]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0200F2F0
	mov r2, #0
	add r1, sp, #0x190
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_0200F2F0:
	str r0, [r6, #0x34]
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _0200F308
	bl sub_02008788
_0200F308:
	mov r2, #0
	add r1, sp, #0x1f0
	mov r3, r2
	str r0, [r6, #0x38]
	bl sub_0200887C
	cmp r5, #0
	beq _0200F334
	mov r0, r5
	bl sub_02002B6C
	mov r0, r5
	bl _ZdlPv
_0200F334:
	mov r0, r4
	add sp, sp, #0x250
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0200F340: .word s_COM_0208aafc
_0200F344: .word s_s_s_LZ_bin_0208ab00
_0200F348: .word s_s_s_NCGR_0208ab10
_0200F34C: .word s_s_s_NCLR_0208ab1c
_0200F350: .word s_s_s_NCER_0208ab28
_0200F354: .word s_s_s_cac_0208ab34

	arm_func_start sub_0200F358
sub_0200F358: ; 0x0200F358
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	mov r3, r1, lsl #5
	movne r1, r2, lsl #5
	addne r2, r3, #0x6600000
	addne r1, r1, #0x600
	bne _0200F380
	mov r1, r2, lsl #5
	add r2, r3, #0x6400000
	add r1, r1, #0x200
	arm_func_end sub_0200F358
_0200F380:
	ldr ip, _0200F394 ; =sub_0200F398
	str r2, [r0, #0x14]
	add r1, r1, #0x5000000
	str r1, [r0, #0x18]
	bx ip
	.align 2, 0
_0200F394: .word sub_0200F398

	arm_func_start sub_0200F398
sub_0200F398: ; 0x0200F398
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x14]
	ldr r0, [r0, #0xb8]
	ldr r4, [r0, #0x10]
	ldr r0, [r0, #0x14]
	mov r2, r4
	bl MIi_CpuCopyFast
	mov r0, r4, asr #4
	add r0, r4, r0, lsr #27
	mov r0, r0, asr #5
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x18]
	ldr r2, [r0, #0xb8]
	ldr r0, [r2, #0xc]
	ldr r2, [r2, #8]
	bl MIi_CpuCopyFast
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200F398

	arm_func_start sub_0200F3EC
sub_0200F3EC: ; 0x0200F3EC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x2c]
	ldr r1, [r1, #0xb8]
	cmp r0, #0
	ldr r5, [r1, #0x10]
	ldr r0, [r4, #0x14]
	ldr r2, [r1, #0x14]
	bne _0200F428
	sub r1, r0, #0x6400000
	mov r3, r5
	mov r0, #0x13
	bl NNS_GfdRegisterNewVramTransferTask
	b _0200F438
	arm_func_end sub_0200F3EC
_0200F428:
	sub r1, r0, #0x6600000
	mov r3, r5
	mov r0, #0x23
	bl NNS_GfdRegisterNewVramTransferTask
_0200F438:
	mov r0, r5, asr #4
	add r0, r5, r0, lsr #27
	mov r0, r0, asr #5
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x2c]
	ldr r2, [r1, #0xb8]
	cmp r0, #0
	ldr r5, [r2, #8]
	ldr r1, [r4, #0x18]
	bne _0200F480
	ldr r0, _0200F4A0 ; =0xFAFFFE00
	ldr r2, [r2, #0xc]
	add r1, r1, r0
	mov r3, r5
	mov r0, #0xe
	bl NNS_GfdRegisterNewVramTransferTask
	b _0200F498
_0200F480:
	ldr r0, _0200F4A4 ; =0xFAFFFA00
	ldr r2, [r2, #0xc]
	add r1, r1, r0
	mov r3, r5
	mov r0, #0x1e
	bl NNS_GfdRegisterNewVramTransferTask
_0200F498:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0200F4A0: .word 0xFAFFFE00
_0200F4A4: .word 0xFAFFFA00

	arm_func_start sub_0200F4A8
sub_0200F4A8: ; 0x0200F4A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0200F4D4
	beq _0200F4CC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0200F4A8
_0200F4CC:
	mov r0, #0
	str r0, [r4, #0x3c]
_0200F4D4:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	beq _0200F4F0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200F4F0:
	mov r0, #0
	str r0, [r4, #0x40]
	ldmia sp!, {r4, pc}

	arm_func_start sub_0200F4FC
sub_0200F4FC: ; 0x0200F4FC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	ldr r0, [r7, #0x38]
	mov r4, r1
	mov r6, r2
	mov r5, r3
	bl sub_02008C6C
	str r0, [r7, #0x24]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	blt _0200F530
	bl OS_Terminate
	arm_func_end sub_0200F4FC
_0200F530:
	mov r1, #0
	ldr r0, [r7, #0x38]
	mov r2, r1
	bl sub_02008A80
	ldr r1, [r7, #0x24]
	ldr r2, [r7, #8]
	mov r1, r1, lsl #1
	strh r0, [r2, r1]
	ldr r0, [r7, #0x24]
	mov r2, r4, lsl #0x10
	ldr r1, [r7, #8]
	mov r0, r0, lsl #1
	ldrh r1, [r1, r0]
	ldr r0, [r7, #0x38]
	mov r2, r2, lsr #0x10
	bl sub_02008990
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #8]
	mov r0, r0, lsl #1
	ldrh r1, [r1, r0]
	ldr r0, [r7, #0x38]
	bl sub_02008828
	ldr r4, [r7, #0x10]
	mov r3, #0
	cmp r4, #0
	ble _0200F618
	ldr ip, [r7, #0xc]
	mov r2, ip
_0200F5A0:
	ldr r1, [r2, #0x14]
	cmp r1, #0
	bne _0200F608
	ldr r2, [r7, #0x34]
	mov r1, #0x3c
	ldr r2, [r2, #0xb8]
	mul r4, r3, r1
	ldr r1, [r2, #4]
	ldr r2, [r7, #0x1c]
	add r1, r1, r0, lsl #3
	str r2, [sp]
	ldr r2, [r7, #0x20]
	ldr r0, [sp, #0x20]
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r2, r6
	mov r3, r5
	add r0, ip, r4
	bl sub_0200EA84
	ldr r1, [r7, #0x30]
	add sp, sp, #0xc
	add r0, r1, r0
	str r0, [r7, #0x30]
	ldr r0, [r7, #0xc]
	add r0, r0, r4
	ldmia sp!, {r4, r5, r6, r7, pc}
_0200F608:
	add r3, r3, #1
	cmp r3, r4
	add r2, r2, #0x3c
	blt _0200F5A0
_0200F618:
	bl OS_Terminate
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start sub_0200F628
sub_0200F628: ; 0x0200F628
	ldr r3, [r0, #8]
	mov r1, r1, lsl #1
	mov r2, r2, lsl #0x10
	ldr ip, _0200F648 ; =sub_02008990
	ldrh r1, [r3, r1]
	ldr r0, [r0, #0x38]
	mov r2, r2, lsr #0x10
	bx ip
	.align 2, 0
_0200F648: .word sub_02008990
	arm_func_end sub_0200F628

	arm_func_start sub_0200F64C
sub_0200F64C: ; 0x0200F64C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x38]
	bl sub_02008C6C
	str r0, [r6, #0x24]
	ldr r0, [r6, #0x38]
	bl sub_020089EC
	ldr r0, [r6, #0x24]
	mov r4, #0
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, pc}
	mov r5, r4
	arm_func_end sub_0200F64C
_0200F67C:
	ldr r1, [r6, #8]
	mov r0, r4, lsl #1
	ldrh r1, [r1, r0]
	ldr r0, [r6, #0x38]
	bl sub_02008828
	ldr r1, [r6, #0x34]
	ldr r2, [r6, #0xc]
	ldr r1, [r1, #0xb8]
	ldr r1, [r1, #4]
	add r1, r1, r0, lsl #3
	add r0, r2, r5
	bl sub_0200EAFC
	ldr r0, [r6, #0x24]
	add r4, r4, #1
	cmp r4, r0
	add r5, r5, #0x3c
	blt _0200F67C
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0200F6C4
sub_0200F6C4: ; 0x0200F6C4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	mov r5, #0
	cmp r0, #0
	ble _0200F710
	mov r6, r5
	mov r7, r5
	arm_func_end sub_0200F6C4
_0200F6E4:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #4]
	add r0, r0, r7
	add r1, r1, r6
	bl sub_0200E960
	ldr r0, [r4, #0x10]
	add r5, r5, #1
	cmp r5, r0
	add r6, r6, #8
	add r7, r7, #0x3c
	blt _0200F6E4
_0200F710:
	ldr r0, [r4, #0x38]
	bl sub_02008BF0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0200F71C
sub_0200F71C: ; 0x0200F71C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8, #0x2c]
	mov r4, #0
	mov r5, r4
	cmp r0, #1
	ldr r1, [r8, #4]
	ldr r2, _0200F8A4 ; =0x00300010
	bne _0200F7A8
	ldr r0, _0200F8A8 ; =0x04001000
	ldr r3, [r0]
	sub r0, r2, #0x200000
	and r3, r3, r2
	cmp r3, r0
	bgt _0200F778
	bge _0200F7A0
	cmp r3, #0
	bgt _0200F76C
	beq _0200F798
	b _0200F80C
	arm_func_end sub_0200F71C
_0200F76C:
	cmp r3, #0x10
	beq _0200F798
	b _0200F80C
_0200F778:
	sub r0, r2, #0x100000
	cmp r3, r0
	bgt _0200F78C
	moveq r4, #2
	b _0200F80C
_0200F78C:
	cmp r3, r2
	moveq r4, #3
	b _0200F80C
_0200F798:
	mov r4, #0
	b _0200F80C
_0200F7A0:
	mov r4, #1
	b _0200F80C
_0200F7A8:
	mov r0, #0x4000000
	ldr r3, [r0]
	sub r0, r2, #0x200000
	and r3, r3, r2
	cmp r3, r0
	bgt _0200F7E0
	bge _0200F808
	cmp r3, #0
	bgt _0200F7D4
	beq _0200F800
	b _0200F80C
_0200F7D4:
	cmp r3, #0x10
	beq _0200F800
	b _0200F80C
_0200F7E0:
	sub r0, r2, #0x100000
	cmp r3, r0
	bgt _0200F7F4
	moveq r4, #2
	b _0200F80C
_0200F7F4:
	cmp r3, r2
	moveq r4, #3
	b _0200F80C
_0200F800:
	mov r4, #0
	b _0200F80C
_0200F808:
	mov r4, #1
_0200F80C:
	ldr r0, [r8, #0x34]
	ldr r0, [r0, #0xb8]
	ldr r0, [r0, #8]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0200F854
_0200F824: ; jump table
	b _0200F838 ; case 0
	b _0200F840 ; case 1
	b _0200F848 ; case 2
	b _0200F850 ; case 3
	b _0200F838 ; case 4
_0200F838:
	mov r5, #0
	b _0200F854
_0200F840:
	mov r5, #1
	b _0200F854
_0200F848:
	mov r5, #2
	b _0200F854
_0200F850:
	mov r5, #3
_0200F854:
	ldr r0, [r8, #0x10]
	mov r6, #0
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, r6
_0200F868:
	ldr r0, [r8, #0xc]
	add r0, r0, r7
	ldr r2, [r0, #0x14]
	cmp r2, #0
	beq _0200F88C
	mov r2, r4
	mov r3, r5
	bl sub_0200EB78
	mov r1, r0
_0200F88C:
	ldr r0, [r8, #0x10]
	add r6, r6, #1
	cmp r6, r0
	add r7, r7, #0x3c
	blt _0200F868
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0200F8A4: .word 0x00300010
_0200F8A8: .word 0x04001000

	arm_func_start sub_0200F8AC
sub_0200F8AC: ; 0x0200F8AC
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	arm_func_end sub_0200F8AC

	arm_func_start sub_0200F8BC
sub_0200F8BC: ; 0x0200F8BC
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r1, #1
	movne r1, #0
	cmp r1, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {pc}
	ldr r1, _0200F9D4 ; =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	beq _0200F9B4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0200F910
	cmp r0, #1
	beq _0200F994
	add sp, sp, #0x1c
	ldmia sp!, {pc}
	arm_func_end sub_0200F8BC
_0200F910:
	add r0, sp, #0x10
	bl RTC_GetTime
	add r0, sp, #0
	bl RTC_GetDate
	ldr r0, _0200F9D8 ; =MAIN_BSS_020B26A0
	add r1, sp, #0x10
	add r2, sp, #0
	bl sub_0201630C
	mov r1, #0
	mov r2, r1
	mov r0, #0xc
	bl PM_GoSleepMode
	add r0, sp, #0x10
	bl RTC_GetTime
	add r0, sp, #0
	bl RTC_GetDate
	ldr r1, [sp, #0x10]
	ldr r0, _0200F9DC ; =MAIN_BSS_020BA6A0
	ldr r2, [sp, #0x14]
	str r1, [r0, #0xb94]
	str r2, [r0, #0xb98]
	ldr r1, [sp, #0x18]
	ldr r2, [sp]
	str r1, [r0, #0xb9c]
	str r2, [r0, #0xb84]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	str r1, [r0, #0xb88]
	ldr r1, [sp, #0xc]
	str r2, [r0, #0xb8c]
	str r1, [r0, #0xb90]
	add sp, sp, #0x1c
	ldmia sp!, {pc}
_0200F994:
	bl PM_GetLCDPower
	cmp r0, #1
	addne sp, sp, #0x1c
	ldmneia sp!, {pc}
	mov r0, #0
	bl PM_SetLCDPower
	add sp, sp, #0x1c
	ldmia sp!, {pc}
_0200F9B4:
	bl PM_GetLCDPower
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {pc}
	mov r0, #1
	bl PM_SetLCDPower
	add sp, sp, #0x1c
	ldmia sp!, {pc}
	.align 2, 0
_0200F9D4: .word 0x027FFFA8
_0200F9D8: .word MAIN_BSS_020B26A0
_0200F9DC: .word MAIN_BSS_020BA6A0

	arm_func_start sub_0200F9E0
sub_0200F9E0: ; 0x0200F9E0
	stmdb sp!, {r3, lr}
	ldr r0, _0200F9F4 ; =MAIN_BSS_020AF348
	bl sub_0200F8AC
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0200F9F4: .word MAIN_BSS_020AF348
	arm_func_end sub_0200F9E0

	arm_func_start sub_0200F9F8
sub_0200F9F8: ; 0x0200F9F8
	ldr ip, _0200FA04 ; =sub_0200F8BC
	ldr r0, _0200FA08 ; =MAIN_BSS_020AF348
	bx ip
	.align 2, 0
_0200FA04: .word sub_0200F8BC
_0200FA08: .word MAIN_BSS_020AF348
	arm_func_end sub_0200F9F8

	arm_func_start sub_0200FA0C
sub_0200FA0C: ; 0x0200FA0C
	ldr r1, _0200FA28 ; =MAIN_BSS_020AF33C
	mov r2, #1
	mvn r0, r2, lsl r0
	ldr r2, [r1, #0x10]
	and r0, r2, r0
	str r0, [r1, #0x10]
	bx lr
	.align 2, 0
_0200FA28: .word MAIN_BSS_020AF33C
	arm_func_end sub_0200FA0C

	arm_func_start sub_0200FA2C
sub_0200FA2C: ; 0x0200FA2C
	ldr r1, _0200FA44 ; =MAIN_BSS_020AF33C
	mov r2, #1
	ldr r3, [r1, #0x10]
	orr r0, r3, r2, lsl r0
	str r0, [r1, #0x10]
	bx lr
	.align 2, 0
_0200FA44: .word MAIN_BSS_020AF33C
	arm_func_end sub_0200FA2C

	arm_func_start sub_0200FA48
sub_0200FA48: ; 0x0200FA48
	ldr r1, _0200FA54 ; =MAIN_BSS_020AF33C
	str r0, [r1, #0x14]
	bx lr
	.align 2, 0
_0200FA54: .word MAIN_BSS_020AF33C
	arm_func_end sub_0200FA48
_0200FA58:
	.byte 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start sub_0200FA5C
sub_0200FA5C: ; 0x0200FA5C
	ldr r1, _0200FA70 ; =MAIN_BSS_020AF354
	mov r2, #0
	str r0, [r1]
	str r2, [r0, #0x54]
	bx lr
	.align 2, 0
_0200FA70: .word MAIN_BSS_020AF354
	arm_func_end sub_0200FA5C

	arm_func_start sub_0200FA74
sub_0200FA74: ; 0x0200FA74
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_0201135C
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E1C
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4a4]
	bl sub_02015198
	ldmia sp!, {r4, pc}
	arm_func_end sub_0200FA74

	arm_func_start sub_0200FAA4
sub_0200FAA4: ; 0x0200FAA4
	stmdb sp!, {r3, r4, r5, lr}
	bl sub_0200FA74
	ldr r0, _0200FAE0 ; =MAIN_BSS_020AF5D0
	bl sub_02010F18
	ldr r5, _0200FAE4 ; =MAIN_BSS_020AF5E4
	mov r4, #0
	arm_func_end sub_0200FAA4
_0200FABC:
	mov r0, r5
	bl sub_02010F18
	add r4, r4, #1
	cmp r4, #3
	add r5, r5, #0x14
	blt _0200FABC
	ldr r0, _0200FAE8 ; =MAIN_BSS_020AF598
	bl sub_0201128C
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0200FAE0: .word MAIN_BSS_020AF5D0
_0200FAE4: .word MAIN_BSS_020AF5E4
_0200FAE8: .word MAIN_BSS_020AF598

	arm_func_start sub_0200FAEC
sub_0200FAEC: ; 0x0200FAEC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0200FA74
	mov r2, #0
	mov r1, r2
	arm_func_end sub_0200FAEC
_0200FB00:
	add r0, r4, r2, lsl #2
	add r0, r0, #0x1000
	add r2, r2, #1
	str r1, [r0, #0x4d0]
	cmp r2, #0x20
	blt _0200FB00
	add r0, r4, #0x1000
	mov r1, #1
	str r1, [r0, #0x5e0]
	ldmia sp!, {r4, pc}

	arm_func_start sub_0200FB28
sub_0200FB28: ; 0x0200FB28
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0200FAEC
	mvn r0, #0
	str r0, [r4, #8]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0
	bl sub_02034B9C
	ldmia sp!, {r4, pc}
	arm_func_end sub_0200FB28

	arm_func_start _ZN5CGameC1Ev
_ZN5CGameC1Ev: ; 0x0200FB50
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	add r0, r4, #0x6c
	add r0, r0, #0x1400
	bl sub_02008D50
	ldr r1, _0200FFE0 ; =MAIN_BSS_020AF358
	mov r0, #0x2c
	str r4, [r1]
	bl sub_02001D28
	cmp r0, #0
	beq _0200FB84
	bl _ZN17UnkClass_02001C04C1Ev
	arm_func_end _ZN5CGameC1Ev
_0200FB84:
	str r0, [r4, #0x14]
	mov r0, #0x30
	bl sub_0200203C
	cmp r0, #0
	beq _0200FB9C
	bl CTouchPanel_ctor
_0200FB9C:
	str r0, [r4, #0x18]
	mov r0, #0x54
	bl sub_0200203C
	cmp r0, #0
	beq _0200FBB4
	bl CTPEmulator_ctor
_0200FBB4:
	str r0, [r4, #0x1c]
	mov r0, r4
	mov r1, #0
	bl sub_02010178
	add r0, r4, #0x34
	add r2, r4, #0x1000
	mov r3, #0
	add r0, r0, #0xc00
	mov r1, #0x80
	str r3, [r2, #0x4a8]
	bl NNS_GfdInitVramTransferManager
	mov r0, #0x20
	bl NNS_GfdGetLnkTexVramManagerWorkSize
	mov r5, r0
	bl _Z19Heap_AllocSecondarym
	str r0, [r4, #0xc2c]
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #0xc2c]
	mov r3, r5
	mov r0, #0x80000
	mov r1, #0
	bl NNS_GfdInitLnkTexVramManager
	mov r0, #0x20
	bl NNS_GfdGetLnkPlttVramManagerWorkSize
	mov r5, r0
	bl _Z19Heap_AllocSecondarym
	str r0, [r4, #0xc30]
	ldr r1, [r4, #0xc30]
	mov r2, r5
	mov r0, #0x4000
	mov r3, #1
	bl NNS_GfdInitLnkPlttVramManager
	mov r1, #0
	mov r2, #0x200
_0200FC40:
	add r0, r4, r1, lsl #3
	add r1, r1, #1
	add r0, r0, #0x800
	and r1, r1, #0xff
	strh r2, [r0, #0x24]
	cmp r1, #0x80
	blo _0200FC40
	mov r0, #0x4c
	bl _Znwm
	cmp r0, #0
	beq _0200FC70
	bl sub_020023EC
_0200FC70:
	str r0, [r4, #0xc24]
	mov r0, #0x4c
	bl _Znwm
	cmp r0, #0
	beq _0200FC88
	bl sub_020023EC
_0200FC88:
	str r0, [r4, #0xc28]
	mov r0, #8
	bl _Znwm
	cmp r0, #0
	beq _0200FCA8
	add r1, r4, #0x1000
	ldr r1, [r1, #0x4a8]
	bl sub_02010470
_0200FCA8:
	add r1, r4, #0x1000
	str r0, [r1, #0x434]
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _0200FCC8
	mov r1, #0
	bl sub_02010D2C
_0200FCC8:
	add r1, r4, #0x1000
	str r0, [r1, #0x438]
	mov r0, #0x5c
	bl _Znwm
	cmp r0, #0
	beq _0200FCE4
	bl sub_02010854
_0200FCE4:
	add r1, r4, #0x1000
	str r0, [r1, #0x43c]
	mov r0, #1
	bl _Znwm
	cmp r0, #0
	beq _0200FD00
	bl sub_02010C3C
_0200FD00:
	add r1, r4, #0x1000
	str r0, [r1, #0x440]
	mov r0, #0x84
	bl _Znwm
	cmp r0, #0
	beq _0200FD1C
	bl CBattleResultParameter_ctor
_0200FD1C:
	add r1, r4, #0x1000
	str r0, [r1, #0x444]
	mov r0, #0x14
	bl _Znwm
	cmp r0, #0
	beq _0200FD40
	ldr r1, _0200FFE4 ; =s_data_field_fielddata_bin_0208ab68
	mov r2, #0
	bl sub_02041C80
_0200FD40:
	add r2, r4, #0x1000
	add r1, r4, #0x48
	ldr r3, _0200FFE8 ; =0x00001234
	str r0, [r2, #0x4cc]
	str r3, [r2, #0x448]
	add r6, r1, #0x1400
	mov r5, #0
	add r0, r4, #0x460
	ldr r3, _0200FFEC ; =0x6C078965
	str r5, [r6, #4]
	add r1, r4, #0x6c
	ldr lr, _0200FFF0 ; =0x5D588B65
	str r3, [r6, #8]
	ldr ip, _0200FFF4 ; =0x00269EC3
	str lr, [r6, #0xc]
	str ip, [r6, #0x10]
	ldr r3, _0200FFF8 ; =0x00004321
	str r5, [r6, #0x14]
	str r3, [r2, #0x460]
	add r0, r0, #0x1000
	str lr, [r0, #4]
	str ip, [r0, #8]
	add r0, r1, #0x1400
	mov r1, #0x1e
	str r5, [r4]
	bl sub_02008DB4
	mov r0, #0x1ac
	bl _Znwm
	cmp r0, #0
	beq _0200FDBC
	bl sub_02034478
_0200FDBC:
	add r1, r4, #0x1000
	str r0, [r1, #0x48c]
	mov r0, #0x1c
	bl _Znwm
	cmp r0, #0
	beq _0200FDDC
	mov r1, #1
	bl sub_0200CFF4
_0200FDDC:
	add r1, r4, #0x1000
	str r0, [r1, #0x4ac]
	mov r0, #0x14
	bl _Znwm
	cmp r0, #0
	beq _0200FDF8
	bl sub_02018208
_0200FDF8:
	add r1, r4, #0x1000
	str r0, [r1, #0x4b0]
	mov r0, #0x158
	bl _Znwm
	cmp r0, #0
	beq _0200FE14
	bl sub_020091E8
_0200FE14:
	add r1, r4, #0x1000
	str r0, [r1, #0x490]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0200FE40
	add r1, r4, #0x1000
	ldr r3, [r1, #0x4ac]
	ldr r2, [r1, #0x4b0]
	add r1, r3, #0x14
	bl sub_0200C38C
_0200FE40:
	add r1, r4, #0x1000
	str r0, [r1, #0x494]
	mov r0, #0x40
	bl _Znwm
	cmp r0, #0
	beq _0200FE6C
	add r1, r4, #0x1000
	ldr r3, [r1, #0x4ac]
	ldr r2, [r1, #0x4b0]
	add r1, r3, #0x14
	bl sub_0200CAB4
_0200FE6C:
	add r1, r4, #0x1000
	str r0, [r1, #0x498]
	ldr r0, _0200FFFC ; =0x0001881C
	bl _Znwm
	cmp r0, #0
	beq _0200FE90
	add r1, r4, #0x1000
	ldr r1, [r1, #0x4a8]
	bl sub_02033F04
_0200FE90:
	add r2, r4, #0x1000
	ldr r3, _02010000 ; =MAIN_BSS_020B2638
	str r0, [r2, #0x49c]
	str r3, [r2, #0x4a0]
	ldr r1, [r2, #0x49c]
	ldr r2, [r2, #0x490]
	mov r0, r3
	bl sub_02011394
	ldr r2, _02010004 ; =MAIN_BSS_020B26A0
	add r1, r4, #0x1000
	ldr r0, _02010008 ; =MAIN_BSS_0210C0B0
	str r2, [r1, #0x4a4]
	str r0, [r1, #0x4b4]
	bl sub_02018E1C
	mov r0, #0x28
	bl _Znwm
	cmp r0, #0
	beq _0200FEE0
	mov r1, #0
	bl sub_0200D3F8
_0200FEE0:
	add r1, r4, #0x1000
	str r0, [r1, #0x4b8]
	mov r0, #0x1c
	bl _Znwm
	cmp r0, #0
	beq _0200FF04
	mov r1, #1
	mov r2, #0x10
	bl sub_0200E0B4
_0200FF04:
	add r1, r4, #0x1000
	str r0, [r1, #0x4bc]
	mov r0, #0x1c
	bl _Znwm
	cmp r0, #0
	beq _0200FF28
	mov r1, #2
	mov r2, #0x10
	bl sub_0200E0B4
_0200FF28:
	add r1, r4, #0x1000
	str r0, [r1, #0x4c0]
	ldr r0, _0201000C ; =0x00000C7C
	bl _Znwm
	cmp r0, #0
	beq _0200FF48
	mov r1, #1
	bl sub_0200E330
_0200FF48:
	add r1, r4, #0x1000
	str r0, [r1, #0x4c4]
	ldr r0, _0201000C ; =0x00000C7C
	bl _Znwm
	cmp r0, #0
	beq _0200FF68
	mov r1, #2
	bl sub_0200E330
_0200FF68:
	add r1, r4, #0x1000
	str r0, [r1, #0x4c8]
	mov r0, #1
	str r0, [r1, #0x5d4]
	mov r2, #0
	mov r0, #0x58
	str r2, [r1, #0x5d0]
	bl _Znwm
	cmp r0, #0
	beq _0200FF94
	bl sub_0200FA5C
_0200FF94:
	add r1, r4, #0x1000
	str r0, [r1, #0x5d8]
	mov r2, #1
	ldr r0, _02010010 ; =MAIN_BSS_020AF5D0
	str r2, [r1, #0x5e0]
	bl sub_02010F18
	ldr r6, _02010014 ; =MAIN_BSS_020AF5E4
	mov r5, #0
_0200FFB4:
	mov r0, r6
	bl sub_02010F18
	add r5, r5, #1
	cmp r5, #3
	add r6, r6, #0x14
	blt _0200FFB4
	ldr r0, _02010018 ; =MAIN_BSS_020AF598
	bl sub_0201128C
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_0200FFE0: .word MAIN_BSS_020AF358
_0200FFE4: .word s_data_field_fielddata_bin_0208ab68
_0200FFE8: .word 0x00001234
_0200FFEC: .word 0x6C078965
_0200FFF0: .word 0x5D588B65
_0200FFF4: .word 0x00269EC3
_0200FFF8: .word 0x00004321
_0200FFFC: .word 0x0001881C
_02010000: .word MAIN_BSS_020B2638
_02010004: .word MAIN_BSS_020B26A0
_02010008: .word MAIN_BSS_0210C0B0
_0201000C: .word 0x00000C7C
_02010010: .word MAIN_BSS_020AF5D0
_02010014: .word MAIN_BSS_020AF5E4
_02010018: .word MAIN_BSS_020AF598

	arm_func_start sub_0201001C
sub_0201001C: ; 0x0201001C
	ldr r0, _02010028 ; =MAIN_BSS_020AF358
	ldr r0, [r0]
	bx lr
	.align 2, 0
_02010028: .word MAIN_BSS_020AF358
	arm_func_end sub_0201001C

	arm_func_start sub_0201002C
sub_0201002C: ; 0x0201002C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	add r0, r5, #0x6c
	add r0, r0, #0x1400
	bl sub_02008E68
	add r0, r5, #0x1000
	ldr r0, [r0, #0x5e0]
	cmp r0, #0
	beq _02010098
	mov r4, #0
	mov r6, r4
	arm_func_end sub_0201002C
_02010058:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x4d0]
	cmp r1, #0
	beq _02010080
	ldr r0, [r0, #0x550]
	blx r1
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	str r6, [r0, #0x4d0]
_02010080:
	add r4, r4, #1
	cmp r4, #0x20
	blt _02010058
	bl NNS_GfdDoVramTransfer
	mov r0, r5
	bl sub_020102E8
_02010098:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E2D4
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E2D4
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4c4]
	bl sub_0200E4A8
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4c8]
	bl sub_0200E4A8
	add r0, r5, #0x6c
	ldr r1, _020100E0 ; =0x04000006
	add r0, r0, #0x1400
	ldrh r1, [r1]
	bl sub_02008E58
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_020100E0: .word 0x04000006

	arm_func_start sub_020100E4
sub_020100E4: ; 0x020100E4
	stmdb sp!, {r3, lr}
	mov lr, #0
	arm_func_end sub_020100E4
_020100EC:
	add r3, r0, lr, lsl #2
	add r3, r3, #0x1000
	ldr ip, [r3, #0x4d0]
	cmp ip, #0
	bne _02010110
	str r1, [r3, #0x4d0]
	str r2, [r3, #0x550]
	mov r0, #1
	ldmia sp!, {r3, pc}
_02010110:
	add lr, lr, #1
	cmp lr, #0x20
	blt _020100EC
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_02010124
sub_02010124: ; 0x02010124
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x49c]
	bl sub_02034384
	add r0, r4, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200A118
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4b8]
	bl sub_0200D9CC
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4c4]
	bl sub_0200E44C
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4c8]
	bl sub_0200E44C
	add r0, r4, #0x1000
	ldr r0, [r0, #0x48c]
	bl thunk_FUN_0205b9f0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02010124

	arm_func_start sub_02010178
sub_02010178: ; 0x02010178
	cmp r1, #0
	ldr r2, [r0, #0x20]
	beq _02010198
	cmp r1, #1
	bne _02010198
	ldr r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	b _020101A0
	arm_func_end sub_02010178
_02010198:
	ldr r1, [r0, #0x18]
	str r1, [r0, #0x20]
_020101A0:
	mov r0, r2
	bx lr

	arm_func_start sub_020101A8
sub_020101A8: ; 0x020101A8
	ldr ip, _020101B0 ; =_Z19Heap_AllocSecondarym
	bx ip
	.align 2, 0
_020101B0: .word _Z19Heap_AllocSecondarym
	arm_func_end sub_020101A8

	arm_func_start sub_020101B4
sub_020101B4: ; 0x020101B4
	stmdb sp!, {r4, lr}
	bl _Z23Heap_GetSecondaryHandlev
	mov r4, r0
	ldr r0, [r4]
	bl NNS_FndGetTotalFreeSizeForExpHeap
	ldr r0, [r4]
	mov r1, #4
	bl NNS_FndGetAllocatableSizeForExpHeapEx
	bl _Z18Heap_GetMainHandlev
	mov r4, r0
	ldr r0, [r4]
	bl NNS_FndGetTotalFreeSizeForExpHeap
	ldr r0, [r4]
	mov r1, #4
	bl NNS_FndGetAllocatableSizeForExpHeapEx
	ldmia sp!, {r4, pc}
	arm_func_end sub_020101B4

	arm_func_start sub_020101F4
sub_020101F4: ; 0x020101F4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0x20
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl NNS_GfdGetLnkTexVramManagerWorkSize
	mov r1, #1
	str r1, [sp]
	mov r3, r0
	ldr r2, [r7, #0xc2c]
	mov r0, r6
	mov r1, r5
	bl NNS_GfdInitLnkTexVramManager
	mov r0, #0x20
	bl NNS_GfdGetLnkPlttVramManagerWorkSize
	ldr r1, [r7, #0xc30]
	mov r2, r0
	mov r0, r4
	mov r3, #1
	bl NNS_GfdInitLnkPlttVramManager
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020101F4

	arm_func_start sub_0201024C
sub_0201024C: ; 0x0201024C
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r1, #1
	bl sub_02019278
	add r2, r4, #0x1000
	ldr r3, [r2, #0x490]
	mov r1, #2
	str r0, [r3, #0x70]
	ldr r0, [r2, #0x4b4]
	bl sub_02019278
	add r1, r4, #0x1000
	ldr r1, [r1, #0x490]
	str r0, [r1, #0x74]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201024C

	arm_func_start sub_0201028C
sub_0201028C: ; 0x0201028C
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x6c
	add r0, r0, #0x1400
	bl sub_02008E50
	mov r1, r0
	mov r0, #0x1e000
	bl _s32_div_f
	add r1, r4, #0x1000
	ldr r2, [r1, #0x5d0]
	add r2, r2, r0
	str r2, [r1, #0x5d0]
	cmp r2, #0xd0000
	bgt _020102D4
	mov r0, #0x10000
	rsb r0, r0, #0
	cmp r2, r0
	ldmgeia sp!, {r4, pc}
	arm_func_end sub_0201028C
_020102D4:
	mov r1, #0x10000
	rsb r1, r1, #0
	add r0, r4, #0x1000
	str r1, [r0, #0x5d0]
	ldmia sp!, {r4, pc}

	arm_func_start sub_020102E8
sub_020102E8: ; 0x020102E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x34
	add r0, r0, #0xc00
	mov r1, #0x80
	bl NNS_GfdInitVramTransferManager
	mov r2, #0
	mov r1, r2
	arm_func_end sub_020102E8
_02010308:
	add r0, r4, r2, lsl #2
	add r0, r0, #0x1000
	add r2, r2, #1
	str r1, [r0, #0x4d0]
	cmp r2, #0x20
	blt _02010308
	ldmia sp!, {r4, pc}

	arm_func_start sub_02010324
sub_02010324: ; 0x02010324
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0x1000
	ldr r3, [r0, #0x48c]
	ldr r0, [r0, #0x4b4]
	ldr r2, [r3, #0xc4]
	mov r1, #5
	ldr r4, [r3, #0xd0]
	ldr r5, [r3, #0xf0]
	bl sub_0201926C
	add r0, r6, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r2, r4
	mov r1, #6
	bl sub_0201926C
	add r0, r6, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r2, r5
	mov r1, #0x1a
	bl sub_0201926C
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02010324

	arm_func_start sub_02010378
sub_02010378: ; 0x02010378
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r1, #5
	bl sub_02019278
	add r1, r4, #0x1000
	mov r7, r0
	ldr r0, [r1, #0x4b4]
	mov r1, #6
	bl sub_02019278
	add r1, r4, #0x1000
	mov r6, r0
	ldr r0, [r1, #0x4b4]
	mov r1, #0x1a
	bl sub_02019278
	movs r5, r0
	movmi r0, #0
	ldmmiia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, r7
	bl sub_0203499C
	add r0, r4, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, r6
	mov r2, #0
	bl sub_02034A40
	add r0, r4, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, r5
	bl sub_02034F4C
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_02010378

	arm_func_start sub_02010400
sub_02010400: ; 0x02010400
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r1, #5
	mov r2, #0
	bl sub_0201926C
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r1, #6
	mov r2, #0
	bl sub_0201926C
	add r0, r4, #0x1000
	mov r1, #0x1a
	ldr r0, [r0, #0x4b4]
	sub r2, r1, #0x1b
	bl sub_0201926C
	ldmia sp!, {r4, pc}
	arm_func_end sub_02010400

	arm_func_start sub_02010448
sub_02010448: ; 0x02010448
	bx lr
	arm_func_end sub_02010448

	arm_func_start sub_0201044C
sub_0201044C: ; 0x0201044C
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C3D0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201044C

	arm_func_start sub_02010470
sub_02010470: ; 0x02010470
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r0, #0x20
	mov r4, r1
	bl _Znwm
	movs r8, r0
	beq _02010498
	mov r1, r4
	bl sub_0200D114
	mov r8, r0
	arm_func_end sub_02010470
_02010498:
	ldr r1, _020107A4 ; =s_data_param_PokeID_bin_0208ab84
	mov r0, r8
	bl sub_0200D148
	mov r0, r8
	bl sub_0200D390
	strh r0, [sl]
	ldrh r1, [sl]
	mov r0, #0x18
	mul r0, r1, r0
	bl _Znam
	str r0, [sl, #4]
	mov r7, #0
	str r7, [sp]
	ldrh r0, [sl]
	cmp r0, #0
	ble _02010784
	mov sb, r7
	add r5, sp, #0
	mov r6, #1
	mov r4, #2
	mov fp, #4
_020104EC:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl sub_0200D3B8
	ldr r2, [sp]
	ldr r1, [sl, #4]
	mov r0, r8
	strh r2, [r1, sb]
	mov r1, r7
	mov r2, r4
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #2]
	mov r0, r8
	mov r1, r7
	mov r2, fp
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #3]
	mov r0, r8
	mov r1, r7
	mov r2, #5
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #4]
	mov r0, r8
	mov r1, r7
	mov r2, #6
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #5]
	mov r0, r8
	mov r1, r7
	mov r2, #7
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #6]
	mov r0, r8
	mov r1, r7
	mov r2, #8
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #7]
	mov r0, r8
	mov r1, r7
	mov r2, #9
	mov r3, r5
	bl sub_0200D3B8
	ldr r0, [sl, #4]
	ldr r1, [sp]
	add r0, r0, sb
	strb r1, [r0, #8]
	mov r0, r8
	mov r1, r7
	mov r2, #0xa
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #9]
	mov r0, r8
	mov r1, r7
	mov r2, #0xb
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0xa]
	mov r0, r8
	mov r1, r7
	mov r2, #0xc
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0xb]
	mov r0, r8
	mov r1, r7
	mov r2, #0xd
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0xc]
	mov r0, r8
	mov r1, r7
	mov r2, #0xe
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0xd]
	mov r0, r8
	mov r1, r7
	mov r2, #0xf
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0xe]
	mov r0, r8
	mov r1, r7
	mov r2, #0x10
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0xf]
	mov r0, r8
	mov r1, r7
	mov r2, #0x15
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x10]
	mov r0, r8
	mov r1, r7
	mov r2, #0x16
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x12]
	mov r0, r8
	mov r1, r7
	mov r2, #0x17
	mov r3, r5
	bl sub_0200D3B8
	ldr r0, [sl, #4]
	ldr r1, [sp]
	add r0, r0, sb
	str r1, [r0, #0x14]
	ldrh r0, [sl]
	add r7, r7, #1
	add sb, sb, #0x18
	cmp r7, r0
	blt _020104EC
_02010784:
	cmp r8, #0
	beq _0201079C
	mov r0, r8
	bl sub_0200D134
	mov r0, r8
	bl _ZdlPv
_0201079C:
	mov r0, sl
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020107A4: .word s_data_param_PokeID_bin_0208ab84

	arm_func_start sub_020107A8
sub_020107A8: ; 0x020107A8
	ldrh r2, [r0]
	cmp r1, r2
	movhs r0, #0
	ldrlo r2, [r0, #4]
	movlo r0, #0x18
	mlalo r0, r1, r0, r2
	bx lr
	arm_func_end sub_020107A8

	arm_func_start sub_020107C4
sub_020107C4: ; 0x020107C4
	cmp r0, #0x18
	addls pc, pc, r0, lsl #2
	b _0201084C
_020107D0: ; jump table
	b _0201084C ; case 0
	b _02010834 ; case 1
	b _02010834 ; case 2
	b _02010834 ; case 3
	b _02010834 ; case 4
	b _02010834 ; case 5
	b _02010834 ; case 6
	b _02010834 ; case 7
	b _02010834 ; case 8
	b _0201083C ; case 9
	b _0201083C ; case 10
	b _0201083C ; case 11
	b _0201083C ; case 12
	b _02010844 ; case 13
	b _02010844 ; case 14
	b _02010844 ; case 15
	b _02010844 ; case 16
	b _02010844 ; case 17
	b _02010844 ; case 18
	b _02010844 ; case 19
	b _02010844 ; case 20
	b _02010844 ; case 21
	b _02010844 ; case 22
	b _02010844 ; case 23
	b _02010844 ; case 24
	arm_func_end sub_020107C4
_02010834:
	mov r0, #1
	bx lr
_0201083C:
	mov r0, #2
	bx lr
_02010844:
	mov r0, #3
	bx lr
_0201084C:
	mov r0, #0
	bx lr

	arm_func_start sub_02010854
sub_02010854: ; 0x02010854
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02010868
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02010854

	arm_func_start sub_02010868
sub_02010868: ; 0x02010868
	stmdb sp!, {r3, lr}
	mov r1, #0x22
	str r1, [r0]
	mov r1, #0xa
	strb r1, [r0, #4]
	mov r1, #1
	mov ip, #0
	strb r1, [r0, #5]
	strb ip, [r0, #6]
	str ip, [r0, #8]
	str ip, [r0, #0xc]
	str ip, [r0, #0x10]
	strb ip, [r0, #0x14]
	mov r3, #0xff
	mov lr, ip
	arm_func_end sub_02010868
_020108A4:
	add r2, r0, ip, lsl #1
	add r1, r0, ip
	strh r3, [r2, #0x16]
	add ip, ip, #1
	strb lr, [r1, #0x26]
	cmp ip, #8
	blt _020108A4
	strb lr, [r0, #0x40]
	mov r2, #0xff
_020108C8:
	add r1, r0, lr
	add lr, lr, #1
	strb r2, [r1, #0x41]
	cmp lr, #8
	blt _020108C8
	mov lr, #0
	ldr ip, _02010948 ; =0x0000FFFF
	strb lr, [r0, #0x2e]
	mov r2, lr
_020108EC:
	add r3, r0, lr, lsl #1
	add r1, r0, lr
	strh ip, [r3, #0x30]
	strb r2, [r1, #0x38]
	add lr, lr, #1
	strb r2, [r1, #0x3c]
	cmp lr, #4
	blt _020108EC
	strb r2, [r0, #0x49]
	strb r2, [r0, #0x4a]
	strb r2, [r0, #0x4b]
	strb r2, [r0, #0x4c]
	strb r2, [r0, #0x4d]
	strb r2, [r0, #0x4e]
	mov r1, #1
	strb r1, [r0, #0x4f]
	strb r1, [r0, #0x50]
	strb r2, [r0, #0x51]
	strb r2, [r0, #0x52]
	strb r2, [r0, #0x54]
	strh r2, [r0, #0x56]
	strb r2, [r0, #0x58]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02010948: .word 0x0000FFFF

	arm_func_start sub_0201094C
sub_0201094C: ; 0x0201094C
	str r1, [r0]
	bx lr
	arm_func_end sub_0201094C

	arm_func_start sub_02010954
sub_02010954: ; 0x02010954
	strb r1, [r0, #4]
	bx lr
	arm_func_end sub_02010954

	arm_func_start sub_0201095C
sub_0201095C: ; 0x0201095C
	strb r1, [r0, #5]
	bx lr
	arm_func_end sub_0201095C

	arm_func_start sub_02010964
sub_02010964: ; 0x02010964
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	strb r1, [r0, #6]
	bx lr
	arm_func_end sub_02010964

	arm_func_start sub_02010978
sub_02010978: ; 0x02010978
	str r1, [r0, #8]
	bx lr
	arm_func_end sub_02010978

	arm_func_start sub_02010980
sub_02010980: ; 0x02010980
	str r1, [r0, #0xc]
	bx lr
	arm_func_end sub_02010980

	arm_func_start sub_02010988
sub_02010988: ; 0x02010988
	str r1, [r0, #0x10]
	bx lr
	arm_func_end sub_02010988

	arm_func_start sub_02010990
sub_02010990: ; 0x02010990
	ldrb r3, [r0, #0x14]
	cmp r3, #8
	bxhs lr
	add r3, r0, r3, lsl #1
	strh r1, [r3, #0x16]
	ldrb r1, [r0, #0x14]
	add r1, r0, r1
	strb r2, [r1, #0x26]
	ldrb r1, [r0, #0x14]
	add r1, r1, #1
	strb r1, [r0, #0x14]
	bx lr
	arm_func_end sub_02010990

	arm_func_start sub_020109C0
sub_020109C0: ; 0x020109C0
	stmdb sp!, {r4, lr}
	ldrb r3, [r0, #0x40]
	cmp r3, #8
	ldmhsia sp!, {r4, pc}
	ldrb r4, [r0, #0x2e]
	mov r3, #0xff
	mov lr, #0
	cmp r4, #0
	bls _02010A14
	arm_func_end sub_020109C0
_020109E4:
	add ip, r0, lr, lsl #1
	ldrh ip, [ip, #0x30]
	cmp r1, ip
	addeq ip, r0, lr
	ldreqb ip, [ip, #0x38]
	cmpeq r2, ip
	moveq r3, lr
	beq _02010A14
	add ip, lr, #1
	and lr, ip, #0xff
	cmp lr, r4
	blo _020109E4
_02010A14:
	cmp r3, #0xff
	bne _02010A44
	cmp r4, #4
	ldmhsia sp!, {r4, pc}
	add r3, r0, r4, lsl #1
	strh r1, [r3, #0x30]
	add r1, r0, r4
	strb r2, [r1, #0x38]
	ldrb r1, [r0, #0x2e]
	mov r3, r4
	add r1, r1, #1
	strb r1, [r0, #0x2e]
_02010A44:
	add r2, r0, #0x3c
	ldrb r1, [r2, r3]
	add r1, r1, #1
	strb r1, [r2, r3]
	ldrb r1, [r0, #0x40]
	add r1, r0, r1
	strb r3, [r1, #0x41]
	ldrb r1, [r0, #0x40]
	add r1, r1, #1
	strb r1, [r0, #0x40]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02010A70
sub_02010A70: ; 0x02010A70
	strb r1, [r0, #0x49]
	ldrb r1, [r0, #0x58]
	orr r1, r1, #1
	strb r1, [r0, #0x58]
	bx lr
	arm_func_end sub_02010A70

	arm_func_start sub_02010A84
sub_02010A84: ; 0x02010A84
	strb r1, [r0, #0x4a]
	ldrb r1, [r0, #0x58]
	orr r1, r1, #2
	strb r1, [r0, #0x58]
	bx lr
	arm_func_end sub_02010A84

	arm_func_start sub_02010A98
sub_02010A98: ; 0x02010A98
	strb r1, [r0, #0x4b]
	bx lr
	arm_func_end sub_02010A98

	arm_func_start sub_02010AA0
sub_02010AA0: ; 0x02010AA0
	strb r1, [r0, #0x4c]
	bx lr
	arm_func_end sub_02010AA0

	arm_func_start sub_02010AA8
sub_02010AA8: ; 0x02010AA8
	strb r1, [r0, #0x4d]
	bx lr
	arm_func_end sub_02010AA8

	arm_func_start sub_02010AB0
sub_02010AB0: ; 0x02010AB0
	strb r1, [r0, #0x4e]
	ldrb r1, [r0, #0x58]
	orr r1, r1, #4
	strb r1, [r0, #0x58]
	bx lr
	arm_func_end sub_02010AB0

	arm_func_start sub_02010AC4
sub_02010AC4: ; 0x02010AC4
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	strb r1, [r0, #0x4f]
	bx lr
	arm_func_end sub_02010AC4

	arm_func_start sub_02010AD8
sub_02010AD8: ; 0x02010AD8
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	strb r1, [r0, #0x50]
	bx lr
	arm_func_end sub_02010AD8

	arm_func_start sub_02010AEC
sub_02010AEC: ; 0x02010AEC
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	strb r1, [r0, #0x51]
	bx lr
	arm_func_end sub_02010AEC

	arm_func_start sub_02010B00
sub_02010B00: ; 0x02010B00
	strb r1, [r0, #0x52]
	bx lr
	arm_func_end sub_02010B00

	arm_func_start sub_02010B08
sub_02010B08: ; 0x02010B08
	strb r1, [r0, #0x54]
	bx lr
	arm_func_end sub_02010B08

	arm_func_start sub_02010B10
sub_02010B10: ; 0x02010B10
	strh r1, [r0, #0x56]
	ldrb r1, [r0, #0x58]
	orr r1, r1, #8
	strb r1, [r0, #0x58]
	bx lr
	arm_func_end sub_02010B10

	arm_func_start sub_02010B24
sub_02010B24: ; 0x02010B24
	ldr r0, [r0]
	bx lr
	arm_func_end sub_02010B24

	arm_func_start sub_02010B2C
sub_02010B2C: ; 0x02010B2C
	ldrb r0, [r0, #4]
	bx lr
	arm_func_end sub_02010B2C

	arm_func_start sub_02010B34
sub_02010B34: ; 0x02010B34
	ldrb r0, [r0, #5]
	bx lr
	arm_func_end sub_02010B34

	arm_func_start sub_02010B3C
sub_02010B3C: ; 0x02010B3C
	ldrb r0, [r0, #6]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02010B3C

	arm_func_start sub_02010B50
sub_02010B50: ; 0x02010B50
	ldr r0, [r0, #8]
	bx lr
	arm_func_end sub_02010B50

	arm_func_start sub_02010B58
sub_02010B58: ; 0x02010B58
	ldr r0, [r0, #0xc]
	bx lr
	arm_func_end sub_02010B58

	arm_func_start sub_02010B60
sub_02010B60: ; 0x02010B60
	ldr r0, [r0, #0x10]
	bx lr
	arm_func_end sub_02010B60

	arm_func_start sub_02010B68
sub_02010B68: ; 0x02010B68
	ldrb r0, [r0, #0x2e]
	bx lr
	arm_func_end sub_02010B68

	arm_func_start sub_02010B70
sub_02010B70: ; 0x02010B70
	add r0, r0, r1, lsl #1
	ldrh r0, [r0, #0x30]
	bx lr
	arm_func_end sub_02010B70

	arm_func_start sub_02010B7C
sub_02010B7C: ; 0x02010B7C
	ldrb r0, [r0, #0x40]
	bx lr
	arm_func_end sub_02010B7C

	arm_func_start sub_02010B84
sub_02010B84: ; 0x02010B84
	add r0, r0, r1
	ldrb r0, [r0, #0x41]
	bx lr
	arm_func_end sub_02010B84

	arm_func_start sub_02010B90
sub_02010B90: ; 0x02010B90
	ldrb r0, [r0, #0x14]
	bx lr
	arm_func_end sub_02010B90

	arm_func_start sub_02010B98
sub_02010B98: ; 0x02010B98
	add r0, r0, r1, lsl #1
	ldrh r0, [r0, #0x16]
	bx lr
	arm_func_end sub_02010B98

	arm_func_start sub_02010BA4
sub_02010BA4: ; 0x02010BA4
	add r0, r0, r1
	ldrb r0, [r0, #0x26]
	bx lr
	arm_func_end sub_02010BA4

	arm_func_start sub_02010BB0
sub_02010BB0: ; 0x02010BB0
	ldrb r0, [r0, #0x49]
	bx lr
	arm_func_end sub_02010BB0

	arm_func_start sub_02010BB8
sub_02010BB8: ; 0x02010BB8
	ldrb r0, [r0, #0x4a]
	bx lr
	arm_func_end sub_02010BB8

	arm_func_start sub_02010BC0
sub_02010BC0: ; 0x02010BC0
	ldrb r0, [r0, #0x4b]
	bx lr
	arm_func_end sub_02010BC0

	arm_func_start sub_02010BC8
sub_02010BC8: ; 0x02010BC8
	ldrb r0, [r0, #0x4c]
	bx lr
	arm_func_end sub_02010BC8

	arm_func_start sub_02010BD0
sub_02010BD0: ; 0x02010BD0
	ldrb r0, [r0, #0x4d]
	bx lr
	arm_func_end sub_02010BD0

	arm_func_start sub_02010BD8
sub_02010BD8: ; 0x02010BD8
	ldrb r0, [r0, #0x4e]
	bx lr
	arm_func_end sub_02010BD8

	arm_func_start sub_02010BE0
sub_02010BE0: ; 0x02010BE0
	ldrb r0, [r0, #0x4f]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02010BE0

	arm_func_start sub_02010BF4
sub_02010BF4: ; 0x02010BF4
	ldrb r0, [r0, #0x50]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02010BF4

	arm_func_start sub_02010C08
sub_02010C08: ; 0x02010C08
	ldrb r0, [r0, #0x51]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02010C08

	arm_func_start sub_02010C1C
sub_02010C1C: ; 0x02010C1C
	ldrb r0, [r0, #0x52]
	bx lr
	arm_func_end sub_02010C1C

	arm_func_start sub_02010C24
sub_02010C24: ; 0x02010C24
	ldrb r0, [r0, #0x58]
	bx lr
	arm_func_end sub_02010C24

	arm_func_start sub_02010C2C
sub_02010C2C: ; 0x02010C2C
	ldrb r0, [r0, #0x54]
	bx lr
	arm_func_end sub_02010C2C

	arm_func_start sub_02010C34
sub_02010C34: ; 0x02010C34
	ldrh r0, [r0, #0x56]
	bx lr
	arm_func_end sub_02010C34

	arm_func_start sub_02010C3C
sub_02010C3C: ; 0x02010C3C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02010C50
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02010C3C

	arm_func_start sub_02010C50
sub_02010C50: ; 0x02010C50
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _02010C8C ; =MAIN_BSS_020AF35C
	mov r7, r0
	bl sub_02010C94
	ldr r5, _02010C90 ; =MAIN_BSS_020AF3CE
	mov r6, #0
	mov r4, #0x72
	arm_func_end sub_02010C50
_02010C6C:
	mla r1, r6, r4, r5
	mov r0, r7
	bl sub_02010C94
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #4
	blo _02010C6C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02010C8C: .word MAIN_BSS_020AF35C
_02010C90: .word MAIN_BSS_020AF3CE

	arm_func_start sub_02010C94
sub_02010C94: ; 0x02010C94
	stmdb sp!, {r4, lr}
	mov r4, r1
	mov r0, r4
	mov r1, #0
	mov r2, #0x72
	bl MI_CpuFill8
	mov r0, #1
	strh r0, [r4, #0x4c]
	strh r0, [r4, #0x6c]
	strh r0, [r4, #0x6e]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02010C94

	arm_func_start sub_02010CC0
sub_02010CC0: ; 0x02010CC0
	ldr r0, _02010CC8 ; =MAIN_BSS_020AF3CE
	bx lr
	.align 2, 0
_02010CC8: .word MAIN_BSS_020AF3CE
	arm_func_end sub_02010CC0

	arm_func_start CBattleResultParameter_ctor
CBattleResultParameter_ctor: ; 0x02010CCC
	stmdb sp!, {r4, lr}
	ldr r1, _02010CE8 ; =PTR_LAB_0208abac
	mov r4, r0
	str r1, [r4]
	bl sub_02010D04
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02010CE8: .word PTR_LAB_0208abac
	arm_func_end CBattleResultParameter_ctor

	arm_func_start CBattleResultParameter_complete_obj_dtor
CBattleResultParameter_complete_obj_dtor: ; 0x02010CEC
	bx lr
	arm_func_end CBattleResultParameter_complete_obj_dtor

	arm_func_start CBattleResultParameter_deleting_obj_dtor
CBattleResultParameter_deleting_obj_dtor: ; 0x02010CF0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end CBattleResultParameter_deleting_obj_dtor

	arm_func_start sub_02010D04
sub_02010D04: ; 0x02010D04
	stmdb sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x80
	mov r4, r0
	bl MI_CpuFill8
	mov r0, #0xff
	strb r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02010D04

	arm_func_start sub_02010D2C
sub_02010D2C: ; 0x02010D2C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov sl, r0
	mov r0, #0x20
	mov r4, r1
	bl _Znwm
	movs sb, r0
	beq _02010D58
	mov r1, r4
	bl sub_0200D114
	mov sb, r0
	arm_func_end sub_02010D2C
_02010D58:
	ldr r1, _02010E5C ; =s_data_param_DiskHP_bin_0208ac04
	mov r0, sb
	bl sub_0200D148
	mov r0, sb
	bl sub_0200D390
	strb r0, [sl]
	and r0, r0, #0xff
	bl _Znam
	str r0, [sl, #4]
	ldrb r0, [sl]
	mov r0, r0, lsl #1
	bl _Znam
	str r0, [sl, #8]
	ldrb r0, [sl]
	mov r0, r0, lsl #1
	bl _Znam
	str r0, [sl, #0xc]
	mov r8, #0
	str r8, [sp]
	ldrb r0, [sl]
	cmp r0, #0
	ble _02010E38
	mov r7, #1
	add r6, sp, #0
	mov r5, #2
	mov r4, #3
_02010DC0:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl sub_0200D3B8
	ldr r2, [sp]
	ldr r1, [sl, #4]
	mov r0, sb
	strb r2, [r1, r8]
	mov r1, r8
	mov r2, r5
	mov r3, r6
	bl sub_0200D3B8
	ldr r2, [sp]
	ldr r1, [sl, #8]
	mov r0, r8, lsl #1
	strh r2, [r1, r0]
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, r6
	bl sub_0200D3B8
	ldr r2, [sp]
	ldr r1, [sl, #0xc]
	mov r0, r8, lsl #1
	strh r2, [r1, r0]
	add r8, r8, #1
	ldrb r0, [sl]
	cmp r8, r0
	blt _02010DC0
_02010E38:
	cmp sb, #0
	beq _02010E50
	mov r0, sb
	bl sub_0200D134
	mov r0, sb
	bl _ZdlPv
_02010E50:
	mov r0, sl
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02010E5C: .word s_data_param_DiskHP_bin_0208ac04

	arm_func_start sub_02010E60
sub_02010E60: ; 0x02010E60
	ldrb r0, [r0]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	andne r0, r0, #0xff
	bx lr
	arm_func_end sub_02010E60

	arm_func_start sub_02010E78
sub_02010E78: ; 0x02010E78
	ldrb r2, [r0]
	cmp r1, r2
	movhi r0, #0
	ldrls r0, [r0, #4]
	ldrlsb r0, [r0, r1]
	bx lr
	arm_func_end sub_02010E78

	arm_func_start sub_02010E90
sub_02010E90: ; 0x02010E90
	ldrb r2, [r0]
	cmp r1, r2
	movhi r0, #0
    ldrls r2, [r0, #8]
    movls r0, r1, lsl #1
	ldrlsh r0, [r2, r0]
	bx lr
	arm_func_end sub_02010E90

	arm_func_start sub_02010EAC
sub_02010EAC: ; 0x02010EAC
	ldrb r2, [r0]
	cmp r1, r2
	movhi r0, #0
	ldrls r2, [r0, #0xc]
    movls r0, r1, lsl #1
	ldrlsh r0, [r2, r0]
	bx lr
	arm_func_end sub_02010EAC

	arm_func_start sub_02010EC8
sub_02010EC8: ; 0x02010EC8
	mov r1, #0
	str r1, [r0, #0x10]
	bx lr
	arm_func_end sub_02010EC8

	arm_func_start sub_02010ED4
sub_02010ED4: ; 0x02010ED4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x10]
	cmp r4, #0
	beq _02010F04
	beq _02010EFC
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02010ED4
_02010EFC:
	mov r0, #0
	str r0, [r5, #0x10]
_02010F04:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02010F0C
sub_02010F0C: ; 0x02010F0C
	mov r1, #0
	strh r1, [r0, #8]
	bx lr
	arm_func_end sub_02010F0C

	arm_func_start sub_02010F18
sub_02010F18: ; 0x02010F18
	stmdb sp!, {r4, lr}
	mov r1, #0
	mov r2, #8
	mov r4, r0
	bl MI_CpuFill8
	ldr r1, _02010F54 ; =0x0000C68F
	mov r0, #0
	strh r1, [r4]
	strh r0, [r4, #2]
	ldr r1, _02010F58 ; =0x0000E97C
	strh r0, [r4, #4]
	mov r0, r4
	strh r1, [r4, #6]
	bl sub_02010F0C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02010F54: .word 0x0000C68F
_02010F58: .word 0x0000E97C
	arm_func_end sub_02010F18

	arm_func_start sub_02010F5C
sub_02010F5C: ; 0x02010F5C
	mov r2, #1
	mov r1, r2, lsl r1
	ldrh r2, [r0, #2]
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r0, #2]
	bx lr
	arm_func_end sub_02010F5C

	arm_func_start sub_02010F78
sub_02010F78: ; 0x02010F78
	cmp r1, #0
	movne r0, r1
	ldrh r2, [r0]
	ldr r1, _02010FA4 ; =0x0000C68F
	cmp r2, r1
	ldreqh r1, [r0, #6]
	ldreq r0, _02010FA8 ; =0x0000E97C
	cmpeq r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_02010FA4: .word 0x0000C68F
_02010FA8: .word 0x0000E97C
	arm_func_end sub_02010F78

	arm_func_start sub_02010FAC
sub_02010FAC: ; 0x02010FAC
	mov r2, #1
	mov r1, r2, lsl r1
	ldrh r2, [r0, #4]
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_02010FAC

	arm_func_start sub_02010FC8
sub_02010FC8: ; 0x02010FC8
	mov r3, #1
	mov r1, r3, lsl r1
	ldrh r2, [r0, #2]
	mov r1, r1, lsl #0x10
	ldrh r0, [r0, #4]
	tst r2, r1, lsr #16
	moveq r3, #0
	tst r0, r1, lsr #16
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #2
	bxne lr
	cmp r3, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02010FC8

	arm_func_start sub_0201100C
sub_0201100C: ; 0x0201100C
	add r1, r0, #0x3000
	mov r2, #0
	str r2, [r1, #8]
	bx lr
	arm_func_end sub_0201100C

	arm_func_start sub_0201101C
sub_0201101C: ; 0x0201101C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x3000
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _02011054
	beq _02011048
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_0201101C
_02011048:
	add r0, r5, #0x3000
	mov r1, #0
	str r1, [r0, #8]
_02011054:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201105C
sub_0201105C: ; 0x0201105C
	stmdb sp!, {r3, r4, r5, lr}
	mov r1, #0
	mov r5, r0
	bl sub_020110E0
	ldr r0, _020110D8 ; =MAIN_BSS_020AF620
	ldr r2, _020110DC ; =0x00003004
	mov r1, #0
	bl MI_CpuFill8
	add r0, r5, #0x3000
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _020110AC
	beq _020110A0
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_0201105C
_020110A0:
	add r0, r5, #0x3000
	mov r1, #0
	str r1, [r0, #8]
_020110AC:
	mov r0, #0x74
	bl _Znwm
	cmp r0, #0
	beq _020110C4
	mov r1, #1
	bl sub_02027FE8
_020110C4:
	add r1, r5, #0x3000
	str r0, [r1, #8]
	mov r0, r5
	bl sub_020110E8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020110D8: .word MAIN_BSS_020AF620
_020110DC: .word 0x00003004

	arm_func_start sub_020110E0
sub_020110E0: ; 0x020110E0
	str r1, [r0]
	bx lr
	arm_func_end sub_020110E0

	arm_func_start sub_020110E8
sub_020110E8: ; 0x020110E8
	add r0, r0, #0x3000
	mov r1, #0
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_020110E8

	arm_func_start sub_020110F8
sub_020110F8: ; 0x020110F8
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3000
	ldrh r2, [r0, #4]
	cmp r2, #0
	beq _0201111C
	cmp r2, #1
	beq _02011140
	b _02011180
	arm_func_end sub_020110F8
_0201111C:
	add r1, r1, #2
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #8]
	mov r1, r1, lsr #0x10
	bl sub_02028220
	add r0, r4, #0x3000
	mov r1, #1
	strh r1, [r0, #4]
	b _02011180
_02011140:
	ldr r0, [r0, #8]
	bl sub_0202841C
	cmp r0, #0
	beq _02011180
	tst r0, #0x80
	bne _0201116C
	add r0, r4, #0x3000
	mov r1, #3
	strh r1, [r0, #4]
	mov r0, #1
	ldmia sp!, {r4, pc}
_0201116C:
	mov r1, #4
	add r0, r4, #0x3000
	strh r1, [r0, #4]
	sub r0, r1, #5
	ldmia sp!, {r4, pc}
_02011180:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02011188
sub_02011188: ; 0x02011188
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x3000
	ldrh r2, [r0, #4]
	cmp r2, #0
	beq _020111AC
	cmp r2, #1
	beq _020111D0
	b _02011240
	arm_func_end sub_02011188
_020111AC:
	add r1, r1, #2
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #8]
	mov r1, r1, lsr #0x10
	bl sub_02028408
	add r0, r5, #0x3000
	mov r1, #1
	strh r1, [r0, #4]
	b _02011240
_020111D0:
	ldr r0, [r0, #8]
	bl sub_0202841C
	movs r4, r0
	beq _02011240
	tst r4, #0x80
	mov r0, r5
	bne _020111F8
	bl sub_020110E8
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020111F8:
	bl sub_020110E8
	and r0, r4, #0x7f
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02011238
_0201120C: ; jump table
	b _02011238 ; case 0
	b _02011230 ; case 1
	b _02011230 ; case 2
	b _02011238 ; case 3
	b _02011230 ; case 4
	b _02011238 ; case 5
	b _02011230 ; case 6
	b _02011238 ; case 7
	b _02011230 ; case 8
_02011230:
	mvn r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_02011238:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02011240:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02011248
sub_02011248: ; 0x02011248
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_02011248

	arm_func_start sub_02011254
sub_02011254: ; 0x02011254
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #4]
	cmp r4, #0
	beq _02011284
	beq _0201127C
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02011254
_0201127C:
	mov r0, #0
	str r0, [r5, #4]
_02011284:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201128C
sub_0201128C: ; 0x0201128C
	stmdb sp!, {r3, r4, r5, lr}
	mvn r1, #0
	mov r5, r0
	bl sub_020112DC
	ldr r0, _020112D8 ; =MAIN_BSS_020AF598
	mov r1, #0
	mov r2, #2
	bl MI_CpuFill8
	ldr r4, [r5, #4]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _020112CC
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_0201128C
_020112CC:
	mov r0, #0
	str r0, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020112D8: .word MAIN_BSS_020AF598

	arm_func_start sub_020112DC
sub_020112DC: ; 0x020112DC
	cmp r1, #0
	bge _020112F4
	ldr r0, _02011314 ; =MAIN_BSS_020AF598
	mov r1, #0
	strh r1, [r0]
	bx lr
	arm_func_end sub_020112DC
_020112F4:
	ldr r2, _02011314 ; =MAIN_BSS_020AF598
	mov r0, #1
	mov r0, r0, lsl r1
	ldrh r1, [r2]
	mov r0, r0, lsl #0x10
	orr r0, r1, r0, lsr #16
	strh r0, [r2]
	bx lr
	.align 2, 0
_02011314: .word MAIN_BSS_020AF598

	arm_func_start sub_02011318
sub_02011318: ; 0x02011318
	ldr r0, _02011334 ; =MAIN_BSS_020AF598
	mov r2, #1
	mov r2, r2, lsl r1
	ldrh r1, [r0]
	mov r0, r2, lsl #0x10
	and r0, r1, r0, lsr #16
	bx lr
	.align 2, 0
_02011334: .word MAIN_BSS_020AF598
	arm_func_end sub_02011318

	arm_func_start sub_02011338
sub_02011338: ; 0x02011338
	ldr ip, _02011350 ; =__cxa_vec_cleanup
	ldr r0, _02011354 ; =MAIN_BSS_020AF5E4
	ldr r3, _02011358 ; =sub_02010ED4
	mov r1, #3
	mov r2, #0x14
	bx ip
	.align 2, 0
_02011350: .word __cxa_vec_cleanup
_02011354: .word MAIN_BSS_020AF5E4
_02011358: .word sub_02010ED4
	arm_func_end sub_02011338

	arm_func_start sub_0201135C
sub_0201135C: ; 0x0201135C
	ldr ip, _0201136C ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x54
	bx ip
	.align 2, 0
_0201136C: .word MI_CpuFill8
	arm_func_end sub_0201135C

	arm_func_start sub_02011370
sub_02011370: ; 0x02011370
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201135C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02011370

	arm_func_start sub_02011384
sub_02011384: ; 0x02011384
	mov r1, #0
	str r1, [r0, #0x58]
	str r1, [r0, #0x54]
	bx lr
	arm_func_end sub_02011384

	arm_func_start sub_02011394
sub_02011394: ; 0x02011394
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_0201135C
	str r5, [r6, #0x58]
	str r4, [r6, #0x54]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02011394

	arm_func_start sub_020113B4
sub_020113B4: ; 0x020113B4
	stmdb sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	streqb r4, [r5, #2]
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r4, #0x4c
	bgt _02011404
	ldrb r0, [r5]
	cmp r0, #0
	beq _020113E0
	bl OS_Terminate
	arm_func_end sub_020113B4
_020113E0:
	cmp r4, #0x32
	movlt r0, #1
	strltb r0, [r5]
	blt _020113FC
	cmp r4, #0x46
	movge r0, #1
	strgeb r0, [r5]
_020113FC:
	strb r4, [r5, #2]
	ldmia sp!, {r3, r4, r5, pc}
_02011404:
	bl OS_Terminate
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201140C
sub_0201140C: ; 0x0201140C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #2]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r0, #0x4c
	bhi _0201145C
	cmp r0, #0x32
	bhs _0201144C
	ldrb r0, [r4]
	cmp r0, #1
	beq _02011440
	bl OS_Terminate
	arm_func_end sub_0201140C
_02011440:
	mov r0, #2
	strb r0, [r4]
	ldmia sp!, {r4, pc}
_0201144C:
	cmp r0, #0x46
	movhs r0, #2
	strcsb r0, [r4]
	ldmia sp!, {r4, pc}
_0201145C:
	bl OS_Terminate
	ldmia sp!, {r4, pc}

	arm_func_start sub_02011464
sub_02011464: ; 0x02011464
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #2]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r0, #0x4c
	bhi _020114BC
	cmp r0, #0x32
	bhs _020114AC
	ldrb r0, [r4]
	cmp r0, #2
	beq _02011498
	bl OS_Terminate
	arm_func_end sub_02011464
_02011498:
	mov r0, #0
	strb r0, [r4]
	ldrb r0, [r4, #2]
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
_020114AC:
	cmp r0, #0x46
	movhs r0, #0
	strcsb r0, [r4]
	ldmia sp!, {r4, pc}
_020114BC:
	bl OS_Terminate
	ldmia sp!, {r4, pc}

	arm_func_start sub_020114C4
sub_020114C4: ; 0x020114C4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	add r4, r0, #0x14
	ldrb r0, [r4, r5]
	and r0, r0, #0xf
	cmp r0, #2
	bne _020114E4
	bl OS_Terminate
	arm_func_end sub_020114C4
_020114E4:
	ldrb r0, [r4, r5]
	bic r0, r0, #0xf
	orr r0, r0, #1
	strb r0, [r4, r5]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020114F8
sub_020114F8: ; 0x020114F8
	add r0, r0, r1
	ldrb r0, [r0, #0x14]
	and r0, r0, #0xf
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_020114F8

	arm_func_start sub_02011514
sub_02011514: ; 0x02011514
	add r2, r0, #0x14
	ldrb r0, [r2, r1]
	orr r0, r0, #0x10
	strb r0, [r2, r1]
	bx lr
	arm_func_end sub_02011514

	arm_func_start sub_02011528
sub_02011528: ; 0x02011528
	add r0, r0, r1
	ldrb r0, [r0, #0x14]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02011528

	arm_func_start sub_02011540
sub_02011540: ; 0x02011540
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #1]
	mov r4, r1
	cmp r0, #0
	beq _0201155C
	bl OS_Terminate
	arm_func_end sub_02011540
_0201155C:
	add r0, r5, r4
	ldrb r0, [r0, #0x14]
	and r0, r0, #0xf
	cmp r0, #2
	bne _02011574
	bl OS_Terminate
_02011574:
	mov r0, #1
	strb r0, [r5, #1]
	mov r0, r5
	mov r1, r4
	strb r4, [r5, #3]
	bl sub_02011514
	ldr r0, [r5, #0x58]
	mov r1, r4
	bl sub_02034120
	ldr r0, [r5, #0x54]
	mov r1, r4
	bl sub_0200B21C
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020115A8
sub_020115A8: ; 0x020115A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _020115C0
	bl OS_Terminate
	arm_func_end sub_020115A8
_020115C0:
	mov r3, #0
	strb r3, [r4, #1]
	ldrb r1, [r4, #3]
	add r2, r4, #0x14
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	orr r0, r0, #2
	strb r0, [r2, r1]
	strb r3, [r4, #3]
	ldr r0, [r4, #0x58]
	bl sub_020342C0
	ldr r0, [r4, #0x54]
	bl sub_0200B36C
	ldmia sp!, {r4, pc}

	arm_func_start sub_020115F8
sub_020115F8: ; 0x020115F8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _02011610
	bl OS_Terminate
	arm_func_end sub_020115F8
_02011610:
	mov r0, #0
	strb r0, [r4, #1]
	strb r0, [r4, #3]
	ldr r0, [r4, #0x58]
	bl sub_020342C0
	ldr r0, [r4, #0x54]
	bl sub_0200B36C
	ldmia sp!, {r4, pc}

	arm_func_start sub_02011630
sub_02011630: ; 0x02011630
	add r0, r0, r1
	ldrb r0, [r0, #0x14]
	and r0, r0, #0xf
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_02011630

	arm_func_start sub_0201164C
sub_0201164C: ; 0x0201164C
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0x4c
	ldmgtia sp!, {r4, pc}
	str r1, [r4, #8]
	ldr r0, [r4, #0x58]
	bl sub_02034084
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #8]
	bl sub_0200AFC0
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201164C

	arm_func_start sub_02011678
sub_02011678: ; 0x02011678
	mov r2, #0
	mov r3, r2
	arm_func_end sub_02011678
_02011680:
	add r1, r0, r3
	ldrb r1, [r1, #0x14]
	add r3, r3, #1
	and r1, r1, #0xf
	cmp r1, #2
	addeq r2, r2, #1
	cmp r3, #0x3e
	blt _02011680
	mov r0, r2
	bx lr

	arm_func_start sub_020116A8
sub_020116A8: ; 0x020116A8
	stmdb sp!, {r3, lr}
	cmp r1, #0x4c
	ldmgtia sp!, {r3, pc}
	ldr r0, [r0, #0x54]
	bl sub_0200AFC0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020116A8

	arm_func_start sub_020116C0
sub_020116C0: ; 0x020116C0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0xf8
	mov ip, r1
	mov lr, r0
	cmp ip, #0x45
	ble _02011700
	mov r2, #0
	arm_func_end sub_020116C0
_020116DC:
	add r1, lr, r2
	ldrb r0, [r1, #0x14]
	add r2, r2, #1
	cmp r2, #0x3e
	bic r0, r0, #0xf
	strb r0, [r1, #0x14]
	blt _020116DC
	add sp, sp, #0xf8
	ldmia sp!, {r4, r5, r6, pc}
_02011700:
	cmp ip, #0
	bne _02011730
	mov r2, #0
_0201170C:
	add r1, lr, r2
	ldrb r0, [r1, #0x14]
	add r2, r2, #1
	cmp r2, #0x3e
	bic r0, r0, #0xf
	strb r0, [r1, #0x14]
	blt _0201170C
	add sp, sp, #0xf8
	ldmia sp!, {r4, r5, r6, pc}
_02011730:
	ldr r6, _02011798 ; =DAT_02084428
	add r5, sp, #0
	mov r4, #0xf
_0201173C:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201173C
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	mov r4, #0
	add r3, sp, #0
_0201175C:
	ldr r0, [r3, r4, lsl #2]
	cmp r0, ip
	bgt _02011784
	add r2, lr, r4
	ldrb r1, [r2, #0x14]
	and r0, r1, #0xf
	cmp r0, #2
	bicne r0, r1, #0xf
	orrne r0, r0, #1
	strneb r0, [r2, #0x14]
_02011784:
	add r4, r4, #1
	cmp r4, #0x3e
	blt _0201175C
	add sp, sp, #0xf8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02011798: .word DAT_02084428

	arm_func_start sub_0201179C
sub_0201179C: ; 0x0201179C
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	bx lr
	arm_func_end sub_0201179C

	arm_func_start sub_020117AC
sub_020117AC: ; 0x020117AC
	bx lr
	arm_func_end sub_020117AC

	arm_func_start sub_020117B0
sub_020117B0: ; 0x020117B0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x20]
	ldr r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02011AA8 ; =DAT_0208b46c
	ldrh r0, [r0]
	cmp r0, #0x3c
	moveq r1, #1
	ldr r0, [r4, #0x10]
	movne r1, #2
	add r2, r0, r1
	str r2, [r4, #0x10]
	ldr r0, [r4, #0xc]
	cmp r2, r0
	strhi r0, [r4, #0x10]
	ldr r0, [r4]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02011A6C
_02011824: ; jump table
	b _02011A6C ; case 0
	b _0201183C ; case 1
	b _02011870 ; case 2
	b _020118B4 ; case 3
	b _02011908 ; case 4
	b _02011978 ; case 5
	arm_func_end sub_020117B0
_0201183C:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x2c]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0xc]
	bl sub_02007068
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0xc]
	bl sub_02007068
	str r0, [r4, #0x18]
	b _02011A6C
_02011870:
	ldr r0, [r4, #0xc]
	str r0, [sp]
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x34]
	ldr r2, [r4, #0x2c]
	ldr r3, [r4, #0x10]
	bl sub_020070A4
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x38]
	ldr r2, [r4, #0x30]
	ldr r3, [r4, #0x10]
	bl sub_020070A4
	str r0, [r4, #0x18]
	b _02011A6C
_020118B4:
	ldr r0, [r4, #0x10]
	str r0, [sp]
	ldr r0, [r4, #0xc]
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x34]
	ldr r2, [r4, #0x3c]
	ldr r3, [r4, #0x2c]
	bl sub_02007134
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	str r0, [sp]
	ldr r0, [r4, #0xc]
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x38]
	ldr r2, [r4, #0x40]
	ldr r3, [r4, #0x30]
	bl sub_02007134
	str r0, [r4, #0x18]
	b _02011A6C
_02011908:
	ldrh r0, [r4, #0x44]
	ldr r2, [r4, #0x48]
	ldr r3, _02011AAC ; =FX_SinCosTable_
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r0, r0, #1
	mov r0, r0, lsl #1
	mul r5, r2, r1
	ldrsh r0, [r3, r0]
	ldr r6, [r4, #0x14]
	smull r2, r0, r5, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r6, r2
	str r0, [r4, #0x14]
	ldr r2, [r4, #0x48]
	ldrh r0, [r4, #0x44]
	mul r1, r2, r1
	mov r0, r0, asr #4
	mov r0, r0, lsl #2
	ldrsh r0, [r3, r0]
	ldr r3, [r4, #0x18]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	str r0, [r4, #0x18]
	b _02011A6C
_02011978:
	ldrh r3, [r4, #0x5c]
	ldrh r2, [r4, #0x5e]
	ldr r0, _02011AAC ; =FX_SinCosTable_
	mla r1, r2, r1, r3
	strh r1, [r4, #0x5c]
	ldrh r1, [r4, #0x5c]
	ldr r2, [r4, #0x54]
	mov r1, r1, asr #4
	mov r1, r1, lsl #1
	add r1, r1, #1
	mov r1, r1, lsl #1
	ldrsh r1, [r0, r1]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r4, #0x14]
	ldrh r1, [r4, #0x5c]
	ldr r2, [r4, #0x58]
	mov r1, r1, asr #4
	mov r1, r1, lsl #2
	ldrsh r1, [r0, r1]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r4, #0x18]
	ldrh r1, [r4, #0x60]
	cmp r1, #0
	beq _02011A4C
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov r2, r2, lsl #1
	mov r1, r1, lsl #1
	ldrsh r2, [r0, r2]
	ldr r7, [r4, #0x18]
	ldrsh r1, [r0, r1]
	ldr r0, [r4, #0x14]
	smull lr, ip, r7, r2
	smull r6, r5, r0, r1
	smull r3, r2, r0, r2
	smull r1, r0, r7, r1
	mov r6, r6, lsr #0xc
	mov lr, lr, lsr #0xc
	mov r3, r3, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r6, r6, r5, lsl #20
	orr lr, lr, ip, lsl #20
	sub r5, r6, lr
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	str r5, [r4, #0x14]
	add r0, r3, r1
	str r0, [r4, #0x18]
_02011A4C:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x4c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x50]
	add r0, r1, r0
	str r0, [r4, #0x18]
_02011A6C:
	ldr r3, [r4, #0x18]
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	strh r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	movhs r0, #0
	strhs r0, [r4]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02011AA8: .word DAT_0208b46c
_02011AAC: .word FX_SinCosTable_

	arm_func_start sub_02011AB0
sub_02011AB0: ; 0x02011AB0
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	cmp r3, #0
	beq _02011B00
	mov r1, #0
	str r1, [r0, #0x10]
	mov r1, #1
	str r1, [r0]
	str r3, [r0, #0xc]
	ldr r1, [r0, #0x14]
	ldr r2, [sp, #0xc]
	str r1, [r0, #0x24]
	ldr r3, [r0, #0x18]
	ldr r1, [sp, #0x10]
	str r3, [r0, #0x28]
	str r2, [r0, #0x2c]
	str r1, [r0, #0x30]
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02011AB0
_02011B00:
	add r1, sp, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02011B18
sub_02011B18: ; 0x02011B18
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	ldr r2, [sp, #0x1c]
	ldr ip, [sp, #0x18]
	cmp r2, #0
	beq _02011B7C
	mov r1, #0
	str r1, [r0, #0x10]
	mov r1, #2
	str r1, [r0]
	str r2, [r0, #0xc]
	ldr r2, [r0, #0x14]
	ldr r1, [sp, #0xc]
	str r2, [r0, #0x24]
	ldr r3, [r0, #0x18]
	ldr r2, [sp, #0x10]
	str r3, [r0, #0x28]
	str r1, [r0, #0x2c]
	ldr r1, [sp, #0x14]
	str r2, [r0, #0x30]
	str r1, [r0, #0x34]
	str ip, [r0, #0x38]
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02011B18
_02011B7C:
	add r1, sp, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02011B94
sub_02011B94: ; 0x02011B94
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	ldr r2, [sp, #0x24]
	ldr lr, [sp, #0x18]
	cmp r2, #0
	ldr ip, [sp, #0x20]
	beq _02011C08
	mov r1, #0
	str r1, [r0, #0x10]
	mov r1, #3
	str r1, [r0]
	str r2, [r0, #0xc]
	ldr r2, [r0, #0x14]
	ldr r1, [sp, #0xc]
	str r2, [r0, #0x24]
	ldr r3, [r0, #0x18]
	ldr r2, [sp, #0x10]
	str r3, [r0, #0x28]
	str r1, [r0, #0x2c]
	ldr r1, [sp, #0x14]
	str r2, [r0, #0x30]
	str r1, [r0, #0x34]
	ldr r1, [sp, #0x1c]
	str lr, [r0, #0x38]
	str r1, [r0, #0x3c]
	str ip, [r0, #0x40]
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02011B94
_02011C08:
	add r1, sp, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02011C20
sub_02011C20: ; 0x02011C20
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r0, #0
	str r0, [r5, #0x10]
	mov r0, #1
	str r0, [r5]
	ldr r4, [sp, #0x18]
	ldr r1, [r5, #0x18]
	ldr r2, [sp, #0x14]
	ldr r0, [r5, #0x14]
	mov r6, r3
	sub r0, r2, r0
	sub r1, r4, r1
	bl sub_02007254
	mov r1, r6
	bl _s32_div_f
	str r0, [r5, #0xc]
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #0x14]
	str r1, [r5, #0x24]
	ldr r1, [r5, #0x18]
	str r1, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r4, [r5, #0x30]
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02011C20

	arm_func_start sub_02011C90
sub_02011C90: ; 0x02011C90
	mov ip, #4
	mov r3, #0
	str ip, [r0]
	str r3, [r0, #0x10]
	sub r3, r3, #1
	str r3, [r0, #0xc]
	strh r1, [r0, #0x44]
	str r2, [r0, #0x48]
	bx lr
	arm_func_end sub_02011C90

	arm_func_start sub_02011CB4
sub_02011CB4: ; 0x02011CB4
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	mov r2, #5
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #0x10]
	sub r1, r1, #1
	ldr ip, [sp, #0xc]
	str r1, [r0, #0xc]
	ldr lr, [sp, #0x10]
	str ip, [r0, #0x4c]
	str lr, [r0, #0x50]
	ldr r2, [sp, #0x18]
	str r3, [r0, #0x54]
	ldrh r1, [sp, #0x1c]
	str r2, [r0, #0x58]
	ldrh r2, [sp, #0x20]
	strh r1, [r0, #0x5c]
	ldrh r1, [sp, #0x24]
	strh r2, [r0, #0x5e]
	strh r1, [r0, #0x60]
	str ip, [r0, #0x2c]
	str lr, [r0, #0x30]
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02011CB4

	arm_func_start sub_02011D1C
sub_02011D1C: ; 0x02011D1C
	mov r2, #0
	str r2, [r0]
	str r1, [r0, #0x14]
	bx lr
	arm_func_end sub_02011D1C

	arm_func_start sub_02011D2C
sub_02011D2C: ; 0x02011D2C
	mov r2, #0
	str r2, [r0]
	str r1, [r0, #0x18]
	bx lr
	arm_func_end sub_02011D2C

	arm_func_start sub_02011D3C
sub_02011D3C: ; 0x02011D3C
	stmdb sp!, {r0, r1, r2, r3}
	mov r1, #0
	ldr r2, [sp, #4]
	str r1, [r0]
	ldr r1, [sp, #8]
	str r2, [r0, #0x14]
	str r1, [r0, #0x18]
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02011D3C

	arm_func_start sub_02011D60
sub_02011D60: ; 0x02011D60
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r1, _02011E48 ; =ptr_FUN_02011e54_0208b488
	add r0, r4, #0xc
	str r1, [r4]
	bl sub_0201179C
	mov r1, #0
	mov r0, #0x4c
	str r1, [r4, #0x104]
	bl _Znwm
	cmp r0, #0
	beq _02011D98
	bl sub_02005150
	arm_func_end sub_02011D60
_02011D98:
	ldr r1, _02011E4C ; =sub_020051C8
	str r0, [r4, #0xc4]
	mov r0, #8
	ldr r3, _02011E50 ; =sub_02005150
	mov r2, r0
	str r1, [sp]
	mov r1, #0x4c
	bl __cxa_vec_new
	str r0, [r4, #0x160]
	mov r0, #0x80
	bl _Znam
	str r0, [r4, #0x180]
	mov r1, #0
	add r0, r4, #0x108
	mov r2, #0x14
	strb r1, [r4, #0x70]
	bl MI_CpuFill8
	mov r2, #0x1f
	add r0, r4, #0x11c
	mov r1, #0
	strb r2, [r4, #0x108]
	mov r2, #0x18
	bl MI_CpuFill8
	add r0, r4, #0x134
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	mov r0, #0x1000
	str r0, [r4, #0x11c]
	str r0, [r4, #0x134]
	add r0, r4, #0x14c
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	mov r1, #0
	str r1, [r4, #0xb0]
	str r1, [r4, #0xb4]
	mov r0, #0x1000
	str r0, [r4, #0xb8]
	strh r1, [r4, #0xbc]
	strh r1, [r4, #0xbe]
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02011E48: .word ptr_FUN_02011e54_0208b488
_02011E4C: .word sub_020051C8
_02011E50: .word sub_02005150

	arm_func_start sub_02011E54
sub_02011E54: ; 0x02011E54
	stmdb sp!, {r4, lr}
	ldr r1, _02011ED4 ; =ptr_FUN_02011e54_0208b488
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0xc4]
	cmp r0, #0
	beq _02011E88
	beq _02011E80
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_02011E54
_02011E80:
	mov r0, #0
	str r0, [r4, #0xc4]
_02011E88:
	ldr r0, [r4, #0x180]
	cmp r0, #0
	beq _02011EA0
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x180]
_02011EA0:
	ldr r0, [r4, #0x160]
	cmp r0, #0
	beq _02011EC4
	ldr r3, _02011ED8 ; =sub_020051C8
	mov r1, #0x4c
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x160]
_02011EC4:
	add r0, r4, #0xc
	bl sub_020117AC
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02011ED4: .word ptr_FUN_02011e54_0208b488
_02011ED8: .word sub_020051C8

	arm_func_start sub_02011EDC
sub_02011EDC: ; 0x02011EDC
	stmdb sp!, {r4, lr}
	ldr r1, _02011F64 ; =ptr_FUN_02011e54_0208b488
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0xc4]
	cmp r0, #0
	beq _02011F10
	beq _02011F08
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_02011EDC
_02011F08:
	mov r0, #0
	str r0, [r4, #0xc4]
_02011F10:
	ldr r0, [r4, #0x180]
	cmp r0, #0
	beq _02011F28
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x180]
_02011F28:
	ldr r0, [r4, #0x160]
	cmp r0, #0
	beq _02011F4C
	ldr r3, _02011F68 ; =sub_020051C8
	mov r1, #0x4c
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x160]
_02011F4C:
	add r0, r4, #0xc
	bl sub_020117AC
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02011F64: .word ptr_FUN_02011e54_0208b488
_02011F68: .word sub_020051C8

	arm_func_start sub_02011F6C
sub_02011F6C: ; 0x02011F6C
	stmdb sp!, {r4, lr}
	ldr r1, _02011FEC ; =ptr_FUN_02011e54_0208b488
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0xc4]
	cmp r0, #0
	beq _02011FA0
	beq _02011F98
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_02011F6C
_02011F98:
	mov r0, #0
	str r0, [r4, #0xc4]
_02011FA0:
	ldr r0, [r4, #0x180]
	cmp r0, #0
	beq _02011FB8
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x180]
_02011FB8:
	ldr r0, [r4, #0x160]
	cmp r0, #0
	beq _02011FDC
	ldr r3, _02011FF0 ; =sub_020051C8
	mov r1, #0x4c
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x160]
_02011FDC:
	add r0, r4, #0xc
	bl sub_020117AC
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02011FEC: .word ptr_FUN_02011e54_0208b488
_02011FF0: .word sub_020051C8

	arm_func_start sub_02011FF4
sub_02011FF4: ; 0x02011FF4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020120B0
	str r4, [r5, #0x104]
	ldr r1, [r4, #0xc]
	ldr r0, [r5, #0xc4]
	mov r6, #0
	str r1, [r0, #0x34]
	arm_func_end sub_02011FF4
_02012018:
	ldr r0, [r5, #0x104]
	and r1, r6, #0xff
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	beq _02012044
	ldrb r0, [r0]
	tst r0, #1
	strneb r6, [r5, #0xc0]
	bne _02012050
_02012044:
	add r6, r6, #1
	cmp r6, #0x1d
	blt _02012018
_02012050:
	mov r7, #0
	mov r6, #1
_02012058:
	ldr r0, [r5, #0x104]
	mov r1, r7
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _02012090
	ldrb r2, [r4, #5]
	mov r1, r6
	bl sub_02008A80
	add r1, r5, r7, lsl #1
	strh r0, [r1, #0xc8]
_02012090:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #0x1d
	blo _02012058
	ldrh r0, [r5, #4]
	orr r0, r0, #8
	strh r0, [r5, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_020120B0
sub_020120B0: ; 0x020120B0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x104]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r4, #0
	arm_func_end sub_020120B0
_020120C8:
	ldr r0, [r5, #0x104]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _020120F8
	add r1, r5, r4, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008B80
_020120F8:
	add r0, r4, #1
	and r4, r0, #0xff
	cmp r4, #0x1d
	blo _020120C8
	mov r0, #0
	str r0, [r5, #0x104]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02012114
sub_02012114: ; 0x02012114
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x104]
	ldr r3, [r0]
	ldr r3, [r3, #0x14]
	blx r3
	mov r5, r0
	cmp r5, #0xff
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x104]
	mov r1, r5
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	movs r4, r0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r0, [r4]
	tst r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	strb r5, [r6, #0xc0]
	bl sub_020124BC
	ldrb r1, [r6, #0xc0]
	ldr r0, [r4, #0xc]
	add r1, r6, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_020089B8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02012114

	arm_func_start sub_02012184
sub_02012184: ; 0x02012184
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x104]
	mov r5, r3
	ldr r3, [r0]
	ldr r3, [r3, #0x14]
	blx r3
	mov r4, r0
	cmp r4, #0xff
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x104]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r1, [r0]
	tst r1, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	and r1, r4, #0xff
	strb r4, [r6, #0xc0]
	add r1, r6, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	ldr r0, [r0, #0xc]
	mov r2, r5
	bl sub_02008A58
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02012184

	arm_func_start sub_020121F4
sub_020121F4: ; 0x020121F4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	mov r4, r0
	ldr r0, [r4, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl sub_02012340
	mov r0, r4
	bl sub_020123AC
	mov r0, r4
	bl sub_020123FC
	mov r0, r4
	bl sub_02012470
	mov r0, r4
	bl sub_020124BC
	mov r0, r4
	bl sub_020125FC
	mov r0, r4
	bl sub_02012648
	mov r0, r4
	bl sub_020126C8
	mov r0, r4
	bl sub_02012750
	ldr r2, [r4, #0x20]
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x104]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	cmp r0, #0
	beq _020122C8
	ldr r2, [r0]
	ldrb r1, [r4, #0xc0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _020122C8
	ldrb r1, [r4, #0xc0]
	add r1, r4, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008844
	ldr r1, [r0]
	ldr r0, [r0, #4]
	add r5, sp, #0x18
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	b _020122E4
	arm_func_end sub_020121F4
_020122C8:
	mov r0, #0
	add r1, sp, #8
	add r5, sp, #0x18
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
_020122E4:
	ldr r3, [r4, #0x8c]
	ldr r2, [r4, #0xa0]
	ldr r1, [r5]
	ldr r0, [r5, #4]
	ldr ip, [sp, #0x20]
	ldr lr, [sp, #0x24]
	add r5, ip, r1
	ldr ip, [r4, #0xb0]
	add r3, r3, r2
	ldr r2, [r4, #0xc4]
	add r4, lr, r0
	add r3, ip, r3
	sub r3, r4, r3
	str r5, [r2, #0x18]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r5, [sp, #0x20]
	str r3, [sp, #0x24]
	str r5, [sp]
	str r3, [sp, #4]
	str r3, [r2, #0x1c]
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02012340
sub_02012340: ; 0x02012340
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x28
	mov r4, r0
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x24]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r0, r4, #0xc
	bl sub_020117B0
	ldr lr, [sp, #0x18]
	ldr r3, [r4, #0x20]
	ldr ip, [sp, #0x1c]
	ldr r2, [r4, #0x24]
	sub r0, r3, lr
	sub r1, r2, ip
	str lr, [sp, #8]
	str ip, [sp, #0xc]
	str r3, [sp, #0x10]
	str r2, [sp, #0x14]
	str r0, [sp]
	str r1, [sp, #4]
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	bl sub_02007254
	str r0, [r4, #8]
	add sp, sp, #0x28
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012340

	arm_func_start sub_020123AC
sub_020123AC: ; 0x020123AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x90]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrh r0, [r4, #0x96]
	add r0, r0, #1
	strh r0, [r4, #0x96]
	ldrh r1, [r4, #0x96]
	ldrh r0, [r4, #0x94]
	cmp r1, r0
	movhs r0, #0
	strhs r0, [r4, #0x90]
	ldrh r2, [r4, #0x96]
	ldrh r3, [r4, #0x94]
	ldr r0, [r4, #0x98]
	ldr r1, [r4, #0x9c]
	bl sub_02007068
	str r0, [r4, #0x8c]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020123AC

	arm_func_start sub_020123FC
sub_020123FC: ; 0x020123FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xa4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrh r0, [r4, #0xaa]
	add r0, r0, #1
	strh r0, [r4, #0xaa]
	ldrh r1, [r4, #0xaa]
	ldrh r0, [r4, #0xa8]
	cmp r1, r0
	movhs r0, #0
	strhs r0, [r4, #0xa4]
	ldrh r2, [r4, #0xaa]
	ldrh r3, [r4, #0xa8]
	mov r0, #0
	mov r1, #0x8000
	bl sub_02007068
	mov r1, r0, asr #4
	ldr r0, _0201246C ; =FX_SinCosTable_
	mov r1, r1, lsl #2
	ldrsh r0, [r0, r1]
	ldr r1, [r4, #0xac]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r4, #0xa0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0201246C: .word FX_SinCosTable_
	arm_func_end sub_020123FC

	arm_func_start sub_02012470
sub_02012470: ; 0x02012470
	ldr r1, [r0, #0xb4]
	cmp r1, #0
	bxeq lr
	ldrh r3, [r0, #0xbc]
	ldrh r2, [r0, #0xbe]
	ldr r1, _020124B8 ; =FX_SinCosTable_
	add r2, r3, r2
	strh r2, [r0, #0xbc]
	ldrh r2, [r0, #0xbc]
	ldr r3, [r0, #0xb8]
	mov r2, r2, asr #4
	mov r2, r2, lsl #2
	ldrsh r1, [r1, r2]
	smull r2, r1, r3, r1
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r0, #0xb0]
	bx lr
	.align 2, 0
_020124B8: .word FX_SinCosTable_
	arm_func_end sub_02012470

	arm_func_start sub_020124BC
sub_020124BC: ; 0x020124BC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x104]
	ldrb r1, [r5, #0xc0]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldrb r1, [r5, #0x70]
	mov r4, r0
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _020125D4
_020124EC: ; jump table
	b _020124FC ; case 0
	b _02012544 ; case 1
	b _02012568 ; case 2
	b _0201257C ; case 3
	arm_func_end sub_020124BC
_020124FC:
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _0201252C
	ldr r3, [r5, #0x3c]
	ldr r0, [r5, #0x34]
	ldr r2, [r5, #0x38]
	ldr r1, [r5, #0x30]
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	strh r0, [r5, #0x72]
	b _020125D4
_0201252C:
	cmp r0, #4
	ldreqh r0, [r5, #0x50]
	streqh r0, [r5, #0x72]
	ldrneh r0, [r5, #0x10]
	strneh r0, [r5, #0x72]
	b _020125D4
_02012544:
	ldr r3, [r5, #0x88]
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0x84]
	ldr r1, [r5, #0x20]
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	strh r0, [r5, #0x72]
	b _020125D4
_02012568:
	ldrh r1, [r5, #0x72]
	ldrsh r0, [r5, #0x80]
	add r0, r1, r0
	strh r0, [r5, #0x72]
	b _020125D4
_0201257C:
	ldr r0, [r5, #0x74]
	cmp r0, #0
	beq _020125D4
	ldrsh r0, [r5, #0x80]
	ldr r3, [r5, #0x7c]
	add r0, r3, r0
	str r0, [r5, #0x7c]
	cmp r3, r0
	movle r2, r3
	ldr r1, [r5, #0x78]
	movgt r2, r0
	cmp r2, r1
	bhi _020125D0
	cmp r3, r0
	movlt r3, r0
	cmp r3, r1
	blo _020125D0
	strh r1, [r5, #0x72]
	mov r0, #0
	str r0, [r5, #0x74]
	b _020125D4
_020125D0:
	strh r0, [r5, #0x72]
_020125D4:
	cmp r4, #0
	ldrne r0, [r4, #0xc]
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #0xc0]
	ldrh r2, [r5, #0x72]
	add r1, r5, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008968
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020125FC
sub_020125FC: ; 0x020125FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #4]
	tst r0, #8
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x104]
	ldrb r1, [r4, #0xc0]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r1, [r4, #0xc0]
	add r1, r4, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008A38
	ldmia sp!, {r4, pc}
	arm_func_end sub_020125FC

	arm_func_start sub_02012648
sub_02012648: ; 0x02012648
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #4]
	tst r1, #2
	ldmeqia sp!, {r4, pc}
	add r1, r4, #0x108
	bl sub_0201267C
	ldr r0, [r4, #0x10c]
	cmp r0, #0
	ldreqh r0, [r4, #4]
	biceq r0, r0, #2
	streqh r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012648

	arm_func_start sub_0201267C
sub_0201267C: ; 0x0201267C
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r0, [r4, #8]
	add r2, r0, #1
	str r2, [r4, #8]
	ldrb r0, [r4, #0x10]
	ldrb r1, [r4, #0x11]
	ldr r3, [r4, #0xc]
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl sub_02007068
	mov r0, r0, asr #0xc
	strb r0, [r4]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	movge r0, #0
	strge r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201267C

	arm_func_start sub_020126C8
sub_020126C8: ; 0x020126C8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #4]
	tst r1, #4
	ldmeqia sp!, {r4, pc}
	add r1, r4, #0x11c
	bl sub_02012710
	mov r0, r4
	add r1, r4, #0x134
	bl sub_02012710
	ldr r0, [r4, #0x120]
	cmp r0, #0
	ldreq r0, [r4, #0x138]
	cmpeq r0, #0
	ldreqh r0, [r4, #4]
	biceq r0, r0, #4
	streqh r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020126C8

	arm_func_start sub_02012710
sub_02012710: ; 0x02012710
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r0, [r4, #8]
	add r2, r0, #1
	str r2, [r4, #8]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r3, [r4, #0xc]
	bl sub_02007068
	str r0, [r4]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	movge r0, #0
	strge r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012710

	arm_func_start sub_02012750
sub_02012750: ; 0x02012750
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #4]
	tst r1, #0x10
	ldmeqia sp!, {r4, pc}
	add r1, r4, #0x14c
	bl sub_02012784
	ldr r0, [r4, #0x150]
	cmp r0, #0
	ldreqh r0, [r4, #4]
	biceq r0, r0, #0x10
	streqh r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012750

	arm_func_start sub_02012784
sub_02012784: ; 0x02012784
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r0, [r4, #8]
	add r2, r0, #1
	str r2, [r4, #8]
	ldrh r0, [r4, #0x10]
	ldrh r1, [r4, #0x12]
	ldr r3, [r4, #0xc]
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl sub_02007068
	mov r0, r0, asr #0xc
	strh r0, [r4]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	movge r0, #0
	strge r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012784

	arm_func_start sub_020127D0
sub_020127D0: ; 0x020127D0
	cmp r2, #0
	streq r1, [r0, #0x8c]
	moveq r1, #0
	streq r1, [r0, #0x90]
	bxeq lr
	mov r3, #1
	str r3, [r0, #0x90]
	ldr ip, [r0, #0x8c]
	mov r3, #0
	str ip, [r0, #0x98]
	str r1, [r0, #0x9c]
	strh r3, [r0, #0x96]
	strh r2, [r0, #0x94]
	bx lr
	arm_func_end sub_020127D0

	arm_func_start sub_02012808
sub_02012808: ; 0x02012808
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	str r0, [r4, #0x90]
	ldr r3, [r4, #0x8c]
	mov r0, #0
	str r3, [r4, #0x98]
	str r1, [r4, #0x9c]
	strh r0, [r4, #0x96]
	ldr r1, [r4, #0x9c]
	ldr r0, [r4, #0x98]
	subs r3, r1, r0
	rsbmi r3, r3, #0
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r3, lsr #20
	mov r0, r3, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	mov r0, r0, asr #0xc
	strh r0, [r4, #0x94]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012808

	arm_func_start sub_02012860
sub_02012860: ; 0x02012860
	mov r3, #1
	str r3, [r0, #0xa4]
	mov r3, #0
	strh r3, [r0, #0xaa]
	strh r2, [r0, #0xa8]
	str r1, [r0, #0xac]
	bx lr
	arm_func_end sub_02012860

	arm_func_start sub_0201287C
sub_0201287C: ; 0x0201287C
	mov r1, #0
	str r1, [r0, #0x74]
	strb r1, [r0, #0x70]
	ldrh r1, [r0, #0x72]
	strh r1, [r0, #0x10]
	bx lr
	arm_func_end sub_0201287C

	arm_func_start sub_02012894
sub_02012894: ; 0x02012894
	stmdb sp!, {r0, r1, r2, r3}
	mov r1, #0
	str r1, [r0, #0x74]
	mov r1, #1
	ldr r2, [sp, #4]
	strb r1, [r0, #0x70]
	ldr r1, [sp, #8]
	str r2, [r0, #0x84]
	str r1, [r0, #0x88]
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02012894

	arm_func_start sub_020128C0
sub_020128C0: ; 0x020128C0
	mov r2, #1
	str r2, [r0, #0x74]
	mov r2, #2
	strb r2, [r0, #0x70]
	strh r1, [r0, #0x80]
	bx lr
	arm_func_end sub_020128C0

	arm_func_start sub_020128D8
sub_020128D8: ; 0x020128D8
	mov r1, #0
	str r1, [r0, #0x74]
	mov r1, #3
	strb r1, [r0, #0x70]
	bx lr
	arm_func_end sub_020128D8

	arm_func_start sub_020128EC
sub_020128EC: ; 0x020128EC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0
	str r0, [r5, #0x74]
	mov r0, #3
	mov r4, r1
	strb r0, [r5, #0x70]
	strh r4, [r5, #0x72]
	ldr r0, [r5, #0x104]
	ldrb r1, [r5, #0xc0]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #0xc0]
	mov r2, r4
	add r1, r5, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008968
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020128EC

	arm_func_start sub_02012948
sub_02012948: ; 0x02012948
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	str r0, [r4, #0x74]
	mov r0, #3
	strb r0, [r4, #0x70]
	ldr r3, [sp, #0x10]
	ldr r0, [r4, #0x24]
	ldr r2, [sp, #0xc]
	ldr r1, [r4, #0x20]
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	strh r0, [r4, #0x72]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02012948

	arm_func_start sub_02012990
sub_02012990: ; 0x02012990
	cmp r2, #0
	bxeq lr
	mov r3, #1
	str r3, [r0, #0x74]
	mov r3, #3
	strb r3, [r0, #0x70]
	ldrh r3, [r0, #0x72]
	add r1, r1, #0x10000
	add r3, r3, #0x10000
	str r3, [r0, #0x7c]
	str r1, [r0, #0x78]
	strh r2, [r0, #0x80]
	ldrsh r1, [r0, #0x80]
	ldr r2, [r0, #0x7c]
	cmp r1, #0
	ldr r1, [r0, #0x78]
	ble _020129E4
	cmp r2, r1
	addhi r1, r1, #0x10000
	strhi r1, [r0, #0x78]
	bx lr
	arm_func_end sub_02012990
_020129E4:
	cmp r2, r1
	addlo r1, r2, #0x10000
	strlo r1, [r0, #0x7c]
	bx lr

	arm_func_start sub_020129F4
sub_020129F4: ; 0x020129F4
	cmp r1, #0
	streqb r2, [r0, #0x108]
	ldreqh r1, [r0, #4]
	biceq r1, r1, #2
	streqh r1, [r0, #4]
	bxeq lr
	mov r3, #1
	str r3, [r0, #0x10c]
	mov r3, #0
	str r3, [r0, #0x110]
	str r1, [r0, #0x114]
	ldrb r1, [r0, #0x108]
	strb r1, [r0, #0x118]
	strb r2, [r0, #0x119]
	ldrh r1, [r0, #4]
	orr r1, r1, #2
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_020129F4

	arm_func_start sub_02012A3C
sub_02012A3C: ; 0x02012A3C
	stmdb sp!, {r4, lr}
	cmp r1, #0
	beq _02012A90
	mov r4, #1
	str r4, [r0, #0x120]
	mov lr, #0
	str lr, [r0, #0x124]
	str r1, [r0, #0x128]
	ldr ip, [r0, #0x11c]
	str ip, [r0, #0x12c]
	str r2, [r0, #0x130]
	str r4, [r0, #0x138]
	str lr, [r0, #0x13c]
	str r1, [r0, #0x140]
	ldr r1, [r0, #0x134]
	str r1, [r0, #0x144]
	str r3, [r0, #0x148]
	ldrh r1, [r0, #4]
	orr r1, r1, #4
	strh r1, [r0, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012A3C
_02012A90:
	str r2, [r0, #0x11c]
	str r3, [r0, #0x134]
	ldrh r1, [r0, #4]
	bic r1, r1, #4
	strh r1, [r0, #4]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02012AA8
sub_02012AA8: ; 0x02012AA8
	cmp r1, #0
	beq _02012AE4
	mov r3, #1
	str r3, [r0, #0x150]
	mov r3, #0
	str r3, [r0, #0x154]
	str r1, [r0, #0x158]
	add r1, r0, #0x100
	ldrh r3, [r1, #0x4c]
	strh r3, [r1, #0x5c]
	strh r2, [r1, #0x5e]
	ldrh r1, [r0, #4]
	orr r1, r1, #0x10
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_02012AA8
_02012AE4:
	add r1, r0, #0x100
	strh r2, [r1, #0x4c]
	ldrh r1, [r0, #4]
	bic r1, r1, #0x10
	strh r1, [r0, #4]
	bx lr

	arm_func_start sub_02012AFC
sub_02012AFC: ; 0x02012AFC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x104]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, [r0]
	ldrb r1, [r4, #0xc0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r1, [r4, #0xc0]
	ldr r0, [r0, #0xc]
	add r1, r4, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008860
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012AFC

	arm_func_start sub_02012B48
sub_02012B48: ; 0x02012B48
	mov r0, #0
	strb r0, [r1]
	str r0, [r1, #4]
	mov r0, #0x1f
	str r0, [r1, #8]
	mov r0, #0x1000
	str r0, [r1, #0xc]
	bx lr
	arm_func_end sub_02012B48

	arm_func_start sub_02012B68
sub_02012B68: ; 0x02012B68
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldrb ip, [r4, #0x164]
	cmp r3, #0
	mov r0, #0
	orr r3, ip, #1
	strb r3, [r4, #0x164]
	str r1, [r4, #0x168]
	str r2, [r4, #0x16c]
	str r0, [r4, #0x170]
	str r0, [r4, #0x174]
	ldrneb r0, [r4, #0x164]
	ldr r1, [sp, #0x18]
	mov r7, #0
	orrne r0, r0, #2
	strneb r0, [r4, #0x164]
	ldrb r0, [sp, #0x1c]
	cmp r0, #0
	ldrneb r0, [r4, #0x164]
	orrne r0, r0, #4
	strneb r0, [r4, #0x164]
	ldr r0, [sp, #0x20]
	str r1, [r4, #0x178]
	str r0, [r4, #0x17c]
	ldr r5, [r4, #0x180]
	ldr r6, [r4, #0x160]
	arm_func_end sub_02012B68
_02012BD0:
	mov r0, r4
	mov r1, r5
	bl sub_02012B48
	ldr r0, [r4, #0x104]
	add r7, r7, #1
	ldr r0, [r0, #0xc]
	cmp r7, #8
	str r0, [r6, #0x34]
	add r5, r5, #0x10
	add r6, r6, #0x4c
	blt _02012BD0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02012C00
sub_02012C00: ; 0x02012C00
	ldrb r1, [r0, #0x164]
	bic r1, r1, #1
	strb r1, [r0, #0x164]
	bx lr
	arm_func_end sub_02012C00

	arm_func_start sub_02012C10
sub_02012C10: ; 0x02012C10
	stmdb sp!, {r4, lr}
	ldr r1, [r0, #0x180]
	mov r4, #0
	arm_func_end sub_02012C10
_02012C1C:
	ldrb r2, [r1]
	cmp r2, #0
	bne _02012C34
	bl sub_02012B48
	mov r0, r4
	ldmia sp!, {r4, pc}
_02012C34:
	add r4, r4, #1
	cmp r4, #8
	add r1, r1, #0x10
	blt _02012C1C
	mvn r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02012C4C
sub_02012C4C: ; 0x02012C4C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrb r1, [r4, #0x164]
	mvn r3, #0
	tst r1, #1
	beq _02012C94
	ldr r2, [r4, #0x170]
	ldr r1, [r4, #0x168]
	cmp r2, r1
	addne r0, r2, #1
	strne r0, [r4, #0x170]
	bne _02012C9C
	mov r1, #0
	str r1, [r4, #0x170]
	bl sub_02012C10
	mov r3, r0
	b _02012C9C
	arm_func_end sub_02012C4C
_02012C94:
	bic r0, r1, #1
	strb r0, [r4, #0x164]
_02012C9C:
	mov r5, #0
	mov r2, #1
	ldr ip, [r4, #0x180]
	ldr lr, [r4, #0x160]
	mov r8, r5
	mov r7, r2
	mov r6, #0x1f
	mov fp, r5
_02012CBC:
	cmp r5, r3
	bne _02012CF8
	strb r2, [ip]
	ldr sl, [r4, #0x8c]
	ldr sb, [r4, #0xa0]
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x24]
	add sb, sl, sb
	ldr sl, [r4, #0xb0]
	str r1, [sp]
	add sb, sl, sb
	str r1, [lr, #0x18]
	sub r1, r0, sb
	str r0, [sp, #4]
	str r1, [lr, #0x1c]
_02012CF8:
	ldrb r0, [ip]
	cmp r0, #0
	beq _02012D6C
	ldr r1, [ip, #4]
	ldr r0, [r4, #0x16c]
	cmp r1, r0
	addle r0, r1, #1
	strle r0, [ip, #4]
	strgtb r8, [ip]
	ldrb r0, [r4, #0x164]
	tst r0, #2
	beq _02012D4C
	ldr r1, [ip, #8]
	ldr r0, [r4, #0x178]
	add r0, r1, r0
	str r0, [ip, #8]
	cmp r0, #1
	strlt r7, [ip, #8]
	ldr r0, [ip, #8]
	cmp r0, #0x1f
	strgt r6, [ip, #8]
_02012D4C:
	ldrb r0, [r4, #0x164]
	tst r0, #4
	beq _02012D6C
	ldr r1, [ip, #0xc]
	ldr r0, [r4, #0x17c]
	adds r0, r1, r0
	str r0, [ip, #0xc]
	strmi fp, [ip, #0xc]
_02012D6C:
	add r5, r5, #1
	cmp r5, #8
	add ip, ip, #0x10
	add lr, lr, #0x4c
	blt _02012CBC
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start sub_02012D88
sub_02012D88: ; 0x02012D88
	ldrb r0, [r0, #0x164]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02012D88

	arm_func_start sub_02012D9C
sub_02012D9C: ; 0x02012D9C
	ldr r0, [r0, #0x180]
	ldrb r0, [r0, r1, lsl #4]
	bx lr
	arm_func_end sub_02012D9C

	arm_func_start sub_02012DA8
sub_02012DA8: ; 0x02012DA8
	ldr r0, [r0, #0x160]
	bx lr
	arm_func_end sub_02012DA8

	arm_func_start sub_02012DB0
sub_02012DB0: ; 0x02012DB0
	ldr r0, [r0, #0x180]
	add r0, r0, r1, lsl #4
	ldr r0, [r0, #8]
	bx lr
	arm_func_end sub_02012DB0

	arm_func_start sub_02012DC0
sub_02012DC0: ; 0x02012DC0
	ldr r0, [r0, #0x180]
	add r0, r0, r1, lsl #4
	ldr r0, [r0, #0xc]
	bx lr
	arm_func_end sub_02012DC0

	arm_func_start sub_02012DD0
sub_02012DD0: ; 0x02012DD0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x104]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, [r0]
	ldrb r1, [r4, #0xc0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r1, [r4, #0xc0]
	ldr r0, [r0, #0xc]
	add r1, r4, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008D20
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012DD0

	arm_func_start sub_02012E1C
sub_02012E1C: ; 0x02012E1C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x104]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, [r0]
	ldrb r1, [r4, #0xc0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r1, [r4, #0xc0]
	ldr r0, [r0, #0xc]
	add r1, r4, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008D38
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012E1C

	arm_func_start sub_02012E68
sub_02012E68: ; 0x02012E68
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x104]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r0]
	ldrb r1, [r5, #0xc0]
	ldr r2, [r2, #0xc]
	blx r2
	movs r4, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl sub_020124BC
	ldrb r1, [r5, #0xc0]
	ldr r0, [r4, #0xc]
	add r1, r5, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_020089B8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02012E68

	arm_func_start sub_02012EB4
sub_02012EB4: ; 0x02012EB4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	ldr r0, [sl]
	mov r7, r3
	str r0, [sp, #8]
	ldr r0, [sl, #4]
	mov sb, r1
	mov r8, r2
	cmp r7, #1
	str r0, [sp, #4]
	mov fp, #0
	mov r6, #1
	blt _02012F50
	arm_func_end sub_02012EB4
_02012EEC:
	str r7, [sp]
	ldr r0, [sl]
	ldr r1, [sb]
	ldr r2, [r8]
	mov r3, r6
	bl sub_020070A4
	str r7, [sp]
	mov r5, r0
	ldr r0, [sl, #4]
	ldr r1, [sb, #4]
	ldr r2, [r8, #4]
	mov r3, r6
	bl sub_020070A4
	mov r4, r0
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	sub r0, r5, r0
	sub r1, r4, r1
	bl sub_02007254
	add r6, r6, #1
	add fp, fp, r0
	str r5, [sp, #8]
	str r4, [sp, #4]
	cmp r6, r7
	ble _02012EEC
_02012F50:
	mov r0, fp
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start sub_02012F5C
sub_02012F5C: ; 0x02012F5C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r4, r1
	mov r7, r2
	mov r6, r3
	ldr lr, [r5, #0x20]
	ldr ip, [r5, #0x24]
	add r0, sp, #8
	mov r1, r7
	mov r2, r4
	mov r3, #8
	str lr, [sp, #8]
	str ip, [sp, #0xc]
	bl sub_02012EB4
	mov r1, r6
	bl _s32_div_f
	cmp r0, #1
	movlt r0, #1
	str r0, [sp, #4]
	ldr r1, [r7]
	ldr r0, [r7, #4]
	sub r2, sp, #4
	str r1, [r2]
	str r0, [r2, #4]
	ldr r3, [r2]
	add r0, r5, #0xc
	ldmia r4, {r1, r2}
	bl sub_02011B18
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_02012F5C

	arm_func_start sub_02012FD8
sub_02012FD8: ; 0x02012FD8
	stmdb sp!, {r4, lr}
	ldr r1, _02012FF4 ; =PTR_LAB_0208b4bc
	mov r4, r0
	str r1, [r4]
	bl sub_02013138
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02012FF4: .word PTR_LAB_0208b4bc
	arm_func_end sub_02012FD8

	arm_func_start sub_02012FF8
sub_02012FF8: ; 0x02012FF8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr ip, _0201305C ; =PTR_LAB_0208b4bc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	str ip, [r7]
	bl sub_02013138
	ldrh r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	ldr ip, [sp, #0x30]
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp, #8]
	mov r4, #0
	str r4, [sp, #0xc]
	bl sub_02013154
	mov r0, r7
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0201305C: .word PTR_LAB_0208b4bc
	arm_func_end sub_02012FF8

	arm_func_start sub_02013060
sub_02013060: ; 0x02013060
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr ip, _020130B4 ; =PTR_LAB_0208b4bc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	str ip, [r7]
	bl sub_02013138
	ldr r0, [sp, #0x20]
	ldr ip, [sp, #0x24]
	str r0, [sp]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp, #4]
	bl sub_020138E4
	mov r0, r7
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020130B4: .word PTR_LAB_0208b4bc
	arm_func_end sub_02013060
_020130B8:
	.byte 0x10, 0x40, 0x2D, 0xE9, 0x18, 0x10, 0x9F, 0xE5
	.byte 0x00, 0x40, 0xA0, 0xE1, 0x00, 0x10, 0x84, 0xE5, 0x00, 0x10, 0x90, 0xE5, 0x08, 0x10, 0x91, 0xE5
	.byte 0x31, 0xFF, 0x2F, 0xE1, 0x04, 0x00, 0xA0, 0xE1, 0x10, 0x80, 0xBD, 0xE8
	.word PTR_LAB_0208b4bc
	.byte 0x10, 0x40, 0x2D, 0xE9, 0x20, 0x10, 0x9F, 0xE5, 0x00, 0x40, 0xA0, 0xE1, 0x00, 0x10, 0x84, 0xE5
	.byte 0x00, 0x10, 0x90, 0xE5, 0x08, 0x10, 0x91, 0xE5, 0x31, 0xFF, 0x2F, 0xE1, 0x04, 0x00, 0xA0, 0xE1
	.byte 0xDA, 0xB8, 0xFF, 0xEB, 0x04, 0x00, 0xA0, 0xE1, 0x10, 0x80, 0xBD, 0xE8
	.word PTR_LAB_0208b4bc

	arm_func_start sub_02013110
sub_02013110: ; 0x02013110
	stmdb sp!, {r4, lr}
	ldr r1, _02013134 ; =PTR_LAB_0208b4bc
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02013134: .word PTR_LAB_0208b4bc
	arm_func_end sub_02013110

	arm_func_start sub_02013138
sub_02013138: ; 0x02013138
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	strb r1, [r0, #0x14]
	strb r1, [r0, #6]
	bx lr
	arm_func_end sub_02013138

	arm_func_start sub_02013154
sub_02013154: ; 0x02013154
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1f4
	ldr r7, [r0]
	mov r5, r0
	ldr r7, [r7, #8]
	mov r6, r1
	mov r8, r2
	mov sl, r3
	ldr r4, [sp, #0x224]
	blx r7
	add r0, sp, #0x208
	ldrh sb, [r0, #0x10]
	mov r7, #0
	mov r2, r7
	mov r0, #1
	arm_func_end sub_02013154
_02013190:
	tst sb, r0, lsl r2
	mov r1, r0, lsl r2
	beq _020131C4
	cmp r1, #0x10
	beq _020131B0
	cmp r1, #0x20
	beq _020131B8
	b _020131C0
_020131B0:
	add r7, r7, #3
	b _020131C4
_020131B8:
	add r7, r7, #0xc
	b _020131C4
_020131C0:
	add r7, r7, #1
_020131C4:
	add r2, r2, #1
	cmp r2, #0x1d
	blt _02013190
	cmp r7, #0
	addeq sp, sp, #0x1f4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov fp, r7, lsl #4
	mov r0, fp
	mov r1, #4
	bl _Z23Heap_AllocWithAlignmentmm
	str r0, [r5, #0x10]
	mov r1, r0
	mov r2, fp
	mov r0, #0
	bl MIi_CpuClearFast
	strb r7, [r5, #0x14]
	cmp r6, #3
	addls pc, pc, r6, lsl #2
	b _020132AC
_02013210: ; jump table
	b _02013220 ; case 0
	b _02013244 ; case 1
	b _02013268 ; case 2
	b _0201328C ; case 3
_02013220:
	mov r7, #0
	strb r7, [r5, #5]
	ldr r1, _020138A0 ; =s_p_03d_02d_0208b4d8
	add r0, sp, #0x194
	mov r2, r8
	mov r3, sl
	strb r7, [r5, #6]
	bl OS_SPrintf
	b _020132C4
_02013244:
	mov r3, #1
	strb r3, [r5, #5]
	mov r3, #0
	ldr r1, _020138A4 ; =s_npc_03d_0208b4e4
	add r0, sp, #0x194
	mov r2, r8
	strb r3, [r5, #6]
	bl OS_SPrintf
	b _020132C4
_02013268:
	mov r7, #1
	strb r7, [r5, #5]
	ldr r1, _020138A8 ; =s_t_03d_02d_0208b4ec
	add r0, sp, #0x194
	mov r2, r8
	mov r3, sl
	strb r7, [r5, #6]
	bl OS_SPrintf
	b _020132C4
_0201328C:
	mov r3, #0
	strb r3, [r5, #5]
	ldr r1, _020138AC ; =s_e_03d_0208b4f8
	add r0, sp, #0x194
	mov r2, r8
	strb r3, [r5, #6]
	bl OS_SPrintf
	b _020132C4
_020132AC:
	mov r0, #1
	strb r0, [r5, #5]
	mov r0, #0
	add sp, sp, #0x1f4
	strb r0, [r5, #6]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020132C4:
	ldr r1, [sp, #0x220]
	add r0, sp, #0x10
	cmp r1, #0
	beq _020132E0
	mov r2, #4
	bl STD_CopyLString
	b _020132E8
_020132E0:
	ldr r1, _020138B0 ; =s_ACT_0208b500
	bl STD_CopyString
_020132E8:
	cmp r6, #3
	addls pc, pc, r6, lsl #2
	b _02013350
_020132F4: ; jump table
	b _02013304 ; case 0
	b _02013318 ; case 1
	b _0201332C ; case 2
	b _02013340 ; case 3
_02013304:
	ldr r1, _020138B4 ; =s_data_poke_s_LZ_bin_0208b504
	add r0, sp, #0x134
	add r2, sp, #0x194
	bl OS_SPrintf
	b _02013350
_02013318:
	ldr r1, _020138B8 ; =s_data_npc_s_LZ_bin_0208b518
	add r0, sp, #0x134
	add r2, sp, #0x194
	bl OS_SPrintf
	b _02013350
_0201332C:
	ldr r1, _020138BC ; =s_data_target_s_LZ_bin_0208b52c
	add r0, sp, #0x134
	add r2, sp, #0x194
	bl OS_SPrintf
	b _02013350
_02013340:
	ldr r1, _020138C0 ; =s_data_effect_s_LZ_bin_0208b544
	add r0, sp, #0x134
	add r2, sp, #0x194
	bl OS_SPrintf
_02013350:
	mov r0, #0x6c
	bl _Znwm
	cmp r0, #0
	beq _02013390
	mov r1, #1
	str r1, [sp]
	mov r7, #0
	cmp r4, #0
	moveq r3, #1
	str r7, [sp, #4]
	str r7, [sp, #8]
	movne r3, #0
	add r1, sp, #0x10
	add r2, sp, #0x134
	str r7, [sp, #0xc]
	bl sub_02002AEC
_02013390:
	cmp r0, #0
	addeq sp, sp, #0x1f4
	str r0, [r5, #8]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _020138C4 ; =s_s_s_NCLR_0208b55c
	add r0, sp, #0xd4
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _020133D4
	mov r2, #0
	add r1, sp, #0xd4
	mov r3, r2
	bl sub_02007AC0
_020133D4:
	ldr r1, _020138C8 ; =s_s_s_0208b568
	str r0, [r5, #0xc]
	add r0, sp, #0x14
	add r2, sp, #0x10
	add r3, sp, #0x194
	mov r7, #0
	bl OS_SPrintf
	tst sb, #1
	mov sl, r7
	beq _02013434
	ldr r1, _020138C8 ; =s_s_s_0208b568
	add r0, sp, #0x74
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	ldr r1, [r5, #0x10]
	add r2, sp, #0x74
	mov r0, r5
	mov r3, r4
	bl sub_02013CD4
	ldr r0, [r5, #0x10]
	mov r1, r7
	strb r1, [r0, #1]
	add sl, sl, #1
_02013434:
	tst sb, #2
	beq _020134DC
	ldr r1, _020138CC ; =s_s_s_s_0208b570
	add r0, sp, #0x74
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _020134B0
	mov r0, #0
	stmia sp, {r0, r4}
	ldr r1, [r5, #0x10]
	add r2, sp, #0x14
	add r3, sp, #0x74
	mov r0, r5
	add r1, r1, sl, lsl #4
	bl sub_02013E78
	cmp r0, #0
	bne _020134A0
	ldr r1, [r5, #0x10]
	add r2, sp, #0x74
	mov r0, r5
	mov r3, r4
	add r1, r1, sl, lsl #4
	bl sub_02013CD4
	b _020134C8
_020134A0:
	ldr r0, [r5, #0x10]
	add r0, r0, sl, lsl #4
	ldr r7, [r0, #4]
	b _020134C8
_020134B0:
	ldr r1, [r5, #0x10]
	add r2, sp, #0x74
	mov r0, r5
	mov r3, r4
	add r1, r1, sl, lsl #4
	bl sub_02013CD4
_020134C8:
	ldr r0, [r5, #0x10]
	mov r1, #1
	add r0, r0, sl, lsl #4
	strb r1, [r0, #1]
	add sl, sl, #1
_020134DC:
	tst sb, #4
	beq _02013584
	ldr r1, _020138D0 ; =s_s_s_w_0208b578
	add r0, sp, #0x74
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _02013558
	str r7, [sp]
	str r4, [sp, #4]
	ldr r1, [r5, #0x10]
	add r2, sp, #0x14
	add r3, sp, #0x74
	mov r0, r5
	add r1, r1, sl, lsl #4
	bl sub_02013E78
	cmp r0, #0
	bne _02013548
	ldr r1, [r5, #0x10]
	add r2, sp, #0x74
	mov r0, r5
	mov r3, r4
	add r1, r1, sl, lsl #4
	bl sub_02013CD4
	b _02013570
_02013548:
	ldr r0, [r5, #0x10]
	add r0, r0, sl, lsl #4
	ldr r7, [r0, #4]
	b _02013570
_02013558:
	ldr r1, [r5, #0x10]
	add r2, sp, #0x74
	mov r0, r5
	mov r3, r4
	add r1, r1, sl, lsl #4
	bl sub_02013CD4
_02013570:
	ldr r0, [r5, #0x10]
	mov r1, #2
	add r0, r0, sl, lsl #4
	strb r1, [r0, #1]
	add sl, sl, #1
_02013584:
	tst sb, #8
	beq _0201361C
	ldr r1, _020138D4 ; =s_s_s_t_0208b580
	add r0, sp, #0x74
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _020135F0
	str r7, [sp]
	str r4, [sp, #4]
	ldr r1, [r5, #0x10]
	add r2, sp, #0x14
	add r3, sp, #0x74
	mov r0, r5
	add r1, r1, sl, lsl #4
	bl sub_02013E78
	cmp r0, #0
	bne _02013608
	ldr r1, [r5, #0x10]
	add r2, sp, #0x74
	mov r0, r5
	mov r3, r4
	add r1, r1, sl, lsl #4
	bl sub_02013CD4
	b _02013608
_020135F0:
	ldr r1, [r5, #0x10]
	add r2, sp, #0x74
	mov r0, r5
	mov r3, r4
	add r1, r1, sl, lsl #4
	bl sub_02013CD4
_02013608:
	ldr r0, [r5, #0x10]
	mov r1, #3
	add r0, r0, sl, lsl #4
	strb r1, [r0, #1]
	add sl, sl, #1
_0201361C:
	tst sb, #0x10
	beq _020136F0
	cmp r6, #1
	beq _020136AC
	ldr fp, _020138D8 ; =s_s_s_p_02d_0208b588
	mov r8, sl, lsl #4
	mov r7, #0
	add r6, sp, #0x74
_0201363C:
	ldrb r0, [r5, #0x14]
	cmp sl, r0
	bge _02013764
	add r3, r7, #1
	str r3, [sp]
	mov r0, r6
	mov r1, fp
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	ldr r1, [r5, #0x10]
	mov r0, r5
	mov r2, r6
	add r1, r1, r8
	mov r3, r4
	bl sub_02013CD4
	cmp r0, #0
	beq _02013764
	ldr r0, [r5, #0x10]
	add r1, r7, #4
	add r0, r0, sl, lsl #4
	add r7, r7, #1
	strb r1, [r0, #1]
	cmp r7, #0x1d
	add r8, r8, #0x10
	add sl, sl, #1
	blt _0201363C
	b _02013764
_020136AC:
	ldr r1, _020138DC ; =s_s_s_p_0208b594
	add r0, sp, #0x74
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	ldr r1, [r5, #0x10]
	add r2, sp, #0x74
	mov r0, r5
	mov r3, r4
	add r1, r1, sl, lsl #4
	bl sub_02013CD4
	ldr r0, [r5, #0x10]
	mov r1, #4
	add r0, r0, sl, lsl #4
	strb r1, [r0, #1]
	add sl, sl, #1
	b _02013764
_020136F0:
	mov r8, sl, lsl #4
	mov r6, #0
	mov r7, #0x40
	add fp, sp, #0x74
_02013700:
	tst sb, r7
	beq _02013754
	add r2, r6, #1
	str r2, [sp]
	ldr r1, _020138D8 ; =s_s_s_p_02d_0208b588
	mov r0, fp
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	ldr r1, [r5, #0x10]
	mov r0, r5
	mov r2, fp
	add r1, r1, r8
	mov r3, r4
	bl sub_02013CD4
	ldr r0, [r5, #0x10]
	add r1, r6, #4
	add r0, r0, sl, lsl #4
	add r8, r8, #0x10
	strb r1, [r0, #1]
	add sl, sl, #1
_02013754:
	mov r7, r7, lsl #1
	cmp r7, #0x100
	add r6, r6, #1
	ble _02013700
_02013764:
	tst sb, #0x20
	beq _020137F0
	ldr r6, _020138E0 ; =s_s_s_a_02d_0208b59c
	mov sb, sl, lsl #4
	mov r8, #0
	add r7, sp, #0x74
	add fp, sp, #0x10
_02013780:
	ldrb r0, [r5, #0x14]
	cmp sl, r0
	bge _02013864
	add ip, r8, #1
	mov r0, r7
	mov r1, r6
	mov r2, fp
	add r3, sp, #0x194
	str ip, [sp]
	bl OS_SPrintf
	ldr r1, [r5, #0x10]
	mov r0, r5
	add r1, r1, sb
	mov r2, r7
	mov r3, r4
	bl sub_02013CD4
	cmp r0, #0
	beq _02013864
	ldr r0, [r5, #0x10]
	add r1, r8, #7
	add r0, r0, sl, lsl #4
	add r8, r8, #1
	strb r1, [r0, #1]
	cmp r8, #0x1d
	add sb, sb, #0x10
	add sl, sl, #1
	blt _02013780
	b _02013864
_020137F0:
	mov r8, sl, lsl #4
	mov r6, #0
	mov r7, #0x200
	add fp, sp, #0x74
_02013800:
	tst sb, r7
	beq _02013854
	add r2, r6, #1
	str r2, [sp]
	ldr r1, _020138E0 ; =s_s_s_a_02d_0208b59c
	mov r0, fp
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	ldr r1, [r5, #0x10]
	mov r0, r5
	mov r2, fp
	add r1, r1, r8
	mov r3, r4
	bl sub_02013CD4
	ldr r0, [r5, #0x10]
	add r1, r6, #7
	add r0, r0, sl, lsl #4
	add r8, r8, #0x10
	strb r1, [r0, #1]
	add sl, sl, #1
_02013854:
	mov r7, r7, lsl #1
	cmp r7, #0x1000
	add r6, r6, #1
	ble _02013800
_02013864:
	ldr r0, [sp, #0x21c]
	cmp r0, #0
	ldrne r4, [r5, #8]
	cmpne r4, #0
	addeq sp, sp, #0x1f4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	beq _02013890
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl _ZdlPv
_02013890:
	mov r0, #0
	str r0, [r5, #8]
	add sp, sp, #0x1f4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020138A0: .word s_p_03d_02d_0208b4d8
_020138A4: .word s_npc_03d_0208b4e4
_020138A8: .word s_t_03d_02d_0208b4ec
_020138AC: .word s_e_03d_0208b4f8
_020138B0: .word s_ACT_0208b500
_020138B4: .word s_data_poke_s_LZ_bin_0208b504
_020138B8: .word s_data_npc_s_LZ_bin_0208b518
_020138BC: .word s_data_target_s_LZ_bin_0208b52c
_020138C0: .word s_data_effect_s_LZ_bin_0208b544
_020138C4: .word s_s_s_NCLR_0208b55c
_020138C8: .word s_s_s_0208b568
_020138CC: .word s_s_s_s_0208b570
_020138D0: .word s_s_s_w_0208b578
_020138D4: .word s_s_s_t_0208b580
_020138D8: .word s_s_s_p_02d_0208b588
_020138DC: .word s_s_s_p_0208b594
_020138E0: .word s_s_s_a_02d_0208b59c

	arm_func_start sub_020138E4
sub_020138E4: ; 0x020138E4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x194
	ldr r6, [r0]
	mov sl, r0
	ldr r6, [r6, #8]
	mov r5, r1
	mov r4, r2
	mov sb, r3
	blx r6
	mov r6, #0
	mov r2, r6
	mov r0, #1
	arm_func_end sub_020138E4
_02013914:
	tst sb, r0, lsl r2
	mov r1, r0, lsl r2
	beq _02013948
	cmp r1, #0x10
	beq _02013934
	cmp r1, #0x20
	beq _0201393C
	b _02013944
_02013934:
	add r6, r6, #3
	b _02013948
_0201393C:
	add r6, r6, #0xc
	b _02013948
_02013944:
	add r6, r6, #1
_02013948:
	add r2, r2, #1
	cmp r2, #0x1d
	blt _02013914
	cmp r6, #0
	addeq sp, sp, #0x194
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r7, r6, lsl #4
	mov r0, r7
	mov r1, #4
	bl _Z23Heap_AllocWithAlignmentmm
	str r0, [sl, #0x10]
	mov r1, r0
	mov r2, r7
	mov r0, #0
	bl MIi_CpuClearFast
	add r0, sp, #0x134
	mov r1, r4
	mov r2, #0x60
	strb r6, [sl, #0x14]
	bl STD_CopyLString
	ldr r1, [sp, #0x1bc]
	add r0, sp, #0x10
	cmp r1, #0
	beq _020139B4
	mov r2, #4
	bl STD_CopyLString
	b _020139BC
_020139B4:
	ldr r1, _02013CB4 ; =s_ACT_0208b500
	bl STD_CopyString
_020139BC:
	add r0, sp, #0xd4
	mov r1, r5
	mov r2, #0x60
	bl STD_CopyLString
	mov r0, #0x6c
	bl _Znwm
	cmp r0, #0
	beq _02013A00
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	add r1, sp, #0x10
	add r2, sp, #0xd4
	str r4, [sp, #0xc]
	bl sub_02002AEC
_02013A00:
	cmp r0, #0
	addeq sp, sp, #0x194
	str r0, [sl, #8]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _02013CB8 ; =s_s_s_NCLR_0208b55c
	add r0, sp, #0x74
	add r2, sp, #0x10
	add r3, sp, #0x134
	bl OS_SPrintf
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02013A44
	mov r2, #0
	add r1, sp, #0x74
	mov r3, r2
	bl sub_02007AC0
_02013A44:
	str r0, [sl, #0xc]
	tst sb, #1
	mov r6, #0
	beq _02013A8C
	ldr r1, _02013CBC ; =s_s_s_0208b568
	add r0, sp, #0x14
	add r2, sp, #0x10
	add r3, sp, #0x134
	bl OS_SPrintf
	ldr r1, [sl, #0x10]
	add r2, sp, #0x14
	mov r0, sl
	mov r3, r6
	bl sub_02013CD4
	mov r1, r6
	ldr r0, [sl, #0x10]
	add r6, r6, #1
	strb r1, [r0, #1]
_02013A8C:
	tst sb, #2
	beq _02013AD4
	ldr r1, _02013CC0 ; =s_s_s_s_0208b570
	add r0, sp, #0x14
	add r2, sp, #0x10
	add r3, sp, #0x134
	bl OS_SPrintf
	ldr r1, [sl, #0x10]
	add r2, sp, #0x14
	mov r0, sl
	add r1, r1, r6, lsl #4
	mov r3, #0
	bl sub_02013CD4
	ldr r0, [sl, #0x10]
	mov r1, #1
	add r0, r0, r6, lsl #4
	strb r1, [r0, #1]
	add r6, r6, #1
_02013AD4:
	tst sb, #4
	beq _02013B1C
	ldr r1, _02013CC4 ; =s_s_s_w_0208b578
	add r0, sp, #0x14
	add r2, sp, #0x10
	add r3, sp, #0x134
	bl OS_SPrintf
	ldr r1, [sl, #0x10]
	add r2, sp, #0x14
	mov r0, sl
	add r1, r1, r6, lsl #4
	mov r3, #0
	bl sub_02013CD4
	ldr r0, [sl, #0x10]
	mov r1, #2
	add r0, r0, r6, lsl #4
	strb r1, [r0, #1]
	add r6, r6, #1
_02013B1C:
	tst sb, #8
	beq _02013B64
	ldr r1, _02013CC8 ; =s_s_s_t_0208b580
	add r0, sp, #0x14
	add r2, sp, #0x10
	add r3, sp, #0x134
	bl OS_SPrintf
	ldr r1, [sl, #0x10]
	add r2, sp, #0x14
	mov r0, sl
	add r1, r1, r6, lsl #4
	mov r3, #0
	bl sub_02013CD4
	ldr r0, [sl, #0x10]
	mov r1, #3
	add r0, r0, r6, lsl #4
	strb r1, [r0, #1]
	add r6, r6, #1
_02013B64:
	tst sb, #0x10
	beq _02013BEC
	ldr r4, _02013CCC ; =s_s_s_p_02d_0208b588
	mov r8, r6, lsl #4
	mov r7, #0
	add r5, sp, #0x14
	add fp, sp, #0x10
_02013B80:
	ldrb r0, [sl, #0x14]
	cmp r6, r0
	bge _02013BEC
	add r3, r7, #1
	str r3, [sp]
	mov r0, r5
	mov r1, r4
	mov r2, fp
	add r3, sp, #0x134
	bl OS_SPrintf
	ldr r1, [sl, #0x10]
	mov r0, sl
	mov r2, r5
	add r1, r1, r8
	mov r3, #0
	bl sub_02013CD4
	cmp r0, #0
	beq _02013BEC
	ldr r0, [sl, #0x10]
	add r1, r7, #4
	add r0, r0, r6, lsl #4
	add r7, r7, #1
	strb r1, [r0, #1]
	cmp r7, #0x1d
	add r8, r8, #0x10
	add r6, r6, #1
	blt _02013B80
_02013BEC:
	tst sb, #0x20
	beq _02013C78
	ldr r5, _02013CD0 ; =s_s_s_a_02d_0208b59c
	mov sb, r6, lsl #4
	mov r8, #0
	add r7, sp, #0x14
	add r4, sp, #0x10
	add fp, sp, #0x134
_02013C0C:
	ldrb r0, [sl, #0x14]
	cmp r6, r0
	bge _02013C78
	add ip, r8, #1
	mov r0, r7
	mov r1, r5
	mov r2, r4
	mov r3, fp
	str ip, [sp]
	bl OS_SPrintf
	ldr r1, [sl, #0x10]
	mov r0, sl
	add r1, r1, sb
	mov r2, r7
	mov r3, #0
	bl sub_02013CD4
	cmp r0, #0
	beq _02013C78
	ldr r0, [sl, #0x10]
	add r1, r8, #7
	add r0, r0, r6, lsl #4
	add r8, r8, #1
	strb r1, [r0, #1]
	cmp r8, #0x1d
	add sb, sb, #0x10
	add r6, r6, #1
	blt _02013C0C
_02013C78:
	ldr r0, [sp, #0x1b8]
	cmp r0, #0
	ldrne r4, [sl, #8]
	cmpne r4, #0
	addeq sp, sp, #0x194
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	beq _02013CA4
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl _ZdlPv
_02013CA4:
	mov r0, #0
	str r0, [sl, #8]
	add sp, sp, #0x194
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02013CB4: .word s_ACT_0208b500
_02013CB8: .word s_s_s_NCLR_0208b55c
_02013CBC: .word s_s_s_0208b568
_02013CC0: .word s_s_s_s_0208b570
_02013CC4: .word s_s_s_w_0208b578
_02013CC8: .word s_s_s_t_0208b580
_02013CCC: .word s_s_s_p_02d_0208b588
_02013CD0: .word s_s_s_a_02d_0208b59c

	arm_func_start sub_02013CD4
sub_02013CD4: ; 0x02013CD4
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x124
	mov r5, r1
	ldr r1, _02013E6C ; =s_s_NCBR_0208b5a8
	add r0, sp, #0xc4
	mov r6, r2
	mov r4, r3
	bl OS_SPrintf
	add r0, sp, #0xc4
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x124
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, _02013E70 ; =s_s_NCER_0208b5b0
	add r0, sp, #0x64
	mov r2, r6
	bl OS_SPrintf
	add r0, sp, #0x64
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x124
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, _02013E74 ; =s_s_cac_0208b5b8
	add r0, sp, #4
	mov r2, r6
	bl OS_SPrintf
	add r0, sp, #4
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x124
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r6, [r5, #4]
	cmp r6, #0
	beq _02013D90
	beq _02013D88
	mov r0, r6
	bl sub_02007548
	mov r0, r6
	bl _ZdlPv
	arm_func_end sub_02013CD4
_02013D88:
	mov r0, #0
	str r0, [r5, #4]
_02013D90:
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02013DB4
	mov r2, #0
	add r1, sp, #0xc4
	mov r3, r2
	str r4, [sp]
	bl sub_020074E8
_02013DB4:
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02013DDC
	beq _02013DD4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02013DD4:
	mov r0, #0
	str r0, [r5, #8]
_02013DDC:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02013E00
	mov r3, #0
	add r1, sp, #0x64
	mov r2, r4
	str r3, [sp]
	bl sub_020031E8
_02013E00:
	str r0, [r5, #8]
	ldr r6, [r5, #0xc]
	cmp r6, #0
	beq _02013E2C
	beq _02013E24
	mov r0, r6
	bl sub_020087C8
	mov r0, r6
	bl _ZdlPv
_02013E24:
	mov r0, #0
	str r0, [r5, #0xc]
_02013E2C:
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _02013E40
	bl sub_02008788
_02013E40:
	add r1, sp, #4
	str r0, [r5, #0xc]
	mov r3, r4
	mov r2, #0
	bl sub_0200887C
	ldrb r1, [r5]
	mov r0, #1
	orr r1, r1, #1
	strb r1, [r5]
	add sp, sp, #0x124
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02013E6C: .word s_s_NCBR_0208b5a8
_02013E70: .word s_s_NCER_0208b5b0
_02013E74: .word s_s_cac_0208b5b8

	arm_func_start sub_02013E78
sub_02013E78: ; 0x02013E78
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x124
	mov r4, r1
	ldr r1, _02014028 ; =s_s_NCBR_0208b5a8
	add r0, sp, #0xc4
	mov r5, r3
	bl OS_SPrintf
	add r0, sp, #0xc4
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	ldreq r0, [sp, #0x130]
	cmpeq r0, #0
	addeq sp, sp, #0x124
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, _0201402C ; =s_s_NCER_0208b5b0
	add r0, sp, #0x64
	mov r2, r5
	bl OS_SPrintf
	add r0, sp, #0x64
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x124
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, _02014030 ; =s_s_cac_0208b5b8
	add r0, sp, #4
	mov r2, r5
	bl OS_SPrintf
	add r0, sp, #4
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x124
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _02013F38
	beq _02013F30
	mov r0, r5
	bl sub_02007548
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_02013E78
_02013F30:
	mov r0, #0
	str r0, [r4, #4]
_02013F38:
	ldr r0, [sp, #0x130]
	cmp r0, #0
	strne r0, [r4, #4]
	bne _02013F74
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02013F70
	ldr ip, [sp, #0x134]
	mov r2, #0
	add r1, sp, #0xc4
	mov r3, r2
	str ip, [sp]
	bl sub_020074E8
_02013F70:
	str r0, [r4, #4]
_02013F74:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02013F98
	beq _02013F90
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02013F90:
	mov r0, #0
	str r0, [r4, #8]
_02013F98:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02013FBC
	ldr r2, [sp, #0x134]
	mov r3, #0
	add r1, sp, #0x64
	str r3, [sp]
	bl sub_020031E8
_02013FBC:
	str r0, [r4, #8]
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _02013FE8
	beq _02013FE0
	mov r0, r5
	bl sub_020087C8
	mov r0, r5
	bl _ZdlPv
_02013FE0:
	mov r0, #0
	str r0, [r4, #0xc]
_02013FE8:
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _02013FFC
	bl sub_02008788
_02013FFC:
	ldr r3, [sp, #0x134]
	str r0, [r4, #0xc]
	add r1, sp, #4
	mov r2, #0
	bl sub_0200887C
	ldrb r1, [r4]
	mov r0, #1
	orr r1, r1, #1
	strb r1, [r4]
	add sp, sp, #0x124
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02014028: .word s_s_NCBR_0208b5a8
_0201402C: .word s_s_NCER_0208b5b0
_02014030: .word s_s_cac_0208b5b8

	arm_func_start sub_02014034
sub_02014034: ; 0x02014034
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _02014064
	beq _0201405C
	mov r0, r5
	bl sub_02007B28
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_02014034
_0201405C:
	mov r0, #0
	str r0, [r4, #0xc]
_02014064:
	ldrb r0, [r4, #0x14]
	mov r8, #0
	mov sb, r8
	cmp r0, #0
	ble _02014158
	mov r6, r8
	mov r7, r8
	mov r5, r8
	mov fp, r8
_02014088:
	ldr r1, [r4, #0x10]
	ldrb r0, [r1, sb, lsl #4]
	bic r0, r0, #1
	strb r0, [r1, sb, lsl #4]
	ldr r0, [r4, #0x10]
	add r0, r0, sb, lsl #4
	ldr sl, [r0, #4]
	cmp r8, sl
	beq _020140E0
	cmp r8, #0
	moveq r8, sl
	cmp sl, #0
	beq _020140E4
	beq _020140D0
	mov r0, sl
	bl sub_02007548
	mov r0, sl
	bl _ZdlPv
_020140D0:
	ldr r0, [r4, #0x10]
	add r0, r0, sb, lsl #4
	str r7, [r0, #4]
	b _020140E4
_020140E0:
	str r6, [r0, #4]
_020140E4:
	ldr r0, [r4, #0x10]
	add r0, r0, sb, lsl #4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02014114
	beq _02014108
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02014108:
	ldr r0, [r4, #0x10]
	add r0, r0, sb, lsl #4
	str r5, [r0, #8]
_02014114:
	ldr r0, [r4, #0x10]
	add r0, r0, sb, lsl #4
	ldr sl, [r0, #0xc]
	cmp sl, #0
	beq _02014148
	beq _0201413C
	mov r0, sl
	bl sub_020087C8
	mov r0, sl
	bl _ZdlPv
_0201413C:
	ldr r0, [r4, #0x10]
	add r0, r0, sb, lsl #4
	str fp, [r0, #0xc]
_02014148:
	ldrb r0, [r4, #0x14]
	add sb, sb, #1
	cmp sb, r0
	blt _02014088
_02014158:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02014170
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x10]
_02014170:
	mov r0, #0
	strb r0, [r4, #0x14]
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _020141A0
	beq _02014198
	mov r0, r5
	bl sub_02002B6C
	mov r0, r5
	bl _ZdlPv
_02014198:
	mov r0, #0
	str r0, [r4, #8]
_020141A0:
	mov r0, #0
	strb r0, [r4, #6]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start sub_020141AC
sub_020141AC: ; 0x020141AC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x14]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020141AC
_020141C8:
	ldr r0, [r6, #0x10]
	add r0, r0, r4, lsl #4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02014204
	mov r1, r5
	bl sub_020076E8
	ldr r1, [r6, #0x10]
	ldrb r0, [r6, #6]
	add r1, r1, r4, lsl #4
	ldr r1, [r1, #4]
	cmp r0, #0
	ldr r0, [r1, #0x38]
	add r5, r5, r0
	ldmneia sp!, {r4, r5, r6, pc}
_02014204:
	ldrb r0, [r6, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _020141C8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02014218
sub_02014218: ; 0x02014218
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrb r0, [r7, #0x14]
	mov r6, r1
	mov r5, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, r5
	arm_func_end sub_02014218
_02014238:
	ldr r0, [r7, #0x10]
	add r0, r0, r5, lsl #4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02014288
	ldr r0, [r0, #0x38]
	mov r1, r4
	mov r2, r4
	bl NNS_GfdAllocLnkTexVram
	str r0, [r6, r5, lsl #2]
	ldr r1, [r7, #0x10]
	mov r0, r0
	add r2, r1, r5, lsl #4
	mov r1, r0, lsl #0x10
	ldr r0, [r2, #4]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldrb r0, [r7, #6]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_02014288:
	ldrb r0, [r7, #0x14]
	add r5, r5, #1
	cmp r5, r0
	blt _02014238
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0201429C
sub_0201429C: ; 0x0201429C
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02007BFC
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201429C

	arm_func_start sub_020142B4
sub_020142B4: ; 0x020142B4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x14]
	mov r4, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020142B4
_020142CC:
	ldr r0, [r5, #0x10]
	add r0, r0, r4, lsl #4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020142E4
	bl sub_020076B0
_020142E4:
	ldrb r0, [r5, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _020142CC
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020142F8
sub_020142F8: ; 0x020142F8
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02007BC4
	ldmia sp!, {r3, pc}
	arm_func_end sub_020142F8

	arm_func_start sub_02014310
sub_02014310: ; 0x02014310
	stmdb sp!, {r4, lr}
	ldrb r4, [r0, #0x14]
	mov r3, #0
	mov ip, r3
	cmp r4, #0
	ble _0201435C
	ldr lr, [r0, #0x10]
	arm_func_end sub_02014310
_0201432C:
	add r1, lr, ip, lsl #4
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _02014350
	ldrb r1, [r0, #6]
	ldr r2, [r2, #0x38]
	cmp r1, #0
	add r3, r3, r2
	bne _0201435C
_02014350:
	add ip, ip, #1
	cmp ip, r4
	blt _0201432C
_0201435C:
	mov r0, r3
	ldmia sp!, {r4, pc}

	arm_func_start sub_02014364
sub_02014364: ; 0x02014364
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrne r0, [r0, #4]
	ldrne r0, [r0, #8]
	moveq r0, #0
	bx lr
	arm_func_end sub_02014364

	arm_func_start sub_0201437C
sub_0201437C: ; 0x0201437C
	stmdb sp!, {r3, lr}
	ldrb lr, [r0, #0x14]
	mov r3, #0
	cmp lr, #0
	ble _020143B0
	ldr ip, [r0, #0x10]
	arm_func_end sub_0201437C
_02014394:
	add r0, ip, r3, lsl #4
	ldrb r2, [r0, #1]
	cmp r1, r2
	ldmeqia sp!, {r3, pc}
	add r3, r3, #1
	cmp r3, lr
	blt _02014394
_020143B0:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_020143B8
sub_020143B8: ; 0x020143B8
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
	ble _0201440C
	ldr ip, [r4, #0x10]
	arm_func_end sub_020143B8
_020143EC:
	add r2, ip, r3, lsl #4
	ldrb r1, [r2, #1]
	cmp r0, r1
	moveq r0, r2
	ldmeqia sp!, {r4, pc}
	add r3, r3, #1
	cmp r3, lr
	blt _020143EC
_0201440C:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02014414
sub_02014414: ; 0x02014414
	cmp r1, #0x80
	mov r0, #0
	bgt _02014480
	cmp r1, #0x80
	bge _02014504
	cmp r1, #0x10
	bgt _02014464
	bge _020144D4
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	bx lr
_02014440: ; jump table
	bx lr ; case 0
	b _020144C0 ; case 1
	b _020144C4 ; case 2
	bx lr ; case 3
	b _020144CC ; case 4
	bx lr ; case 5
	bx lr ; case 6
	bx lr ; case 7
	b _020144FC ; case 8
	arm_func_end sub_02014414
_02014464:
	cmp r1, #0x20
	bgt _02014474
	beq _020144E8
	bx lr
_02014474:
	cmp r1, #0x40
	moveq r0, #4
	bx lr
_02014480:
	cmp r1, #0x400
	bgt _020144A8
	bge _0201450C
	cmp r1, #0x100
	bgt _0201449C
	moveq r0, #6
	bx lr
_0201449C:
	cmp r1, #0x200
	moveq r0, #7
	bx lr
_020144A8:
	cmp r1, #0x800
	bgt _020144B8
	moveq r0, #9
	bx lr
_020144B8:
	cmp r1, #0x1000
	moveq r0, #0xa
_020144C0:
	bx lr
_020144C4:
	mov r0, #1
	bx lr
_020144CC:
	mov r0, #2
	bx lr
_020144D4:
	cmp r2, #3
	movhs r0, #0xff
	addlo r0, r2, #4
	andlo r0, r0, #0xff
	bx lr
_020144E8:
	cmp r2, #0xc
	movhs r0, #0xff
	addlo r0, r2, #7
	andlo r0, r0, #0xff
	bx lr
_020144FC:
	mov r0, #3
	bx lr
_02014504:
	mov r0, #5
	bx lr
_0201450C:
	mov r0, #8
	bx lr

	arm_func_start sub_02014514
sub_02014514: ; 0x02014514
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1fc
	ldr r8, [r0]
	mov r6, r0
	ldr r8, [r8, #8]
	mov r7, r1
	mov sl, r2
	mov fp, r3
	ldr r5, [sp, #0x228]
	ldr r4, [sp, #0x230]
	blx r8
	add r0, sp, #0x210
	ldrh sb, [r0, #0x10]
	mov r8, #0
	mov r2, r8
	mov r0, #1
	arm_func_end sub_02014514
_02014554:
	tst sb, r0, lsl r2
	mov r1, r0, lsl r2
	beq _02014588
	cmp r1, #0x10
	beq _02014574
	cmp r1, #0x20
	beq _0201457C
	b _02014584
_02014574:
	add r8, r8, #3
	b _02014588
_0201457C:
	add r8, r8, #0xc
	b _02014588
_02014584:
	add r8, r8, #1
_02014588:
	add r2, r2, #1
	cmp r2, #0x1d
	blt _02014554
	cmp r8, #0
	addeq sp, sp, #0x1fc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r8, lsl #4
	str r0, [sp, #0x10]
	mov r1, #4
	bl _Z23Heap_AllocWithAlignmentmm
	ldr r2, [sp, #0x10]
	str r0, [r6, #0x10]
	mov r1, r0
	mov r0, #0
	bl MIi_CpuClearFast
	strb r8, [r6, #0x14]
	cmp r7, #3
	addls pc, pc, r7, lsl #2
	b _02014670
_020145D4: ; jump table
	b _020145E4 ; case 0
	b _02014608 ; case 1
	b _0201462C ; case 2
	b _02014650 ; case 3
_020145E4:
	mov r8, #0
	strb r8, [r6, #5]
	ldr r1, _02014CA8 ; =s_p_03d_02d_0208b4d8
	add r0, sp, #0x19c
	mov r2, sl
	mov r3, fp
	strb r8, [r6, #6]
	bl OS_SPrintf
	b _02014688
_02014608:
	mov r3, #1
	strb r3, [r6, #5]
	mov r3, #0
	ldr r1, _02014CAC ; =s_npc_03d_0208b4e4
	add r0, sp, #0x19c
	mov r2, sl
	strb r3, [r6, #6]
	bl OS_SPrintf
	b _02014688
_0201462C:
	mov r8, #1
	strb r8, [r6, #5]
	ldr r1, _02014CB0 ; =s_t_03d_02d_0208b4ec
	add r0, sp, #0x19c
	mov r2, sl
	mov r3, fp
	strb r8, [r6, #6]
	bl OS_SPrintf
	b _02014688
_02014650:
	mov r3, #0
	strb r3, [r6, #5]
	ldr r1, _02014CB4 ; =s_e_03d_0208b4f8
	add r0, sp, #0x19c
	mov r2, sl
	strb r3, [r6, #6]
	bl OS_SPrintf
	b _02014688
_02014670:
	mov r0, #1
	strb r0, [r6, #5]
	mov r0, #0
	add sp, sp, #0x1fc
	strb r0, [r6, #6]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02014688:
	ldr r1, [sp, #0x224]
	add r0, sp, #0x18
	cmp r1, #0
	beq _020146A4
	mov r2, #4
	bl STD_CopyLString
	b _020146AC
_020146A4:
	ldr r1, _02014CB8 ; =s_ACT_0208b500
	bl STD_CopyString
_020146AC:
	cmp r7, #3
	addls pc, pc, r7, lsl #2
	b _02014714
_020146B8: ; jump table
	b _020146C8 ; case 0
	b _020146DC ; case 1
	b _020146F0 ; case 2
	b _02014704 ; case 3
_020146C8:
	ldr r1, _02014CBC ; =s_data_poke_s_LZ_bin_0208b504
	add r0, sp, #0x13c
	add r2, sp, #0x19c
	bl OS_SPrintf
	b _02014714
_020146DC:
	ldr r1, _02014CC0 ; =s_data_npc_s_LZ_bin_0208b518
	add r0, sp, #0x13c
	add r2, sp, #0x19c
	bl OS_SPrintf
	b _02014714
_020146F0:
	ldr r1, _02014CC4 ; =s_data_target_s_LZ_bin_0208b52c
	add r0, sp, #0x13c
	add r2, sp, #0x19c
	bl OS_SPrintf
	b _02014714
_02014704:
	ldr r1, _02014CC8 ; =s_data_effect_s_LZ_bin_0208b544
	add r0, sp, #0x13c
	add r2, sp, #0x19c
	bl OS_SPrintf
_02014714:
	mov r0, #0x6c
	bl _Znwm
	cmp r0, #0
	beq _0201474C
	mov r1, #1
	str r1, [sp]
	mov r8, #0
	str r8, [sp, #4]
	str r8, [sp, #8]
	ldr r3, [sp, #0x22c]
	add r1, sp, #0x18
	add r2, sp, #0x13c
	str r8, [sp, #0xc]
	bl sub_02002AEC
_0201474C:
	cmp r0, #0
	addeq sp, sp, #0x1fc
	str r0, [r6, #8]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _02014CCC ; =s_s_s_NCLR_0208b55c
	add r0, sp, #0xdc
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	cmp r4, #0
	beq _020147B8
	add r0, sp, #0xdc
	bl NNS_FndGetArchiveFileByName
	cmp r0, #0
	beq _020147DC
	add r1, sp, #0x14
	bl NNS_G2dGetUnpackedPaletteData
	cmp r0, #0
	beq _020147DC
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _020147B0
	ldr r1, [sp, #0x14]
	bl sub_02007AFC
_020147B0:
	str r0, [r6, #0xc]
	b _020147DC
_020147B8:
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _020147D8
	mov r2, #0
	add r1, sp, #0xdc
	mov r3, r2
	bl sub_02007AC0
_020147D8:
	str r0, [r6, #0xc]
_020147DC:
	ldr r1, _02014CD0 ; =s_s_s_0208b568
	add r0, sp, #0x1c
	add r2, sp, #0x18
	add r3, sp, #0x19c
	mov r8, #0
	bl OS_SPrintf
	tst sb, #1
	mov sl, r8
	beq _0201483C
	ldr r1, _02014CD0 ; =s_s_s_0208b568
	add r0, sp, #0x7c
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	str r4, [sp]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x7c
	mov r0, r6
	mov r3, r5
	bl sub_02014CEC
	ldr r0, [r6, #0x10]
	mov r1, r8
	strb r1, [r0, #1]
	add sl, sl, #1
_0201483C:
	tst sb, #2
	beq _020148F0
	ldr r1, _02014CD4 ; =s_s_s_s_0208b570
	add r0, sp, #0x7c
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	ldrb r0, [r6, #6]
	cmp r0, #0
	beq _020148C0
	mov r0, #0
	stmia sp, {r0, r5}
	str r4, [sp, #8]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x1c
	add r3, sp, #0x7c
	mov r0, r6
	add r1, r1, sl, lsl #4
	bl sub_02014EA4
	cmp r0, #0
	bne _020148B0
	str r4, [sp]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x7c
	mov r0, r6
	mov r3, r5
	add r1, r1, sl, lsl #4
	bl sub_02014CEC
	b _020148DC
_020148B0:
	ldr r0, [r6, #0x10]
	add r0, r0, sl, lsl #4
	ldr r8, [r0, #4]
	b _020148DC
_020148C0:
	str r4, [sp]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x7c
	mov r0, r6
	mov r3, r5
	add r1, r1, sl, lsl #4
	bl sub_02014CEC
_020148DC:
	ldr r0, [r6, #0x10]
	mov r1, #1
	add r0, r0, sl, lsl #4
	strb r1, [r0, #1]
	add sl, sl, #1
_020148F0:
	tst sb, #4
	beq _020149A4
	ldr r1, _02014CD8 ; =s_s_s_w_0208b578
	add r0, sp, #0x7c
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	ldrb r0, [r6, #6]
	cmp r0, #0
	beq _02014974
	str r8, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x1c
	add r3, sp, #0x7c
	mov r0, r6
	add r1, r1, sl, lsl #4
	bl sub_02014EA4
	cmp r0, #0
	bne _02014964
	str r4, [sp]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x7c
	mov r0, r6
	mov r3, r5
	add r1, r1, sl, lsl #4
	bl sub_02014CEC
	b _02014990
_02014964:
	ldr r0, [r6, #0x10]
	add r0, r0, sl, lsl #4
	ldr r8, [r0, #4]
	b _02014990
_02014974:
	str r4, [sp]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x7c
	mov r0, r6
	mov r3, r5
	add r1, r1, sl, lsl #4
	bl sub_02014CEC
_02014990:
	ldr r0, [r6, #0x10]
	mov r1, #2
	add r0, r0, sl, lsl #4
	strb r1, [r0, #1]
	add sl, sl, #1
_020149A4:
	tst sb, #8
	beq _02014A48
	ldr r1, _02014CDC ; =s_s_s_t_0208b580
	add r0, sp, #0x7c
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	ldrb r0, [r6, #6]
	cmp r0, #0
	beq _02014A18
	str r8, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x1c
	add r3, sp, #0x7c
	mov r0, r6
	add r1, r1, sl, lsl #4
	bl sub_02014EA4
	cmp r0, #0
	bne _02014A34
	str r4, [sp]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x7c
	mov r0, r6
	mov r3, r5
	add r1, r1, sl, lsl #4
	bl sub_02014CEC
	b _02014A34
_02014A18:
	str r4, [sp]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x7c
	mov r0, r6
	mov r3, r5
	add r1, r1, sl, lsl #4
	bl sub_02014CEC
_02014A34:
	ldr r0, [r6, #0x10]
	mov r1, #3
	add r0, r0, sl, lsl #4
	strb r1, [r0, #1]
	add sl, sl, #1
_02014A48:
	tst sb, #0x10
	beq _02014B20
	cmp r7, #1
	beq _02014AD8
	mov r8, sl, lsl #4
	mov r7, #0
	add fp, sp, #0x7c
_02014A64:
	ldrb r0, [r6, #0x14]
	cmp sl, r0
	bge _02014B94
	add r2, r7, #1
	str r2, [sp]
	ldr r1, _02014CE0 ; =s_s_s_p_02d_0208b588
	mov r0, fp
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	str r4, [sp]
	ldr r1, [r6, #0x10]
	mov r0, r6
	mov r2, fp
	add r1, r1, r8
	mov r3, r5
	bl sub_02014CEC
	cmp r0, #0
	beq _02014B94
	ldr r0, [r6, #0x10]
	add r1, r7, #4
	add r0, r0, sl, lsl #4
	add r7, r7, #1
	strb r1, [r0, #1]
	cmp r7, #0x1d
	add r8, r8, #0x10
	add sl, sl, #1
	blt _02014A64
	b _02014B94
_02014AD8:
	ldr r1, _02014CE4 ; =s_s_s_p_0208b594
	add r0, sp, #0x7c
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	str r4, [sp]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x7c
	mov r0, r6
	mov r3, r5
	add r1, r1, sl, lsl #4
	bl sub_02014CEC
	ldr r0, [r6, #0x10]
	mov r1, #4
	add r0, r0, sl, lsl #4
	strb r1, [r0, #1]
	add sl, sl, #1
	b _02014B94
_02014B20:
	mov r8, sl, lsl #4
	mov r7, #0
	mov fp, #0x40
_02014B2C:
	tst sb, fp
	beq _02014B84
	add r1, r7, #1
	str r1, [sp]
	ldr r1, _02014CE0 ; =s_s_s_p_02d_0208b588
	add r0, sp, #0x7c
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	str r4, [sp]
	ldr r1, [r6, #0x10]
	mov r0, r6
	add r2, sp, #0x7c
	add r1, r1, r8
	mov r3, r5
	bl sub_02014CEC
	ldr r0, [r6, #0x10]
	add r1, r7, #4
	add r0, r0, sl, lsl #4
	add r8, r8, #0x10
	strb r1, [r0, #1]
	add sl, sl, #1
_02014B84:
	mov fp, fp, lsl #1
	cmp fp, #0x100
	add r7, r7, #1
	ble _02014B2C
_02014B94:
	tst sb, #0x20
	beq _02014C2C
	ldr fp, _02014CE8 ; =s_s_s_a_02d_0208b59c
	mov sb, sl, lsl #4
	mov r8, #0
	add r7, sp, #0x7c
_02014BAC:
	ldrb r0, [r6, #0x14]
	cmp sl, r0
	addge sp, sp, #0x1fc
	ldmgeia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r3, r8, #1
	str r3, [sp]
	mov r0, r7
	mov r1, fp
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	str r4, [sp]
	ldr r1, [r6, #0x10]
	mov r0, r6
	mov r2, r7
	add r1, r1, sb
	mov r3, r5
	bl sub_02014CEC
	cmp r0, #0
	addeq sp, sp, #0x1fc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r6, #0x10]
	add r1, r8, #7
	add r0, r0, sl, lsl #4
	add r8, r8, #1
	strb r1, [r0, #1]
	cmp r8, #0x1d
	add sb, sb, #0x10
	add sl, sl, #1
	blt _02014BAC
	add sp, sp, #0x1fc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02014C2C:
	mov r8, sl, lsl #4
	mov r7, #0
	mov fp, #0x200
_02014C38:
	tst sb, fp
	beq _02014C90
	add r1, r7, #1
	str r1, [sp]
	ldr r1, _02014CE8 ; =s_s_s_a_02d_0208b59c
	add r0, sp, #0x7c
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	str r4, [sp]
	ldr r1, [r6, #0x10]
	mov r0, r6
	add r2, sp, #0x7c
	add r1, r1, r8
	mov r3, r5
	bl sub_02014CEC
	ldr r0, [r6, #0x10]
	add r1, r7, #7
	add r0, r0, sl, lsl #4
	add r8, r8, #0x10
	strb r1, [r0, #1]
	add sl, sl, #1
_02014C90:
	mov fp, fp, lsl #1
	cmp fp, #0x1000
	add r7, r7, #1
	ble _02014C38
	add sp, sp, #0x1fc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02014CA8: .word s_p_03d_02d_0208b4d8
_02014CAC: .word s_npc_03d_0208b4e4
_02014CB0: .word s_t_03d_02d_0208b4ec
_02014CB4: .word s_e_03d_0208b4f8
_02014CB8: .word s_ACT_0208b500
_02014CBC: .word s_data_poke_s_LZ_bin_0208b504
_02014CC0: .word s_data_npc_s_LZ_bin_0208b518
_02014CC4: .word s_data_target_s_LZ_bin_0208b52c
_02014CC8: .word s_data_effect_s_LZ_bin_0208b544
_02014CCC: .word s_s_s_NCLR_0208b55c
_02014CD0: .word s_s_s_0208b568
_02014CD4: .word s_s_s_s_0208b570
_02014CD8: .word s_s_s_w_0208b578
_02014CDC: .word s_s_s_t_0208b580
_02014CE0: .word s_s_s_p_02d_0208b588
_02014CE4: .word s_s_s_p_0208b594
_02014CE8: .word s_s_s_a_02d_0208b59c

	arm_func_start sub_02014CEC
sub_02014CEC: ; 0x02014CEC
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x128
	mov r5, r1
	ldr r1, _02014E98 ; =s_s_NCBR_0208b5a8
	add r0, sp, #0xc8
	mov r6, r2
	mov r4, r3
	bl OS_SPrintf
	add r0, sp, #0xc8
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x128
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, _02014E9C ; =s_s_NCER_0208b5b0
	add r0, sp, #0x68
	mov r2, r6
	bl OS_SPrintf
	add r0, sp, #0x68
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x128
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, _02014EA0 ; =s_s_cac_0208b5b8
	add r0, sp, #8
	mov r2, r6
	bl OS_SPrintf
	add r0, sp, #8
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x128
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r6, [r5, #4]
	cmp r6, #0
	beq _02014DA8
	beq _02014DA0
	mov r0, r6
	bl sub_02007548
	mov r0, r6
	bl _ZdlPv
	arm_func_end sub_02014CEC
_02014DA0:
	mov r0, #0
	str r0, [r5, #4]
_02014DA8:
	add r0, sp, #0xc8
	bl NNS_FndGetArchiveFileByName
	cmp r0, #0
	beq _02014DE4
	add r1, sp, #4
	bl NNS_G2dGetUnpackedCharacterData
	cmp r0, #0
	beq _02014DE4
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02014DE0
	ldr r1, [sp, #4]
	bl sub_02007524
_02014DE0:
	str r0, [r5, #4]
_02014DE4:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02014E08
	beq _02014E00
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02014E00:
	mov r0, #0
	str r0, [r5, #8]
_02014E08:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02014E2C
	mov r3, #0
	add r1, sp, #0x68
	mov r2, r4
	str r3, [sp]
	bl sub_020031E8
_02014E2C:
	str r0, [r5, #8]
	ldr r6, [r5, #0xc]
	cmp r6, #0
	beq _02014E58
	beq _02014E50
	mov r0, r6
	bl sub_020087C8
	mov r0, r6
	bl _ZdlPv
_02014E50:
	mov r0, #0
	str r0, [r5, #0xc]
_02014E58:
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _02014E6C
	bl sub_02008788
_02014E6C:
	add r1, sp, #8
	str r0, [r5, #0xc]
	mov r3, r4
	mov r2, #0
	bl sub_0200887C
	ldrb r1, [r5]
	mov r0, #1
	orr r1, r1, #1
	strb r1, [r5]
	add sp, sp, #0x128
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02014E98: .word s_s_NCBR_0208b5a8
_02014E9C: .word s_s_NCER_0208b5b0
_02014EA0: .word s_s_cac_0208b5b8

	arm_func_start sub_02014EA4
sub_02014EA4: ; 0x02014EA4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x128
	mov r4, r1
	ldr r1, _02015064 ; =s_s_NCBR_0208b5a8
	add r0, sp, #0xc8
	mov r5, r3
	bl OS_SPrintf
	add r0, sp, #0xc8
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	ldreq r0, [sp, #0x138]
	cmpeq r0, #0
	addeq sp, sp, #0x128
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _02015068 ; =s_s_NCER_0208b5b0
	add r0, sp, #0x68
	mov r2, r5
	bl OS_SPrintf
	add r0, sp, #0x68
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x128
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _0201506C ; =s_s_cac_0208b5b8
	add r0, sp, #8
	mov r2, r5
	bl OS_SPrintf
	add r0, sp, #8
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x128
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _02014F64
	beq _02014F5C
	mov r0, r5
	bl sub_02007548
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_02014EA4
_02014F5C:
	mov r0, #0
	str r0, [r4, #4]
_02014F64:
	ldr r0, [sp, #0x138]
	cmp r0, #0
	strne r0, [r4, #4]
	bne _02014FB0
	add r0, sp, #0xc8
	bl NNS_FndGetArchiveFileByName
	cmp r0, #0
	beq _02014FB0
	add r1, sp, #4
	bl NNS_G2dGetUnpackedCharacterData
	cmp r0, #0
	beq _02014FB0
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02014FAC
	ldr r1, [sp, #4]
	bl sub_02007524
_02014FAC:
	str r0, [r4, #4]
_02014FB0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02014FD4
	beq _02014FCC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02014FCC:
	mov r0, #0
	str r0, [r4, #8]
_02014FD4:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02014FF8
	ldr r2, [sp, #0x13c]
	mov r3, #0
	add r1, sp, #0x68
	str r3, [sp]
	bl sub_020031E8
_02014FF8:
	str r0, [r4, #8]
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _02015024
	beq _0201501C
	mov r0, r5
	bl sub_020087C8
	mov r0, r5
	bl _ZdlPv
_0201501C:
	mov r0, #0
	str r0, [r4, #0xc]
_02015024:
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _02015038
	bl sub_02008788
_02015038:
	ldr r3, [sp, #0x13c]
	str r0, [r4, #0xc]
	add r1, sp, #8
	mov r2, #0
	bl sub_0200887C
	ldrb r1, [r4]
	mov r0, #1
	orr r1, r1, #1
	strb r1, [r4]
	add sp, sp, #0x128
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02015064: .word s_s_NCBR_0208b5a8
_02015068: .word s_s_NCER_0208b5b0
_0201506C: .word s_s_cac_0208b5b8

	arm_func_start sub_02015070
sub_02015070: ; 0x02015070
	ldrb ip, [r0, #0x14]
	mov r2, #0
	cmp ip, #0
	ble _020150A4
	ldr r3, [r0, #0x10]
	arm_func_end sub_02015070
_02015084:
	add r0, r3, r2, lsl #4
	ldrb r0, [r0, #1]
	cmp r1, r0
	moveq r0, r2
	bxeq lr
	add r2, r2, #1
	cmp r2, ip
	blt _02015084
_020150A4:
	mvn r0, #0
	bx lr

	arm_func_start sub_020150AC
sub_020150AC: ; 0x020150AC
	ldr r0, [r0, #0x10]
	add r0, r0, r1, lsl #4
	bx lr
	arm_func_end sub_020150AC

	arm_func_start sub_020150B8
sub_020150B8: ; 0x020150B8
	sub sp, sp, #8
	mov r2, #0
	str r2, [r0, #8]
	strh r2, [r0]
	strh r2, [r0, #2]
	add r1, sp, #0
	strh r2, [r0, #4]
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r0, #0xc]
	ldr r1, [sp, #4]
	str r1, [r0, #0x10]
	strh r2, [r0, #0x14]
	add sp, sp, #8
	bx lr
	arm_func_end sub_020150B8

	arm_func_start sub_020150F4
sub_020150F4: ; 0x020150F4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020150B8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020150F4
_02015108:
	.byte 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start sub_0201510C
sub_0201510C: ; 0x0201510C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02015124
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201510C
_02015120:
	.byte 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start sub_02015124
sub_02015124: ; 0x02015124
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	mov r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	add r1, sp, #0
	strh r2, [r0, #8]
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r0, #0xc]
	ldr r1, [sp, #4]
	str r1, [r0, #0x10]
	strh r2, [r0, #0xa]
	bl sub_0201518C
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	arm_func_end sub_02015124

	arm_func_start sub_02015164
sub_02015164: ; 0x02015164
	stmdb sp!, {r3, lr}
	cmp r1, #0
	ldrnesb r2, [r1]
	cmpne r2, #0
	beq _02015184
	add r0, r0, #0x14
	bl strcpy
	ldmia sp!, {r3, pc}
	arm_func_end sub_02015164
_02015184:
	bl sub_0201518C
	ldmia sp!, {r3, pc}

	arm_func_start sub_0201518C
sub_0201518C: ; 0x0201518C
	mov r1, #0
	strb r1, [r0, #0x14]
	bx lr
	arm_func_end sub_0201518C

	arm_func_start sub_02015198
sub_02015198: ; 0x02015198
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r2, _020152C4 ; =0x00008804
	mov r4, r0
	mov r1, #0
	bl MI_CpuFill8
	add r0, r4, #0xeb0
	add r1, r0, #0x7000
	mvn r0, #0
	mov r2, #0x80
	bl MIi_CpuClearFast
	add r1, r4, #0x8000
	mov ip, #0
	strb ip, [r1, #0xb44]
	strb ip, [r1, #0xb64]
	mov r0, #0x3b
	strh r0, [r4, #0x1a]
	ldr r2, _020152C8 ; =0x0000060F
	ldr r0, _020152CC ; =0x0000042E
	strh r2, [r4, #0x1c]
	strh r0, [r4, #0x1e]
	mov r0, #0x4000
	strh r0, [r4, #0x24]
	strb ip, [r4]
	ldrb r3, [r4, #3]
	add r2, r4, #0x7000
	mov r0, r4
	and r5, r3, #0xf0
	and r3, r5, #0xff
	and r3, r3, #0xf
	strb r3, [r4, #3]
	strb ip, [r1, #0x802]
	str ip, [r2, #0xc38]
	mov r1, #1
	bl sub_020160B8
	ldrb r1, [r4, #2]
	add r0, r4, #4
	mov r6, #0
	add r8, r0, #0x8800
	strb r1, [r4, #1]
	mov r5, r6
	arm_func_end sub_02015198
_02015238:
	mov r7, r5
	mov sb, r8
_02015240:
	mov r0, sb
	bl sub_020150B8
	add r7, r7, #1
	cmp r7, #0xa
	add sb, sb, #0x18
	blt _02015240
	add r6, r6, #1
	cmp r6, #3
	add r8, r8, #0xf0
	blt _02015238
	mov r1, #0
	mov r3, r4
	mov r2, r1
_02015274:
	add r0, r3, #0x8000
	add r1, r1, #1
	str r2, [r0, #0xad4]
	cmp r1, #2
	add r3, r3, #0x38
	blt _02015274
	add r1, r4, #0x8000
	str r2, [r1, #0xb68]
	str r2, [r1, #0xb6c]
	mov r0, #1
	str r0, [r1, #0xb70]
	str r2, [r1, #0xb74]
	str r2, [r1, #0x7c8]
	str r2, [r1, #0x1ac]
	mov r0, r4
	str r2, [r1, #0xbc0]
	bl sub_02017E44
	mov r0, r4
	bl sub_0201772C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_020152C4: .word 0x00008804
_020152C8: .word 0x0000060F
_020152CC: .word 0x0000042E

	arm_func_start sub_020152D0
sub_020152D0: ; 0x020152D0
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r0, r4, #4
	ldr ip, _02015394 ; =0x02015108
	ldr r3, _02015398 ; =sub_020150F4
	add r0, r0, #0x8800
	mov r1, #0x1e
	mov r2, #0x18
	str ip, [sp]
	bl __cxa_vec_ctor
	add r0, r4, #0x2d4
	ldr ip, _0201539C ; =0x02015120
	ldr r3, _020153A0 ; =sub_0201510C
	add r0, r0, #0x8800
	mov r1, #2
	mov r2, #0x38
	str ip, [sp]
	bl __cxa_vec_ctor
	add r0, r4, #0x328
	add r0, r0, #0x8c00
	bl sub_020412A0
	ldr r1, _020153A4 ; =sub_0204114C
	add r0, r4, #0x760
	str r1, [sp]
	add r0, r0, #0x59000
	mov r1, #2
	mov r2, #0x38
	ldr r3, _020153A8 ; =sub_02041124
	bl __cxa_vec_ctor
	ldr r1, _020153A4 ; =sub_0204114C
	add r0, r4, #0x7d0
	str r1, [sp]
	add r0, r0, #0x59000
	mov r1, #0xa
	mov r2, #0x38
	ldr r3, _020153A8 ; =sub_02041124
	bl __cxa_vec_ctor
	mov r0, r4
	bl sub_02015198
	mov r2, #0
	add r0, r4, #0x59000
	str r2, [r0, #0xa00]
	add r1, r4, #0x8000
	mov r0, r4
	str r2, [r1, #0xb8c]
	str r2, [r1, #0xb88]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02015394: .word 0x02015108
_02015398: .word sub_020150F4
_0201539C: .word 0x02015120
_020153A0: .word sub_0201510C
_020153A4: .word sub_0204114C
_020153A8: .word sub_02041124
	arm_func_end sub_020152D0

	arm_func_start sub_020153AC
sub_020153AC: ; 0x020153AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x7d0
	ldr r3, _02015428 ; =sub_0204114C
	add r0, r0, #0x59000
	mov r1, #0xa
	mov r2, #0x38
	bl __cxa_vec_cleanup
	add r0, r4, #0x760
	ldr r3, _02015428 ; =sub_0204114C
	add r0, r0, #0x59000
	mov r1, #2
	mov r2, #0x38
	bl __cxa_vec_cleanup
	add r0, r4, #0x328
	add r0, r0, #0x8c00
	bl sub_020412DC
	add r0, r4, #0x2d4
	add r0, r0, #0x8800
	mov r1, #2
	mov r2, #0x38
	ldr r3, _0201542C ; =0x02015120
	bl __cxa_vec_cleanup
	add r0, r4, #4
	add r0, r0, #0x8800
	mov r1, #0x1e
	mov r2, #0x18
	ldr r3, _02015430 ; =0x02015108
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02015428: .word sub_0204114C
_0201542C: .word 0x02015120
_02015430: .word 0x02015108
	arm_func_end sub_020153AC

	arm_func_start sub_02015434
sub_02015434: ; 0x02015434
	stmdb sp!, {r3, r4, r5, lr}
	add r0, r0, #4
	mov ip, #0
	add r4, r0, #0x8800
	mov r3, ip
	arm_func_end sub_02015434
_02015448:
	mov lr, r3
	mov r5, r4
_02015450:
	ldr r0, [r5, #8]
	tst r0, #1
	beq _02015474
	ldrh r0, [r5, #2]
	cmp r1, r0
	ldreqh r0, [r5, #4]
	cmpeq r2, r0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
_02015474:
	add lr, lr, #1
	cmp lr, #0xa
	add r5, r5, #0x18
	blt _02015450
	add ip, ip, #1
	cmp ip, #3
	add r4, r4, #0xf0
	blt _02015448
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201549C
sub_0201549C: ; 0x0201549C
	stmdb sp!, {r3, r4, r5, lr}
	mov r2, r1, asr #0x18
	and r2, r2, #0xff
	cmp r2, #5
	cmpne r2, #2
	bne _02015514
	ldr r2, _0201551C ; =0x00000FFF
	mov lr, r0
	and r4, r2, r1, asr #12
	and r5, r1, r2
	mov ip, #0
	arm_func_end sub_0201549C
_020154C8:
	add r1, lr, #0x8000
	ldr r3, [r1, #0xad4]
	cmp r3, #0
	beq _02015504
	ldr r3, [r1, #0xad8]
	and r1, r2, r3, asr #12
	cmp r1, r4
	andeq r1, r3, r2
	cmpeq r1, r5
	bne _02015504
	add r0, r0, #0x2d4
	add r1, r0, #0x8800
	mov r0, #0x38
	mla r0, ip, r0, r1
	ldmia sp!, {r3, r4, r5, pc}
_02015504:
	add ip, ip, #1
	cmp ip, #2
	add lr, lr, #0x38
	blt _020154C8
_02015514:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0201551C: .word 0x00000FFF

	arm_func_start sub_02015520
sub_02015520: ; 0x02015520
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r2, r1, asr #0x18
	and r2, r2, #0xff
	cmp r2, #6
	cmpne r2, #1
	bne _020155F0
	add r2, r0, #0x8000
	ldrb r2, [r2, #0xb64]
	cmp r2, #1
	beq _02015554
	cmp r2, #5
	beq _0201555C
	b _02015564
	arm_func_end sub_02015520
_02015554:
	mov ip, #1
	b _02015568
_0201555C:
	mov ip, #2
	b _02015568
_02015564:
	mov ip, #0
_02015568:
	ldr r3, _020155F8 ; =0x00000FFF
	mov r2, #0
	and lr, r3, r1, asr #12
	and r4, r1, r3
	mov r1, r2
	mov r8, #0xf0
_02015580:
	add r3, ip, r2
	and r3, r3, #3
	mul r6, r3, r8
	mov r3, r1
	add r5, r0, r6
_02015594:
	add r7, r5, #0x8000
	ldr r7, [r7, #0x80c]
	tst r7, #1
	beq _020155D4
	add r7, r5, #0x8800
	ldrh sb, [r7, #6]
	cmp sb, lr
	ldreqh r7, [r7, #8]
	cmpeq r7, r4
	bne _020155D4
	add r0, r0, #4
	add r0, r0, #0x8800
	add r1, r0, r6
	mov r0, #0x18
	mla r0, r3, r0, r1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020155D4:
	add r3, r3, #1
	cmp r3, #0xa
	add r5, r5, #0x18
	blt _02015594
	add r2, r2, #1
	cmp r2, #3
	blt _02015580
_020155F0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_020155F8: .word 0x00000FFF

	arm_func_start sub_020155FC
sub_020155FC: ; 0x020155FC
	cmp r1, #0xa
	bge _02015650
	add r2, r0, #0x8000
	ldrb r2, [r2, #0xb64]
	cmp r2, #1
	beq _02015620
	cmp r2, #5
	beq _02015628
	b _02015630
	arm_func_end sub_020155FC
_02015620:
	mov r3, #1
	b _02015634
_02015628:
	mov r3, #2
	b _02015634
_02015630:
	mov r3, #0
_02015634:
	add r0, r0, #4
	add r2, r0, #0x8800
	mov r0, #0xf0
	mla r2, r3, r0, r2
	mov r0, #0x18
	mla r0, r1, r0, r2
	bx lr
_02015650:
	mov r0, #0
	bx lr

	arm_func_start sub_02015658
sub_02015658: ; 0x02015658
	stmdb sp!, {r4, lr}
	cmp r1, #0xb
	ldrhsb r1, [r0, #3]
	ldr r2, _0201568C ; =DAT_0208b664
	andhs r1, r1, #0xf
	ldrb r4, [r2, r1]
	mvn r1, #0
	bl sub_0201621C
	cmp r0, #0
	addne r0, r4, #1
	andne r4, r0, #0xff
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0201568C: .word DAT_0208b664
	arm_func_end sub_02015658

	arm_func_start sub_02015690
sub_02015690: ; 0x02015690
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	ldr r3, _02015710 ; =0x000001B9
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	cmp r2, r3
	cmplt r1, #0x30
	movge r0, #0
	bge _020156E0
	mov r3, #0x18
	mla r3, r2, r3, r0
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	add r2, r3, r0, lsl #2
	mov r0, r1, lsl #0x1d
	ldr r1, [r2, #0x30]
	mov r0, r0, lsr #0x1b
	mov r0, r1, lsr r0
	and r0, r0, #0xf
	arm_func_end sub_02015690
_020156E0:
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02015708
_020156EC: ; jump table
	b _02015708 ; case 0
	b _02015708 ; case 1
	b _02015708 ; case 2
	b _02015700 ; case 3
	b _02015700 ; case 4
_02015700:
	mov r0, #1
	bx lr
_02015708:
	mov r0, #0
	bx lr
	.align 2, 0
_02015710: .word 0x000001B9

	arm_func_start sub_02015714
sub_02015714: ; 0x02015714
	stmdb sp!, {r3, lr}
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	ldr r3, _02015778 ; =0x000001B9
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	cmp r2, r3
	cmplt r1, #0x30
	ldmgeia sp!, {r3, pc}
	add r3, r0, #0x30
	mov r0, #0x18
	mla r3, r2, r0, r3
	mov r0, r1, asr #2
	mov r2, r1, lsl #0x1d
	add r0, r1, r0, lsr #29
	mov ip, r0, asr #3
	mov lr, r2, lsr #0x1b
	mov r0, #0xf
	mvn r1, r0, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #3
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02015778: .word 0x000001B9
	arm_func_end sub_02015714

	arm_func_start sub_0201577C
sub_0201577C: ; 0x0201577C
	stmdb sp!, {r3, lr}
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	ldr r3, _020157E0 ; =0x000001B9
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	cmp r2, r3
	cmplt r1, #0x30
	ldmgeia sp!, {r3, pc}
	add r3, r0, #0x30
	mov r0, #0x18
	mla r3, r2, r0, r3
	mov r0, r1, asr #2
	mov r2, r1, lsl #0x1d
	add r0, r1, r0, lsr #29
	mov ip, r0, asr #3
	mov lr, r2, lsr #0x1b
	mov r0, #0xf
	mvn r1, r0, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #1
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_020157E0: .word 0x000001B9
	arm_func_end sub_0201577C

	arm_func_start sub_020157E4
sub_020157E4: ; 0x020157E4
	stmdb sp!, {r3, lr}
	mov r2, r1, asr #0x18
	and ip, r2, #0xff
	cmp ip, #4
	addls pc, pc, ip, lsl #2
	b _020158A8
_020157FC: ; jump table
	b _02015810 ; case 0
	b _02015818 ; case 1
	b _02015818 ; case 2
	b _02015818 ; case 3
	b _020158A8 ; case 4
	arm_func_end sub_020157E4
_02015810:
	mov r0, #1
	ldmia sp!, {r3, pc}
_02015818:
	ldr r3, _020158B0 ; =0x00000FFF
	sub r2, ip, #1
	cmp r2, #3
	and r2, r1, r3
	and lr, r3, r1, asr #12
	movlt r3, #1
	ldr r1, _020158B4 ; =0x000001B9
	movge r3, #0
	cmp lr, r1
	movlt r1, #1
	movge r1, #0
	tst r3, r1
	beq _02015890
	cmp r2, #0x30
	bge _02015890
	ldr r1, _020158B8 ; =0x00001B90
	sub r3, ip, #1
	mla r1, r3, r1, r0
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	add r1, r1, lr, lsl #4
	mov r0, r0, asr #3
	add r0, r1, r0, lsl #2
	add r0, r0, #0x2000
	mov r1, r2, lsl #0x1d
	ldr r2, [r0, #0x988]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #0xf
	b _02015894
_02015890:
	mov r0, #0
_02015894:
	cmp r0, #3
	cmpne r0, #4
	bne _020158A8
	mov r0, #1
	ldmia sp!, {r3, pc}
_020158A8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020158B0: .word 0x00000FFF
_020158B4: .word 0x000001B9
_020158B8: .word 0x00001B90

	arm_func_start sub_020158BC
sub_020158BC: ; 0x020158BC
	stmdb sp!, {r3, lr}
	mov r2, r1, asr #0x18
	and ip, r2, #0xff
	cmp ip, #4
	addls pc, pc, ip, lsl #2
	ldmia sp!, {r3, pc}
_020158D4: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _020158E8 ; case 1
	b _020158E8 ; case 2
	b _020158E8 ; case 3
	ldmia sp!, {r3, pc} ; case 4
	arm_func_end sub_020158BC
_020158E8:
	ldr r2, _02015970 ; =0x00000FFF
	sub r3, ip, #1
	and lr, r1, r2
	and r1, r2, r1, asr #12
	cmp r3, #3
	movlt r3, #1
	ldr r2, _02015974 ; =0x000001B9
	movge r3, #0
	cmp r1, r2
	movlt r2, #1
	movge r2, #0
	tst r3, r2
	ldmeqia sp!, {r3, pc}
	cmp lr, #0x30
	ldmgeia sp!, {r3, pc}
	add r0, r0, #0x188
	add r3, r0, #0x2800
	ldr r2, _02015978 ; =0x00001B90
	sub r0, ip, #1
	mla r3, r0, r2, r3
	mov r0, lr, asr #2
	add r0, lr, r0, lsr #29
	mov r2, lr, lsl #0x1d
	mov lr, r2, lsr #0x1b
	mov ip, r0, asr #3
	mov r2, #0xf
	add r3, r3, r1, lsl #4
	mvn r1, r2, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #3
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02015970: .word 0x00000FFF
_02015974: .word 0x000001B9
_02015978: .word 0x00001B90

	arm_func_start sub_0201597C
sub_0201597C: ; 0x0201597C
	stmdb sp!, {r3, lr}
	mov r2, r1, asr #0x18
	and ip, r2, #0xff
	cmp ip, #4
	addls pc, pc, ip, lsl #2
	ldmia sp!, {r3, pc}
_02015994: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _020159A8 ; case 1
	b _020159A8 ; case 2
	b _020159A8 ; case 3
	ldmia sp!, {r3, pc} ; case 4
	arm_func_end sub_0201597C
_020159A8:
	ldr r2, _02015A30 ; =0x00000FFF
	sub r3, ip, #1
	and lr, r1, r2
	and r1, r2, r1, asr #12
	cmp r3, #3
	movlt r3, #1
	ldr r2, _02015A34 ; =0x000001B9
	movge r3, #0
	cmp r1, r2
	movlt r2, #1
	movge r2, #0
	tst r3, r2
	ldmeqia sp!, {r3, pc}
	cmp lr, #0x30
	ldmgeia sp!, {r3, pc}
	add r0, r0, #0x188
	add r3, r0, #0x2800
	ldr r2, _02015A38 ; =0x00001B90
	sub r0, ip, #1
	mla r3, r0, r2, r3
	mov r0, lr, asr #2
	add r0, lr, r0, lsr #29
	mov r2, lr, lsl #0x1d
	mov lr, r2, lsr #0x1b
	mov ip, r0, asr #3
	mov r2, #0xf
	add r3, r3, r1, lsl #4
	mvn r1, r2, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #1
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02015A30: .word 0x00000FFF
_02015A34: .word 0x000001B9
_02015A38: .word 0x00001B90

	arm_func_start sub_02015A3C
sub_02015A3C: ; 0x02015A3C
	stmdb sp!, {r3, lr}
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	ldr r3, _02015AA8 ; =0x000001B9
	cmp r2, r3
	movlt r3, #1
	movge r3, #0
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #0x30
	ldmgeia sp!, {r3, pc}
	mov r3, r1, asr #2
	add ip, r0, #0x188
	mov lr, r1, lsl #0x1d
	add r0, r1, r3, lsr #29
	add r3, ip, #0x2800
	mov ip, r0, asr #3
	add r3, r3, r2, lsl #4
	mov lr, lr, lsr #0x1b
	mov r1, #0xf
	mvn r1, r1, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #3
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02015AA8: .word 0x000001B9
	arm_func_end sub_02015A3C

	arm_func_start sub_02015AAC
sub_02015AAC: ; 0x02015AAC
	stmdb sp!, {r3, lr}
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	ldr r3, _02015B18 ; =0x000001B9
	cmp r2, r3
	movlt r3, #1
	movge r3, #0
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #0x30
	ldmgeia sp!, {r3, pc}
	mov r3, r1, asr #2
	add ip, r0, #0x188
	mov lr, r1, lsl #0x1d
	add r0, r1, r3, lsr #29
	add r3, ip, #0x2800
	mov ip, r0, asr #3
	add r3, r3, r2, lsl #4
	mov lr, lr, lsr #0x1b
	mov r1, #0xf
	mvn r1, r1, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #1
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02015B18: .word 0x000001B9
	arm_func_end sub_02015AAC

	arm_func_start sub_02015B1C
sub_02015B1C: ; 0x02015B1C
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	ldr r3, _02015B94 ; =0x000001B9
	cmp r2, r3
	movlt r3, #1
	movge r3, #0
	cmp r3, #0
	beq _02015B74
	cmp r1, #0x30
	bge _02015B74
	mov r3, r1, asr #2
	add r3, r1, r3, lsr #29
	add r2, r0, r2, lsl #4
	mov r0, r3, asr #3
	add r0, r2, r0, lsl #2
	add r0, r0, #0x4000
	mov r1, r1, lsl #0x1d
	ldr r2, [r0, #0x518]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #0xf
	b _02015B78
	arm_func_end sub_02015B1C
_02015B74:
	mov r0, #0
_02015B78:
	cmp r0, #3
	cmpne r0, #4
	bne _02015B8C
	mov r0, #1
	bx lr
_02015B8C:
	mov r0, #0
	bx lr
	.align 2, 0
_02015B94: .word 0x000001B9

	arm_func_start sub_02015B98
sub_02015B98: ; 0x02015B98
	stmdb sp!, {r3, lr}
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	ldr r3, _02015C04 ; =0x000001B9
	cmp r2, r3
	movlt r3, #1
	movge r3, #0
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #0x30
	ldmgeia sp!, {r3, pc}
	mov r3, r1, asr #2
	add ip, r0, #0x118
	mov lr, r1, lsl #0x1d
	add r0, r1, r3, lsr #29
	add r3, ip, #0x4400
	mov ip, r0, asr #3
	add r3, r3, r2, lsl #4
	mov lr, lr, lsr #0x1b
	mov r1, #0xf
	mvn r1, r1, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #3
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02015C04: .word 0x000001B9
	arm_func_end sub_02015B98

	arm_func_start sub_02015C08
sub_02015C08: ; 0x02015C08
	stmdb sp!, {r3, lr}
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	ldr r3, _02015C74 ; =0x000001B9
	cmp r2, r3
	movlt r3, #1
	movge r3, #0
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #0x30
	ldmgeia sp!, {r3, pc}
	mov r3, r1, asr #2
	add ip, r0, #0x118
	mov lr, r1, lsl #0x1d
	add r0, r1, r3, lsr #29
	add r3, ip, #0x4400
	mov ip, r0, asr #3
	add r3, r3, r2, lsl #4
	mov lr, lr, lsr #0x1b
	mov r1, #0xf
	mvn r1, r1, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #1
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02015C74: .word 0x000001B9
	arm_func_end sub_02015C08

	arm_func_start sub_02015C78
sub_02015C78: ; 0x02015C78
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xdc
	mov sb, r1
	mov r1, sb, asr #0x18
	and r1, r1, #0xff
	cmp r1, #1
	mov r5, r0
	mov r8, r2
	addne sp, sp, #0xdc
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r3, #0
	addlt r0, r5, #0x8000
	ldrltb r3, [r0, #0xb64]
	cmp r3, #1
	beq _02015CC4
	cmp r3, #5
	beq _02015CCC
	b _02015CD4
	arm_func_end sub_02015C78
_02015CC4:
	mov r1, #1
	b _02015CD8
_02015CCC:
	mov r1, #2
	b _02015CD8
_02015CD4:
	mov r1, #0
_02015CD8:
	mov r0, #0xf0
	mul r4, r1, r0
	add r0, r5, #4
	add r0, r0, #0x8800
	add r7, r0, r4
	mov r6, #0
_02015CF0:
	ldr r0, [r7, #8]
	tst r0, #1
	bne _02015E2C
	mov r0, r7
	bl sub_020150B8
	ldr r1, _02015E48 ; =0x00000FFF
	ldr r2, [r7, #8]
	mov r0, r8, lsl #0x10
	orr r2, r2, #1
	str r2, [r7, #8]
	mov r0, r0, lsr #0x10
	strh r0, [r7]
	and r2, r1, sb, asr #12
	strh r2, [r7, #2]
	and r1, sb, r1
	strh r1, [r7, #4]
	ldrsh r1, [r5, #0x26]
	strh r1, [r7, #0x16]
	bl sub_02034F9C
	cmp r0, #0
	beq _02015E20
	ldr r0, [r7, #8]
	cmp r6, #0
	orr r0, r0, #6
	str r0, [r7, #8]
	ble _02015E20
	ldr r8, _02015E4C ; =0x02015108
	ldr r3, _02015E50 ; =sub_020150F4
	add r0, sp, #4
	mov r1, #9
	mov r2, #0x18
	str r8, [sp]
	bl __cxa_vec_ctor
	mov r0, #0x18
	mul sb, r6, r0
	add r0, r5, #4
	add r6, r0, #0x8800
	add r8, r6, r4
	add r1, sp, #4
	mov r0, r8
	mov r2, sb
	bl MI_CpuCopy8
	ldrh r1, [r7]
	add r0, r5, #0xc
	add r3, r0, #0x8800
	add r0, r5, #0x1c
	strh r1, [r6, r4]
	add r0, r0, #0x8800
	add r1, r0, r4
	ldrh r0, [r7, #2]
	mov r2, sb
	mov r6, #0
	strh r0, [r8, #2]
	ldrh r5, [r7, #4]
	add r0, sp, #4
	strh r5, [r8, #4]
	ldr r5, [r7, #8]
	str r5, [r8, #8]
	ldr sb, [r7, #0xc]
	ldr r5, [r7, #0x10]
	str sb, [r8, #0xc]
	str r5, [r8, #0x10]
	ldrh r5, [r7, #0x14]
	strh r5, [r8, #0x14]
	ldrh r5, [r7, #0x16]
	strh r5, [r8, #0x16]
	str r6, [r3, r4]
	ldr r5, [r7, #8]
	orr r5, r5, #0
	str r5, [r3, r4]
	bl MI_CpuCopy8
	ldr r3, _02015E4C ; =0x02015108
	add r0, sp, #4
	mov r1, #9
	mov r2, #0x18
	bl __cxa_vec_cleanup
_02015E20:
	add sp, sp, #0xdc
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_02015E2C:
	add r6, r6, #1
	cmp r6, #0xa
	add r7, r7, #0x18
	blt _02015CF0
	mov r0, #0
	add sp, sp, #0xdc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02015E48: .word 0x00000FFF
_02015E4C: .word 0x02015108
_02015E50: .word sub_020150F4

	arm_func_start sub_02015E54
sub_02015E54: ; 0x02015E54
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r2, r1, asr #0x18
	and r2, r2, #0xff
	cmp r2, #5
	cmpne r2, #2
	bne _02015EC8
	add r0, r0, #0x2d4
	mov r4, #0
	add r6, r0, #0x8800
	mov r3, r4
	mov r0, r4
	arm_func_end sub_02015E54
_02015E80:
	cmp r4, #0
	blt _02015E94
	cmp r4, #2
	movlt r5, r6
	blt _02015E98
_02015E94:
	mov r5, r3
_02015E98:
	cmp r5, #0
	ldrne r2, [r5]
	cmpne r2, #0
	beq _02015EB4
	ldr r2, [r5, #4]
	cmp r1, r2
	streq r0, [r5]
_02015EB4:
	add r4, r4, #1
	cmp r4, #2
	add r6, r6, #0x38
	blt _02015E80
	b _0201601C
_02015EC8:
	cmp r2, #6
	cmpne r2, #1
	bne _0201601C
	mvn r2, #0
	add r3, r2, #0x1000
	mov r4, r3
	mov r6, #0
	and ip, r1, r4
	mov r5, r2
	mov r8, r0
	and sb, r3, r1, asr #12
	mov r4, r6
_02015EF8:
	mov r7, r4
	mov lr, r8
_02015F00:
	add r1, lr, #0x8800
	ldrh r3, [r1, #6]
	cmp r3, sb
	ldreqh r1, [r1, #8]
	cmpeq r1, ip
	moveq r2, r6
	moveq r5, r7
	beq _02015F30
	add r7, r7, #1
	cmp r7, #0xa
	add lr, lr, #0x18
	blt _02015F00
_02015F30:
	cmp r2, #0
	bge _02015F48
	add r6, r6, #1
	cmp r6, #3
	add r8, r8, #0xf0
	blt _02015EF8
_02015F48:
	cmp r5, #9
	bne _02015F68
	add r0, r0, #0xdc
	add r1, r0, #0x8800
	mov r0, #0xf0
	mla r0, r2, r0, r1
	bl sub_020150B8
	b _0201601C
_02015F68:
	cmp r5, #0
	blt _0201601C
	cmp r5, #9
	bge _0201601C
	add r0, r0, #4
	add r1, r0, #0x8800
	mov r0, #0xf0
	mla r8, r2, r0, r1
	mov r0, #0x18
	mla r7, r5, r0, r8
	mov r4, #0
	mov sb, r0
_02015F98:
	add r0, r5, #1
	mla r6, r0, sb, r8
	mov r0, r7
	bl sub_020150B8
	ldr r0, [r6, #8]
	tst r0, #1
	beq _02016004
	ldrh r0, [r6]
	strh r0, [r7]
	ldrh r0, [r6, #2]
	strh r0, [r7, #2]
	ldrh r0, [r6, #4]
	strh r0, [r7, #4]
	ldr r0, [r6, #8]
	str r0, [r7, #8]
	ldr r1, [r6, #0xc]
	ldr r0, [r6, #0x10]
	str r1, [r7, #0xc]
	str r0, [r7, #0x10]
	ldrh r0, [r6, #0x14]
	strh r0, [r7, #0x14]
	ldrh r0, [r6, #0x16]
	strh r0, [r7, #0x16]
	str r4, [r7, #8]
	ldr r0, [r6, #8]
	orr r0, r4, r0
	str r0, [r7, #8]
_02016004:
	mov r0, r6
	bl sub_020150B8
	add r5, r5, #1
	cmp r5, #9
	add r7, r7, #0x18
	blt _02015F98
_0201601C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_02016024
sub_02016024: ; 0x02016024
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r3, r4, #0x7000
	ldr r1, [r3, #0xf60]
	add r0, r4, #0x36c
	bic ip, r1, #1
	add r1, r0, #0x7c00
	mov r0, #0
	mov r2, #0x80
	str ip, [r3, #0xf60]
	bl MIi_CpuClearFast
	add r0, r4, #0x3ec
	add r1, r0, #0x7c00
	mov r0, #0
	mov r2, #0x80
	bl MIi_CpuClearFast
	add r0, r4, #0x6c
	add r1, r0, #0x8000
	mov r0, #0
	mov r2, #0x80
	bl MIi_CpuClearFast
	add r0, r4, #0xec
	add r1, r0, #0x8000
	mov r0, #0
	mov r2, #0x40
	bl MIi_CpuClearFast
	mov r0, #0
	add r1, r4, #0x12c
	add r1, r1, #0x8000
	mov r2, #0x40
	bl MIi_CpuClearFast
	add r0, r4, #0x16c
	add r1, r0, #0x8000
	mov r0, #0
	mov r2, #0x40
	bl MIi_CpuClearFast
	ldmia sp!, {r4, pc}
	arm_func_end sub_02016024

	arm_func_start sub_020160B8
sub_020160B8: ; 0x020160B8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x8000
	ldrb r2, [r0, #0x7db]
	mov r5, r1
	cmp r2, r5
	ldmeqia sp!, {r3, r4, r5, pc}
	strb r5, [r0, #0x7db]
	bl sub_0201001C
	cmp r0, #0
	moveq r0, #0
	beq _020160FC
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x438]
	mov r1, r5
	bl sub_02010E78
	arm_func_end sub_020160B8
_020160FC:
	strb r0, [r4, #2]
	mov r0, r4
	mov r1, #0x15
	bl sub_02016C14
	cmp r0, #1
	bne _02016124
	ldrb r0, [r4, #2]
	add r0, r0, #5
	strb r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, pc}
_02016124:
	cmp r0, #2
	ldrgeb r0, [r4, #2]
	addge r0, r0, #0xf
	strgeb r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02016138
sub_02016138: ; 0x02016138
	cmp r1, #0
	blt _02016148
	cmp r1, #3
	blt _02016178
	arm_func_end sub_02016138
_02016148:
	add r1, r0, #0x8000
	ldrb r1, [r1, #0xb64]
	cmp r1, #1
	beq _02016164
	cmp r1, #5
	beq _0201616C
	b _02016174
_02016164:
	mov r1, #1
	b _02016178
_0201616C:
	mov r1, #2
	b _02016178
_02016174:
	mov r1, #0
_02016178:
	mov r2, #0xf0
	mla r3, r1, r2, r0
	mov r0, #0
	mov r2, r0
_02016188:
	add r1, r3, #0x8000
	ldr r1, [r1, #0x80c]
	add r2, r2, #1
	tst r1, #1
	addne r0, r0, #1
	cmp r2, #0xa
	add r3, r3, #0x18
	blt _02016188
	bx lr

	arm_func_start sub_020161AC
sub_020161AC: ; 0x020161AC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	bl sub_02015658
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl sub_0201621C
	cmp r0, #0
	subne r4, r4, #1
	cmp r4, #0
	movlt r4, #0
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020161AC

	arm_func_start sub_020161E4
sub_020161E4: ; 0x020161E4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl sub_02016138
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl sub_0201621C
	cmp r0, #0
	subne r4, r4, #1
	cmp r4, #0
	movlt r4, #0
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020161E4

	arm_func_start sub_0201621C
sub_0201621C: ; 0x0201621C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl sub_02016138
	mov r4, r0
	cmp r4, #0
	mov r5, #0
	ble _02016260
	arm_func_end sub_0201621C
_02016238:
	mov r0, r6
	mov r1, r5
	bl sub_020155FC
	ldr r0, [r0, #8]
	tst r0, #2
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	cmp r5, r4
	blt _02016238
_02016260:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02016268
sub_02016268: ; 0x02016268
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl sub_02016138
	mov r4, r0
	cmp r4, #0
	mov r5, #0
	ble _020162B4
	arm_func_end sub_02016268
_02016284:
	mov r0, r6
	mov r1, r5
	bl sub_020155FC
	ldr r1, [r0, #8]
	tst r1, #2
	beq _020162A8
	ldrh r0, [r0]
	bl sub_02035088
	ldmia sp!, {r4, r5, r6, pc}
_020162A8:
	add r5, r5, #1
	cmp r5, r4
	blt _02016284
_020162B4:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_020162BC
sub_020162BC: ; 0x020162BC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r2, r5, #0x7000
	mov r4, r1
	ldr r1, [r2, #0xc38]
	bl sub_02015520
	cmp r0, #0
	ldrne r1, [r0, #8]
	add r2, r5, #0x7000
	bicne r1, r1, #4
	strne r1, [r0, #8]
	mov r0, r5
	mov r1, r4
	str r4, [r2, #0xc38]
	bl sub_02015520
	cmp r0, #0
	ldrne r1, [r0, #8]
	orrne r1, r1, #4
	strne r1, [r0, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020162BC

	arm_func_start sub_0201630C
sub_0201630C: ; 0x0201630C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	str r0, [sp, #8]
	str r1, [sp]
	str r2, [sp, #4]
	bl sub_0201001C
	ldr r0, [r0, #0xc]
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
	cmp r0, #8
	cmpne r0, #0xe
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #8]
	add r0, r0, #0x8000
	ldr r1, [r0, #0xb8c]
	cmp r1, #0
	ldrne r0, [r0, #0xb88]
	cmpne r0, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp]
	cmp r0, #0
	bne _02016380
	add r0, sp, #0x1c
	bl RTC_GetTime
	add r0, sp, #0x1c
	str r0, [sp]
	arm_func_end sub_0201630C
_02016380:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0201639C
	add r0, sp, #0xc
	bl RTC_GetDate
	add r0, sp, #0xc
	str r0, [sp, #4]
_0201639C:
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	add r4, r0, #0x8000
	ldr r6, [r2, #8]
	ldr r2, [r4, #0xb8c]
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r3, [sp]
	ldr r8, [sp]
	sub r2, r6, r2
	ldr r6, [sp]
	ldr sl, [r3]
	ldr r3, [r4, #0xb94]
	ldr sb, [r8, #4]
	ldr r8, [r4, #0xb98]
	ldr r7, [r4, #0xb84]
	ldr r0, [r0]
	ldr r5, [r4, #0xb88]
	ldr r1, [r1, #4]
	ldr r6, [r6, #8]
	ldr r4, [r4, #0xb9c]
	sub r3, sl, r3
	sub r0, r0, r7
	sub r1, r1, r5
	sub ip, sb, r8
	subs lr, r6, r4
	bpl _02016414
_02016408:
	sub ip, ip, #1
	adds lr, lr, #0x3c
	bmi _02016408
_02016414:
	cmp lr, #0x3c
	blt _0201642C
_0201641C:
	sub lr, lr, #0x3c
	cmp lr, #0x3c
	add ip, ip, #1
	bge _0201641C
_0201642C:
	cmp ip, #0
	bge _02016440
_02016434:
	sub r3, r3, #1
	adds ip, ip, #0x3c
	bmi _02016434
_02016440:
	cmp ip, #0x3c
	addge r3, r3, #1
	subge ip, ip, #0x3c
	cmp r0, #0
	movgt r4, #0xc
	mlagt r1, r0, r4, r1
	cmp r1, #0
	ble _02016544
	cmp r1, #0
	mov r4, #0
	ble _02016544
	ldr sl, _02016684 ; =0x51EB851F
	sub r6, r5, #1
_02016474:
	ldr r0, _02016688 ; =0xAAAAAAAB
	add r8, r6, r4
	umull r0, r5, r8, r0
	mov r5, r5, lsr #3
	mov r0, #0xc
	umull r5, sb, r0, r5
	sub r5, r8, r5
	add r5, r5, #1
	cmp r5, #0xc
	addls pc, pc, r5, lsl #2
	b _02016530
_020164A0: ; jump table
	b _02016530 ; case 0
	b _020164D4 ; case 1
	b _020164E4 ; case 2
	b _020164D4 ; case 3
	b _020164DC ; case 4
	b _020164D4 ; case 5
	b _020164DC ; case 6
	b _020164D4 ; case 7
	b _020164D4 ; case 8
	b _020164DC ; case 9
	b _020164D4 ; case 10
	b _020164DC ; case 11
	b _020164D4 ; case 12
_020164D4:
	add r2, r2, #0x1f
	b _02016530
_020164DC:
	add r2, r2, #0x1e
	b _02016530
_020164E4:
	smull r0, sb, sl, r7
	mov r0, r7, lsr #0x1f
	add sb, r0, sb, asr #7
	mov r8, #0x190
	smull sb, fp, r8, sb
	subs sb, r7, sb
	addeq r2, r2, #0x1d
	beq _02016530
	smull r8, sb, sl, r7
	add sb, r0, sb, asr #5
	mov r8, #0x64
	smull sb, fp, r8, sb
	subs sb, r7, sb
	addeq r2, r2, #0x1c
	beq _02016530
	rsb r8, r0, r7, lsl #30
	adds r0, r0, r8, ror #30
	addeq r2, r2, #0x1d
	addne r2, r2, #0x1c
_02016530:
	add r4, r4, #1
	cmp r5, #0xc
	addeq r7, r7, #1
	cmp r4, r1
	blt _02016474
_02016544:
	mov r0, #0x18
	mla r4, r2, r0, r3
	ldr r0, [sp, #8]
	add r3, r0, #0x8000
	ldr r2, [r3, #0x7d4]
	add r1, r0, #0x3d8
	add r0, r2, r4
	str r0, [r3, #0x7d4]
	ldr r0, [sp, #8]
	ldrb r4, [r3, #0x7d8]
	add r2, r0, #0xd9
	add r0, r1, #0x8400
	add r1, r4, ip
	strb r1, [r3, #0x7d8]
	ldrb r1, [r3, #0x7d9]
	add r4, r2, #0x8700
	add r2, r1, lr
	and r1, r2, #0xff
	strb r2, [r3, #0x7d9]
	cmp r1, #0x3c
	blo _020165BC
_02016598:
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r4]
	sub r1, r1, #0x3c
	strb r1, [r4]
	ldrb r1, [r3, #0x7d9]
	cmp r1, #0x3c
	bhs _02016598
_020165BC:
	ldr r0, [sp, #8]
	add r2, r0, #0x8000
	ldrb r0, [r2, #0x7d8]
	cmp r0, #0x3c
	blo _02016608
	ldr r0, [sp, #8]
	add r1, r0, #0x3d4
	add r0, r0, #0x3d8
	add r3, r1, #0x8400
	add r1, r0, #0x8400
_020165E4:
	ldr r0, [r3]
	add r0, r0, #1
	str r0, [r3]
	ldrb r0, [r1]
	sub r0, r0, #0x3c
	strb r0, [r1]
	ldrb r0, [r2, #0x7d8]
	cmp r0, #0x3c
	bhs _020165E4
_02016608:
	ldr r0, [sp, #8]
	add r0, r0, #0x8000
	ldr r1, [r0, #0x7d4]
	cmp r1, #0x64
	movhs r1, #1
	strcsb r1, [r0, #0x7da]
	ldr r0, [sp]
	ldr r2, [r0]
	ldr r0, [sp, #8]
	add r1, r0, #0x8000
	ldr r0, [sp]
	str r2, [r1, #0xb94]
	ldr r0, [r0, #4]
	str r0, [r1, #0xb98]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	str r0, [r1, #0xb9c]
	ldr r0, [sp, #4]
	ldr r0, [r0]
	str r0, [r1, #0xb84]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	str r0, [r1, #0xb88]
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	str r0, [r1, #0xb8c]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	str r0, [r1, #0xb90]
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02016684: .word 0x51EB851F
_02016688: .word 0xAAAAAAAB

	arm_func_start sub_0201668C
sub_0201668C: ; 0x0201668C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	add r0, sp, #0x10
	bl RTC_GetTime
	add r0, sp, #0
	bl RTC_GetDate
	add r1, sp, #0x10
	add r2, sp, #0
	mov r0, r5
	bl sub_0201630C
	add r0, r5, #0x8000
	ldr r3, [r0, #0x7d4]
	ldr r2, [r0, #0x7cc]
	ldrb r1, [r0, #0x7d8]
	ldrb r0, [r0, #0x7d0]
	sub r2, r3, r2
	cmp r2, #0
	sub r4, r1, r0
	movgt r0, #0x3c
	mlagt r4, r2, r0, r4
	bgt _02016704
	cmp r2, #0
	bge _02016704
	mvn r0, #0
	sub r1, r0, r3
	cmp r1, #2
	movlo r0, #0x3c
	mlalo r4, r1, r0, r4
	addhs r4, r4, #0x78
	arm_func_end sub_0201668C
_02016704:
	ldr r0, _02016780 ; =s_0208b67c
	bl LogInfo
	ldr r0, _02016784 ; =s_LotTimeCheck_0208b68c
	bl LogInfo
	add r0, r5, #0x8000
	ldrb r2, [r0, #0x7d8]
	ldr r1, [r0, #0x7d4]
	ldr r0, _02016788 ; =s_PlayTime_d_d_0208b69c
	bl LogInfo
	add r0, r5, #0x8000
	ldrb r2, [r0, #0x7d0]
	ldr r1, [r0, #0x7cc]
	ldr r0, _0201678C ; =s_LastTime_d_d_0208b6ac
	bl LogInfo
	ldr r0, _02016790 ; =s_DivTime_d_0208b6bc
	mov r1, r4
	bl LogInfo
	ldr r0, _02016780 ; =s_0208b67c
	bl LogInfo
	cmp r4, #0x1e
	addlt sp, sp, #0x1c
	ldmltia sp!, {r4, r5, pc}
	add r1, r5, #0x8000
	ldr r2, [r1, #0x7d4]
	mov r0, r5
	str r2, [r1, #0x7cc]
	ldrb r2, [r1, #0x7d8]
	strb r2, [r1, #0x7d0]
	bl sub_020167B4
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02016780: .word s_0208b67c
_02016784: .word s_LotTimeCheck_0208b68c
_02016788: .word s_PlayTime_d_d_0208b69c
_0201678C: .word s_LastTime_d_d_0208b6ac
_02016790: .word s_DivTime_d_0208b6bc

	arm_func_start LogInfo
LogInfo: ; 0x02016794
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	ldr r0, [sp, #8]
	add r1, sp, #0xc
	bl thunk_FUN_020442cc
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end LogInfo

	arm_func_start sub_020167B4
sub_020167B4: ; 0x020167B4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x8c
	mov sl, r0
	ldr r0, _02016BE4 ; =s_0208b6c8
	bl LogInfo
	ldr r0, _02016BE8 ; =s_LotGokigenParameter_0208b6e0
	bl LogInfo
	mov r2, #0
	mov r1, #1
	add r0, sp, #0x48
	arm_func_end sub_020167B4
_020167DC:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #0x11
	blt _020167DC
	ldr r7, _02016BEC ; =ptr_s_GONBE_0208b5d4_02084530
	add r6, sp, #4
	mov r4, #0x11
	mov r5, #4
_020167FC:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020167FC
	ldr r0, [r7]
	mov r7, #0
	str r0, [r6]
	mov sb, r7
	mov r1, #1
	add r5, sl, #0x8000
	mov r6, r7
	add fp, sp, #0x48
	add r8, sp, #4
_02016830:
	ldr r0, [r5, #0x7c8]
	tst r0, r1
	streq r6, [fp, sb, lsl #2]
	subeq r4, r4, #1
	beq _02016854
	ldr r1, [r8, sb, lsl #2]
	ldr r0, _02016BF0 ; =DAT_0208b6f8
	bl LogInfo
	add r7, r7, #1
_02016854:
	add sb, sb, #1
	mov r0, #1
	mov r1, r0, lsl sb
	cmp r1, #0x10000
	ble _02016830
	ldr r0, _02016BF4 ; =s_GetpartnerNum_d_0208b6fc
	mov r1, r7
	bl LogInfo
	mov r5, #0
	mov r6, r5
	cmp r7, #0
	bne _02016894
	ldr r0, _02016BF8 ; =s_0208b710
	bl LogInfo
	add sp, sp, #0x8c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02016894:
	cmp r7, #4
	bge _020168B0
	mov r0, #0xa
	mov r7, #1
	str r0, [sp]
	mov r8, #0x14
	b _020168DC
_020168B0:
	cmp r7, #0xa
	mov r8, #0xa
	bge _020168CC
	str r8, [sp]
	mov r7, #2
	mov r6, #1
	b _020168DC
_020168CC:
	mov r7, #5
	str r7, [sp]
	mov r5, #1
	mov r6, #2
_020168DC:
	mov fp, #0
_020168E0:
	cmp r5, #0
	ble _02016984
	ldr r1, _02016BFC ; =MAIN_BSS_0210CEC8
	mov r0, r4, lsl #0x10
	ldmia r1, {r3, sb, ip}
	movs r2, r0, lsr #0x10
	mla r0, sb, r3, ip
	str r0, [r1]
	mov r0, r0, lsr #0x10
	mulne r1, r0, r2
	movne r0, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r2, #0
	mov r3, r0, lsr #0x10
	mov sb, r2
	add r1, sp, #0x48
_02016920:
	ldr r0, [r1, sb, lsl #2]
	cmp r0, #1
	bne _0201696C
	cmp r2, r3
	bne _02016968
	add r1, sp, #4
	ldr r0, _02016C00 ; =s_SetVeryGood_s_0208b728
	ldr r1, [r1, sb, lsl #2]
	bl LogInfo
	add r0, sp, #0x48
	mov r1, #0
	add r2, sl, sb
	mov r3, #2
	strb r3, [r2, #9]
	str r1, [r0, sb, lsl #2]
	sub r4, r4, #1
	sub r5, r5, #1
	b _02016978
_02016968:
	add r2, r2, #1
_0201696C:
	add sb, sb, #1
	cmp sb, #0x11
	blt _02016920
_02016978:
	add fp, fp, #1
	cmp fp, #0x11
	blt _020168E0
_02016984:
	mov r5, #0
_02016988:
	cmp r6, #0
	ble _02016A2C
	ldr r1, _02016BFC ; =MAIN_BSS_0210CEC8
	mov r0, r4, lsl #0x10
	ldmia r1, {r3, sb, fp}
	movs r2, r0, lsr #0x10
	mla r0, sb, r3, fp
	str r0, [r1]
	mov r0, r0, lsr #0x10
	mulne r1, r0, r2
	movne r0, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r2, #0
	mov r3, r0, lsr #0x10
	mov sb, r2
	add r1, sp, #0x48
_020169C8:
	ldr r0, [r1, sb, lsl #2]
	cmp r0, #1
	bne _02016A14
	cmp r2, r3
	bne _02016A10
	add r1, sp, #4
	ldr r0, _02016C04 ; =s_SetGood_s_0208b738
	ldr r1, [r1, sb, lsl #2]
	bl LogInfo
	add r0, sp, #0x48
	mov r1, #0
	add r2, sl, sb
	mov r3, #1
	strb r3, [r2, #9]
	str r1, [r0, sb, lsl #2]
	sub r4, r4, #1
	sub r6, r6, #1
	b _02016A20
_02016A10:
	add r2, r2, #1
_02016A14:
	add sb, sb, #1
	cmp sb, #0x11
	blt _020169C8
_02016A20:
	add r5, r5, #1
	cmp r5, #0x11
	blt _02016988
_02016A2C:
	mov r5, #0
_02016A30:
	cmp r7, #0
	ble _02016AD0
	ldr r1, _02016BFC ; =MAIN_BSS_0210CEC8
	mov r0, r4, lsl #0x10
	ldmia r1, {r3, r6, sb}
	movs r2, r0, lsr #0x10
	mla r0, r6, r3, sb
	str r0, [r1]
	mov r0, r0, lsr #0x10
	mulne r1, r0, r2
	movne r0, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r2, #0
	mov r3, r0, lsr #0x10
	mov r6, r2
	add r1, sp, #0x48
_02016A70:
	ldr r0, [r1, r6, lsl #2]
	cmp r0, #1
	bne _02016AB8
	cmp r2, r3
	bne _02016AB4
	add r1, sp, #4
	ldr r0, _02016C08 ; =s_SetNormal_s_0208b744
	ldr r1, [r1, r6, lsl #2]
	bl LogInfo
	add r0, sp, #0x48
	mov r2, #0
	add r1, sl, r6
	strb r2, [r1, #9]
	str r2, [r0, r6, lsl #2]
	sub r4, r4, #1
	sub r7, r7, #1
	b _02016AC4
_02016AB4:
	add r2, r2, #1
_02016AB8:
	add r6, r6, #1
	cmp r6, #0x11
	blt _02016A70
_02016AC4:
	add r5, r5, #1
	cmp r5, #0x11
	blt _02016A30
_02016AD0:
	ldr r0, _02016C0C ; =s_Probability_d_0208b754
	ldr r1, [sp]
	bl LogInfo
	ldr r0, _02016C10 ; =s_Probability2_d_0208b764
	mov r1, r8
	bl LogInfo
	ldr r7, _02016BFC ; =MAIN_BSS_0210CEC8
	mov r6, #0
	add sb, sp, #4
	add r5, sp, #0x48
_02016AF8:
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	beq _02016BC8
	ldr r2, [r7]
	ldmib r7, {r0, r1}
	mla r2, r0, r2, r1
	mov fp, r2, lsr #0x10
	mov r3, #0x64
	mul r3, fp, r3
	mov r3, r3, lsr #0x10
	mov fp, r3, lsl #0x10
	ldr r3, [sp]
	str r2, [r7]
	cmp r3, fp, lsr #16
	ble _02016B5C
	ldr r0, _02016C00 ; =s_SetVeryGood_s_0208b728
	ldr r1, [sb, r6, lsl #2]
	bl LogInfo
	mov r0, #0
	str r0, [r5, r6, lsl #2]
	add r1, sl, r6
	mov r0, #2
	strb r0, [r1, #9]
	sub r4, r4, #1
	b _02016BC8
_02016B5C:
	mla r1, r0, r2, r1
	str r1, [r7]
	mov r1, r1, lsr #0x10
	mov r0, #0x64
	mul r0, r1, r0
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	cmp r8, r0, lsr #16
	ble _02016BA8
	ldr r0, _02016C04 ; =s_SetGood_s_0208b738
	ldr r1, [sb, r6, lsl #2]
	bl LogInfo
	mov r0, #0
	str r0, [r5, r6, lsl #2]
	add r1, sl, r6
	mov r0, #1
	strb r0, [r1, #9]
	sub r4, r4, #1
	b _02016BC8
_02016BA8:
	ldr r0, _02016C08 ; =s_SetNormal_s_0208b744
	ldr r1, [sb, r6, lsl #2]
	bl LogInfo
	mov r0, #0
	add r1, sl, r6
	str r0, [r5, r6, lsl #2]
	strb r0, [r1, #9]
	sub r4, r4, #1
_02016BC8:
	add r6, r6, #1
	cmp r6, #0x11
	blt _02016AF8
	ldr r0, _02016BF8 ; =s_0208b710
	bl LogInfo
	add sp, sp, #0x8c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02016BE4: .word s_0208b6c8
_02016BE8: .word s_LotGokigenParameter_0208b6e0
_02016BEC: .word ptr_s_GONBE_0208b5d4_02084530
_02016BF0: .word DAT_0208b6f8
_02016BF4: .word s_GetpartnerNum_d_0208b6fc
_02016BF8: .word s_0208b710
_02016BFC: .word MAIN_BSS_0210CEC8
_02016C00: .word s_SetVeryGood_s_0208b728
_02016C04: .word s_SetGood_s_0208b738
_02016C08: .word s_SetNormal_s_0208b744
_02016C0C: .word s_Probability_d_0208b754
_02016C10: .word s_Probability2_d_0208b764

	arm_func_start sub_02016C14
sub_02016C14: ; 0x02016C14
	cmp r1, #0x1a
	movge r0, #0
	bxge lr
	add r0, r0, r1, asr #2
	add r0, r0, #0x8000
	ldrb r2, [r0, #0x7dc]
	mov r0, r1, lsl #0x1e
	mov r0, r0, lsr #0x1d
	mov r0, r2, asr r0
	and r0, r0, #3
	bx lr
	arm_func_end sub_02016C14

	arm_func_start sub_02016C40
sub_02016C40: ; 0x02016C40
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	cmp r1, #0x1a
	ldmgeia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	ldmltia sp!, {r3, r4, r5, pc}
	cmp r4, #4
	ldmgeia sp!, {r3, r4, r5, pc}
	add r0, r5, #0x3dc
	mov r2, r1, lsl #0x1e
	add r3, r0, #0x8400
	mov ip, r2, lsr #0x1d
	mov r0, #3
	ldrb r2, [r3, r1, asr #2]
	mvn r0, r0, lsl ip
	and r0, r2, r0
	and r0, r0, #0xff
	orr r0, r0, r4, lsl ip
	strb r0, [r3, r1, asr #2]
	cmp r1, #0x15
	ldmneia sp!, {r3, r4, r5, pc}
	bl sub_0201001C
	cmp r0, #0
	moveq r0, #0
	beq _02016CC0
	bl sub_0201001C
	add r1, r5, #0x8000
	add r0, r0, #0x1000
	ldrb r1, [r1, #0x7db]
	ldr r0, [r0, #0x438]
	bl sub_02010E78
	arm_func_end sub_02016C40
_02016CC0:
	strb r0, [r5, #2]
	cmp r4, #1
	bne _02016CDC
	ldrb r0, [r5, #2]
	add r0, r0, #5
	strb r0, [r5, #2]
	ldmia sp!, {r3, r4, r5, pc}
_02016CDC:
	cmp r4, #2
	ldrgeb r0, [r5, #2]
	addge r0, r0, #0xf
	strgeb r0, [r5, #2]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02016CF0
sub_02016CF0: ; 0x02016CF0
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov ip, r1
	cmp ip, #0x1a
	mov lr, r0
	addge sp, sp, #0x10
	movge r0, #0
	ldmgeia sp!, {r4, pc}
	ldr r0, _02016D48 ; =u_02084520
	add lr, lr, ip, asr #2
	add r4, sp, #0
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, lr, #0x8000
	ldrb r1, [r0, #0x7dc]
	mov ip, ip, lsl #0x1e
	mov r0, ip, lsr #0x1d
	mov r0, r1, asr r0
	and r0, r0, #3
	ldr r0, [r4, r0, lsl #2]
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_02016D48: .word u_02084520
	arm_func_end sub_02016CF0

	arm_func_start sub_02016D4C
sub_02016D4C: ; 0x02016D4C
	ldr r2, _02016D60 ; =0x0098967F
	str r1, [r0, #0x2c]
	cmp r1, r2
	strhi r2, [r0, #0x2c]
	bx lr
	.align 2, 0
_02016D60: .word 0x0098967F
	arm_func_end sub_02016D4C

	arm_func_start sub_02016D64
sub_02016D64: ; 0x02016D64
	ldr r3, [r0, #0x2c]
	ldr r2, _02016D84 ; =0x0098967F
	add r1, r3, r1
	str r1, [r0, #0x2c]
	cmp r1, r2
	strhi r2, [r0, #0x2c]
	ldr r0, [r0, #0x2c]
	bx lr
	.align 2, 0
_02016D84: .word 0x0098967F
	arm_func_end sub_02016D64

	arm_func_start sub_02016D88
sub_02016D88: ; 0x02016D88
	ldr r2, _02016DA0 ; =0x0098967F
	add r0, r0, #0x8000
	str r1, [r0, #0x758]
	cmp r1, r2
	strhi r2, [r0, #0x758]
	bx lr
	.align 2, 0
_02016DA0: .word 0x0098967F
	arm_func_end sub_02016D88

	arm_func_start sub_02016DA4
sub_02016DA4: ; 0x02016DA4
	add r2, r0, #0x8000
	ldr ip, [r2, #0x758]
	ldr r3, _02016DCC ; =0x0098967F
	add r1, ip, r1
	str r1, [r2, #0x758]
	cmp r1, r3
	strhi r3, [r2, #0x758]
	add r0, r0, #0x8000
	ldr r0, [r0, #0x758]
	bx lr
	.align 2, 0
_02016DCC: .word 0x0098967F
	arm_func_end sub_02016DA4

	arm_func_start sub_02016DD0
sub_02016DD0: ; 0x02016DD0
	ldr r2, _02016DE8 ; =0x0001869F
	add r0, r0, #0x8000
	str r1, [r0, #0x75c]
	cmp r1, r2
	strhi r2, [r0, #0x75c]
	bx lr
	.align 2, 0
_02016DE8: .word 0x0001869F
	arm_func_end sub_02016DD0

	arm_func_start sub_02016DEC
sub_02016DEC: ; 0x02016DEC
	add r2, r0, #0x8000
	ldr ip, [r2, #0x75c]
	ldr r3, _02016E14 ; =0x0001869F
	add r1, ip, r1
	str r1, [r2, #0x75c]
	cmp r1, r3
	strhi r3, [r2, #0x75c]
	add r0, r0, #0x8000
	ldr r0, [r0, #0x75c]
	bx lr
	.align 2, 0
_02016E14: .word 0x0001869F
	arm_func_end sub_02016DEC

	arm_func_start sub_02016E18
sub_02016E18: ; 0x02016E18
	ldr r2, _02016E30 ; =0x0001869F
	add r0, r0, #0x8000
	str r1, [r0, #0x760]
	cmp r1, r2
	strhi r2, [r0, #0x760]
	bx lr
	.align 2, 0
_02016E30: .word 0x0001869F
	arm_func_end sub_02016E18

	arm_func_start sub_02016E34
sub_02016E34: ; 0x02016E34
	add r2, r0, #0x8000
	ldr ip, [r2, #0x760]
	ldr r3, _02016E5C ; =0x0001869F
	add r1, ip, r1
	str r1, [r2, #0x760]
	cmp r1, r3
	strhi r3, [r2, #0x760]
	add r0, r0, #0x8000
	ldr r0, [r0, #0x760]
	bx lr
	.align 2, 0
_02016E5C: .word 0x0001869F
	arm_func_end sub_02016E34

	arm_func_start sub_02016E60
sub_02016E60: ; 0x02016E60
	ldr r2, _02016E78 ; =0x0001869F
	add r0, r0, #0x8000
	str r1, [r0, #0x764]
	cmp r1, r2
	strhi r2, [r0, #0x764]
	bx lr
	.align 2, 0
_02016E78: .word 0x0001869F
	arm_func_end sub_02016E60

	arm_func_start sub_02016E7C
sub_02016E7C: ; 0x02016E7C
	add r2, r0, #0x8000
	ldr ip, [r2, #0x764]
	ldr r3, _02016EA4 ; =0x0001869F
	add r1, ip, r1
	str r1, [r2, #0x764]
	cmp r1, r3
	strhi r3, [r2, #0x764]
	add r0, r0, #0x8000
	ldr r0, [r0, #0x764]
	bx lr
	.align 2, 0
_02016EA4: .word 0x0001869F
	arm_func_end sub_02016E7C

	arm_func_start sub_02016EA8
sub_02016EA8: ; 0x02016EA8
	ldr r2, _02016EC0 ; =0x0001869F
	add r0, r0, #0x8000
	str r1, [r0, #0x768]
	cmp r1, r2
	strhi r2, [r0, #0x768]
	bx lr
	.align 2, 0
_02016EC0: .word 0x0001869F
	arm_func_end sub_02016EA8

	arm_func_start sub_02016EC4
sub_02016EC4: ; 0x02016EC4
	add r2, r0, #0x8000
	ldr ip, [r2, #0x768]
	ldr r3, _02016EEC ; =0x0001869F
	add r1, ip, r1
	str r1, [r2, #0x768]
	cmp r1, r3
	strhi r3, [r2, #0x768]
	add r0, r0, #0x8000
	ldr r0, [r0, #0x768]
	bx lr
	.align 2, 0
_02016EEC: .word 0x0001869F
	arm_func_end sub_02016EC4

	arm_func_start sub_02016EF0
sub_02016EF0: ; 0x02016EF0
	cmp r1, #0x11
	bxge lr
	add r0, r0, r1, lsl #2
	add r0, r0, #0x8000
	ldr r1, _02016F14 ; =0x0098967F
	str r2, [r0, #0x76c]
	cmp r2, r1
	strhi r1, [r0, #0x76c]
	bx lr
	.align 2, 0
	arm_func_end sub_02016EF0
_02016F14: .word 0x0098967F

	arm_func_start sub_02016F18
sub_02016F18: ; 0x02016F18
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r0, r1
	mov r5, r2
	bl sub_02035088
	cmp r0, #0x11
	bge _02016F70
	add r1, r4, #0x36c
	add r3, r1, #0x8400
	ldr r2, [r3, r0, lsl #2]
	add r1, r4, r0, lsl #2
	add r2, r2, r5
	str r2, [r3, r0, lsl #2]
	add r1, r1, #0x8000
	add r0, r4, r0, lsl #2
	ldr r3, [r1, #0x76c]
	ldr r2, _02016F78 ; =0x0098967F
	add r0, r0, #0x8000
	cmp r3, r2
	strhi r2, [r1, #0x76c]
	ldr r0, [r0, #0x76c]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02016F18
_02016F70:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02016F78: .word 0x0098967F

	arm_func_start sub_02016F7C
sub_02016F7C: ; 0x02016F7C
	stmdb sp!, {r3, r4, r5, lr}
	mvn r2, #0
	mov r3, #0
	add r4, r0, #0x8000
	mov r1, #1
	arm_func_end sub_02016F7C
_02016F90:
	cmp r2, #0
	bge _02016FBC
	ldr r5, [r4, #0x7c8]
	tst r5, r1, lsl r3
	beq _02016FDC
	add r5, r0, r3, lsl #2
	add ip, r5, #0x8000
	ldr r5, [ip, #0x76c]
	cmp r5, #0
	movne r2, r3
	b _02016FDC
_02016FBC:
	add r5, r0, r2, lsl #2
	add lr, r0, r3, lsl #2
	add ip, r5, #0x8000
	add lr, lr, #0x8000
	ldr r5, [ip, #0x76c]
	ldr ip, [lr, #0x76c]
	cmp r5, ip
	movlo r2, r3
_02016FDC:
	add r3, r3, #1
	cmp r3, #0x11
	blt _02016F90
	cmp r2, #0
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	mov r0, r2
	bl sub_02035240
	mov r4, r0
	bl sub_0201001C
	add r0, r0, #0x1000
	mov r1, r4, lsl #0x10
	ldr r0, [r0, #0x434]
	mov r1, r1, lsr #0x10
	bl sub_020107A8
	ldrh r0, [r0]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02017020
sub_02017020: ; 0x02017020
	ldr r2, _02017038 ; =0x00DDF220
	add r0, r0, #0x8000
	str r1, [r0, #0x7b0]
	cmp r1, r2
	strhi r2, [r0, #0x7b0]
	bx lr
	.align 2, 0
_02017038: .word 0x00DDF220
	arm_func_end sub_02017020

	arm_func_start sub_0201703C
sub_0201703C: ; 0x0201703C
	add r2, r0, #0x8000
	ldr ip, [r2, #0x7b0]
	ldr r3, _02017064 ; =0x00DDF220
	add r1, ip, r1
	str r1, [r2, #0x7b0]
	cmp r1, r3
	strhi r3, [r2, #0x7b0]
	add r0, r0, #0x8000
	ldr r0, [r0, #0x7b0]
	bx lr
	.align 2, 0
_02017064: .word 0x00DDF220
	arm_func_end sub_0201703C

	arm_func_start sub_02017068
sub_02017068: ; 0x02017068
	ldr r2, _02017080 ; =0x000F423F
	add r0, r0, #0x8000
	str r1, [r0, #0x7b4]
	cmp r1, r2
	strhi r2, [r0, #0x7b4]
	bx lr
	.align 2, 0
_02017080: .word 0x000F423F
	arm_func_end sub_02017068

	arm_func_start sub_02017084
sub_02017084: ; 0x02017084
	add r2, r0, #0x8000
	ldr ip, [r2, #0x7b4]
	ldr r3, _020170AC ; =0x000F423F
	add r1, ip, r1
	str r1, [r2, #0x7b4]
	cmp r1, r3
	strhi r3, [r2, #0x7b4]
	add r0, r0, #0x8000
	ldr r0, [r0, #0x7b4]
	bx lr
	.align 2, 0
_020170AC: .word 0x000F423F
	arm_func_end sub_02017084

	arm_func_start sub_020170B0
sub_020170B0: ; 0x020170B0
	add r0, r0, #0x8700
	strh r1, [r0, #0xb8]
	ldrh r2, [r0, #0xb8]
	ldr r1, _020170CC ; =0x0000270F
	cmp r2, r1
	strhih r1, [r0, #0xb8]
	bx lr
	.align 2, 0
_020170CC: .word 0x0000270F
	arm_func_end sub_020170B0

	arm_func_start sub_020170D0
sub_020170D0: ; 0x020170D0
	add r2, r0, #0x8700
	ldrh ip, [r2, #0xb8]
	ldr r3, _020170FC ; =0x0000270F
	add r0, r0, #0x8700
	add r1, ip, r1
	strh r1, [r2, #0xb8]
	ldrh r1, [r2, #0xb8]
	cmp r1, r3
	strhih r3, [r2, #0xb8]
	ldrh r0, [r0, #0xb8]
	bx lr
	.align 2, 0
_020170FC: .word 0x0000270F
	arm_func_end sub_020170D0

	arm_func_start sub_02017100
sub_02017100: ; 0x02017100
	add r0, r0, #0x8700
	strh r1, [r0, #0xba]
	ldrh r2, [r0, #0xba]
	ldr r1, _0201711C ; =0x0000270F
	cmp r2, r1
	strhih r1, [r0, #0xba]
	bx lr
	.align 2, 0
_0201711C: .word 0x0000270F
	arm_func_end sub_02017100

	arm_func_start sub_02017120
sub_02017120: ; 0x02017120
	add r2, r0, #0x8700
	ldrh ip, [r2, #0xba]
	ldr r3, _0201714C ; =0x0000270F
	add r0, r0, #0x8700
	add r1, ip, r1
	strh r1, [r2, #0xba]
	ldrh r1, [r2, #0xba]
	cmp r1, r3
	strhih r3, [r2, #0xba]
	ldrh r0, [r0, #0xba]
	bx lr
	.align 2, 0
_0201714C: .word 0x0000270F
	arm_func_end sub_02017120

	arm_func_start sub_02017150
sub_02017150: ; 0x02017150
	add r0, r0, #0x8700
	strh r1, [r0, #0xbc]
	ldrh r2, [r0, #0xbc]
	ldr r1, _0201716C ; =0x0000270F
	cmp r2, r1
	strhih r1, [r0, #0xbc]
	bx lr
	.align 2, 0
_0201716C: .word 0x0000270F
	arm_func_end sub_02017150

	arm_func_start sub_02017170
sub_02017170: ; 0x02017170
	add r2, r0, #0x8700
	ldrh ip, [r2, #0xbc]
	ldr r3, _0201719C ; =0x0000270F
	add r0, r0, #0x8700
	add r1, ip, r1
	strh r1, [r2, #0xbc]
	ldrh r1, [r2, #0xbc]
	cmp r1, r3
	strhih r3, [r2, #0xbc]
	ldrh r0, [r0, #0xbc]
	bx lr
	.align 2, 0
_0201719C: .word 0x0000270F
	arm_func_end sub_02017170

	arm_func_start sub_020171A0
sub_020171A0: ; 0x020171A0
	stmdb sp!, {r3, lr}
	ldr r0, _020171B4 ; =MAIN_BSS_020B2638
	bl sub_02011678
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	.align 2, 0
_020171B4: .word MAIN_BSS_020B2638
	arm_func_end sub_020171A0

	arm_func_start sub_020171B8
sub_020171B8: ; 0x020171B8
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x1e4
	add r6, r0, #0x8800
	mov r5, #0
	arm_func_end sub_020171B8
_020171CC:
	mov r0, r6
	bl sub_020150B8
	add r5, r5, #1
	cmp r5, #0xa
	add r6, r6, #0x18
	blt _020171CC
	mov r2, r4
	mov r1, #0
_020171EC:
	add r0, r2, #0x8000
	ldr r0, [r0, #0x80c]
	tst r0, #1
	beq _02017284
	tst r0, #2
	beq _02017284
	mov r0, #0x18
	mul r2, r1, r0
	add r0, r4, #4
	add r1, r0, #0x8800
	ldrh r3, [r1, r2]
	add r0, r4, #0x1e4
	add ip, r0, #0x8800
	strh r3, [ip, r2]
	add r1, r1, r2
	add r0, ip, r2
	ldrh ip, [r1, #2]
	add r3, r4, #0x1ec
	mov r4, #0
	strh ip, [r0, #2]
	ldrh ip, [r1, #4]
	add r3, r3, #0x8800
	strh ip, [r0, #4]
	ldr ip, [r1, #8]
	str ip, [r0, #8]
	ldr lr, [r1, #0xc]
	ldr ip, [r1, #0x10]
	str lr, [r0, #0xc]
	str ip, [r0, #0x10]
	ldrh ip, [r1, #0x14]
	strh ip, [r0, #0x14]
	ldrh ip, [r1, #0x16]
	strh ip, [r0, #0x16]
	str r4, [r3, r2]
	ldr r0, [r1, #8]
	orr r0, r0, #0
	str r0, [r3, r2]
	ldmia sp!, {r4, r5, r6, pc}
_02017284:
	add r1, r1, #1
	cmp r1, #0xa
	add r2, r2, #0x18
	blt _020171EC
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02017298
sub_02017298: ; 0x02017298
	ldr r1, _020172B4 ; =DAT_0208b5c0
	ldr r0, _020172B8 ; =0x1F2E3D4C
	ldr r1, [r1]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_020172B4: .word DAT_0208b5c0
_020172B8: .word 0x1F2E3D4C
	arm_func_end sub_02017298

	arm_func_start sub_020172BC
sub_020172BC: ; 0x020172BC
	ldr r1, _020172CC ; =0x1F2E3D4C
	ldr r0, _020172D0 ; =DAT_0208b5c0
	str r1, [r0]
	bx lr
	.align 2, 0
_020172CC: .word 0x1F2E3D4C
_020172D0: .word DAT_0208b5c0
	arm_func_end sub_020172BC

	arm_func_start sub_020172D4
sub_020172D4: ; 0x020172D4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldrb r1, [sl, #1]
	add r3, sl, #0x8000
	add r0, sl, #0x3dc
	strb r1, [r3, #0xbc4]
	ldrb r2, [sl, #2]
	add r1, sl, #0xc7
	add r0, r0, #0x8400
	strb r2, [r3, #0xbc5]
	ldrb r4, [r3, #0x7db]
	add r1, r1, #0x8b00
	mov r2, #7
	strb r4, [r3, #0xbc6]
	bl MI_CpuCopy8
	add r0, sl, #4
	mov r1, #0
	add r3, r0, #0x8800
	mov r4, sl
	mov r0, r1
	arm_func_end sub_020172D4
_02017324:
	mov r2, r0
	mov r5, r3
	mov r6, r4
_02017330:
	ldrh sb, [r5]
	add r8, r6, #0x8b00
	add r7, r6, #0x8000
	strh sb, [r8, #0xd0]
	ldrh sb, [r5, #2]
	add r2, r2, #1
	cmp r2, #0xa
	strh sb, [r8, #0xd2]
	ldrh sb, [r5, #4]
	add r6, r6, #0x18
	strh sb, [r8, #0xd4]
	ldr sb, [r5, #8]
	str sb, [r7, #0xbd8]
	ldr fp, [r5, #0xc]
	ldr sb, [r5, #0x10]
	str fp, [r7, #0xbdc]
	str sb, [r7, #0xbe0]
	ldrh r7, [r5, #0x14]
	strh r7, [r8, #0xe4]
	ldrh r7, [r5, #0x16]
	add r5, r5, #0x18
	strh r7, [r8, #0xe6]
	blt _02017330
	add r1, r1, #1
	cmp r1, #3
	add r3, r3, #0xf0
	add r4, r4, #0xf0
	blt _02017324
	add r0, sl, #0x2d4
	add r1, r0, #0x8800
	mov r2, sl
	mov r0, #0
_020173B0:
	ldr r3, [r1]
	add r4, r2, #0x8000
	str r3, [r4, #0xea0]
	ldr r3, [r1, #4]
	add r5, r2, #0x2b4
	str r3, [r4, #0xea4]
	ldrh r6, [r1, #8]
	add r3, r2, #0x8e00
	add r7, r1, #0x14
	strh r6, [r3, #0xa8]
	ldrh r8, [r1, #0xa]
	add r6, r5, #0x8c00
	mov r5, #0x10
	strh r8, [r3, #0xaa]
	ldr r8, [r1, #0xc]
	ldr r3, [r1, #0x10]
	str r8, [r4, #0xeac]
	str r3, [r4, #0xeb0]
_020173F8:
	ldrb r4, [r7]
	ldrb r3, [r7, #1]
	add r7, r7, #2
	subs r5, r5, #1
	strb r4, [r6]
	strb r3, [r6, #1]
	add r6, r6, #2
	bne _020173F8
	ldrh r4, [r1, #0x34]
	add r3, r2, #0x8e00
	add r0, r0, #1
	strh r4, [r3, #0xd4]
	cmp r0, #2
	add r1, r1, #0x38
	add r2, r2, #0x38
	blt _020173B0
	ldr r1, [sl, #4]
	add r0, sl, #0x8000
	str r1, [r0, #0xf10]
	ldrb r1, [sl, #8]
	mov r2, #0
	strb r1, [r0, #0xf14]
_02017450:
	add r0, sl, r2
	ldrb r1, [r0, #9]
	add r0, r0, #0x8000
	add r2, r2, #1
	strb r1, [r0, #0xf15]
	cmp r2, #0x11
	blt _02017450
	mov r0, sl
	mov r1, #1
	bl sub_020160B8
	ldrb r3, [sl, #2]
	add r0, sl, #0x3dc
	add r0, r0, #0x8400
	mov r1, #0
	mov r2, #7
	strb r3, [sl, #1]
	bl MI_CpuFill8
	add r0, sl, #4
	mov r4, #0
	mov r6, sl
	add r7, r0, #0x8800
	mov fp, r4
_020174A8:
	mov r5, fp
	mov r8, r6
	mov sb, r7
_020174B4:
	add r0, r8, #0x8000
	ldr r0, [r0, #0x80c]
	tst r0, #1
	beq _020174CC
	tst r0, #2
	bne _020174D4
_020174CC:
	mov r0, sb
	bl sub_020150B8
_020174D4:
	add r5, r5, #1
	cmp r5, #0xa
	add r8, r8, #0x18
	add sb, sb, #0x18
	blt _020174B4
	add r4, r4, #1
	cmp r4, #3
	add r6, r6, #0xf0
	add r7, r7, #0xf0
	blt _020174A8
	mov r2, #0
	str r2, [sl, #4]
	mov r1, r2
_02017508:
	add r0, sl, r2
	add r2, r2, #1
	strb r1, [r0, #9]
	cmp r2, #0x11
	blt _02017508
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start sub_02017520
sub_02017520: ; 0x02017520
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	add r3, r4, #0x8000
	ldrb r2, [r3, #0xbc4]
	add r0, r4, #0xc7
	add r1, r4, #0x3dc
	strb r2, [r4, #1]
	ldrb r2, [r3, #0xbc5]
	add r0, r0, #0x8b00
	add r1, r1, #0x8400
	strb r2, [r4, #2]
	ldrb r5, [r3, #0xbc6]
	mov r2, #7
	strb r5, [r3, #0x7db]
	bl MI_CpuCopy8
	add r0, r4, #4
	mov r1, #0
	add ip, r0, #0x8800
	mov r3, r4
	mov r0, r1
	arm_func_end sub_02017520
_02017570:
	mov r2, r0
	mov lr, r3
	mov r5, ip
_0201757C:
	add r7, lr, #0x8b00
	ldrh r8, [r7, #0xd0]
	add r6, lr, #0x8000
	add r2, r2, #1
	strh r8, [r5]
	ldrh r8, [r7, #0xd2]
	cmp r2, #0xa
	add lr, lr, #0x18
	strh r8, [r5, #2]
	ldrh r8, [r7, #0xd4]
	strh r8, [r5, #4]
	ldr r8, [r6, #0xbd8]
	str r8, [r5, #8]
	ldr r8, [r6, #0xbdc]
	ldr r6, [r6, #0xbe0]
	str r8, [r5, #0xc]
	str r6, [r5, #0x10]
	ldrh r6, [r7, #0xe4]
	strh r6, [r5, #0x14]
	ldrh r6, [r7, #0xe6]
	strh r6, [r5, #0x16]
	add r5, r5, #0x18
	blt _0201757C
	add r1, r1, #1
	cmp r1, #3
	add r3, r3, #0xf0
	add ip, ip, #0xf0
	blt _02017570
	add r0, r4, #0x2d4
	add r2, r0, #0x8800
	mov r1, r4
	mov r0, #0
_020175FC:
	add r5, r1, #0x8000
	ldr r3, [r5, #0xea0]
	add ip, r1, #0x2b4
	str r3, [r2]
	ldr r6, [r5, #0xea4]
	add r3, r1, #0x8e00
	str r6, [r2, #4]
	ldrh r6, [r3, #0xa8]
	add ip, ip, #0x8c00
	add r7, r2, #0x14
	strh r6, [r2, #8]
	ldrh r3, [r3, #0xaa]
	mov r6, #0x10
	strh r3, [r2, #0xa]
	ldr lr, [r5, #0xeac]
	ldr r3, [r5, #0xeb0]
	str lr, [r2, #0xc]
	str r3, [r2, #0x10]
_02017644:
	ldrb r5, [ip]
	ldrb r3, [ip, #1]
	add ip, ip, #2
	subs r6, r6, #1
	strb r5, [r7]
	strb r3, [r7, #1]
	add r7, r7, #2
	bne _02017644
	add r3, r1, #0x8e00
	ldrh r3, [r3, #0xd4]
	add r0, r0, #1
	cmp r0, #2
	strh r3, [r2, #0x34]
	add r1, r1, #0x38
	add r2, r2, #0x38
	blt _020175FC
	add r0, r4, #0x8000
	ldr r1, [r0, #0xf10]
	mov r2, #0
	str r1, [r4, #4]
	ldrb r0, [r0, #0xf14]
	strb r0, [r4, #8]
_0201769C:
	add r1, r4, r2
	add r0, r1, #0x8000
	ldrb r0, [r0, #0xf15]
	add r2, r2, #1
	cmp r2, #0x11
	strb r0, [r1, #9]
	blt _0201769C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start sub_020176BC
sub_020176BC: ; 0x020176BC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	cmp r1, #0
	bge _020176F4
	ldrb r0, [r4, #3]
	mov r0, r0, asr #4
	and r0, r0, #0xf
	tst r0, #0xff
	ldrb r0, [r4]
	moveq r1, #1
	movne r1, #3
	and r0, r0, #1
	add r1, r0, r1
	arm_func_end sub_020176BC
_020176F4:
	mov r2, #0
	mov r3, #1
	stmia sp, {r2, r3}
	add r0, r4, #0x328
	mov r1, r1, lsl #0x10
	add r0, r0, #0x8c00
	mov r1, r1, lsr #0x10
	sub r3, r3, #0xe0000003
	str r2, [sp, #8]
	bl sub_02041344
	add r0, r4, #0x328
	add r0, r0, #0x8c00
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}

	arm_func_start sub_0201772C
sub_0201772C: ; 0x0201772C
	stmdb sp!, {r3, lr}
	add r0, r0, #0x328
	add r0, r0, #0x8c00
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201772C

	arm_func_start sub_02017748
sub_02017748: ; 0x02017748
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, _02017844 ; =0x0005977E
	mov r6, r1
	mov r5, r2
	mov r4, r3
	mov r8, r7
	mov r1, #0
	sub r2, r0, #2
	arm_func_end sub_02017748
_02017770:
	add r3, r8, #0x59000
	ldr r3, [r3, #0x794]
	cmp r3, #0
	beq _020177AC
	ldrh r3, [r8, r2]
	cmp r6, r3
	ldreqh r3, [r8, r0]
	cmpeq r5, r3
	bne _020177AC
	add r0, r7, #0x760
	add r2, r0, #0x59000
	mov r0, #0x38
	add sp, sp, #4
	mla r0, r1, r0, r2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020177AC:
	add r1, r1, #1
	cmp r1, #2
	add r8, r8, #0x38
	blt _02017770
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _020177DC
	mov r0, r7
	bl sub_02017E5C
	add r0, r7, #0x59000
	mov r1, #1
	str r1, [r0, #0xa00]
_020177DC:
	mov r2, r7
	mov r1, #0
_020177E4:
	add r0, r2, #0x59000
	ldr r0, [r0, #0x794]
	cmp r0, #0
	bne _02017828
	mov r0, #0x38
	mul r8, r1, r0
	add r0, r7, #0x760
	add r7, r0, #0x59000
	mov r2, r6
	mov r3, r5
	add r0, r7, r8
	mov r1, #1
	str r4, [sp]
	bl sub_02041230
	add sp, sp, #4
	add r0, r7, r8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02017828:
	add r1, r1, #1
	cmp r1, #2
	add r2, r2, #0x38
	blt _020177E4
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02017844: .word 0x0005977E

	arm_func_start sub_02017848
sub_02017848: ; 0x02017848
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, _02017944 ; =0x000597EE
	mov r6, r1
	mov r5, r2
	mov r4, r3
	mov r8, r7
	mov r1, #0
	sub r2, r0, #2
	arm_func_end sub_02017848
_02017870:
	add r3, r8, #0x59000
	ldr r3, [r3, #0x804]
	cmp r3, #0
	beq _020178AC
	ldrh r3, [r8, r2]
	cmp r6, r3
	ldreqh r3, [r8, r0]
	cmpeq r5, r3
	bne _020178AC
	add r0, r7, #0x7d0
	add r2, r0, #0x59000
	mov r0, #0x38
	add sp, sp, #4
	mla r0, r1, r0, r2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020178AC:
	add r1, r1, #1
	cmp r1, #0xa
	add r8, r8, #0x38
	blt _02017870
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _020178DC
	mov r0, r7
	bl sub_02017F78
	add r0, r7, #0x59000
	mov r1, #1
	str r1, [r0, #0xa00]
_020178DC:
	mov r2, r7
	mov r1, #0
_020178E4:
	add r0, r2, #0x59000
	ldr r0, [r0, #0x804]
	cmp r0, #0
	bne _02017928
	mov r0, #0x38
	mul r8, r1, r0
	add r0, r7, #0x7d0
	add r7, r0, #0x59000
	mov r2, r6
	mov r3, r5
	add r0, r7, r8
	mov r1, #0
	str r4, [sp]
	bl sub_02041230
	add sp, sp, #4
	add r0, r7, r8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02017928:
	add r1, r1, #1
	cmp r1, #0xa
	add r2, r2, #0x38
	blt _020178E4
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02017944: .word 0x000597EE

	arm_func_start sub_02017948
sub_02017948: ; 0x02017948
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	add r0, sl, #0x8000
	ldrb r0, [r0, #0xb64]
	mov r4, #0
	str r1, [sp, #4]
	mov r5, r4
	cmp r0, #1
	beq _0201797C
	cmp r0, #5
	beq _02017988
	b _02017994
	arm_func_end sub_02017948
_0201797C:
	mov r0, #1
	str r0, [sp, #8]
	b _02017998
_02017988:
	mov r0, #2
	str r0, [sp, #8]
	b _02017998
_02017994:
	str r4, [sp, #8]
_02017998:
	ldr r0, [sp, #4]
	cmp r0, #0
	add r0, sl, #0x59000
	movne r1, #1
	strne r1, [r0, #0xa00]
	bne _020179CC
	ldr r1, [r0, #0xa00]
	cmp r1, #0
	beq _020179CC
	mov r1, #0
	str r1, [r0, #0xa00]
	mov r0, #1
	str r0, [sp, #4]
_020179CC:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02017ACC
	ldr r0, _02017E34 ; =MAIN_BSS_0210CA6C
	ldr sb, [r0]
	cmp sb, #0
	beq _02017ACC
	add r0, sl, #0x2d4
	mov r6, #0
	mov r7, r6
	add r8, r0, #0x8800
	mov fp, #1
_020179FC:
	cmp r7, #0
	blt _02017A10
	cmp r7, #2
	movlt r1, r8
	blt _02017A14
_02017A10:
	mov r1, #0
_02017A14:
	cmp r1, #0
	ldrne r0, [r1]
	cmpne r0, #0
	beq _02017A84
	ldrh r1, [r1, #8]
	mov r0, sb
	bl sub_02041D44
	orr r4, r4, fp, lsl r7
	ldr r1, _02017E38 ; =0x0005977C
	mov ip, #0
	mov lr, sl
_02017A40:
	add r2, lr, #0x59000
	ldr r2, [r2, #0x794]
	cmp r2, #0
	beq _02017A74
	ldrh r3, [r0]
	ldrh r2, [lr, r1]
	cmp r3, r2
	bne _02017A74
	mov r0, #1
	orr r6, r6, r0, lsl ip
	mvn r0, fp, lsl r7
	and r4, r4, r0
	b _02017A84
_02017A74:
	add lr, lr, #0x38
	add ip, ip, #1
	cmp ip, #2
	blt _02017A40
_02017A84:
	add r7, r7, #1
	cmp r7, #2
	add r8, r8, #0x38
	blt _020179FC
	mov r3, sl
	mov r2, #0
	mov r1, #1
_02017AA0:
	add r0, r3, #0x59000
	ldr r0, [r0, #0x794]
	cmp r0, #0
	beq _02017ABC
	tst r6, r1, lsl r2
	streq r1, [sp, #4]
	beq _02017ACC
_02017ABC:
	add r2, r2, #1
	cmp r2, #2
	add r3, r3, #0x38
	blt _02017AA0
_02017ACC:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02017BC8
	bl sub_0201001C
	movs r6, r0
	beq _02017BC8
	mov r7, #0
	mov r8, r7
_02017AEC:
	mov r0, sl
	mov r1, r8
	bl sub_020155FC
	cmp r0, #0
	beq _02017B84
	ldr r1, [r0, #8]
	tst r1, #1
	beq _02017B84
	add r2, r6, #0x1000
	ldrh r1, [r0]
	ldr r0, [r2, #0x434]
	bl sub_020107A8
	mov r1, #1
	ldr r3, _02017E3C ; =0x000597EE
	orr r5, r5, r1, lsl r8
	mov r1, #0
	mov r2, sl
	sub sb, r3, #2
_02017B34:
	add fp, r2, #0x59000
	ldr fp, [fp, #0x804]
	cmp fp, #0
	beq _02017B74
	ldrh ip, [r0]
	ldrh fp, [r2, sb]
	cmp ip, fp
	ldreqb ip, [r0, #2]
	ldreqh fp, [r2, r3]
	cmpeq ip, fp
	bne _02017B74
	mov r0, #1
	mvn r2, r0, lsl r8
	orr r7, r7, r0, lsl r1
	and r5, r5, r2
	b _02017B84
_02017B74:
	add r2, r2, #0x38
	add r1, r1, #1
	cmp r1, #0xa
	blt _02017B34
_02017B84:
	add r8, r8, #1
	cmp r8, #0xa
	blt _02017AEC
	mov r3, sl
	mov r2, #0
	mov r1, #1
_02017B9C:
	add r0, r3, #0x59000
	ldr r0, [r0, #0x804]
	cmp r0, #0
	beq _02017BB8
	tst r7, r1, lsl r2
	streq r1, [sp, #4]
	beq _02017BC8
_02017BB8:
	add r2, r2, #1
	cmp r2, #0xa
	add r3, r3, #0x38
	blt _02017B9C
_02017BC8:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02017D10
	mov r0, sl
	bl sub_02017E44
	ldr r0, _02017E34 ; =MAIN_BSS_0210CA6C
	ldr sb, [r0]
	cmp sb, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _02017C70
	mov r5, #0
	add r0, sl, #0x2d4
	ldr r7, _02017E40 ; =0x00001E16
	add r6, r0, #0x8800
	mov r4, r5
	mov r8, r5
_02017C14:
	cmp r5, #0
	blt _02017C28
	cmp r5, #2
	movlt r1, r6
	blt _02017C2C
_02017C28:
	mov r1, r4
_02017C2C:
	cmp r1, #0
	ldrne r0, [r1]
	cmpne r0, #0
	beq _02017C60
	ldrh r1, [r1, #8]
	mov r0, sb
	bl sub_02041D44
	str r8, [sp]
	ldrh r1, [r0]
	mov r0, sl
	mov r2, r8
	mov r3, r7
	bl sub_02017748
_02017C60:
	add r5, r5, #1
	cmp r5, #2
	add r6, r6, #0x38
	blt _02017C14
_02017C70:
	bl sub_0201001C
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r6, #0
	add r4, r0, #0x1000
	mov fp, #0xe
	mov r5, r6
_02017C90:
	mov r0, sl
	mov r1, r6
	bl sub_020155FC
	movs r7, r0
	beq _02017CFC
	ldr r0, [r7, #8]
	tst r0, #1
	beq _02017CFC
	ldrh r1, [r7]
	mov r0, sb
	bl sub_02041D58
	ldrh r0, [r0, #0x30]
	mov r8, fp
	ldrh r1, [r7]
	cmp r0, #2
	cmpne r0, #5
	orreq r0, r8, #0xc00
	moveq r0, r0, lsl #0x10
	moveq r8, r0, lsr #0x10
	ldr r0, [r4, #0x434]
	bl sub_020107A8
	str r5, [sp]
	ldrh r1, [r0]
	ldrb r2, [r0, #2]
	mov r0, sl
	mov r3, r8
	bl sub_02017848
_02017CFC:
	add r6, r6, #1
	cmp r6, #0xa
	blt _02017C90
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02017D10:
	ldr r0, _02017E34 ; =MAIN_BSS_0210CA6C
	ldr sb, [r0]
	cmp sb, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _02017D98
	add r0, sl, #0x2d4
	mov r7, #0
	add r8, r0, #0x8800
	mov r6, r7
	mov fp, #1
_02017D44:
	tst r4, fp, lsl r7
	beq _02017D88
	cmp r7, #0
	blt _02017D60
	cmp r7, #2
	movlt r0, r8
	blt _02017D64
_02017D60:
	mov r0, #0
_02017D64:
	ldrh r1, [r0, #8]
	mov r0, sb
	bl sub_02041D44
	str r6, [sp]
	ldrh r1, [r0]
	ldr r3, _02017E40 ; =0x00001E16
	mov r0, sl
	mov r2, r6
	bl sub_02017748
_02017D88:
	add r7, r7, #1
	cmp r7, #2
	add r8, r8, #0x38
	blt _02017D44
_02017D98:
	bl sub_0201001C
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r6, #0
	add r4, r0, #0x1000
	mov fp, #1
_02017DB4:
	tst r5, fp, lsl r6
	beq _02017E20
	mov r0, sl
	mov r1, r6
	bl sub_020155FC
	mov r7, r0
	ldrh r1, [r7]
	mov r0, sb
	bl sub_02041D58
	ldrh r0, [r0, #0x30]
	mov r8, #0xe
	ldrh r1, [r7]
	cmp r0, #2
	cmpne r0, #5
	orreq r0, r8, #0xc00
	moveq r0, r0, lsl #0x10
	moveq r8, r0, lsr #0x10
	ldr r0, [r4, #0x434]
	bl sub_020107A8
	mov r2, r0
	mov r0, #0
	str r0, [sp]
	ldrh r1, [r2]
	ldrb r2, [r2, #2]
	mov r3, r8
	mov r0, sl
	bl sub_02017848
_02017E20:
	add r6, r6, #1
	cmp r6, #0xa
	blt _02017DB4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02017E34: .word MAIN_BSS_0210CA6C
_02017E38: .word 0x0005977C
_02017E3C: .word 0x000597EE
_02017E40: .word 0x00001E16

	arm_func_start sub_02017E44
sub_02017E44: ; 0x02017E44
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201808C
	mov r0, r4
	bl sub_020180C0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02017E44

	arm_func_start sub_02017E5C
sub_02017E5C: ; 0x02017E5C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r1, _02017F70 ; =MAIN_BSS_0210CA6C
	mov r4, #0
	ldr fp, [r1]
	mov r8, r0
	mov r5, r4
	cmp fp, #0
	beq _02017F68
	add r0, r8, #0x2d4
	mov r6, r4
	add r7, r0, #0x8800
	mov sb, #1
	arm_func_end sub_02017E5C
_02017E8C:
	cmp r6, #0
	blt _02017EA0
	cmp r6, #2
	movlt r1, r7
	blt _02017EA4
_02017EA0:
	mov r1, #0
_02017EA4:
	cmp r1, #0
	ldrne r0, [r1]
	cmpne r0, #0
	beq _02017F0C
	ldrh r1, [r1, #8]
	mov r0, fp
	bl sub_02041D44
	mov r1, #1
	orr r5, r5, r1, lsl r6
	mvn sl, r1, lsl r6
	ldr r1, _02017F74 ; =0x0005977C
	mov ip, #0
	mov lr, r8
_02017ED8:
	add r2, lr, #0x59000
	ldr r2, [r2, #0x794]
	cmp r2, #0
	beq _02017EFC
	ldrh r3, [r0]
	ldrh r2, [lr, r1]
	cmp r3, r2
	orreq r4, r4, sb, lsl ip
	andeq r5, r5, sl
_02017EFC:
	add lr, lr, #0x38
	add ip, ip, #1
	cmp ip, #2
	blt _02017ED8
_02017F0C:
	add r6, r6, #1
	cmp r6, #2
	add r7, r7, #0x38
	blt _02017E8C
	add r0, r8, #0x760
	add sb, r0, #0x59000
	mov r7, #0
	mov r6, #1
_02017F2C:
	add r0, r8, #0x59000
	ldr r0, [r0, #0x794]
	cmp r0, #0
	beq _02017F54
	tst r4, r6, lsl r7
	bne _02017F54
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
_02017F54:
	add r7, r7, #1
	cmp r7, #2
	add r8, r8, #0x38
	add sb, sb, #0x38
	blt _02017F2C
_02017F68:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02017F70: .word MAIN_BSS_0210CA6C
_02017F74: .word 0x0005977C

	arm_func_start sub_02017F78
sub_02017F78: ; 0x02017F78
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	bl sub_0201001C
	mov r6, #0
	movs fp, r0
	mov r7, r6
	beq _02018080
	mov r8, r6
	mov r5, #1
	arm_func_end sub_02017F78
_02017F9C:
	mov r0, r4
	mov r1, r8
	bl sub_020155FC
	cmp r0, #0
	beq _02018028
	ldr r1, [r0, #8]
	tst r1, #1
	beq _02018028
	add r2, fp, #0x1000
	ldrh r1, [r0]
	ldr r0, [r2, #0x434]
	bl sub_020107A8
	mov r1, #1
	ldr ip, _02018088 ; =0x000597EE
	orr r7, r7, r1, lsl r8
	mvn r3, r1, lsl r8
	mov r1, #0
	mov r2, r4
	sub lr, ip, #2
_02017FE8:
	add sb, r2, #0x59000
	ldr sb, [sb, #0x804]
	cmp sb, #0
	beq _02018018
	ldrh sl, [r0]
	ldrh sb, [r2, lr]
	cmp sl, sb
	ldreqb sl, [r0, #2]
	ldreqh sb, [r2, ip]
	cmpeq sl, sb
	orreq r6, r6, r5, lsl r1
	andeq r7, r7, r3
_02018018:
	add r2, r2, #0x38
	add r1, r1, #1
	cmp r1, #0xa
	blt _02017FE8
_02018028:
	add r8, r8, #1
	cmp r8, #0xa
	blt _02017F9C
	add r0, r4, #0x7d0
	add sb, r0, #0x59000
	mov r8, #0
	mov r5, #1
_02018044:
	add r0, r4, #0x59000
	ldr r0, [r0, #0x804]
	cmp r0, #0
	beq _0201806C
	tst r6, r5, lsl r8
	bne _0201806C
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
_0201806C:
	add r8, r8, #1
	cmp r8, #0xa
	add r4, r4, #0x38
	add sb, sb, #0x38
	blt _02018044
_02018080:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02018088: .word 0x000597EE

	arm_func_start sub_0201808C
sub_0201808C: ; 0x0201808C
	stmdb sp!, {r3, r4, r5, lr}
	add r0, r0, #0x760
	add r5, r0, #0x59000
	mov r4, #0
	arm_func_end sub_0201808C
_0201809C:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	add r4, r4, #1
	cmp r4, #2
	add r5, r5, #0x38
	blt _0201809C
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020180C0
sub_020180C0: ; 0x020180C0
	stmdb sp!, {r3, r4, r5, lr}
	add r0, r0, #0x7d0
	add r5, r0, #0x59000
	mov r4, #0
	arm_func_end sub_020180C0
_020180D0:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	add r4, r4, #1
	cmp r4, #0xa
	add r5, r5, #0x38
	blt _020180D0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020180F4
sub_020180F4: ; 0x020180F4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0x760
	add r5, r0, #0x59000
	mov r4, #0
	arm_func_end sub_020180F4
_02018108:
	mov r0, r5
	bl sub_02040E80
	add r4, r4, #1
	cmp r4, #2
	add r5, r5, #0x38
	blt _02018108
	add r0, r6, #0x7d0
	add r5, r0, #0x59000
	mov r4, #0
_0201812C:
	mov r0, r5
	bl sub_02040E80
	add r4, r4, #1
	cmp r4, #0xa
	add r5, r5, #0x38
	blt _0201812C
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02018148
sub_02018148: ; 0x02018148
	stmdb sp!, {r3, r4, r5, lr}
	add lr, r0, #0x8000
	str r1, [lr, #0x7d4]
	strb r2, [lr, #0x7d8]
	and r4, r3, #0xff
	strb r3, [lr, #0x7d9]
	cmp r4, #0x3c
	blo _0201819C
	add r3, r0, #0x3d8
	add ip, r0, #0xd9
	add r5, r3, #0x8400
	add r4, ip, #0x8700
	arm_func_end sub_02018148
_02018178:
	ldrb r3, [r5]
	add r3, r3, #1
	strb r3, [r5]
	ldrb r3, [r4]
	sub r3, r3, #0x3c
	strb r3, [r4]
	ldrb r3, [lr, #0x7d9]
	cmp r3, #0x3c
	bhs _02018178
_0201819C:
	add lr, r0, #0x8000
	ldrb r3, [lr, #0x7d8]
	cmp r3, #0x3c
	blo _020181E0
	add r3, r0, #0x3d4
	add ip, r0, #0x3d8
	add r4, r3, #0x8400
	add ip, ip, #0x8400
_020181BC:
	ldr r3, [r4]
	add r3, r3, #1
	str r3, [r4]
	ldrb r3, [ip]
	sub r3, r3, #0x3c
	strb r3, [ip]
	ldrb r3, [lr, #0x7d8]
	cmp r3, #0x3c
	bhs _020181BC
_020181E0:
	add r3, r0, #0x8000
	ldr ip, [r3, #0x7d4]
	add r0, r0, #0x8000
	cmp ip, #0x64
	movhs ip, #1
	movlo ip, #0
	strb ip, [r3, #0x7da]
	str r1, [r0, #0x7cc]
	strb r2, [r0, #0x7d0]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02018208
sub_02018208: ; 0x02018208
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4]
	str r1, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	bl sub_02018250
	mov r0, r4
	bl sub_02018410
	mov r0, r4
	bl sub_020185D0
	mov r0, r4
	bl sub_02018790
	mov r0, r4
	bl sub_02018950
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02018208

	arm_func_start sub_02018250
sub_02018250: ; 0x02018250
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7]
	cmp r1, #0
	beq _02018268
	bl sub_02018374
	arm_func_end sub_02018250
_02018268:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _02018288
	ldr r1, _02018370 ; =s_data_message_etc_pokemon_name_0208b778
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_02018288:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _02018350
_020182E0:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _020182E0
_02018350:
	cmp r6, #0
	beq _02018368
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02018368:
	ldr r0, [r7]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02018370: .word s_data_message_etc_pokemon_name_0208b778

	arm_func_start sub_02018374
sub_02018374: ; 0x02018374
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _020183D8
	mov r6, r4
	arm_func_end sub_02018374
_0201839C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020183C4
	bl _ZdaPv
	ldr r0, [r5]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_020183C4:
	ldr r1, [r5]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201839C
_020183D8:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _020183F4
	bl _ZdaPv
	ldr r0, [r5]
	mov r1, #0
	str r1, [r0, #8]
_020183F4:
	ldr r0, [r5]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02018410
sub_02018410: ; 0x02018410
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7, #4]
	cmp r1, #0
	beq _02018428
	bl sub_02018534
	arm_func_end sub_02018410
_02018428:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _02018448
	ldr r1, _02018530 ; =s_data_message_etc_item_name_0208b798
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_02018448:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7, #4]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #4]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #4]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7, #4]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #4]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _02018510
_020184A0:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #4]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7, #4]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #4]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7, #4]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _020184A0
_02018510:
	cmp r6, #0
	beq _02018528
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02018528:
	ldr r0, [r7, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02018530: .word s_data_message_etc_item_name_0208b798

	arm_func_start sub_02018534
sub_02018534: ; 0x02018534
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #4]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _02018598
	mov r6, r4
	arm_func_end sub_02018534
_0201855C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02018584
	bl _ZdaPv
	ldr r0, [r5, #4]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_02018584:
	ldr r1, [r5, #4]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201855C
_02018598:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _020185B4
	bl _ZdaPv
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0, #8]
_020185B4:
	ldr r0, [r5, #4]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #4]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_020185D0
sub_020185D0: ; 0x020185D0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7, #8]
	cmp r1, #0
	beq _020185E8
	bl sub_020186F4
	arm_func_end sub_020185D0
_020185E8:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _02018608
	ldr r1, _020186F0 ; =s_data_message_etc_yakumono_name_0208b7b4
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_02018608:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7, #8]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #8]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #8]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7, #8]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #8]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _020186D0
_02018660:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #8]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7, #8]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #8]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7, #8]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _02018660
_020186D0:
	cmp r6, #0
	beq _020186E8
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020186E8:
	ldr r0, [r7, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020186F0: .word s_data_message_etc_yakumono_name_0208b7b4

	arm_func_start sub_020186F4
sub_020186F4: ; 0x020186F4
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #8]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _02018758
	mov r6, r4
	arm_func_end sub_020186F4
_0201871C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02018744
	bl _ZdaPv
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_02018744:
	ldr r1, [r5, #8]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201871C
_02018758:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02018774
	bl _ZdaPv
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, #8]
_02018774:
	ldr r0, [r5, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #8]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02018790
sub_02018790: ; 0x02018790
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7, #0xc]
	cmp r1, #0
	beq _020187A8
	bl sub_020188B4
	arm_func_end sub_02018790
_020187A8:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _020187C8
	ldr r1, _020188B0 ; =s_data_message_etc_npc_name_0208b7d4
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_020187C8:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7, #0xc]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #0xc]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #0xc]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7, #0xc]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #0xc]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _02018890
_02018820:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #0xc]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7, #0xc]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #0xc]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7, #0xc]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _02018820
_02018890:
	cmp r6, #0
	beq _020188A8
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020188A8:
	ldr r0, [r7, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020188B0: .word s_data_message_etc_npc_name_0208b7d4

	arm_func_start sub_020188B4
sub_020188B4: ; 0x020188B4
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #0xc]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _02018918
	mov r6, r4
	arm_func_end sub_020188B4
_020188DC:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02018904
	bl _ZdaPv
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_02018904:
	ldr r1, [r5, #0xc]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _020188DC
_02018918:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02018934
	bl _ZdaPv
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r1, [r0, #8]
_02018934:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0xc]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02018950
sub_02018950: ; 0x02018950
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7, #0x10]
	cmp r1, #0
	beq _02018968
	bl sub_02018A74
	arm_func_end sub_02018950
_02018968:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _02018988
	ldr r1, _02018A70 ; =s_data_message_etc_fieldwaza_name_0208b7f0
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_02018988:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7, #0x10]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #0x10]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #0x10]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7, #0x10]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #0x10]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _02018A50
_020189E0:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #0x10]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7, #0x10]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #0x10]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7, #0x10]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _020189E0
_02018A50:
	cmp r6, #0
	beq _02018A68
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02018A68:
	ldr r0, [r7, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02018A70: .word s_data_message_etc_fieldwaza_name_0208b7f0

	arm_func_start sub_02018A74
sub_02018A74: ; 0x02018A74
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #0x10]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _02018AD8
	mov r6, r4
	arm_func_end sub_02018A74
_02018A9C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02018AC4
	bl _ZdaPv
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_02018AC4:
	ldr r1, [r5, #0x10]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _02018A9C
_02018AD8:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02018AF4
	bl _ZdaPv
	ldr r0, [r5, #0x10]
	mov r1, #0
	str r1, [r0, #8]
_02018AF4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x10]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02018B10
sub_02018B10: ; 0x02018B10
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #8]
	addne r0, r0, r1, lsl #3
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end sub_02018B10

	arm_func_start sub_02018B2C
sub_02018B2C: ; 0x02018B2C
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #8]
	addne r0, r0, r1, lsl #3
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end sub_02018B2C

	arm_func_start sub_02018B48
sub_02018B48: ; 0x02018B48
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #8]
	addne r0, r0, r1, lsl #3
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end sub_02018B48

	arm_func_start sub_02018B64
sub_02018B64: ; 0x02018B64
	ldr r0, [r0, #0xc]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #8]
	addne r0, r0, r1, lsl #3
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end sub_02018B64

	arm_func_start sub_02018B80
sub_02018B80: ; 0x02018B80
	ldr r0, [r0, #0x10]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #8]
	addne r0, r0, r1, lsl #3
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end sub_02018B80

	arm_func_start sub_02018B9C
sub_02018B9C: ; 0x02018B9C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02018BC4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02018B9C

	arm_func_start sub_02018BB0
sub_02018BB0: ; 0x02018BB0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02018D04
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02018BB0

	arm_func_start sub_02018BC4
sub_02018BC4: ; 0x02018BC4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02018BF4
	mov r2, #0
	ldr r1, _02018CF8 ; =s_data_shadow_NCBR_0208b814
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
	arm_func_end sub_02018BC4
_02018BF4:
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
	beq _02018C48
	mov r2, #0
	ldr r1, _02018CFC ; =s_data_shadow_NCLR_0208b828
	mov r3, r2
	bl sub_02007AC0
_02018C48:
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
	beq _02018C94
	bl sub_02003B64
_02018C94:
	mov r1, #0
	str r0, [r4, #8]
	ldr r0, _02018D00 ; =0x000003FF
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
	str r1, [r0, #0x38]
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	str r1, [r0, #0x3c]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02018CF8: .word s_data_shadow_NCBR_0208b814
_02018CFC: .word s_data_shadow_NCLR_0208b828
_02018D00: .word 0x000003FF

	arm_func_start sub_02018D04
sub_02018D04: ; 0x02018D04
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5]
	cmp r4, #0
	beq _02018D34
	beq _02018D2C
	mov r0, r4
	bl sub_02007548
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02018D04
_02018D2C:
	mov r0, #0
	str r0, [r5]
_02018D34:
	ldr r4, [r5, #4]
	cmp r4, #0
	beq _02018D5C
	beq _02018D54
	mov r0, r4
	bl sub_02007B28
	mov r0, r4
	bl _ZdlPv
_02018D54:
	mov r0, #0
	str r0, [r5, #4]
_02018D5C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02018D80
	beq _02018D78
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02018D78:
	mov r0, #0
	str r0, [r5, #8]
_02018D80:
	ldr r0, [r5, #0xc]
	bl NNS_GfdFreeLnkTexVram
	ldr r0, [r5, #0x10]
	bl NNS_GfdFreeLnkPlttVram
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02018D94
sub_02018D94: ; 0x02018D94
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	movs r3, r1
	addeq sp, sp, #8
	ldmeqia sp!, {r3, pc}
	ldr r1, [r3, #0xc]
	stmia sp, {r1, r2}
	ldr r0, [r0, #8]
	ldmia r3, {r1, r2, r3}
	bl sub_02003BE0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	arm_func_end sub_02018D94

	arm_func_start sub_02018DC4
sub_02018DC4: ; 0x02018DC4
	ldr r0, [r0, #8]
	str r1, [r0, #0x10]
	bx lr
	arm_func_end sub_02018DC4

	arm_func_start sub_02018DD0
sub_02018DD0: ; 0x02018DD0
	ldr r0, [r0, #8]
	str r1, [r0, #0x14]
	bx lr
	arm_func_end sub_02018DD0

	arm_func_start sub_02018DDC
sub_02018DDC: ; 0x02018DDC
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_02018DDC

	arm_func_start sub_02018DF4
sub_02018DF4: ; 0x02018DF4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02018E1C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02018DF4

	arm_func_start sub_02018E08
sub_02018E08: ; 0x02018E08
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02018E1C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02018E08

	arm_func_start sub_02018E1C
sub_02018E1C: ; 0x02018E1C
	ldr ip, _02018E2C ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0xfc
	bx ip
	.align 2, 0
_02018E2C: .word MI_CpuFill8
	arm_func_end sub_02018E1C

	arm_func_start sub_02018E30
sub_02018E30: ; 0x02018E30
	mov r2, #0
	mov r1, r2
	arm_func_end sub_02018E30
_02018E38:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #0x15
	blt _02018E38
	bx lr

	arm_func_start sub_02018E4C
sub_02018E4C: ; 0x02018E4C
	str r2, [r0, r1, lsl #2]
	bx lr
	arm_func_end sub_02018E4C

	arm_func_start sub_02018E54
sub_02018E54: ; 0x02018E54
	ldr r0, [r0, r1, lsl #2]
	bx lr
	arm_func_end sub_02018E54

	arm_func_start sub_02018E5C
sub_02018E5C: ; 0x02018E5C
	mov r3, #0
	mov r2, r3
	arm_func_end sub_02018E5C
_02018E64:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #0xd0]
	cmp r3, #0xb
	blt _02018E64
	bx lr

	arm_func_start sub_02018E7C
sub_02018E7C: ; 0x02018E7C
	add r0, r0, r1, lsl #2
	str r2, [r0, #0xd0]
	bx lr
	arm_func_end sub_02018E7C

	arm_func_start sub_02018E88
sub_02018E88: ; 0x02018E88
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0xd0]
	bx lr
	arm_func_end sub_02018E88

	arm_func_start sub_02018E94
sub_02018E94: ; 0x02018E94
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	cmp r1, #0x45
	addgt sp, sp, #0x28
	ldmgtia sp!, {r3, r4, r5, pc}
	cmp r1, #0
	bne _02018ED4
	mov r3, #0
	mov r2, r3
	arm_func_end sub_02018E94
_02018EB8:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #0x54]
	cmp r3, #0x1f
	blt _02018EB8
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
_02018ED4:
	cmp r1, #0x1e
	movlt r2, #0
	movge r2, #1
	str r2, [r0, #0x74]
	cmp r1, #0x17
	movlt r2, #0
	movge r2, #1
	str r2, [r0, #0x78]
	cmp r1, #0x1b
	movlt r2, #0
	movge r2, #1
	str r2, [r0, #0x7c]
	cmp r1, #0x31
	movlt r2, #0
	movge r2, #1
	str r2, [r0, #0x88]
	cmp r1, #0x42
	movlt r2, #0
	strlt r2, [r0, #0x8c]
	blt _02018F34
	moveq r2, #1
	streq r2, [r0, #0x8c]
	movne r2, #2
	strne r2, [r0, #0x8c]
_02018F34:
	cmp r1, #0x3f
	movlt r2, #0
	movge r2, #1
	str r2, [r0, #0x90]
	str r2, [r0, #0x94]
	str r2, [r0, #0x98]
	cmp r1, #0x13
	movne r2, #0
	moveq r2, #1
	str r2, [r0, #0x9c]
	cmp r1, #0x28
	movlt r2, #0
	movge r2, #1
	str r2, [r0, #0xa0]
	cmp r1, #0x28
	movlt r2, #0
	strlt r2, [r0, #0xa4]
	blt _02018FB0
	cmp r1, #0x35
	movlt r2, #1
	strlt r2, [r0, #0xa4]
	blt _02018FB0
	cmp r1, #0x3c
	movlt r2, #2
	strlt r2, [r0, #0xa4]
	blt _02018FB0
	cmp r1, #0x43
	movlt r2, #3
	strlt r2, [r0, #0xa4]
	movge r2, #4
	strge r2, [r0, #0xa4]
_02018FB0:
	cmp r1, #0x37
	movne r2, #0
	moveq r2, #1
	str r2, [r0, #0xac]
	ldr r2, [r0, #0x5c]
	cmp r2, #0
	moveq r2, #2
	streq r2, [r0, #0x5c]
	cmp r1, #0x3e
	movlt r2, #0
	strlt r2, [r0, #0xb4]
	blt _02019004
	cmp r1, #0x40
	movlt r2, #1
	strlt r2, [r0, #0xb4]
	blt _02019004
	cmp r1, #0x43
	movlt r2, #2
	strlt r2, [r0, #0xb4]
	movge r2, #0
	strge r2, [r0, #0xb4]
_02019004:
	cmp r1, #0x17
	ldr r4, _02019264 ; =MAIN_BSS_020B26A0
	bgt _02019020
	ldrb r0, [r4, #3]
	and r0, r0, #0xf0
	strb r0, [r4, #3]
	b _02019108
_02019020:
	cmp r1, #0x1b
	bgt _0201903C
	ldrb r0, [r4, #3]
	and r0, r0, #0xf0
	orr r0, r0, #1
	strb r0, [r4, #3]
	b _02019108
_0201903C:
	cmp r1, #0x1d
	bgt _02019058
	ldrb r0, [r4, #3]
	and r0, r0, #0xf0
	orr r0, r0, #2
	strb r0, [r4, #3]
	b _02019108
_02019058:
	cmp r1, #0x21
	bgt _02019074
	ldrb r0, [r4, #3]
	and r0, r0, #0xf0
	orr r0, r0, #3
	strb r0, [r4, #3]
	b _02019108
_02019074:
	cmp r1, #0x2b
	bgt _02019090
	ldrb r0, [r4, #3]
	and r0, r0, #0xf0
	orr r0, r0, #4
	strb r0, [r4, #3]
	b _02019108
_02019090:
	cmp r1, #0x30
	bgt _020190AC
	ldrb r0, [r4, #3]
	and r0, r0, #0xf0
	orr r0, r0, #5
	strb r0, [r4, #3]
	b _02019108
_020190AC:
	cmp r1, #0x34
	bgt _020190C8
	ldrb r0, [r4, #3]
	and r0, r0, #0xf0
	orr r0, r0, #6
	strb r0, [r4, #3]
	b _02019108
_020190C8:
	cmp r1, #0x36
	bgt _020190E4
	ldrb r0, [r4, #3]
	and r0, r0, #0xf0
	orr r0, r0, #7
	strb r0, [r4, #3]
	b _02019108
_020190E4:
	ldrb r0, [r4, #3]
	cmp r1, #0x3b
	andgt r0, r0, #0xf0
	orrgt r0, r0, #9
	strgtb r0, [r4, #3]
	bgt _02019108
	and r0, r0, #0xf0
	orr r0, r0, #8
	strb r0, [r4, #3]
_02019108:
	ldrb r2, [r4, #3]
	cmp r1, #0x15
	mov r0, r2, asr #4
	and r3, r0, #0xf
	andle r0, r2, #0xf
	strleb r0, [r4, #3]
	ble _0201913C
	and r0, r2, #0xf
	cmp r1, #0x2b
	orrle r0, r0, #0x10
	strleb r0, [r4, #3]
	orrgt r0, r0, #0x20
	strgtb r0, [r4, #3]
_0201913C:
	ldrb r0, [r4, #3]
	mov r0, r0, asr #4
	and r0, r0, #0xf
	cmp r0, r3
	ldrne r0, _02019268 ; =MAIN_BSS_0210CA48
	ldrne r5, [r0]
	cmpne r5, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _020191AC
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0201918C
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	b _020191A4
_0201918C:
	mov r0, #0
	add r1, sp, #0x10
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
_020191A4:
	add r3, sp, #0x18
	b _020191C8
_020191AC:
	mov r0, #0
	add r1, sp, #8
	add r3, sp, #0x18
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
_020191C8:
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
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, pc}
	add r1, sp, #0x20
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r0, [r4, #0xc]
	ldr r2, [r0, #0xc4]
	cmp r2, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [r2, #0x18]
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [r2, #0x1c]
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02019264: .word MAIN_BSS_020B26A0
_02019268: .word MAIN_BSS_0210CA48

	arm_func_start sub_0201926C
sub_0201926C: ; 0x0201926C
	add r0, r0, r1, lsl #2
	str r2, [r0, #0x54]
	bx lr
	arm_func_end sub_0201926C

	arm_func_start sub_02019278
sub_02019278: ; 0x02019278
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x54]
	bx lr
	arm_func_end sub_02019278

	arm_func_start sub_02019284
sub_02019284: ; 0x02019284
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl sub_02011D60
	ldr r1, _02019330 ; =ptr_FUN_0201933c_0208b864
	add r0, r4, #0x18c
	str r1, [r4]
	bl sub_02004114
	add r0, r4, #0x1ec
	bl sub_02004114
	add r0, r4, #0x24c
	bl sub_02004114
	add r0, r4, #0x2ac
	bl sub_02004114
	add r0, r4, #0x30c
	bl sub_02004114
	add r0, r4, #0x36c
	bl sub_02004114
	add r0, r4, #0x3cc
	bl sub_02004114
	ldr r1, _02019334 ; =sub_02004160
	add r0, r4, #0x2c
	str r1, [sp]
	ldr r3, _02019338 ; =sub_02004114
	add r0, r0, #0x400
	mov r1, #3
	mov r2, #0x60
	bl __cxa_vec_ctor
	add r0, r4, #0x14c
	add r0, r0, #0x400
	bl sub_02003B64
	bl sub_0201001C
	str r0, [r4, #0x184]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x48c]
	mov r0, r4
	str r1, [r4, #0x188]
	bl sub_020196D4
	mov r0, r4
	bl sub_02019454
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02019330: .word ptr_FUN_0201933c_0208b864
_02019334: .word sub_02004160
_02019338: .word sub_02004114
	arm_func_end sub_02019284

	arm_func_start sub_0201933C
sub_0201933C: ; 0x0201933C
	stmdb sp!, {r4, lr}
	ldr r1, _020193BC ; =ptr_FUN_0201933c_0208b864
	mov r4, r0
	str r1, [r4]
	bl sub_02019688
	add r0, r4, #0x14c
	add r0, r0, #0x400
	bl sub_02003BB0
	add r0, r4, #0x2c
	ldr r3, _020193C0 ; =sub_02004160
	add r0, r0, #0x400
	mov r1, #3
	mov r2, #0x60
	bl __cxa_vec_cleanup
	add r0, r4, #0x3cc
	bl sub_02004160
	add r0, r4, #0x36c
	bl sub_02004160
	add r0, r4, #0x30c
	bl sub_02004160
	add r0, r4, #0x2ac
	bl sub_02004160
	add r0, r4, #0x24c
	bl sub_02004160
	add r0, r4, #0x1ec
	bl sub_02004160
	add r0, r4, #0x18c
	bl sub_02004160
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_020193BC: .word ptr_FUN_0201933c_0208b864
_020193C0: .word sub_02004160
	arm_func_end sub_0201933C

	arm_func_start sub_020193C4
sub_020193C4: ; 0x020193C4
	stmdb sp!, {r4, lr}
	ldr r1, _0201944C ; =ptr_FUN_0201933c_0208b864
	mov r4, r0
	str r1, [r4]
	bl sub_02019688
	add r0, r4, #0x14c
	add r0, r0, #0x400
	bl sub_02003BB0
	add r0, r4, #0x2c
	ldr r3, _02019450 ; =sub_02004160
	add r0, r0, #0x400
	mov r1, #3
	mov r2, #0x60
	bl __cxa_vec_cleanup
	add r0, r4, #0x3cc
	bl sub_02004160
	add r0, r4, #0x36c
	bl sub_02004160
	add r0, r4, #0x30c
	bl sub_02004160
	add r0, r4, #0x2ac
	bl sub_02004160
	add r0, r4, #0x24c
	bl sub_02004160
	add r0, r4, #0x1ec
	bl sub_02004160
	add r0, r4, #0x18c
	bl sub_02004160
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0201944C: .word ptr_FUN_0201933c_0208b864
_02019450: .word sub_02004160
	arm_func_end sub_020193C4

	arm_func_start sub_02019454
sub_02019454: ; 0x02019454
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _02019498
	ldr r2, _02019604 ; =s_PGM_i021_NCLR_0208b8ac
	ldr r1, _02019608 ; =s_PGM_i021_00_NCER_0208b8bc
	str r2, [sp]
	ldr ip, _0201960C ; =s_PGM_i021_00_cac_0208b8d0
	str r1, [sp, #4]
	ldr r1, _02019610 ; =s_PGM_0208b878
	ldr r2, _02019614 ; =s_data_interface_i021_LZ_bin_0208b87c
	ldr r3, _02019618 ; =s_PGM_i021_00_NCBR_0208b898
	str ip, [sp, #8]
	bl sub_0201AAE0
	arm_func_end sub_02019454
_02019498:
	str r0, [r4, #0x5c8]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _020194CC
	ldr r1, _0201961C ; =s_PGA_i024_NCLR_0208b914
	mov ip, #0
	stmia sp, {r1, ip}
	ldr r1, _02019620 ; =DAT_0208b8e0
	ldr r2, _02019624 ; =s_data_interface_i024_LZ_bin_0208b8e4
	ldr r3, _02019628 ; =s_PGA_i024_00_NCBR_0208b900
	str ip, [sp, #8]
	bl sub_0201AAE0
_020194CC:
	str r0, [r4, #0x5cc]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _02019500
	ldr r1, _0201962C ; =s_PGB_i023_NCLR_0208b958
	mov ip, #0
	stmia sp, {r1, ip}
	ldr r1, _02019630 ; =s_PGB_0208b924
	ldr r2, _02019634 ; =s_data_interface_i023_LZ_bin_0208b928
	ldr r3, _02019638 ; =s_PGB_i023_00_NCBR_0208b944
	str ip, [sp, #8]
	bl sub_0201AAE0
_02019500:
	str r0, [r4, #0x5d0]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0201953C
	ldr r2, _0201963C ; =s_PGF_i020_NCLR_0208b99c
	ldr r1, _02019640 ; =s_PGF_i020_00_NCER_0208b9ac
	str r2, [sp]
	ldr ip, _02019644 ; =s_PGF_i020_00_cac_0208b9c0
	str r1, [sp, #4]
	ldr r1, _02019648 ; =s_PGF_0208b968
	ldr r2, _0201964C ; =s_data_interface_i020_LZ_bin_0208b96c
	ldr r3, _02019650 ; =s_PGF_i020_00_NCBR_0208b988
	str ip, [sp, #8]
	bl sub_0201AAE0
_0201953C:
	str r0, [r4, #0x5d4]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _02019570
	ldr r1, _02019654 ; =s_PGP_i022_NCLR_0208ba04
	mov ip, #0
	stmia sp, {r1, ip}
	ldr r1, _02019658 ; =s_PGP_0208b9d0
	ldr r2, _0201965C ; =s_data_interface_i022_LZ_bin_0208b9d4
	ldr r3, _02019660 ; =s_PGP_i022_00_NCBR_0208b9f0
	str ip, [sp, #8]
	bl sub_0201AAE0
_02019570:
	str r0, [r4, #0x5d8]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _020195A4
	ldr r1, _02019664 ; =s_PGG_i057_NCLR_0208ba48
	mov ip, #0
	stmia sp, {r1, ip}
	ldr r1, _02019668 ; =s_PGG_0208ba14
	ldr r2, _0201966C ; =s_data_interface_i057_LZ_bin_0208ba18
	ldr r3, _02019670 ; =s_PGG_i057_00_NCBR_0208ba34
	str ip, [sp, #8]
	bl sub_0201AAE0
_020195A4:
	str r0, [r4, #0x5dc]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _020195E0
	ldr r2, _02019674 ; =s_PGC_i020_NCLR_0208ba70
	ldr r1, _02019678 ; =s_PGC_i020_01_NCER_0208ba80
	str r2, [sp]
	ldr ip, _0201967C ; =s_PGC_i020_01_cac_0208ba94
	str r1, [sp, #4]
	ldr r1, _02019680 ; =s_PGC_0208ba58
	ldr r2, _0201964C ; =s_data_interface_i020_LZ_bin_0208b96c
	ldr r3, _02019684 ; =s_PGC_i020_01_NCBR_0208ba5c
	str ip, [sp, #8]
	bl sub_0201AAE0
_020195E0:
	str r0, [r4, #0x5e0]
	ldr r0, [r0, #0xc]
	mov r1, #1
	mov r2, #0
	bl sub_02008A80
	add r1, r4, #0x500
	strh r0, [r1, #0xc0]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02019604: .word s_PGM_i021_NCLR_0208b8ac
_02019608: .word s_PGM_i021_00_NCER_0208b8bc
_0201960C: .word s_PGM_i021_00_cac_0208b8d0
_02019610: .word s_PGM_0208b878
_02019614: .word s_data_interface_i021_LZ_bin_0208b87c
_02019618: .word s_PGM_i021_00_NCBR_0208b898
_0201961C: .word s_PGA_i024_NCLR_0208b914
_02019620: .word DAT_0208b8e0
_02019624: .word s_data_interface_i024_LZ_bin_0208b8e4
_02019628: .word s_PGA_i024_00_NCBR_0208b900
_0201962C: .word s_PGB_i023_NCLR_0208b958
_02019630: .word s_PGB_0208b924
_02019634: .word s_data_interface_i023_LZ_bin_0208b928
_02019638: .word s_PGB_i023_00_NCBR_0208b944
_0201963C: .word s_PGF_i020_NCLR_0208b99c
_02019640: .word s_PGF_i020_00_NCER_0208b9ac
_02019644: .word s_PGF_i020_00_cac_0208b9c0
_02019648: .word s_PGF_0208b968
_0201964C: .word s_data_interface_i020_LZ_bin_0208b96c
_02019650: .word s_PGF_i020_00_NCBR_0208b988
_02019654: .word s_PGP_i022_NCLR_0208ba04
_02019658: .word s_PGP_0208b9d0
_0201965C: .word s_data_interface_i022_LZ_bin_0208b9d4
_02019660: .word s_PGP_i022_00_NCBR_0208b9f0
_02019664: .word s_PGG_i057_NCLR_0208ba48
_02019668: .word s_PGG_0208ba14
_0201966C: .word s_data_interface_i057_LZ_bin_0208ba18
_02019670: .word s_PGG_i057_00_NCBR_0208ba34
_02019674: .word s_PGC_i020_NCLR_0208ba70
_02019678: .word s_PGC_i020_01_NCER_0208ba80
_0201967C: .word s_PGC_i020_01_cac_0208ba94
_02019680: .word s_PGC_0208ba58
_02019684: .word s_PGC_i020_01_NCBR_0208ba5c

	arm_func_start sub_02019688
sub_02019688: ; 0x02019688
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r7, r0
	mov r4, r5
	arm_func_end sub_02019688
_02019698:
	add r0, r7, r5, lsl #2
	ldr r6, [r0, #0x5c8]
	cmp r6, #0
	beq _020196C4
	beq _020196BC
	mov r0, r6
	bl sub_0201AB14
	mov r0, r6
	bl _ZdlPv
_020196BC:
	add r0, r7, r5, lsl #2
	str r4, [r0, #0x5c8]
_020196C4:
	add r5, r5, #1
	cmp r5, #7
	blt _02019698
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_020196D4
sub_020196D4: ; 0x020196D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, _0201974C ; =0x000003FF
	add r1, r4, #0x500
	strh r2, [r1, #0x8c]
	mov r2, #2
	strh r2, [r1, #0x90]
	mov r3, #0
	strh r3, [r1, #0x92]
	strh r3, [r1, #0x96]
	strh r3, [r1, #0x98]
	str r3, [r4, #0x59c]
	str r3, [r4, #0x5a0]
	str r3, [r4, #0x5a4]
	strh r2, [r1, #0xaa]
	strb r3, [r4, #0x5a8]
	strh r3, [r1, #0xac]
	strh r3, [r1, #0xae]
	strh r3, [r1, #0xb0]
	mov r2, #0x1f
	strh r2, [r1, #0xb2]
	mov r2, #0x1f000
	str r2, [r4, #0x5b4]
	str r3, [r4, #0x5b8]
	strh r3, [r1, #0xbc]
	strh r3, [r1, #0xbe]
	bl sub_02019750
	mov r0, r4
	bl sub_020198E0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0201974C: .word 0x000003FF
	arm_func_end sub_020196D4

	arm_func_start sub_02019750
sub_02019750: ; 0x02019750
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r2, #0x5b000
	str r2, [sp]
	mov r1, #0x5d000
	stmib sp, {r1, r2}
	mov r4, r0
	mov r2, #0x57000
	str r1, [sp, #0xc]
	sub r1, r2, #0x82000
	str r2, [sp, #0x10]
	add r0, r4, #0x500
	ldrh ip, [r0, #0x8c]
	mov r3, r1
	add r0, r4, #0x2ac
	str ip, [sp, #0x14]
	bl sub_020041A4
	mov r2, #0x58000
	ldr r3, _020198D8 ; =0x00006739
	add r0, r4, #0x200
	strh r3, [r0, #0xb4]
	mov r3, #0x5a000
	str r3, [sp]
	mov r0, #0x5c000
	stmib sp, {r0, r3}
	str r0, [sp, #0xc]
	sub r1, r2, #0x82000
	str r2, [sp, #0x10]
	add r0, r4, #0x500
	ldrh ip, [r0, #0x8c]
	mov r3, r1
	add r0, r4, #0x24c
	add ip, ip, #1
	str ip, [sp, #0x14]
	bl sub_020041A4
	mov r2, #0x5a000
	ldr r3, _020198DC ; =0x0000294A
	add r0, r4, #0x200
	strh r3, [r0, #0x54]
	sub r1, r2, #0x84000
	str r2, [sp]
	stmib sp, {r1, r2}
	str r1, [sp, #0xc]
	mov r2, #0x58000
	str r2, [sp, #0x10]
	add r0, r4, #0x500
	ldrh ip, [r0, #0x8c]
	mov r3, r1
	add r0, r4, #0x1ec
	add ip, ip, #2
	str ip, [sp, #0x14]
	bl sub_020041A4
	mov r1, #0x11
	add r0, r4, #0x100
	strh r1, [r0, #0xf4]
	mov r0, #0x5a000
	sub r1, r0, #0x84000
	str r0, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, #0x58000
	str r2, [sp, #0x10]
	add r0, r4, #0x500
	ldrh ip, [r0, #0x8c]
	add r0, r4, #0x18c
	mov r3, r1
	add ip, ip, #3
	str ip, [sp, #0x14]
	bl sub_020041A4
	mov r1, #0x5e000
	str r1, [sp]
	mov r0, #0x60000
	stmib sp, {r0, r1}
	str r0, [sp, #0xc]
	mov r2, #0x44000
	str r2, [sp, #0x10]
	add r0, r4, #0x500
	ldrh r3, [r0, #0x8c]
	sub r1, r2, #0xa4000
	add r0, r4, #0x30c
	add r3, r3, #6
	str r3, [sp, #0x14]
	mov r3, r1
	bl sub_020041A4
	mov r2, #0
	str r2, [r4, #0x344]
	str r2, [r4, #0x348]
	str r2, [r4, #0x34c]
	mov r1, #0x18000
	str r1, [r4, #0x350]
	mov r0, #0xc0000
	str r0, [r4, #0x354]
	str r1, [r4, #0x358]
	str r0, [r4, #0x35c]
	str r2, [r4, #0x360]
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_020198D8: .word 0x00006739
_020198DC: .word 0x0000294A
	arm_func_end sub_02019750

	arm_func_start sub_020198E0
sub_020198E0: ; 0x020198E0
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x18
	mov r3, #0x8000
	str r3, [r0, #0x464]
	mov r2, #0
	str r2, [r0, #0x468]
	str r3, [r0, #0x46c]
	str r3, [r0, #0x470]
	mov r1, #0x10000
	str r1, [r0, #0x474]
	str r3, [r0, #0x478]
	str r1, [r0, #0x47c]
	str r2, [r0, #0x480]
	mov r1, #0x18000
	str r1, [r0, #0x4c4]
	str r2, [r0, #0x4c8]
	str r1, [r0, #0x4cc]
	str r3, [r0, #0x4d0]
	mov r1, #0x20000
	str r1, [r0, #0x4d4]
	str r3, [r0, #0x4d8]
	str r1, [r0, #0x4dc]
	str r2, [r0, #0x4e0]
	mov r1, #0x28000
	str r1, [r0, #0x524]
	str r2, [r0, #0x528]
	str r1, [r0, #0x52c]
	str r3, [r0, #0x530]
	mov r1, #0x30000
	str r1, [r0, #0x534]
	str r3, [r0, #0x538]
	str r1, [r0, #0x53c]
	mov ip, #0x56000
	str r2, [r0, #0x540]
	mov r2, #0x4e000
	str ip, [sp]
	sub r3, ip, #0x7e000
	stmib sp, {r3, ip}
	str r3, [sp, #0xc]
	add r3, r0, #0x500
	str r2, [sp, #0x10]
	ldrh ip, [r3, #0x8c]
	sub r1, r2, #0x7e000
	add r0, r0, #0x2c
	add ip, ip, #5
	mov r3, r1
	add r0, r0, #0x400
	str ip, [sp, #0x14]
	bl sub_020041A4
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	arm_func_end sub_020198E0

	arm_func_start sub_020199AC
sub_020199AC: ; 0x020199AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02019A04
	mov r0, r4
	bl sub_02019BF8
	mov r0, r4
	bl sub_02019F44
	add r0, r4, #0x500
	ldrh r0, [r0, #0x92]
	tst r0, #0x80
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x5e0]
	ldr r0, [r0, #0xc]
	bl sub_020089EC
	add r0, r4, #0x500
	ldrh r0, [r0, #0x96]
	ldr r1, [r4, #0x59c]
	cmp r1, r0, lsl #12
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl sub_0201A0B0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020199AC

	arm_func_start sub_02019A04
sub_02019A04: ; 0x02019A04
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r8, r0
	add r0, r8, #0x500
	ldrh r2, [r0, #0x96]
	ldr r1, [r8, #0x59c]
	cmp r1, r2, lsl #12
	bge _02019A54
	ldrh r0, [r0, #0x92]
	tst r0, #0x80
	ldrne r0, [r8, #0x5c4]
	addne r0, r1, r0
	addeq r0, r1, #0x33
	addeq r0, r0, #0x300
	str r0, [r8, #0x59c]
	add r0, r8, #0x500
	ldrh r1, [r0, #0x92]
	tst r1, #4
	orreq r1, r1, #4
	streqh r1, [r0, #0x92]
	arm_func_end sub_02019A04
_02019A54:
	add r0, r8, #0x500
	ldrh r1, [r0, #0x96]
	ldr r0, [r8, #0x59c]
	cmp r0, r1, lsl #12
	mov r0, r1, lsl #0xc
	strgt r0, [r8, #0x59c]
	add r0, r8, #0x500
	ldrh r3, [r0, #0x92]
	tst r3, #4
	beq _02019A90
	ldrh r1, [r0, #0x96]
	ldr r2, [r8, #0x59c]
	cmp r2, r1, lsl #12
	biceq r1, r3, #4
	streqh r1, [r0, #0x92]
_02019A90:
	ldr r1, [r8, #0x59c]
	ldr r0, [r8, #0x5a0]
	cmp r1, r0
	strgt r1, [r8, #0x5a0]
	ldr r1, [r8, #0x59c]
	ldr r0, [r8, #0x5a0]
	cmp r1, r0
	bge _02019ACC
	sub r0, r0, #0x99
	sub r0, r0, #0x100
	str r0, [r8, #0x5a0]
	add r0, r8, #0x500
	ldrh r1, [r0, #0x92]
	orr r1, r1, #8
	strh r1, [r0, #0x92]
_02019ACC:
	add r0, r8, #0x500
	ldrh r0, [r0, #0x98]
	ldr r4, [r8, #0x59c]
	mov r7, r0, lsl #0xc
	mov r0, r4, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r6, r7, asr #0x1f
	mov r2, r7
	mov r3, r6
	orr r1, r1, r4, lsr #20
	mov r0, r4, lsl #0xc
	bl _ll_div
	mov r5, r0
	mov r0, #0x88000
	umull r3, r2, r5, r0
	mov r1, r5, asr #0x1f
	mov r4, r3, lsr #0xc
	mla r2, r1, r0, r2
	ldr ip, [r8, #0x5a0]
	orr r4, r4, r2, lsl #20
	mov r0, ip, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r2, r7
	mov r3, r6
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	bl _ll_div
	mov r2, #0x5b000
	sub r1, r4, #0x2b000
	str r2, [sp]
	stmib sp, {r1, r2}
	str r1, [sp, #0xc]
	mov r2, #0x57000
	str r2, [sp, #0x10]
	add r1, r8, #0x500
	ldrh r6, [r1, #0x8c]
	sub r1, r2, #0x82000
	mov r4, #0x88000
	add r6, r6, #3
	str r6, [sp, #0x14]
	umull ip, r6, r0, r4
	mov r7, r0, asr #0x1f
	mla r6, r7, r4, r6
	mov r4, ip, lsr #0xc
	mov r3, r1
	add r0, r8, #0x18c
	orr r4, r4, r6, lsl #20
	bl sub_020041A4
	mov r1, #0x5b000
	sub r0, r4, #0x2b000
	str r1, [sp]
	stmib sp, {r0, r1}
	str r0, [sp, #0xc]
	mov r2, #0x57000
	str r2, [sp, #0x10]
	add r0, r8, #0x500
	ldrh r3, [r0, #0x8c]
	sub r1, r2, #0x82000
	add r0, r8, #0x1ec
	add r3, r3, #2
	str r3, [sp, #0x14]
	mov r3, r1
	bl sub_020041A4
	mov r0, r8
	mov r1, r5
	bl sub_02019D70
	mov r1, r5
	mov r0, r8
	bl sub_02019E64
	add r0, r8, #0x500
	ldrh r1, [r0, #0x92]
	bic r1, r1, #8
	strh r1, [r0, #0x92]
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start sub_02019BF8
sub_02019BF8: ; 0x02019BF8
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	bl sub_0201A160
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x500
	ldrh r0, [r0, #0xaa]
	mov r3, #0
	tst r0, #0x10
	moveq r0, #0x18000
	moveq r1, #0x3000
	moveq r2, #0x20000
	beq _02019C40
	mov r0, #0x20000
	mov r1, #0x3000
	mov r2, #0x28000
	arm_func_end sub_02019BF8
_02019C40:
	str r0, [r4, #0x3a4]
	str r3, [r4, #0x3a8]
	str r0, [r4, #0x3ac]
	str r1, [r4, #0x3b0]
	str r2, [r4, #0x3b4]
	str r1, [r4, #0x3b8]
	str r2, [r4, #0x3bc]
	str r3, [r4, #0x3c0]
	add r0, r4, #0x500
	ldrh r2, [r0, #0xaa]
	tst r2, #4
	beq _02019D20
	ldrh r1, [r0, #0xac]
	cmp r1, #0x20
	bne _02019CB8
	bic r1, r2, #8
	strh r1, [r0, #0xaa]
	ldrh r3, [r0, #0xaa]
	mov r2, #0
	mov r1, #0x42
	bic r3, r3, #4
	strh r3, [r0, #0xaa]
	ldrh r3, [r0, #0xaa]
	orr r3, r3, #0x10
	strh r3, [r0, #0xaa]
	strb r2, [r4, #0x5a8]
	strh r2, [r0, #0xac]
	ldr r0, [r4, #0x188]
	bl sub_02034C44
	b _02019D20
_02019CB8:
	bhs _02019D20
	ldrb r1, [r4, #0x5a8]
	add r1, r1, #2
	strb r1, [r4, #0x5a8]
	ldrh r0, [r0, #0xac]
	cmp r0, #0
	beq _02019D10
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #28
	adds r0, r1, r0, ror #28
	bne _02019D10
	mov r0, #0
	strb r0, [r4, #0x5a8]
	ldr r0, [r4, #0x188]
	mov r1, #0x3f
	bl sub_02034F3C
	ldr r0, [r4, #0x188]
	mov r1, #0x42
	bl sub_02034C44
	ldr r0, [r4, #0x188]
	mov r1, #0x7f
	bl sub_02034F3C
_02019D10:
	add r0, r4, #0x500
	ldrh r1, [r0, #0xac]
	add r1, r1, #1
	strh r1, [r0, #0xac]
_02019D20:
	add r0, r4, #0x500
	ldrh r3, [r0, #0xae]
	mov r1, #0x53000
	mov r2, #0x50000
	sub r3, r3, #0x2b
	str r1, [sp]
	mov r3, r3, lsl #0xc
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r0, [r0, #0x8c]
	sub r1, r2, #0x7b000
	mov r3, r1
	add ip, r0, #4
	add r0, r4, #0x36c
	str ip, [sp, #0x14]
	bl sub_020041A4
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}

	arm_func_start sub_02019D70
sub_02019D70: ; 0x02019D70
	stmdb sp!, {r4, lr}
	ldr r2, _02019E5C ; =0x00000666
	mov r4, r0
	cmp r1, r2
	ble _02019DA4
	mov r1, #0
	add r0, r4, #0x500
	mov r2, r1
	mov ip, r1
	strh r1, [r0, #0x90]
	mov r0, #0x4000
	mov r3, #0x8000
	b _02019E38
	arm_func_end sub_02019D70
_02019DA4:
	add r0, r4, #0x500
	cmp r1, r2, lsr #1
	ldrh r1, [r0, #0x90]
	ble _02019DF8
	cmp r1, #1
	beq _02019DD4
	ldrh r0, [r0, #0x92]
	tst r0, #8
	beq _02019DD4
	ldr r0, [r4, #0x188]
	mov r1, #0x104
	bl sub_02034C44
_02019DD4:
	mov r2, #0
	add r0, r4, #0x500
	mov r1, #1
	mov ip, r2
	strh r1, [r0, #0x90]
	mov r1, #0x8000
	mov r0, #0x4000
	mov r3, #0x10000
	b _02019E38
_02019DF8:
	cmp r1, #2
	beq _02019E18
	ldrh r0, [r0, #0x92]
	tst r0, #8
	beq _02019E18
	ldr r0, [r4, #0x188]
	ldr r1, _02019E60 ; =0x00000105
	bl sub_02034C44
_02019E18:
	mov r2, #0
	add r0, r4, #0x500
	mov r1, #2
	mov ip, r2
	strh r1, [r0, #0x90]
	mov r1, #0x10000
	mov r0, #0x4000
	mov r3, #0x18000
_02019E38:
	str r1, [r4, #0x1c4]
	str r2, [r4, #0x1c8]
	str r1, [r4, #0x1cc]
	str r0, [r4, #0x1d0]
	str r3, [r4, #0x1d4]
	str r0, [r4, #0x1d8]
	str r3, [r4, #0x1dc]
	str ip, [r4, #0x1e0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02019E5C: .word 0x00000666
_02019E60: .word 0x00000105

	arm_func_start sub_02019E64
sub_02019E64: ; 0x02019E64
	add r3, r0, #0x500
	ldrh ip, [r3, #0x92]
	tst ip, #0x10
	bne _02019E9C
	ldr r2, _02019F3C ; =0x00000333
	cmp r1, r2
	bge _02019E9C
	orr r2, ip, #0x10
	strh r2, [r3, #0x92]
	ldrh ip, [r3, #0x92]
	mov r2, #0xa000
	orr ip, ip, #0x20
	strh ip, [r3, #0x92]
	str r2, [r0, #0x5a4]
	arm_func_end sub_02019E64
_02019E9C:
	add r3, r0, #0x500
	ldrh ip, [r3, #0x92]
	tst ip, #0x10
	beq _02019ECC
	ldr r2, _02019F3C ; =0x00000333
	cmp r1, r2
	blt _02019ECC
	bic r1, ip, #0x10
	ldr r2, _02019F40 ; =0x0000294A
	strh r1, [r3, #0x92]
	add r1, r0, #0x200
	strh r2, [r1, #0x54]
_02019ECC:
	add r1, r0, #0x500
	ldrh r3, [r1, #0x92]
	tst r3, #0x10
	bxeq lr
	tst r3, #0x20
	ldr r2, [r0, #0x5a4]
	beq _02019F00
	cmp r2, #0x1f000
	addlt r1, r2, #0x1000
	strlt r1, [r0, #0x5a4]
	bicge r2, r3, #0x20
	strgeh r2, [r1, #0x92]
	b _02019F14
_02019F00:
	cmp r2, #0
	subgt r1, r2, #0x1000
	strgt r1, [r0, #0x5a4]
	orrle r2, r3, #0x20
	strleh r2, [r1, #0x92]
_02019F14:
	ldr r1, [r0, #0x5a4]
	add r0, r0, #0x200
	mov r1, r1, lsl #4
	mov r2, r1, lsr #0x10
	cmp r2, #0x1f
	movhi r2, #0x1f
	orr r1, r2, r2, lsl #5
	orr r1, r1, r2, lsl #10
	strh r1, [r0, #0x54]
	bx lr
	.align 2, 0
_02019F3C: .word 0x00000333
_02019F40: .word 0x0000294A

	arm_func_start sub_02019F44
sub_02019F44: ; 0x02019F44
	add r1, r0, #0x500
	ldrh r2, [r1, #0x92]
	tst r2, #0x40
	beq _02019F90
	ldr r2, [r0, #0x5b4]
	cmp r2, #0xf000
	ble _02019F90
	ldrh r3, [r1, #0xbc]
	ldrh r2, [r1, #0xbe]
	cmp r3, r2
	movhs r1, #0xf000
	strhs r1, [r0, #0x5b4]
	bhs _02019F90
	add r2, r3, #1
	strh r2, [r1, #0xbc]
	ldr r2, [r0, #0x5b4]
	ldr r1, [r0, #0x5b8]
	sub r1, r2, r1
	str r1, [r0, #0x5b4]
	arm_func_end sub_02019F44
_02019F90:
	add r1, r0, #0x500
	ldrh r2, [r1, #0x92]
	tst r2, #0x40
	bne _02019FDC
	ldr r2, [r0, #0x5b4]
	cmp r2, #0x1f000
	bge _02019FDC
	ldrh r3, [r1, #0xbc]
	ldrh r2, [r1, #0xbe]
	cmp r3, r2
	movhs r1, #0x1f000
	strhs r1, [r0, #0x5b4]
	bhs _02019FDC
	add r2, r3, #1
	strh r2, [r1, #0xbc]
	ldr r2, [r0, #0x5b4]
	ldr r1, [r0, #0x5b8]
	add r1, r2, r1
	str r1, [r0, #0x5b4]
_02019FDC:
	ldr r1, [r0, #0x5b4]
	add r0, r0, #0x500
	mov r1, r1, asr #0xc
	strh r1, [r0, #0xb2]
	ldrh r1, [r0, #0xb2]
	cmp r1, #0x1f
	movhi r1, #0x1f
	strhih r1, [r0, #0xb2]
	bx lr

	arm_func_start sub_0201A000
sub_0201A000: ; 0x0201A000
	mov r3, r1, lsl #0xc
	str r3, [r0, #0x59c]
	add r0, r0, #0x500
	strh r1, [r0, #0x96]
	strh r2, [r0, #0x98]
	bx lr
	arm_func_end sub_0201A000

	arm_func_start sub_0201A018
sub_0201A018: ; 0x0201A018
	add r0, r0, #0x500
	strh r1, [r0, #0x96]
	bx lr
	arm_func_end sub_0201A018

	arm_func_start sub_0201A024
sub_0201A024: ; 0x0201A024
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x184]
	mov r4, r1
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008E50
	add r1, r5, #0x500
	ldrh r2, [r1, #0x96]
	ldr r1, [r5, #0x59c]
	mov ip, r0, lsl #1
	rsb r3, r1, r2, lsl #12
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r2, ip, lsl #0xc
	orr r1, r1, r3, lsr #20
	mov r0, r3, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	str r0, [r5, #0x5c4]
	add r0, r5, #0x500
	ldr r2, [r5, #0x5e0]
	ldrh r1, [r0, #0xc0]
	ldr r0, [r2, #0xc]
	mov r2, r4
	bl sub_02008990
	ldr r0, [r5, #0x188]
	ldr r1, _0201A0AC ; =0x00000106
	bl sub_02034C44
	add r0, r5, #0x500
	ldrh r1, [r0, #0x92]
	orr r1, r1, #0x80
	strh r1, [r0, #0x92]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0201A0AC: .word 0x00000106
	arm_func_end sub_0201A024

	arm_func_start sub_0201A0B0
sub_0201A0B0: ; 0x0201A0B0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x188]
	ldr r1, _0201A0D8 ; =0x00000106
	bl sub_02034C5C
	add r0, r4, #0x500
	ldrh r1, [r0, #0x92]
	bic r1, r1, #0x80
	strh r1, [r0, #0x92]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0201A0D8: .word 0x00000106
	arm_func_end sub_0201A0B0

	arm_func_start sub_0201A0DC
sub_0201A0DC: ; 0x0201A0DC
	add r0, r0, #0x500
	ldrh r0, [r0, #0x92]
	tst r0, #0x80
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_0201A0DC

	arm_func_start sub_0201A0F4
sub_0201A0F4: ; 0x0201A0F4
	add r0, r0, #0x500
	ldrh r0, [r0, #0x92]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_0201A0F4

	arm_func_start sub_0201A10C
sub_0201A10C: ; 0x0201A10C
	add r0, r0, #0x500
	strh r1, [r0, #0x8c]
	ldrh r0, [r0, #0x8c]
	add r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end sub_0201A10C

	arm_func_start sub_0201A128
sub_0201A128: ; 0x0201A128
	add r0, r0, #0x500
	ldrh r0, [r0, #0x92]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_0201A128

	arm_func_start sub_0201A140
sub_0201A140: ; 0x0201A140
	add r0, r0, #0x500
	cmp r1, #0
	ldrneh r1, [r0, #0x92]
	orrne r1, r1, #1
	ldreqh r1, [r0, #0x92]
	biceq r1, r1, #1
	strh r1, [r0, #0x92]
	bx lr
	arm_func_end sub_0201A140

	arm_func_start sub_0201A160
sub_0201A160: ; 0x0201A160
	add r0, r0, #0x500
	ldrh r0, [r0, #0xaa]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_0201A160

	arm_func_start sub_0201A178
sub_0201A178: ; 0x0201A178
	add r0, r0, #0x500
	cmp r1, #0
	ldrneh r1, [r0, #0xaa]
	orrne r1, r1, #1
	ldreqh r1, [r0, #0xaa]
	biceq r1, r1, #1
	strh r1, [r0, #0xaa]
	bx lr
	arm_func_end sub_0201A178

	arm_func_start sub_0201A198
sub_0201A198: ; 0x0201A198
	add r0, r0, #0x500
	ldrh r0, [r0, #0x90]
	bx lr
	arm_func_end sub_0201A198

	arm_func_start sub_0201A1A4
sub_0201A1A4: ; 0x0201A1A4
	add r2, r0, #0x500
	strh r1, [r2, #0xae]
	cmp r1, #0
	bne _0201A1CC
	ldrh r1, [r2, #0xaa]
	bic r1, r1, #0x14
	strh r1, [r2, #0xaa]
	ldrh r1, [r2, #0xaa]
	orr r1, r1, #2
	strh r1, [r2, #0xaa]
	arm_func_end sub_0201A1A4
_0201A1CC:
	add r1, r0, #0x500
	ldrh r3, [r1, #0xb0]
	ldrh r2, [r1, #0xae]
	add r0, r0, #0x500
	cmp r2, r3
	strhih r3, [r1, #0xae]
	ldrh r2, [r0, #0xae]
	ldrh r1, [r0, #0xb0]
	cmp r2, r1
	bxne lr
	ldrh r1, [r0, #0xaa]
	tst r1, #2
	bxeq lr
	bic r1, r1, #2
	strh r1, [r0, #0xaa]
	ldrh r2, [r0, #0xaa]
	mov r1, #0
	orr r2, r2, #4
	strh r2, [r0, #0xaa]
	strh r1, [r0, #0xac]
	bx lr

	arm_func_start sub_0201A220
sub_0201A220: ; 0x0201A220
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r5, r1
	mov r6, r0
	mov r1, r4
	bl sub_0201A26C
	mov r0, r6
	mov r1, r5
	bl sub_0201A1A4
	cmp r4, r5
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r6, #0x500
	ldrh r1, [r0, #0xaa]
	bic r1, r1, #6
	strh r1, [r0, #0xaa]
	ldrh r1, [r0, #0xaa]
	orr r1, r1, #0x10
	strh r1, [r0, #0xaa]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0201A220

	arm_func_start sub_0201A26C
sub_0201A26C: ; 0x0201A26C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r6, r0
	add r0, r6, #0x500
	mov r2, #0
	strh r2, [r0, #0xae]
	strh r1, [r0, #0xb0]
	ldrh r4, [r0, #0xb0]
	mov r1, #0x53000
	mov r2, #0x50000
	sub r3, r4, #0x2b
	str r1, [sp]
	mov r3, r3, lsl #0xc
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r0, [r0, #0x8c]
	sub r3, r4, #8
	mov r4, r3, lsl #0x10
	add r5, r0, #3
	sub r1, r2, #0x7b000
	mov r3, r1
	add r0, r6, #0x3cc
	str r5, [sp, #0x14]
	mov r4, r4, lsr #0x10
	bl sub_020041A4
	mov r2, #0x4e000
	ldr r5, _0201A384 ; =0x0000294A
	add r0, r6, #0x300
	strh r5, [r0, #0xd4]
	sub r3, r4, #0x28
	mov r0, #0x56000
	str r0, [sp]
	mov r5, r3, lsl #0xc
	str r5, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	sub r1, r2, #0x76000
	str r2, [sp, #0x10]
	add r0, r6, #0x500
	ldrh lr, [r0, #0x8c]
	add ip, r6, #0x8c
	add r0, ip, #0x400
	add ip, lr, #5
	mov r3, r1
	str ip, [sp, #0x14]
	bl sub_020041A4
	add r0, r4, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	sub r1, r0, #0x28
	mov r0, #0x56000
	mov r1, r1, lsl #0xc
	stmia sp, {r0, r1}
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, #0x4e000
	add r0, r6, #0xec
	add r1, r6, #0x500
	str r2, [sp, #0x10]
	ldrh r4, [r1, #0x8c]
	add r0, r0, #0x400
	mov r1, r5
	add r4, r4, #5
	mov r3, r5
	str r4, [sp, #0x14]
	bl sub_020041A4
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0201A384: .word 0x0000294A
	arm_func_end sub_0201A26C

	arm_func_start sub_0201A388
sub_0201A388: ; 0x0201A388
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_0201A128
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl sub_0201A410
	mov r0, r5
	mov r1, r4
	bl sub_0201A458
	mov r0, r5
	mov r1, r4
	bl sub_0201A588
	mov r0, r5
	mov r1, r4
	bl sub_0201A774
	mov r0, r5
	bl sub_0201A160
	cmp r0, #0
	beq _0201A3EC
	mov r0, r5
	mov r1, r4
	bl sub_0201A83C
	arm_func_end sub_0201A388
_0201A3EC:
	add r0, r5, #0x500
	ldrh r0, [r0, #0x92]
	tst r0, #0x80
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl sub_0201AA2C
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201A40C
sub_0201A40C: ; 0x0201A40C
	bx lr
	arm_func_end sub_0201A40C

	arm_func_start sub_0201A410
sub_0201A410: ; 0x0201A410
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x5d4]
	add r2, r0, #0x500
	ldr r3, [r3]
	str r3, [r0, #0x364]
	ldr r3, [r0, #0x5d4]
	ldr r3, [r3, #4]
	str r3, [r0, #0x368]
	ldrh r3, [r2, #0xb2]
	str r3, [r0, #0x320]
	ldrh r2, [r2, #0x8c]
	add r2, r2, #6
	str r2, [r0, #0x310]
	add r0, r0, #0x30c
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201A410

	arm_func_start sub_0201A458
sub_0201A458: ; 0x0201A458
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	add r0, r7, #0x500
	ldrh r3, [r0, #0x96]
	mov ip, #0x51000
	rsb ip, ip, #0
	cmp r3, #0x64
	subhs r5, r3, #0x64
	movlo r5, r3
	ldr r2, _0201A584 ; =0x66666667
	mov r6, r1
	smull r1, r4, r2, r5
	mov r0, r5, lsr #0x1f
	add r4, r0, r4, asr #2
	mov r0, #0xa
	mul r0, r4, r0
	mov r1, #0x56000
	str ip, [sp, #8]
	str r1, [sp, #0xc]
	cmp r3, #0x64
	sub r5, r5, r0
	blo _0201A518
	sub ip, r1, #0xae000
	str r6, [sp, #4]
	sub r0, sp, #4
	str ip, [r0]
	str r1, [r0, #4]
	mov r1, #1
	ldr r3, [r0]
	mov r0, r7
	mov r2, r1
	str ip, [sp, #8]
	bl sub_0201A6A8
	mov ip, #0x51000
	rsb ip, ip, #0
	str r6, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0xc]
	str ip, [r1]
	str r0, [r1, #4]
	ldr r3, [r1]
	mov r0, r7
	mov r1, r4
	mov r2, #1
	str ip, [sp, #8]
	bl sub_0201A6A8
	b _0201A548
	arm_func_end sub_0201A458
_0201A518:
	cmp r4, #0
	ble _0201A548
	str r6, [sp, #4]
	sub r0, sp, #4
	str ip, [r0]
	str r1, [r0, #4]
	ldr r3, [r0]
	mov r0, r7
	mov r1, r4
	mov r2, #1
	str ip, [sp, #8]
	bl sub_0201A6A8
_0201A548:
	mov r4, #0x48000
	rsb r4, r4, #0
	str r6, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0xc]
	str r4, [r1]
	str r0, [r1, #4]
	ldr r3, [r1]
	mov r0, r7
	mov r1, r5
	mov r2, #1
	str r4, [sp, #8]
	bl sub_0201A6A8
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0201A584: .word 0x66666667

	arm_func_start sub_0201A588
sub_0201A588: ; 0x0201A588
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r8, r0
	add r0, r8, #0x500
	ldrh r5, [r0, #0x98]
	mov r7, r1
	ldr r2, _0201A6A4 ; =0x66666667
	cmp r5, #0x64
	subhs r5, r5, #0x64
	smull r1, r4, r2, r5
	mov r0, r5, lsr #0x1f
	add r4, r0, r4, asr #2
	mov r1, #0xa
	mov r6, #0
	mul sb, r4, r1
	sub lr, r6, #0x42000
	mov ip, #0x57000
	str r7, [sp, #4]
	sub r0, sp, #4
	str lr, [r0]
	str ip, [r0, #4]
	ldr r3, [r0]
	mov r0, r8
	mov r2, #2
	str lr, [sp, #8]
	str ip, [sp, #0xc]
	sub r5, r5, sb
	bl sub_0201A6A8
	add r0, r8, #0x500
	ldrh r0, [r0, #0x98]
	cmp r0, #0x64
	blo _0201A63C
	mov r6, #0x4000
	sub ip, r6, #0x41000
	str r7, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0xc]
	str ip, [r1]
	str r0, [r1, #4]
	ldr r3, [r1]
	mov r0, r8
	mov r1, #1
	mov r2, #2
	str ip, [sp, #8]
	bl sub_0201A6A8
	arm_func_end sub_0201A588
_0201A63C:
	sub ip, r6, #0x3c000
	str r7, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0xc]
	str ip, [r1]
	str r0, [r1, #4]
	ldr r3, [r1]
	mov r0, r8
	mov r1, r4
	mov r2, #2
	str ip, [sp, #8]
	bl sub_0201A6A8
	sub r4, r6, #0x35000
	str r7, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0xc]
	str r4, [r1]
	str r0, [r1, #4]
	ldr r3, [r1]
	mov r0, r8
	mov r1, r5
	mov r2, #2
	str r4, [sp, #8]
	bl sub_0201A6A8
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0201A6A4: .word 0x66666667

	arm_func_start sub_0201A6A8
sub_0201A6A8: ; 0x0201A6A8
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	add r3, r0, r2, lsl #2
	cmp r2, #1
	ldr r2, [r3, #0x5c8]
	moveq ip, #0x10
	ldr r2, [r2]
	moveq lr, ip
	str r2, [r0, #0x584]
	ldr r2, [r3, #0x5c8]
	movne ip, #8
	mul r4, ip, r1
	ldr r2, [r2, #4]
	add r1, r1, #1
	mul r1, ip, r1
	ldr r3, [sp, #0x1c]
	str r2, [r0, #0x588]
	ldr r2, [sp, #0x20]
	str r3, [r0, #0x564]
	movne lr, #0x10
	str r2, [r0, #0x568]
	mov ip, ip, lsl #0xc
	str ip, [r0, #0x56c]
	mov ip, lr, lsl #0xc
	str ip, [r0, #0x570]
	mov r4, r4, lsl #0xc
	str r4, [r0, #0x574]
	mov r4, #0
	str r4, [r0, #0x578]
	mov r1, r1, lsl #0xc
	str r1, [r0, #0x57c]
	str ip, [r0, #0x580]
	add ip, r0, #0x500
	ldrh r4, [ip, #0xb2]
	add lr, r0, #0x14c
	str r2, [sp, #4]
	str r4, [r0, #0x560]
	ldrh ip, [ip, #0x8c]
	ldr r1, [sp, #0x24]
	str r3, [sp]
	add r2, ip, #7
	str r2, [r0, #0x550]
	add r0, lr, #0x400
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_0201A6A8

	arm_func_start sub_0201A774
sub_0201A774: ; 0x0201A774
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x500
	ldrh r2, [r0, #0xb2]
	mov r4, r1
	str r2, [r5, #0x1a0]
	ldrh r2, [r0, #0xb2]
	str r2, [r5, #0x200]
	ldrh r2, [r0, #0xb2]
	str r2, [r5, #0x2c0]
	ldrh r2, [r0, #0xb2]
	str r2, [r5, #0x260]
	ldrh r0, [r0, #0x96]
	cmp r0, #0
	beq _0201A7D8
	ldr r2, [r5, #0x5dc]
	add r0, r5, #0x18c
	ldr r2, [r2]
	str r2, [r5, #0x1e4]
	ldr r2, [r5, #0x5dc]
	ldr r2, [r2, #4]
	str r2, [r5, #0x1e8]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	arm_func_end sub_0201A774
_0201A7D8:
	add r2, r5, #0x500
	ldrh r3, [r2, #0x8c]
	add r0, r5, #0x1ec
	mov r1, r4
	add r3, r3, #2
	str r3, [r5, #0x1f0]
	ldrh r3, [r2, #0x8c]
	str r3, [r5, #0x2b0]
	ldrh r2, [r2, #0x8c]
	add r2, r2, #1
	str r2, [r5, #0x250]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0x2ac
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0x24c
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201A83C
sub_0201A83C: ; 0x0201A83C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r2, r5, #0x500
	ldrh r2, [r2, #0xae]
	mov r4, r1
	cmp r2, #0
	beq _0201A85C
	bl sub_0201A8C0
	arm_func_end sub_0201A83C
_0201A85C:
	mov r0, r5
	mov r1, r4
	bl sub_0201A890
	mov r0, r5
	mov r1, r4
	bl sub_0201A948
	mov r0, r5
	mov r1, r4
	bl sub_0201A994
	mov r0, r5
	mov r1, r4
	bl sub_0201A9E0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201A890
sub_0201A890: ; 0x0201A890
	stmdb sp!, {r3, lr}
	add r2, r0, #0x500
	ldrh r3, [r2, #0xb2]
	str r3, [r0, #0x3e0]
	ldrh r2, [r2, #0x8c]
	add r2, r2, #3
	str r2, [r0, #0x3d0]
	add r0, r0, #0x3cc
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201A890

	arm_func_start sub_0201A8C0
sub_0201A8C0: ; 0x0201A8C0
	stmdb sp!, {r3, lr}
	add r2, r0, #0x500
	ldrh r2, [r2, #0xaa]
	tst r2, #4
	beq _0201A904
	mov r3, #0
	str r3, [r0, #0x3c4]
	str r3, [r0, #0x3c8]
	ldrb r2, [r0, #0x5a8]
	cmp r2, #0
	subne r2, r2, #1
	andne r3, r2, #0xff
	orr r2, r3, r3, lsl #5
	orr r3, r2, r3, lsl #10
	add r2, r0, #0x300
	strh r3, [r2, #0x74]
	b _0201A91C
	arm_func_end sub_0201A8C0
_0201A904:
	ldr r2, [r0, #0x5dc]
	ldr r2, [r2]
	str r2, [r0, #0x3c4]
	ldr r2, [r0, #0x5dc]
	ldr r2, [r2, #4]
	str r2, [r0, #0x3c8]
_0201A91C:
	add r2, r0, #0x500
	ldrh r3, [r2, #0xb2]
	str r3, [r0, #0x380]
	ldrh r2, [r2, #0x8c]
	add r2, r2, #4
	str r2, [r0, #0x370]
	add r0, r0, #0x36c
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}

	arm_func_start sub_0201A948
sub_0201A948: ; 0x0201A948
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x5d8]
	add r2, r0, #0x500
	ldr ip, [r3]
	add r3, r0, #0x2c
	str ip, [r0, #0x484]
	ldr ip, [r0, #0x5d8]
	ldr ip, [ip, #4]
	str ip, [r0, #0x488]
	ldrh ip, [r2, #0xb2]
	str ip, [r0, #0x440]
	ldrh r2, [r2, #0x8c]
	add r2, r2, #5
	str r2, [r0, #0x430]
	add r0, r3, #0x400
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201A948

	arm_func_start sub_0201A994
sub_0201A994: ; 0x0201A994
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x5d8]
	add r2, r0, #0x500
	ldr ip, [r3]
	add r3, r0, #0x8c
	str ip, [r0, #0x4e4]
	ldr ip, [r0, #0x5d8]
	ldr ip, [ip, #4]
	str ip, [r0, #0x4e8]
	ldrh ip, [r2, #0xb2]
	str ip, [r0, #0x4a0]
	ldrh r2, [r2, #0x8c]
	add r2, r2, #5
	str r2, [r0, #0x490]
	add r0, r3, #0x400
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201A994

	arm_func_start sub_0201A9E0
sub_0201A9E0: ; 0x0201A9E0
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x5d8]
	add r2, r0, #0x500
	ldr ip, [r3]
	add r3, r0, #0xec
	str ip, [r0, #0x544]
	ldr ip, [r0, #0x5d8]
	ldr ip, [ip, #4]
	str ip, [r0, #0x548]
	ldrh ip, [r2, #0xb2]
	str ip, [r0, #0x500]
	ldrh r2, [r2, #0x8c]
	add r2, r2, #5
	str r2, [r0, #0x4f0]
	add r0, r3, #0x400
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201A9E0

	arm_func_start sub_0201AA2C
sub_0201AA2C: ; 0x0201AA2C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x5e0]
	ldr r4, [r6, #0xc4]
	ldr r2, [r0]
	mov r0, #0
	str r2, [r4, #0x2c]
	str r0, [r4, #0x30]
	ldr r2, [r6, #0x5e0]
	add r0, r6, #0x500
	ldr r2, [r2, #4]
	mov r5, r1
	str r2, [r4, #0x34]
	ldr r1, [r6, #0x5e0]
	ldr r1, [r1, #8]
	str r1, [r4, #0x38]
	ldr r2, [r6, #0x5e0]
	ldrh r1, [r0, #0xc0]
	ldr r0, [r2, #0xc]
	bl sub_02008828
	strh r0, [r4, #0x2a]
	add r0, r6, #0x500
	ldrh r1, [r0, #0xb2]
	mov r3, #0
	mov r2, #0x56000
	str r1, [r4, #0x14]
	ldrh r6, [r0, #0x8c]
	mov r0, r4
	mov r1, r5
	add r5, r6, #8
	str r5, [r4, #4]
	str r3, [r4, #0x18]
	str r2, [r4, #0x1c]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0201AA2C

	arm_func_start sub_0201AAC0
sub_0201AAC0: ; 0x0201AAC0
	cmp r1, #0
	blt _0201AAD8
	cmp r1, #7
	addlt r0, r0, r1, lsl #2
	ldrlt r0, [r0, #0x5c8]
	bxlt lr
	arm_func_end sub_0201AAC0
_0201AAD8:
	mov r0, #0
	bx lr

	arm_func_start sub_0201AAE0
sub_0201AAE0: ; 0x0201AAE0
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr ip, [sp, #0x18]
	ldr lr, [sp, #0x1c]
	str ip, [sp]
	ldr ip, [sp, #0x20]
	str lr, [sp, #4]
	mov r4, r0
	str ip, [sp, #8]
	bl sub_0201AB28
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_0201AAE0

	arm_func_start sub_0201AB14
sub_0201AB14: ; 0x0201AB14
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201ACA8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201AB14

	arm_func_start sub_0201AB28
sub_0201AB28: ; 0x0201AB28
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r0, #0x6c
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl _Znwm
	movs r4, r0
	beq _0201AB78
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r1, r8
	mov r2, r7
	str r4, [sp, #0xc]
	bl sub_02002AEC
	mov r4, r0
	arm_func_end sub_0201AB28
_0201AB78:
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _0201AB9C
	mov r2, #0
	mov r1, r6
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
_0201AB9C:
	str r0, [r5]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r0
	str r0, [r5, #0x10]
	mov r1, r1, lsl #0x10
	ldr r0, [r5]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldr r0, [r5]
	bl sub_020076B0
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _0201ABF0
	mov r2, #0
	ldr r1, [sp, #0x28]
	mov r3, r2
	bl sub_02007AC0
_0201ABF0:
	str r0, [r5, #4]
	ldr r0, [r0, #4]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r1, r0
	str r0, [r5, #0x14]
	mov r1, r1, lsl #0x10
	ldr r0, [r5, #4]
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	ldr r0, [r5, #4]
	bl sub_02007BC4
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _0201AC5C
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201AC58
	mov r2, #0
	ldr r1, [sp, #0x2c]
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_0201AC58:
	str r0, [r5, #8]
_0201AC5C:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0201AC84
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _0201AC80
	ldr r1, [sp, #0x30]
	bl sub_0200879C
_0201AC80:
	str r0, [r5, #0xc]
_0201AC84:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start sub_0201ACA8
sub_0201ACA8: ; 0x0201ACA8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _0201ACD8
	beq _0201ACD0
	mov r0, r5
	bl sub_020087C8
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_0201ACA8
_0201ACD0:
	mov r0, #0
	str r0, [r4, #0xc]
_0201ACD8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0201ACFC
	beq _0201ACF4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201ACF4:
	mov r0, #0
	str r0, [r4, #8]
_0201ACFC:
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _0201AD24
	beq _0201AD1C
	mov r0, r5
	bl sub_02007B28
	mov r0, r5
	bl _ZdlPv
_0201AD1C:
	mov r0, #0
	str r0, [r4, #4]
_0201AD24:
	ldr r5, [r4]
	cmp r5, #0
	beq _0201AD4C
	beq _0201AD44
	mov r0, r5
	bl sub_02007548
	mov r0, r5
	bl _ZdlPv
_0201AD44:
	mov r0, #0
	str r0, [r4]
_0201AD4C:
	ldr r0, [r4, #0x10]
	bl NNS_GfdFreeLnkTexVram
	ldr r0, [r4, #0x14]
	bl NNS_GfdFreeLnkPlttVram
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201AD60
sub_0201AD60: ; 0x0201AD60
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r1, #0
	strb r1, [r4, #1]
	str r1, [r4, #4]
	mov r0, #0x40
	strb r1, [r4, #8]
	bl _Znwm
	cmp r0, #0
	beq _0201AD8C
	bl sub_02003B64
	arm_func_end sub_0201AD60
_0201AD8C:
	str r0, [r4, #0xc]
	mov r6, #0
	mov r5, #0x50
_0201AD98:
	mov r0, r5
	bl _Znwm
	cmp r0, #0
	beq _0201ADAC
	bl sub_02004CB4
_0201ADAC:
	add r1, r4, r6, lsl #2
	add r6, r6, #1
	str r0, [r1, #0x10]
	cmp r6, #0x10
	blt _0201AD98
	mov r6, #0
	mov r5, #0x50
_0201ADC8:
	mov r0, r5
	bl _Znwm
	cmp r0, #0
	beq _0201ADDC
	bl sub_02004CB4
_0201ADDC:
	add r1, r4, r6, lsl #2
	add r6, r6, #1
	str r0, [r1, #0x50]
	cmp r6, #0xc
	blt _0201ADC8
	mov r6, #0
	mov r5, #0x40
_0201ADF8:
	mov r0, r5
	bl _Znwm
	cmp r0, #0
	beq _0201AE0C
	bl sub_02003B64
_0201AE0C:
	add r1, r4, r6, lsl #2
	add r6, r6, #1
	str r0, [r1, #0x80]
	cmp r6, #0x16
	blt _0201ADF8
	mov r1, #0
	mov r0, r4
	mov r2, r1
	mov r3, r1
	bl sub_0201B5F4
	mov r1, #0
	mov r0, r4
	mov r2, r1
	mov r3, r1
	bl sub_0201B658
	mov r0, r4
	bl sub_0201B2E4
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0201AE58
sub_0201AE58: ; 0x0201AE58
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0201AE84
	beq _0201AE7C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0201AE58
_0201AE7C:
	mov r0, #0
	str r0, [r4, #0xc]
_0201AE84:
	mov r6, #0
	mov r5, r6
_0201AE8C:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0201AEB4
	beq _0201AEAC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201AEAC:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x10]
_0201AEB4:
	add r6, r6, #1
	cmp r6, #0x10
	blt _0201AE8C
	mov r6, #0
	mov r5, r6
_0201AEC8:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _0201AEF0
	beq _0201AEE8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201AEE8:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x50]
_0201AEF0:
	add r6, r6, #1
	cmp r6, #0xc
	blt _0201AEC8
	mov r6, #0
	mov r5, r6
_0201AF04:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x80]
	cmp r0, #0
	beq _0201AF2C
	beq _0201AF24
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201AF24:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x80]
_0201AF2C:
	add r6, r6, #1
	cmp r6, #0x16
	blt _0201AF04
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0201AF40
sub_0201AF40: ; 0x0201AF40
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4]
	tst r1, #1
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #4]
	cmp r1, #1
	beq _0201AF6C
	cmp r1, #2
	beq _0201AF74
	b _0201AF78
	arm_func_end sub_0201AF40
_0201AF6C:
	bl sub_0201AFD4
	b _0201AF78
_0201AF74:
	bl sub_0201B154
_0201AF78:
	ldrb r0, [r4, #8]
	add r1, r0, #1
	and r0, r1, #0xff
	cmp r0, #0xd8
	strb r1, [r4, #8]
	movhs r0, #0
	strcsb r0, [r4, #8]
	bl sub_0201001C
	add r0, r0, #0x1000
	mov ip, #0
	ldr r3, [r0, #0x5d0]
	mov r1, ip
_0201AFA8:
	add r2, r4, ip, lsl #2
	rsb r0, ip, r3, asr #12
	ldr r2, [r2, #0x80]
	sub r0, r0, #0x60
	add ip, ip, #1
	str r1, [r2, #0x18]
	mov r0, r0, lsl #0xc
	str r0, [r2, #0x1c]
	cmp ip, #0x16
	blt _0201AFA8
	ldmia sp!, {r4, pc}

	arm_func_start sub_0201AFD4
sub_0201AFD4: ; 0x0201AFD4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	ldrb r2, [r4, #1]
	mov r0, #0x1000
	mov r1, #0x13000
	add r2, r2, #1
	strb r2, [r4, #1]
	and r2, r2, #0xff
	mov r3, #0x10
	bl sub_02007068
	mov r2, r0, asr #0xc
	ldr r1, [r4, #0xc]
	mov r0, #0x1000
	str r2, [r1, #0x14]
	ldrb r2, [r4, #1]
	mov r1, #0x10000
	mov r3, #0x10
	bl sub_02007068
	mov r5, r0, asr #0xc
	mov r0, r4
	mov r1, r5
	bl sub_0201B6BC
	mov r1, r5
	mov r0, r4
	bl sub_0201B6DC
	ldrb r2, [r4, #1]
	mov r0, #0x1000
	mov r1, #0x18000
	mov r3, #0x10
	bl sub_02007068
	mov r1, r0, asr #0xc
	mov r0, r4
	bl sub_0201B6FC
	ldrb r2, [r4, #1]
	mov r0, #0x4000
	mov r1, #0x1000
	mov r3, #0x10
	bl sub_02007068
	mov r1, #0
	mov r7, #0x60000
	mov r2, r1
	mov r3, r0, asr #0x1f
	rsb r7, r7, #0
	mov r5, #0x60000
	arm_func_end sub_0201AFD4
_0201B084:
	sub r6, r2, #0x80000
	umull ip, sb, r6, r0
	mla sb, r6, r3, sb
	add r8, r4, r1, lsl #2
	mov r6, r6, asr #0x1f
	mla sb, r6, r0, sb
	mov ip, ip, lsr #0xc
	add r1, r1, #1
	ldr r6, [r8, #0x10]
	orr ip, ip, sb, lsl #20
	str ip, [r6, #0x18]
	str r7, [r6, #0x1c]
	ldr r6, [r8, #0x10]
	cmp r1, #0x10
	str ip, [r6, #0x20]
	str r7, [r6, #0x24]
	ldr r6, [r8, #0x10]
	add r2, r2, #0x10000
	str ip, [r6, #0x28]
	str r5, [r6, #0x2c]
	blt _0201B084
	mov r1, #0
	mov r5, #0x80000
	mov r2, r1
	rsb r5, r5, #0
	mov ip, #0x80000
_0201B0EC:
	sub r7, r2, #0x60000
	umull sb, r8, r7, r0
	mla r8, r7, r3, r8
	add r6, r4, r1, lsl #2
	mov r7, r7, asr #0x1f
	ldr lr, [r6, #0x50]
	mla r8, r7, r0, r8
	mov r7, sb, lsr #0xc
	add r1, r1, #1
	orr r7, r7, r8, lsl #20
	str r5, [lr, #0x18]
	str r7, [lr, #0x1c]
	ldr lr, [r6, #0x50]
	cmp r1, #0xc
	str r5, [lr, #0x20]
	str r7, [lr, #0x24]
	ldr lr, [r6, #0x50]
	add r2, r2, #0x10000
	str ip, [lr, #0x28]
	str r7, [lr, #0x2c]
	blt _0201B0EC
	ldrb r0, [r4, #1]
	cmp r0, #0x10
	movhs r0, #0
	strhs r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_0201B154
sub_0201B154: ; 0x0201B154
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	ldrb r2, [r4, #1]
	mov r0, #0x13000
	mov r1, #0x1000
	add r2, r2, #1
	strb r2, [r4, #1]
	and r2, r2, #0xff
	mov r3, #0x10
	bl sub_02007068
	mov r2, r0, asr #0xc
	ldr r1, [r4, #0xc]
	mov r0, #0x10000
	str r2, [r1, #0x14]
	ldrb r2, [r4, #1]
	mov r1, #0x1000
	mov r3, #0x10
	bl sub_02007068
	mov r5, r0, asr #0xc
	mov r0, r4
	mov r1, r5
	bl sub_0201B6BC
	mov r1, r5
	mov r0, r4
	bl sub_0201B6DC
	ldrb r2, [r4, #1]
	mov r0, #0x18000
	mov r1, #0x1000
	mov r3, #0x10
	bl sub_02007068
	mov r1, r0, asr #0xc
	mov r0, r4
	bl sub_0201B6FC
	ldrb r2, [r4, #1]
	mov r0, #0x1000
	mov r1, #0x4000
	mov r3, #0x10
	bl sub_02007068
	mov r1, #0
	mov r7, #0x60000
	mov r2, r1
	mov r3, r0, asr #0x1f
	rsb r7, r7, #0
	mov r5, #0x60000
	arm_func_end sub_0201B154
_0201B204:
	sub r6, r2, #0x80000
	umull ip, sb, r6, r0
	mla sb, r6, r3, sb
	add r8, r4, r1, lsl #2
	mov r6, r6, asr #0x1f
	mla sb, r6, r0, sb
	mov ip, ip, lsr #0xc
	add r1, r1, #1
	ldr r6, [r8, #0x10]
	orr ip, ip, sb, lsl #20
	str ip, [r6, #0x18]
	str r7, [r6, #0x1c]
	ldr r6, [r8, #0x10]
	cmp r1, #0x10
	str ip, [r6, #0x20]
	str r7, [r6, #0x24]
	ldr r6, [r8, #0x10]
	add r2, r2, #0x10000
	str ip, [r6, #0x28]
	str r5, [r6, #0x2c]
	blt _0201B204
	mov r1, #0
	mov r5, #0x80000
	mov r2, r1
	rsb r5, r5, #0
	mov ip, #0x80000
_0201B26C:
	sub r7, r2, #0x60000
	umull sb, r8, r7, r0
	mla r8, r7, r3, r8
	add r6, r4, r1, lsl #2
	mov r7, r7, asr #0x1f
	ldr lr, [r6, #0x50]
	mla r8, r7, r0, r8
	mov r7, sb, lsr #0xc
	add r1, r1, #1
	orr r7, r7, r8, lsl #20
	str r5, [lr, #0x18]
	str r7, [lr, #0x1c]
	ldr lr, [r6, #0x50]
	cmp r1, #0xc
	str r5, [lr, #0x20]
	str r7, [lr, #0x24]
	ldr lr, [r6, #0x50]
	add r2, r2, #0x10000
	str ip, [lr, #0x28]
	str r7, [lr, #0x2c]
	blt _0201B26C
	ldrb r0, [r4, #1]
	cmp r0, #0x10
	ldmloia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrb r1, [r4]
	mov r0, #0
	bic r1, r1, #1
	strb r1, [r4]
	str r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_0201B2E4
sub_0201B2E4: ; 0x0201B2E4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, [r0, #0xc]
	mov r2, #0xe2
	strh r2, [r1, #8]
	ldr r2, [r0, #0xc]
	mov r1, #0
	str r1, [r2, #0x18]
	str r1, [r2, #0x1c]
	ldr r2, [r0, #0xc]
	mov r3, #0x100000
	str r3, [r2, #0x20]
	ldr r2, [r0, #0xc]
	mov r3, #0xc0000
	str r3, [r2, #0x24]
	ldr r3, [r0, #0xc]
	mov r4, #0x13
	str r4, [r3, #0x14]
	mov r3, #0x60000
	ldr r7, _0201B458 ; =0x00001312
	mov r2, r1
	rsb r3, r3, #0
	mov ip, #0x10
	mov r5, #0x60000
	arm_func_end sub_0201B2E4
_0201B340:
	add lr, r0, r1, lsl #2
	ldr r4, [lr, #0x10]
	sub r6, r2, #0x80000
	strh r7, [r4, #8]
	ldr r4, [lr, #0x10]
	add r1, r1, #1
	str ip, [r4, #0x14]
	ldr r4, [lr, #0x10]
	cmp r1, #0x10
	str r6, [r4, #0x18]
	str r5, [r4, #0x1c]
	ldr r4, [lr, #0x10]
	add r2, r2, #0x10000
	str r6, [r4, #0x20]
	str r5, [r4, #0x24]
	ldr r4, [lr, #0x10]
	str r6, [r4, #0x28]
	str r3, [r4, #0x2c]
	blt _0201B340
	mov r7, #0
	mov r1, #0x80000
	ldr ip, _0201B458 ; =0x00001312
	mov lr, r7
	rsb r1, r1, #0
	mov r5, #0x10
	mov r4, #0x80000
_0201B3A8:
	add r6, r0, r7, lsl #2
	ldr r2, [r6, #0x50]
	sub r3, lr, #0x60000
	strh ip, [r2, #8]
	ldr r2, [r6, #0x50]
	add r7, r7, #1
	str r5, [r2, #0x14]
	ldr r2, [r6, #0x50]
	cmp r7, #0xc
	str r4, [r2, #0x18]
	str r3, [r2, #0x1c]
	ldr r2, [r6, #0x50]
	add lr, lr, #0x10000
	str r4, [r2, #0x20]
	str r3, [r2, #0x24]
	ldr r2, [r6, #0x50]
	str r1, [r2, #0x28]
	str r3, [r2, #0x2c]
	blt _0201B3A8
	mov r2, #0
	ldr r1, _0201B45C ; =0x00000373
	mov r5, r2
	mov r4, #0x100000
	mov lr, #0x1000
_0201B408:
	add r6, r0, r2, lsl #2
	ldr ip, [r6, #0x80]
	rsb r3, r2, #0x60
	strh r1, [ip, #8]
	ldr ip, [r6, #0x80]
	mov r3, r3, lsl #0xc
	str r5, [ip, #0x18]
	str r3, [ip, #0x1c]
	ldr r3, [r6, #0x80]
	rsbs ip, r2, #0x18
	str r4, [r3, #0x20]
	ldr r3, [r6, #0x80]
	add r2, r2, #1
	str lr, [r3, #0x24]
	ldr r3, [r6, #0x80]
	strpl ip, [r3, #0x14]
	strmi r5, [r3, #0x14]
	cmp r2, #0x16
	blt _0201B408
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0201B458: .word 0x00001312
_0201B45C: .word 0x00000373

	arm_func_start sub_0201B460
sub_0201B460: ; 0x0201B460
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrb r0, [r5]
	mov r4, r1
	tst r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r6, #0
	arm_func_end sub_0201B460
_0201B47C:
	add r0, r5, r6, lsl #2
	ldr r0, [r0, #0x80]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add r6, r6, #1
	cmp r6, #0x16
	blt _0201B47C
	mov r6, #0
_0201B4A4:
	add r0, r5, r6, lsl #2
	ldr r0, [r0, #0x10]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add r6, r6, #1
	cmp r6, #0x10
	blt _0201B4A4
	mov r6, #0
_0201B4CC:
	add r0, r5, r6, lsl #2
	ldr r0, [r0, #0x50]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add r6, r6, #1
	cmp r6, #0xc
	blt _0201B4CC
	ldr r0, [r5, #0xc]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0201B508
sub_0201B508: ; 0x0201B508
	mov r2, #1
	str r2, [r0, #4]
	ldrb r1, [r0]
	mov r3, #0
	orr r1, r1, #1
	strb r1, [r0]
	strb r3, [r0, #1]
	ldr r1, [r0, #0xc]
	str r2, [r1, #0x14]
	arm_func_end sub_0201B508
_0201B52C:
	add r1, r0, r3, lsl #2
	ldr r1, [r1, #0x10]
	add r3, r3, #1
	str r2, [r1, #0x14]
	cmp r3, #0x10
	blt _0201B52C
	mov r3, #0
	mov r2, #1
_0201B54C:
	add r1, r0, r3, lsl #2
	ldr r1, [r1, #0x50]
	add r3, r3, #1
	str r2, [r1, #0x14]
	cmp r3, #0xc
	blt _0201B54C
	bx lr

	arm_func_start sub_0201B568
sub_0201B568: ; 0x0201B568
	mov r1, #2
	str r1, [r0, #4]
	ldrb r1, [r0]
	mov r3, #0
	mov r2, #0x13
	orr r1, r1, #1
	strb r1, [r0]
	strb r3, [r0, #1]
	ldr r1, [r0, #0xc]
	str r2, [r1, #0x14]
	mov r2, #0x10
	arm_func_end sub_0201B568
_0201B594:
	add r1, r0, r3, lsl #2
	ldr r1, [r1, #0x10]
	add r3, r3, #1
	str r2, [r1, #0x14]
	cmp r3, #0x10
	blt _0201B594
	mov r3, #0
	mov r2, #0x10
_0201B5B4:
	add r1, r0, r3, lsl #2
	ldr r1, [r1, #0x50]
	add r3, r3, #1
	str r2, [r1, #0x14]
	cmp r3, #0xc
	blt _0201B5B4
	bx lr

	arm_func_start sub_0201B5D0
sub_0201B5D0: ; 0x0201B5D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201B2E4
	mov r0, #0
	str r0, [r4, #4]
	ldrb r0, [r4]
	orr r0, r0, #1
	strb r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201B5D0

	arm_func_start sub_0201B5F4
sub_0201B5F4: ; 0x0201B5F4
	stmdb sp!, {r3, lr}
	ldr ip, [r0, #0xc]
	mov lr, #0
	str r1, [ip, #4]
	arm_func_end sub_0201B5F4
_0201B604:
	add r1, r0, lr, lsl #2
	ldr r1, [r1, #0x10]
	add lr, lr, #1
	str r2, [r1, #4]
	cmp lr, #0x10
	blt _0201B604
	mov ip, #0
_0201B620:
	add r1, r0, ip, lsl #2
	ldr r1, [r1, #0x50]
	add ip, ip, #1
	str r2, [r1, #4]
	cmp ip, #0xc
	blt _0201B620
	mov r2, #0
_0201B63C:
	add r1, r0, r2, lsl #2
	ldr r1, [r1, #0x80]
	add r2, r2, #1
	str r3, [r1, #4]
	cmp r2, #0x16
	blt _0201B63C
	ldmia sp!, {r3, pc}

	arm_func_start sub_0201B658
sub_0201B658: ; 0x0201B658
	stmdb sp!, {r3, lr}
	ldr ip, [r0, #0xc]
	mov lr, #0
	str r1, [ip, #0x10]
	arm_func_end sub_0201B658
_0201B668:
	add r1, r0, lr, lsl #2
	ldr r1, [r1, #0x10]
	add lr, lr, #1
	str r2, [r1, #0x10]
	cmp lr, #0x10
	blt _0201B668
	mov ip, #0
_0201B684:
	add r1, r0, ip, lsl #2
	ldr r1, [r1, #0x50]
	add ip, ip, #1
	str r2, [r1, #0x10]
	cmp ip, #0xc
	blt _0201B684
	mov r2, #0
_0201B6A0:
	add r1, r0, r2, lsl #2
	ldr r1, [r1, #0x80]
	add r2, r2, #1
	str r3, [r1, #0x10]
	cmp r2, #0x16
	blt _0201B6A0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0201B6BC
sub_0201B6BC: ; 0x0201B6BC
	mov r3, #0
	arm_func_end sub_0201B6BC
_0201B6C0:
	add r2, r0, r3, lsl #2
	ldr r2, [r2, #0x10]
	add r3, r3, #1
	str r1, [r2, #0x14]
	cmp r3, #0x10
	blt _0201B6C0
	bx lr

	arm_func_start sub_0201B6DC
sub_0201B6DC: ; 0x0201B6DC
	mov r3, #0
	arm_func_end sub_0201B6DC
_0201B6E0:
	add r2, r0, r3, lsl #2
	ldr r2, [r2, #0x50]
	add r3, r3, #1
	str r1, [r2, #0x14]
	cmp r3, #0xc
	blt _0201B6E0
	bx lr

	arm_func_start sub_0201B6FC
sub_0201B6FC: ; 0x0201B6FC
	mov r3, #0
	arm_func_end sub_0201B6FC
_0201B700:
	add r2, r0, r3, lsl #2
	ldr r2, [r2, #0x80]
	add r3, r3, #1
	cmp r1, #1
	str r1, [r2, #0x14]
	subgt r1, r1, #1
	cmp r3, #0x16
	blt _0201B700
	bx lr

	arm_func_start sub_0201B724
sub_0201B724: ; 0x0201B724
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0]
	strh r1, [r0, #8]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	strb r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x38]
	str r1, [r0, #0x3c]
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	str r1, [r0, #0x48]
	str r1, [r0, #0x4c]
	bx lr
	arm_func_end sub_0201B724

	arm_func_start sub_0201B78C
sub_0201B78C: ; 0x0201B78C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201B7A8
	mov r0, r4
	bl sub_0201C470
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201B78C

	arm_func_start sub_0201B7A8
sub_0201B7A8: ; 0x0201B7A8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl sub_0201001C
	ldr r1, [r4, #0x2c]
	mov r6, r0
	cmp r1, #0
	beq _0201B848
	ldr r0, [r1, #4]
	mov r7, #0
	cmp r0, #0
	bls _0201B814
	mov r5, r7
	arm_func_end sub_0201B7A8
_0201B7D8:
	ldr r0, [r1, #8]
	add r0, r0, r7, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201B800
	bl _ZdaPv
	ldr r0, [r4, #0x2c]
	ldr r0, [r0, #8]
	add r0, r0, r7, lsl #3
	str r5, [r0, #4]
_0201B800:
	ldr r1, [r4, #0x2c]
	add r7, r7, #1
	ldr r0, [r1, #4]
	cmp r7, r0
	blo _0201B7D8
_0201B814:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201B830
	bl _ZdaPv
	ldr r0, [r4, #0x2c]
	mov r1, #0
	str r1, [r0, #8]
_0201B830:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0201B848
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x2c]
_0201B848:
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _0201B8D8
	ldr r0, [r1, #4]
	mov r7, #0
	cmp r0, #0
	bls _0201B8A4
	mov r5, r7
_0201B868:
	ldr r0, [r1, #8]
	add r0, r0, r7, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201B890
	bl _ZdaPv
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #8]
	add r0, r0, r7, lsl #3
	str r5, [r0, #4]
_0201B890:
	ldr r1, [r4, #0x30]
	add r7, r7, #1
	ldr r0, [r1, #4]
	cmp r7, r0
	blo _0201B868
_0201B8A4:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201B8C0
	bl _ZdaPv
	ldr r0, [r4, #0x30]
	mov r1, #0
	str r1, [r0, #8]
_0201B8C0:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0201B8D8
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x30]
_0201B8D8:
	ldr r1, [r4, #0x34]
	cmp r1, #0
	beq _0201B968
	ldr r0, [r1, #4]
	mov r7, #0
	cmp r0, #0
	bls _0201B934
	mov r5, r7
_0201B8F8:
	ldr r0, [r1, #8]
	add r0, r0, r7, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201B920
	bl _ZdaPv
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #8]
	add r0, r0, r7, lsl #3
	str r5, [r0, #4]
_0201B920:
	ldr r1, [r4, #0x34]
	add r7, r7, #1
	ldr r0, [r1, #4]
	cmp r7, r0
	blo _0201B8F8
_0201B934:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201B950
	bl _ZdaPv
	ldr r0, [r4, #0x34]
	mov r1, #0
	str r1, [r0, #8]
_0201B950:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0201B968
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x34]
_0201B968:
	ldr r5, [r4, #0x14]
	cmp r5, #0
	beq _0201B990
	beq _0201B988
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201B988:
	mov r0, #0
	str r0, [r4, #0x14]
_0201B990:
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _0201B9B8
	beq _0201B9B0
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201B9B0:
	mov r0, #0
	str r0, [r4, #0x18]
_0201B9B8:
	ldr r5, [r4, #0x1c]
	cmp r5, #0
	beq _0201B9E0
	beq _0201B9D8
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201B9D8:
	mov r0, #0
	str r0, [r4, #0x1c]
_0201B9E0:
	ldr r5, [r4, #0x20]
	cmp r5, #0
	beq _0201BA08
	beq _0201BA00
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201BA00:
	mov r0, #0
	str r0, [r4, #0x20]
_0201BA08:
	ldr r5, [r4, #0x24]
	cmp r5, #0
	beq _0201BA30
	beq _0201BA28
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201BA28:
	mov r0, #0
	str r0, [r4, #0x24]
_0201BA30:
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0201BA40
sub_0201BA40: ; 0x0201BA40
	mov r1, #0
	str r1, [r0, #0x50]
	bx lr
	arm_func_end sub_0201BA40

	arm_func_start sub_0201BA4C
sub_0201BA4C: ; 0x0201BA4C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	mov r6, r1
	bl sub_0201001C
	ldr r1, [r4, #0x50]
	mov r5, r0
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _0201C304
_0201BA74: ; jump table
	b _0201BAB4 ; case 0
	b _0201BB6C ; case 1
	b _0201BC78 ; case 2
	b _0201BD84 ; case 3
	b _0201BE90 ; case 4
	b _0201BF24 ; case 5
	b _0201C078 ; case 6
	b _0201C10C ; case 7
	b _0201C19C ; case 8
	b _0201C304 ; case 9
	b _0201C304 ; case 10
	b _0201C22C ; case 11
	b _0201C274 ; case 12
	b _0201C2B0 ; case 13
	b _0201C304 ; case 14
	b _0201C2F4 ; case 15
	arm_func_end sub_0201BA4C
_0201BAB4:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0201BAC8
	mov r0, r4
	bl sub_0201B7A8
_0201BAC8:
	ldr r1, _0201C310 ; =MAIN_BSS_0210CA6C
	str r6, [r4, #4]
	ldr r0, _0201C314 ; =MAIN_BSS_020B26A0
	ldr r7, [r1]
	ldrh r1, [r0, #0x1a]
	mov r0, r7
	bl sub_02041D80
	ldrb r2, [r0]
	mov r0, r7
	mov r1, r6
	str r2, [r4]
	bl sub_02041D6C
	ldrh r1, [r0]
	strh r1, [r4, #8]
	ldrb r1, [r0, #2]
	strb r1, [r4, #0xa]
	ldrb r1, [r0, #4]
	strb r1, [r4, #0xb]
	ldrb r1, [r0, #5]
	strb r1, [r4, #0xc]
	ldrh r1, [r0, #0x1c]
	strh r1, [r4, #0x12]
	ldrh r1, [r0, #0x18]
	strh r1, [r4, #0xe]
	ldrh r0, [r0, #0x1a]
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	cmp r0, #0xe
	blo _0201BB60
	cmp r0, #0x12
	bhi _0201BB60
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4a0]
	ldr r0, [r0, #8]
	cmp r0, #0x1c
	movle r0, #0x80
	strleh r0, [r4, #0xe]
	strleh r0, [r4, #0x10]
_0201BB60:
	mov r0, #1
	str r0, [r4, #0x50]
	b _0201C304
_0201BB6C:
	mov r0, #0xb8
	bl _Znwm
	movs r7, r0
	beq _0201BB8C
	ldr r1, _0201C318 ; =s_data_message_etc_place_name_0208baa4
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r7, r0
_0201BB8C:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x2c]
	ldr r1, [r7, #0x4c]
	mov r5, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r7, #0x4c]
	ldr r0, [r4, #0x2c]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x2c]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x2c]
	mov r6, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x2c]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201BC54
_0201BBE4:
	ldr r1, [r7, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r5, lsl #2]
	add r5, r5, #1
	str r1, [r0, r6, lsl #3]
	ldr r0, [r4, #0x2c]
	ldr r0, [r0, #8]
	ldr r0, [r0, r6, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x2c]
	ldr r1, [r1, #8]
	add r1, r1, r6, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x2c]
	ldr r0, [r7, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r5, lsl #2
	add r1, r2, r6, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r6, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x2c]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r6, lsl #3]
	add r6, r6, #1
	cmp r6, r0
	add r5, r5, r1, lsr #2
	blo _0201BBE4
_0201BC54:
	cmp r7, #0
	beq _0201BC6C
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201BC6C:
	mov r0, #2
	str r0, [r4, #0x50]
	b _0201C304
_0201BC78:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0201BC98
	ldr r1, _0201C31C ; =s_data_message_etc_yakumono_info_0208bac4
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_0201BC98:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x30]
	ldr r1, [r6, #0x4c]
	mov r7, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r4, #0x30]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x30]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201BD60
_0201BCF0:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r7, lsl #2]
	add r7, r7, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x30]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x30]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r7, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x30]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r7, r7, r1, lsr #2
	blo _0201BCF0
_0201BD60:
	cmp r6, #0
	beq _0201BD78
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201BD78:
	mov r0, #3
	str r0, [r4, #0x50]
	b _0201C304
_0201BD84:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0201BDA4
	ldr r1, _0201C320 ; =s_data_message_etc_menu_mes_0208bae4
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_0201BDA4:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x34]
	ldr r1, [r6, #0x4c]
	mov r7, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r4, #0x34]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x34]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x34]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201BE6C
_0201BDFC:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r7, lsl #2]
	add r7, r7, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x34]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x34]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r7, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x34]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r7, r7, r1, lsr #2
	blo _0201BDFC
_0201BE6C:
	cmp r6, #0
	beq _0201BE84
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201BE84:
	mov r0, #4
	str r0, [r4, #0x50]
	b _0201C304
_0201BE90:
	mov r0, #0
	str r0, [r4, #0x54]
	ldrh r2, [r4, #8]
	ldrb r3, [r4, #0xa]
	ldr r1, _0201C324 ; =s_bt_03d_02d_0208bb00
	add r0, sp, #0x10
	bl OS_SPrintf
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201BEDC
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x124
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201BEDC:
	str r0, [r4, #0x14]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x14]
	ldr r1, _0201C328 ; =s_data_targetOBJ_0208bb0c
	add r2, sp, #0x10
	bl sub_0200EE14
	str r0, [r4, #0x54]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x14]
	mov r1, #0
	mov r2, #0x38
	mov r3, #0x50
	bl sub_0200F4FC
	mov r0, #5
	str r0, [r4, #0x50]
	b _0201C304
_0201BF24:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201BF54
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201BF54:
	str r0, [r4, #0x18]
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #0x54]
	ldr r0, [r4, #0x18]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201C32C ; =s_data_menu_0208bb1c
	ldr r2, _0201C330 ; =s_mt000_00_0208bb28
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x54]
	mov r1, #3
	add r0, r2, r0
	str r0, [r4, #0x54]
	str r1, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #1
	mov r2, #0x9c
	mov r3, #0x4b
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x25
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x37
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x49
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x5b
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x6d
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x7f
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #4
	mov r2, #0x38
	mov r3, #0x7b
	bl sub_0200F4FC
	mov r0, #6
	str r0, [r4, #0x50]
	b _0201C304
_0201C078:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201C0A8
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x1a4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201C0A8:
	str r0, [r4, #0x1c]
	mov r0, #2
	str r0, [sp]
	ldr r2, [r4, #0x54]
	ldr r0, [r4, #0x1c]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201C32C ; =s_data_menu_0208bb1c
	ldr r2, _0201C334 ; =s_ma004_00_0208bb34
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x54]
	mov r1, #2
	add r0, r2, r0
	str r0, [r4, #0x54]
	str r1, [sp]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	mov r2, #0x38
	mov r3, #0
	bl sub_0200F4FC
	str r0, [r4, #0x28]
	mov r0, #7
	str r0, [r4, #0x50]
	b _0201C304
_0201C10C:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201C13C
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x224
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201C13C:
	str r0, [r4, #0x20]
	mov r0, #3
	str r0, [sp]
	ldr r2, [r4, #0x54]
	ldr r0, [r4, #0x20]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201C32C ; =s_data_menu_0208bb1c
	ldr r2, _0201C338 ; =s_ma000_00_0208bb40
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x54]
	mov r1, #0
	add r0, r2, r0
	str r0, [r4, #0x54]
	str r1, [sp]
	ldrb r1, [r4, #0xb]
	ldr r0, [r4, #0x20]
	mov r2, #0x94
	mov r3, #0x5a
	bl sub_0200F4FC
	mov r0, #8
	str r0, [r4, #0x50]
	b _0201C304
_0201C19C:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201C1CC
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x2a4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201C1CC:
	str r0, [r4, #0x24]
	mov r0, #6
	str r0, [sp]
	ldr r2, [r4, #0x54]
	ldr r0, [r4, #0x24]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201C32C ; =s_data_menu_0208bb1c
	ldr r2, _0201C33C ; =s_ma001_00_0208bb4c
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x54]
	mov r1, #0
	add r0, r2, r0
	str r0, [r4, #0x54]
	str r1, [sp]
	ldrb r1, [r4, #0xc]
	ldr r0, [r4, #0x24]
	mov r2, #0xa0
	mov r3, #0x5a
	bl sub_0200F4FC
	mov r0, #0xb
	str r0, [r4, #0x50]
	b _0201C304
_0201C22C:
	bl DC_FlushAll
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	ldr r1, [r1, #0xb8]
	ldr r2, [r2, #0xb8]
	ldr r3, [r0, #0xb8]
	mov r0, #5
	bl NNS_G2dBGSetupEx
	mov r0, #0xc
	str r0, [r4, #0x50]
	b _0201C304
_0201C274:
	bl DC_FlushAll
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x48]
	mov r3, r2
	ldr r1, [r0, #0xb8]
	mov r0, #6
	bl NNS_G2dBGSetupEx
	mov r0, #0xd
	str r0, [r4, #0x50]
	b _0201C304
_0201C2B0:
	bl DC_FlushAll
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x4c]
	mov r3, r2
	ldr r1, [r0, #0xb8]
	mov r0, #7
	bl NNS_G2dBGSetupEx
	mov r0, r4
	bl sub_0201C558
	mov r0, #0xf
	str r0, [r4, #0x50]
	b _0201C304
_0201C2F4:
	mov r0, r4
	bl sub_0201C5DC
	mov r0, #0x10
	str r0, [r4, #0x50]
_0201C304:
	ldr r0, [r4, #0x50]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_0201C310: .word MAIN_BSS_0210CA6C
_0201C314: .word MAIN_BSS_020B26A0
_0201C318: .word s_data_message_etc_place_name_0208baa4
_0201C31C: .word s_data_message_etc_yakumono_info_0208bac4
_0201C320: .word s_data_message_etc_menu_mes_0208bae4
_0201C324: .word s_bt_03d_02d_0208bb00
_0201C328: .word s_data_targetOBJ_0208bb0c
_0201C32C: .word s_data_menu_0208bb1c
_0201C330: .word s_mt000_00_0208bb28
_0201C334: .word s_ma004_00_0208bb34
_0201C338: .word s_ma000_00_0208bb40
_0201C33C: .word s_ma001_00_0208bb4c

	arm_func_start sub_0201C340
sub_0201C340: ; 0x0201C340
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x6c
	bl _Znwm
	cmp r0, #0
	beq _0201C380
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _0201C454 ; =s_TGT_0208bb74
	ldr r2, _0201C458 ; =s_data_menu_mt000_bg_LZ_bin_0208bb58
	str ip, [sp, #0xc]
	bl sub_02002AEC
	arm_func_end sub_0201C340
_0201C380:
	str r0, [r4, #0x38]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201C3A8
	ldr r1, _0201C45C ; =s_TGT_mt000_NCGR_0208bb78
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl sub_0200365C
_0201C3A8:
	str r0, [r4, #0x3c]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201C3D0
	ldr r1, _0201C460 ; =s_TGT_mt000_NCLR_0208bb88
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl sub_020033B0
_0201C3D0:
	str r0, [r4, #0x40]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201C3F8
	ldr r1, _0201C464 ; =s_TGT_mt000_01_2_NSCR_0208bb98
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl sub_02003494
_0201C3F8:
	str r0, [r4, #0x44]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201C420
	ldr r1, _0201C468 ; =s_TGT_mt000_02_NSCR_0208bbac
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl sub_02003494
_0201C420:
	str r0, [r4, #0x48]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201C448
	ldr r1, _0201C46C ; =s_TGT_mt000_03_NSCR_0208bbc0
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl sub_02003494
_0201C448:
	str r0, [r4, #0x4c]
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_0201C454: .word s_TGT_0208bb74
_0201C458: .word s_data_menu_mt000_bg_LZ_bin_0208bb58
_0201C45C: .word s_TGT_mt000_NCGR_0208bb78
_0201C460: .word s_TGT_mt000_NCLR_0208bb88
_0201C464: .word s_TGT_mt000_01_2_NSCR_0208bb98
_0201C468: .word s_TGT_mt000_02_NSCR_0208bbac
_0201C46C: .word s_TGT_mt000_03_NSCR_0208bbc0

	arm_func_start sub_0201C470
sub_0201C470: ; 0x0201C470
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0201C49C
	beq _0201C494
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0201C470
_0201C494:
	mov r0, #0
	str r0, [r4, #0x4c]
_0201C49C:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0201C4C0
	beq _0201C4B8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201C4B8:
	mov r0, #0
	str r0, [r4, #0x48]
_0201C4C0:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0201C4E4
	beq _0201C4DC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201C4DC:
	mov r0, #0
	str r0, [r4, #0x44]
_0201C4E4:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0201C508
	beq _0201C500
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201C500:
	mov r0, #0
	str r0, [r4, #0x3c]
_0201C508:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0201C52C
	beq _0201C524
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201C524:
	mov r0, #0
	str r0, [r4, #0x40]
_0201C52C:
	ldr r5, [r4, #0x38]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0201C54C
	mov r0, r5
	bl sub_02002B6C
	mov r0, r5
	bl _ZdlPv
_0201C54C:
	mov r0, #0
	str r0, [r4, #0x38]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201C558
sub_0201C558: ; 0x0201C558
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr ip, _0201C5D8 ; =0x04001000
	mov lr, #0x1b
	ldr r1, [ip]
	ldr r0, [ip]
	and r1, r1, #0x1f00
	mov r2, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r2, #0x1e
	orr r0, r1, r0, lsl #8
	str r0, [ip]
	ldrh r2, [ip, #0xa]
	add r0, ip, #0x50
	mov r1, #0
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [ip, #0xa]
	ldrh r4, [ip, #0xc]
	mov r2, #0x1e
	mov r3, #4
	bic r4, r4, #3
	orr r4, r4, #2
	strh r4, [ip, #0xc]
	ldrh r4, [ip, #0xe]
	bic r4, r4, #3
	orr r4, r4, #3
	strh r4, [ip, #0xe]
	str lr, [sp]
	bl G2x_SetBlendAlpha_
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0201C5D8: .word 0x04001000
	arm_func_end sub_0201C558

	arm_func_start sub_0201C5DC
sub_0201C5DC: ; 0x0201C5DC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xbc
	ldr r6, _0201C828 ; =DAT_02084574
	add r5, sp, #0x14
	mov sl, r0
	mov r4, #0xa
	arm_func_end sub_0201C5DC
_0201C5F4:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201C5F4
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	bl sub_0201001C
	mov r6, r0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB14
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #6
	bl sub_0200CC88
	mov r8, #0
	add sb, sp, #0x14
	mov r7, #0x40
	add r4, r6, #0x1000
	mov r5, r8
	mov fp, #2
_0201C654:
	ldr r0, [sb, #8]
	mov r1, r8
	str r0, [sp]
	ldr r0, [sb, #0xc]
	stmib sp, {r0, r7}
	str r5, [sp, #0xc]
	str fp, [sp, #0x10]
	ldr r0, [r4, #0x498]
	ldmia sb, {r2, r3}
	bl sub_0200CCD0
	add r8, r8, #1
	ldr r1, [sb]
	ldr r0, [sb, #4]
	cmp r8, #6
	mla r7, r1, r0, r7
	add sb, sb, #0x1c
	blt _0201C654
	ldr r0, [sp, #0x2c]
	mov r2, #1
	str r0, [sp]
	ldr r1, [sl, #0x2c]
	ldr r0, [sl]
	ldr r3, [r1, #8]
	sub r1, r2, #3
	add r0, r3, r0, lsl #3
	ldr r3, [r0, #4]
	add r0, r6, #0x1000
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	mov r1, #0
	bl sub_0200CDA0
	ldr r0, [sp, #0x48]
	mov r1, #1
	str r0, [sp]
	ldr r0, [sl, #0x34]
	mov r2, #0
	ldr r3, [r0, #8]
	add r0, r6, #0x1000
	ldr r3, [r3, #0x14]
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_0200CDA0
	ldr r0, [sp, #0x64]
	mov r3, #1
	str r0, [sp]
	ldr r0, [sl, #0x34]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r6, #0x1000
	ldr r4, [r1, #0x1c]
	mov r1, #2
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	bl sub_0200CDA0
	add r0, r6, #0x1000
	ldr r4, [r0, #0x498]
	ldrb r1, [sl, #0xb]
	ldr r0, [r0, #0x4b0]
	bl sub_02018B80
	ldr r2, [sp, #0x80]
	mov r1, #1
	str r2, [sp]
	stmib sp, {r0, r1}
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	mov r0, r4
	mov r1, #3
	bl sub_0200CDA0
	add r0, r6, #0x1000
	ldr r4, [r0, #0x498]
	ldrh r1, [sl, #0xe]
	ldr r0, [r0, #0x4b0]
	bl sub_02018B48
	ldr r2, [sp, #0x9c]
	mov r1, #1
	str r2, [sp]
	stmib sp, {r0, r1}
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x94]
	ldr r3, [sp, #0x98]
	mov r0, r4
	mov r1, #4
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sl, #0x30]
	ldrh r1, [sl, #0x10]
	ldr r3, [r0, #8]
	add r0, r6, #0x1000
	add r1, r3, r1, lsl #3
	ldr r3, [r1, #4]
	mov r1, #5
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0xb0]
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	add sp, sp, #0xbc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0201C828: .word DAT_02084574

	arm_func_start sub_0201C82C
sub_0201C82C: ; 0x0201C82C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0201001C
	mov r1, r0
	ldr r0, [r4, #0x28]
	add r1, r1, #0x1000
	ldr r2, [r1, #0x5d0]
	ldrsh r1, [r0, #0xc]
	mov r2, r2, asr #0xc
	bl sub_0200EB28
	ldr r0, [r4, #0x18]
	bl sub_0200F64C
	ldr r0, [r4, #0x1c]
	bl sub_0200F64C
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201C82C

	arm_func_start sub_0201C874
sub_0201C874: ; 0x0201C874
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F71C
	ldr r0, [r4, #0x18]
	bl sub_0200F71C
	ldr r0, [r4, #0x1c]
	bl sub_0200F71C
	ldr r0, [r4, #0x20]
	bl sub_0200F71C
	ldr r0, [r4, #0x24]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201C874

	arm_func_start sub_0201C8B0
sub_0201C8B0: ; 0x0201C8B0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #0x2c]
	cmp r1, #0
	beq _0201C948
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0201C914
	mov r6, r4
	arm_func_end sub_0201C8B0
_0201C8D8:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201C900
	bl _ZdaPv
	ldr r0, [r5, #0x2c]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0201C900:
	ldr r1, [r5, #0x2c]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201C8D8
_0201C914:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201C930
	bl _ZdaPv
	ldr r0, [r5, #0x2c]
	mov r1, #0
	str r1, [r0, #8]
_0201C930:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _0201C948
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x2c]
_0201C948:
	ldr r1, [r5, #0x30]
	cmp r1, #0
	beq _0201C9D8
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0201C9A4
	mov r6, r4
_0201C968:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201C990
	bl _ZdaPv
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0201C990:
	ldr r1, [r5, #0x30]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201C968
_0201C9A4:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201C9C0
	bl _ZdaPv
	ldr r0, [r5, #0x30]
	mov r1, #0
	str r1, [r0, #8]
_0201C9C0:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0201C9D8
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x30]
_0201C9D8:
	ldr r1, [r5, #0x34]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0201CA34
	mov r6, r4
_0201C9F8:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201CA20
	bl _ZdaPv
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0201CA20:
	ldr r1, [r5, #0x34]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201C9F8
_0201CA34:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201CA50
	bl _ZdaPv
	ldr r0, [r5, #0x34]
	mov r1, #0
	str r1, [r0, #8]
_0201CA50:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x34]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0201CA6C
sub_0201CA6C: ; 0x0201CA6C
	mov r1, #0
	str r1, [r0]
	strh r1, [r0, #0xc]
	strb r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	strb r1, [r0, #0x14]
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x18]
	strb r1, [r0, #0x1a]
	strb r1, [r0, #0x1b]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x1e]
	strh r1, [r0, #0x20]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x38]
	str r1, [r0, #0x3c]
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	str r1, [r0, #0x48]
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	str r1, [r0, #0x54]
	str r1, [r0, #0x58]
	str r1, [r0, #0x5c]
	str r1, [r0, #0x60]
	str r1, [r0, #0x64]
	str r1, [r0, #0x68]
	str r1, [r0, #0x6c]
	bx lr
	arm_func_end sub_0201CA6C

	arm_func_start sub_0201CAF0
sub_0201CAF0: ; 0x0201CAF0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201CB0C
	mov r0, r4
	bl sub_0201E8C0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201CAF0

	arm_func_start sub_0201CB0C
sub_0201CB0C: ; 0x0201CB0C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl sub_0201001C
	ldr r1, [r4, #0x48]
	mov r6, r0
	cmp r1, #0
	beq _0201CBAC
	ldr r0, [r1, #4]
	mov r7, #0
	cmp r0, #0
	bls _0201CB78
	mov r5, r7
	arm_func_end sub_0201CB0C
_0201CB3C:
	ldr r0, [r1, #8]
	add r0, r0, r7, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201CB64
	bl _ZdaPv
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #8]
	add r0, r0, r7, lsl #3
	str r5, [r0, #4]
_0201CB64:
	ldr r1, [r4, #0x48]
	add r7, r7, #1
	ldr r0, [r1, #4]
	cmp r7, r0
	blo _0201CB3C
_0201CB78:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201CB94
	bl _ZdaPv
	ldr r0, [r4, #0x48]
	mov r1, #0
	str r1, [r0, #8]
_0201CB94:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0201CBAC
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x48]
_0201CBAC:
	ldr r1, [r4, #0x4c]
	cmp r1, #0
	beq _0201CC3C
	ldr r0, [r1, #4]
	mov r7, #0
	cmp r0, #0
	bls _0201CC08
	mov r5, r7
_0201CBCC:
	ldr r0, [r1, #8]
	add r0, r0, r7, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201CBF4
	bl _ZdaPv
	ldr r0, [r4, #0x4c]
	ldr r0, [r0, #8]
	add r0, r0, r7, lsl #3
	str r5, [r0, #4]
_0201CBF4:
	ldr r1, [r4, #0x4c]
	add r7, r7, #1
	ldr r0, [r1, #4]
	cmp r7, r0
	blo _0201CBCC
_0201CC08:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201CC24
	bl _ZdaPv
	ldr r0, [r4, #0x4c]
	mov r1, #0
	str r1, [r0, #8]
_0201CC24:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0201CC3C
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x4c]
_0201CC3C:
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _0201CCCC
	ldr r0, [r1, #4]
	mov r7, #0
	cmp r0, #0
	bls _0201CC98
	mov r5, r7
_0201CC5C:
	ldr r0, [r1, #8]
	add r0, r0, r7, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201CC84
	bl _ZdaPv
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #8]
	add r0, r0, r7, lsl #3
	str r5, [r0, #4]
_0201CC84:
	ldr r1, [r4, #0x50]
	add r7, r7, #1
	ldr r0, [r1, #4]
	cmp r7, r0
	blo _0201CC5C
_0201CC98:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201CCB4
	bl _ZdaPv
	ldr r0, [r4, #0x50]
	mov r1, #0
	str r1, [r0, #8]
_0201CCB4:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0201CCCC
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x50]
_0201CCCC:
	ldr r5, [r4, #0x28]
	cmp r5, #0
	beq _0201CCF4
	beq _0201CCEC
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201CCEC:
	mov r0, #0
	str r0, [r4, #0x28]
_0201CCF4:
	ldr r5, [r4, #0x2c]
	cmp r5, #0
	beq _0201CD1C
	beq _0201CD14
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201CD14:
	mov r0, #0
	str r0, [r4, #0x2c]
_0201CD1C:
	ldr r5, [r4, #0x30]
	cmp r5, #0
	beq _0201CD44
	beq _0201CD3C
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201CD3C:
	mov r0, #0
	str r0, [r4, #0x30]
_0201CD44:
	ldr r5, [r4, #0x34]
	cmp r5, #0
	beq _0201CD6C
	beq _0201CD64
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201CD64:
	mov r0, #0
	str r0, [r4, #0x34]
_0201CD6C:
	ldr r5, [r4, #0x38]
	cmp r5, #0
	beq _0201CD94
	beq _0201CD8C
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201CD8C:
	mov r0, #0
	str r0, [r4, #0x38]
_0201CD94:
	ldr r5, [r4, #0x3c]
	cmp r5, #0
	beq _0201CDBC
	beq _0201CDB4
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201CDB4:
	mov r0, #0
	str r0, [r4, #0x3c]
_0201CDBC:
	ldr r5, [r4, #0x40]
	cmp r5, #0
	beq _0201CDE4
	beq _0201CDDC
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201CDDC:
	mov r0, #0
	str r0, [r4, #0x40]
_0201CDE4:
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0x54]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0201CE00
sub_0201CE00: ; 0x0201CE00
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r7, _0201D574 ; =0x04001000
	mov r4, r0
	ldr r6, [r7]
	mov r5, r1
	bic r1, r6, #0x1f00
	orr r1, r1, #0x1f00
	str r1, [r7]
	ldr r1, [r4, #0x28]
	mov r7, r2
	mov r6, r3
	cmp r1, #0
	beq _0201CE3C
	bl sub_0201CB0C
	arm_func_end sub_0201CE00
_0201CE3C:
	stmia r4, {r5, r7}
	bl sub_0201001C
	mov r5, r0
	cmp r6, #0
	bne _0201CEB4
	mov r1, #0
	ldr r8, _0201D578 ; =MAIN_BSS_020B26A0
	mov r0, r1
	mov r3, r1
_0201CE60:
	cmp r0, #0
	blt _0201CE94
	cmp r0, #0x1f4
	bge _0201CE94
	mov r2, r0, asr #4
	add r2, r8, r2, lsl #2
	add r2, r2, #0x7000
	mov r6, r0, lsl #0x1c
	ldr r7, [r2, #0xc3c]
	mov r2, r6, lsr #0x1b
	mov r2, r7, lsr r2
	and r2, r2, #3
	b _0201CE98
_0201CE94:
	mov r2, r3
_0201CE98:
	add r0, r0, #1
	cmp r2, #2
	addhs r1, r1, #1
	cmp r0, #0x1f4
	blt _0201CE60
	strh r1, [r4, #0xc]
	b _0201CEB8
_0201CEB4:
	strh r6, [r4, #0xc]
_0201CEB8:
	ldr r1, [r4]
	cmp r1, #0
	beq _0201CED0
	ldr r2, [r4, #4]
	mov r0, r4
	bl sub_0201DF54
_0201CED0:
	mov r0, #0xb8
	bl _Znwm
	movs r8, r0
	beq _0201CEF0
	ldr r1, _0201D57C ; =s_data_message_etc_pokemon_info_0208bbd4
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r8, r0
_0201CEF0:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x48]
	ldr r1, [r8, #0x4c]
	mov r6, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r8, #0x4c]
	ldr r0, [r4, #0x48]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x48]
	mov r7, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x48]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201CFB8
_0201CF48:
	ldr r1, [r8, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r6, lsl #2]
	add r6, r6, #1
	str r1, [r0, r7, lsl #3]
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #8]
	ldr r0, [r0, r7, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x48]
	ldr r1, [r1, #8]
	add r1, r1, r7, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x48]
	ldr r0, [r8, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r6, lsl #2
	add r1, r2, r7, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r7, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x48]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r7, lsl #3]
	add r7, r7, #1
	cmp r7, r0
	add r6, r6, r1, lsr #2
	blo _0201CF48
_0201CFB8:
	cmp r8, #0
	beq _0201CFD0
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201CFD0:
	mov r0, #0xb8
	bl _Znwm
	movs r7, r0
	beq _0201CFF0
	ldr r1, _0201D580 ; =s_data_message_etc_menu_mes_0208bbf4
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r7, r0
_0201CFF0:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x4c]
	ldr r1, [r7, #0x4c]
	mov r8, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r7, #0x4c]
	ldr r0, [r4, #0x4c]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x4c]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x4c]
	mov r6, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x4c]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201D0B8
_0201D048:
	ldr r1, [r7, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r8, lsl #2]
	add r8, r8, #1
	str r1, [r0, r6, lsl #3]
	ldr r0, [r4, #0x4c]
	ldr r0, [r0, #8]
	ldr r0, [r0, r6, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x4c]
	ldr r1, [r1, #8]
	add r1, r1, r6, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x4c]
	ldr r0, [r7, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r8, lsl #2
	add r1, r2, r6, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r6, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x4c]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r6, lsl #3]
	add r6, r6, #1
	cmp r6, r0
	add r8, r8, r1, lsr #2
	blo _0201D048
_0201D0B8:
	cmp r7, #0
	beq _0201D0D0
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201D0D0:
	mov r0, #0xb8
	bl _Znwm
	movs r7, r0
	beq _0201D0F0
	ldr r1, _0201D584 ; =s_data_message_etc_assist_mes_0208bc10
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r7, r0
_0201D0F0:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x50]
	ldr r1, [r7, #0x4c]
	mov r8, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r7, #0x4c]
	ldr r0, [r4, #0x50]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x50]
	mov r6, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201D1B8
_0201D148:
	ldr r1, [r7, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r8, lsl #2]
	add r8, r8, #1
	str r1, [r0, r6, lsl #3]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #8]
	ldr r0, [r0, r6, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x50]
	ldr r1, [r1, #8]
	add r1, r1, r6, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x50]
	ldr r0, [r7, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r8, lsl #2
	add r1, r2, r6, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r6, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x50]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r6, lsl #3]
	add r6, r6, #1
	cmp r6, r0
	add r8, r8, r1, lsr #2
	blo _0201D148
_0201D1B8:
	cmp r7, #0
	beq _0201D1D0
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201D1D0:
	mov r0, #0x44
	mov r6, #0
	bl _Znwm
	cmp r0, #0
	beq _0201D204
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201D204:
	str r0, [r4, #0x2c]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x2c]
	ldr r1, _0201D588 ; =s_data_menu_0208bc30
	ldr r2, _0201D58C ; =s_mt000_00_0208bc3c
	bl sub_0200EE14
	add r6, r6, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201D254
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x1b4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201D254:
	str r0, [r4, #0x30]
	mov r0, #1
	str r0, [sp]
	mov r0, r6, asr #4
	add r3, r6, r0, lsr #27
	ldr r0, [r4, #0x30]
	ldr r1, _0201D588 ; =s_data_menu_0208bc30
	ldr r2, _0201D590 ; =s_ma004_00_0208bc48
	mov r3, r3, asr #5
	bl sub_0200EE14
	add r6, r6, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201D2B0
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x1d4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201D2B0:
	str r0, [r4, #0x34]
	mov r0, #2
	str r0, [sp]
	mov r0, r6, asr #4
	add r3, r6, r0, lsr #27
	ldr r0, [r4, #0x34]
	ldr r1, _0201D588 ; =s_data_menu_0208bc30
	ldr r2, _0201D594 ; =s_ma000_00_0208bc54
	mov r3, r3, asr #5
	bl sub_0200EE14
	add r6, r6, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201D30C
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x1f4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201D30C:
	str r0, [r4, #0x38]
	mov r0, #5
	str r0, [sp]
	mov r0, r6, asr #4
	add r3, r6, r0, lsr #27
	ldr r0, [r4, #0x38]
	ldr r1, _0201D588 ; =s_data_menu_0208bc30
	ldr r2, _0201D598 ; =s_ma001_00_0208bc60
	mov r3, r3, asr #5
	bl sub_0200EE14
	add r6, r6, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201D368
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x274
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201D368:
	str r0, [r4, #0x3c]
	mov r0, #6
	str r0, [sp]
	mov r0, r6, asr #4
	add r3, r6, r0, lsr #27
	ldr r0, [r4, #0x3c]
	ldr r1, _0201D588 ; =s_data_menu_0208bc30
	ldr r2, _0201D59C ; =s_ma002_00_0208bc6c
	mov r3, r3, asr #5
	bl sub_0200EE14
	add r6, r6, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201D3C4
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x284
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201D3C4:
	str r0, [r4, #0x40]
	mov r0, #7
	str r0, [sp]
	mov r0, r6, asr #4
	add r3, r6, r0, lsr #27
	ldr r0, [r4, #0x40]
	ldr r1, _0201D588 ; =s_data_menu_0208bc30
	ldr r2, _0201D5A0 ; =s_ma000_01_0208bc78
	mov r3, r3, asr #5
	bl sub_0200EE14
	add r1, r6, r0
	mov r0, r1, asr #4
	add r0, r1, r0, lsr #27
	mov r0, r0, asr #5
	str r0, [r4, #0x24]
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #0
	mov r2, #0x9d
	mov r3, #0x2e
	bl sub_0200F4FC
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #5
	mov r2, #0x9d
	mov r3, #0x52
	bl sub_0200F4FC
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #6
	mov r2, #0x9d
	mov r3, #0x76
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x25
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x37
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x49
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x5b
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x6d
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x7f
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #4
	mov r2, #0x38
	mov r3, #0x7b
	bl sub_0200F4FC
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4, #0x30]
	mov r1, #1
	mov r2, #0x38
	mov r3, #0
	bl sub_0200F4FC
	str r0, [r4, #0x44]
	ldr r0, [r4]
	cmp r0, #0
	beq _0201D54C
	mov r0, r4
	bl sub_0201E0A4
_0201D54C:
	mov r0, r4
	bl sub_0201E478
	mov r0, r4
	bl sub_0201E9A8
	mov r0, r4
	bl sub_0201EA2C
	mov r0, #0
	str r0, [r4, #0x54]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0201D574: .word 0x04001000
_0201D578: .word MAIN_BSS_020B26A0
_0201D57C: .word s_data_message_etc_pokemon_info_0208bbd4
_0201D580: .word s_data_message_etc_menu_mes_0208bbf4
_0201D584: .word s_data_message_etc_assist_mes_0208bc10
_0201D588: .word s_data_menu_0208bc30
_0201D58C: .word s_mt000_00_0208bc3c
_0201D590: .word s_ma004_00_0208bc48
_0201D594: .word s_ma000_00_0208bc54
_0201D598: .word s_ma001_00_0208bc60
_0201D59C: .word s_ma002_00_0208bc6c
_0201D5A0: .word s_ma000_01_0208bc78

	arm_func_start sub_0201D5A4
sub_0201D5A4: ; 0x0201D5A4
	mov r1, #0
	str r1, [r0, #0x70]
	bx lr
	arm_func_end sub_0201D5A4

	arm_func_start sub_0201D5B0
sub_0201D5B0: ; 0x0201D5B0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl sub_0201001C
	ldr r1, [r4, #0x70]
	mov r5, r0
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _0201DF10
_0201D5E0: ; jump table
	b _0201D620 ; case 0
	b _0201D6E4 ; case 1
	b _0201D7F0 ; case 2
	b _0201D8FC ; case 3
	b _0201DA08 ; case 4
	b _0201DA88 ; case 5
	b _0201DAFC ; case 6
	b _0201DB70 ; case 7
	b _0201DBE4 ; case 8
	b _0201DC58 ; case 9
	b _0201DCCC ; case 10
	b _0201DE38 ; case 11
	b _0201DE80 ; case 12
	b _0201DEBC ; case 13
	b _0201DF10 ; case 14
	b _0201DF00 ; case 15
	arm_func_end sub_0201D5B0
_0201D620:
	ldr r1, _0201DF24 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x1f00
	str r0, [r1]
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0201D648
	mov r0, r4
	bl sub_0201CB0C
_0201D648:
	str r8, [r4]
	str r7, [r4, #4]
	cmp r6, #0
	bne _0201D6BC
	mov r7, #0
	ldr r5, _0201DF28 ; =MAIN_BSS_020B26A0
	mov r6, r7
	mov r1, r7
_0201D668:
	cmp r6, #0
	blt _0201D69C
	cmp r6, #0x1f4
	bge _0201D69C
	mov r0, r6, asr #4
	add r0, r5, r0, lsl #2
	add r0, r0, #0x7000
	mov r2, r6, lsl #0x1c
	ldr r3, [r0, #0xc3c]
	mov r0, r2, lsr #0x1b
	mov r0, r3, lsr r0
	and r0, r0, #3
	b _0201D6A0
_0201D69C:
	mov r0, r1
_0201D6A0:
	add r6, r6, #1
	cmp r0, #2
	addhs r7, r7, #1
	cmp r6, #0x1f4
	blt _0201D668
	strh r7, [r4, #0xc]
	b _0201D6C0
_0201D6BC:
	strh r6, [r4, #0xc]
_0201D6C0:
	ldr r1, [r4]
	cmp r1, #0
	beq _0201D6D8
	ldr r2, [r4, #4]
	mov r0, r4
	bl sub_0201DF54
_0201D6D8:
	mov r0, #1
	str r0, [r4, #0x70]
	b _0201DF10
_0201D6E4:
	mov r0, #0xb8
	bl _Znwm
	movs r7, r0
	beq _0201D704
	ldr r1, _0201DF2C ; =s_data_message_etc_pokemon_info_0208bbd4
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r7, r0
_0201D704:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x48]
	ldr r1, [r7, #0x4c]
	mov r5, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r7, #0x4c]
	ldr r0, [r4, #0x48]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x48]
	mov r6, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x48]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201D7CC
_0201D75C:
	ldr r1, [r7, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r5, lsl #2]
	add r5, r5, #1
	str r1, [r0, r6, lsl #3]
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #8]
	ldr r0, [r0, r6, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x48]
	ldr r1, [r1, #8]
	add r1, r1, r6, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x48]
	ldr r0, [r7, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r5, lsl #2
	add r1, r2, r6, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r6, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x48]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r6, lsl #3]
	add r6, r6, #1
	cmp r6, r0
	add r5, r5, r1, lsr #2
	blo _0201D75C
_0201D7CC:
	cmp r7, #0
	beq _0201D7E4
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201D7E4:
	mov r0, #2
	str r0, [r4, #0x70]
	b _0201DF10
_0201D7F0:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0201D810
	ldr r1, _0201DF30 ; =s_data_message_etc_menu_mes_0208bbf4
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_0201D810:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x4c]
	ldr r1, [r6, #0x4c]
	mov r7, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r4, #0x4c]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x4c]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x4c]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x4c]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201D8D8
_0201D868:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r7, lsl #2]
	add r7, r7, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r4, #0x4c]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x4c]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x4c]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r7, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x4c]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r7, r7, r1, lsr #2
	blo _0201D868
_0201D8D8:
	cmp r6, #0
	beq _0201D8F0
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201D8F0:
	mov r0, #3
	str r0, [r4, #0x70]
	b _0201DF10
_0201D8FC:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0201D91C
	ldr r1, _0201DF34 ; =s_data_message_etc_assist_mes_0208bc10
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_0201D91C:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x50]
	ldr r1, [r6, #0x4c]
	mov r7, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r4, #0x50]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x50]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201D9E4
_0201D974:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r7, lsl #2]
	add r7, r7, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x50]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x50]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r7, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x50]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r7, r7, r1, lsr #2
	blo _0201D974
_0201D9E4:
	cmp r6, #0
	beq _0201D9FC
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201D9FC:
	mov r0, #4
	str r0, [r4, #0x70]
	b _0201DF10
_0201DA08:
	mov r1, #0
	str r1, [r4, #0x74]
	mov r0, #0x44
	str r1, [r4, #0x78]
	bl _Znwm
	cmp r0, #0
	beq _0201DA44
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201DA44:
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [sp]
	ldr r2, [r4, #0x74]
	ldr r0, [r4, #0x2c]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201DF38 ; =s_data_menu_0208bc30
	ldr r2, _0201DF3C ; =s_mt000_00_0208bc3c
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x74]
	mov r1, #5
	add r0, r2, r0
	str r0, [r4, #0x74]
	str r1, [r4, #0x70]
	b _0201DF10
_0201DA88:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201DAB8
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x1b4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201DAB8:
	str r0, [r4, #0x30]
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #0x74]
	ldr r0, [r4, #0x30]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201DF38 ; =s_data_menu_0208bc30
	ldr r2, _0201DF40 ; =s_ma004_00_0208bc48
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x74]
	mov r1, #6
	add r0, r2, r0
	str r0, [r4, #0x74]
	str r1, [r4, #0x70]
	b _0201DF10
_0201DAFC:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201DB2C
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x1d4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201DB2C:
	str r0, [r4, #0x34]
	mov r0, #2
	str r0, [sp]
	ldr r2, [r4, #0x74]
	ldr r0, [r4, #0x34]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201DF38 ; =s_data_menu_0208bc30
	ldr r2, _0201DF44 ; =s_ma000_00_0208bc54
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x74]
	mov r1, #7
	add r0, r2, r0
	str r0, [r4, #0x74]
	str r1, [r4, #0x70]
	b _0201DF10
_0201DB70:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201DBA0
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x1f4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201DBA0:
	str r0, [r4, #0x38]
	mov r0, #5
	str r0, [sp]
	ldr r2, [r4, #0x74]
	ldr r0, [r4, #0x38]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201DF38 ; =s_data_menu_0208bc30
	ldr r2, _0201DF48 ; =s_ma001_00_0208bc60
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x74]
	mov r1, #8
	add r0, r2, r0
	str r0, [r4, #0x74]
	str r1, [r4, #0x70]
	b _0201DF10
_0201DBE4:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201DC14
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x274
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201DC14:
	str r0, [r4, #0x3c]
	mov r0, #6
	str r0, [sp]
	ldr r2, [r4, #0x74]
	ldr r0, [r4, #0x3c]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201DF38 ; =s_data_menu_0208bc30
	ldr r2, _0201DF4C ; =s_ma002_00_0208bc6c
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x74]
	mov r1, #9
	add r0, r2, r0
	str r0, [r4, #0x74]
	str r1, [r4, #0x70]
	b _0201DF10
_0201DC58:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201DC88
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x284
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201DC88:
	str r0, [r4, #0x40]
	mov r0, #7
	str r0, [sp]
	ldr r2, [r4, #0x74]
	ldr r0, [r4, #0x40]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201DF38 ; =s_data_menu_0208bc30
	ldr r2, _0201DF50 ; =s_ma000_01_0208bc78
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x74]
	mov r1, #0xa
	add r0, r2, r0
	str r0, [r4, #0x74]
	str r1, [r4, #0x70]
	b _0201DF10
_0201DCCC:
	ldr r2, [r4, #0x74]
	mov r1, #3
	mov r0, r2, asr #4
	add r0, r2, r0, lsr #27
	mov r0, r0, asr #5
	str r0, [r4, #0x24]
	str r1, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #0
	mov r2, #0x9d
	mov r3, #0x2e
	bl sub_0200F4FC
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #5
	mov r2, #0x9d
	mov r3, #0x52
	bl sub_0200F4FC
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #6
	mov r2, #0x9d
	mov r3, #0x76
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x25
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x37
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x49
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x5b
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x6d
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x7f
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #4
	mov r2, #0x38
	mov r3, #0x7b
	bl sub_0200F4FC
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4, #0x30]
	mov r1, #1
	mov r2, #0x38
	mov r3, #0
	bl sub_0200F4FC
	str r0, [r4, #0x44]
	ldr r0, [r4]
	cmp r0, #0
	beq _0201DE2C
	mov r0, r4
	bl sub_0201E0A4
_0201DE2C:
	mov r0, #0xb
	str r0, [r4, #0x70]
	b _0201DF10
_0201DE38:
	bl DC_FlushAll
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r4, #0x64]
	ldr r2, [r4, #0x5c]
	ldr r0, [r4, #0x60]
	ldr r1, [r1, #0xb8]
	ldr r2, [r2, #0xb8]
	ldr r3, [r0, #0xb8]
	mov r0, #5
	bl NNS_G2dBGSetupEx
	mov r0, #0xc
	str r0, [r4, #0x70]
	b _0201DF10
_0201DE80:
	bl DC_FlushAll
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x68]
	mov r3, r2
	ldr r1, [r0, #0xb8]
	mov r0, #6
	bl NNS_G2dBGSetupEx
	mov r0, #0xd
	str r0, [r4, #0x70]
	b _0201DF10
_0201DEBC:
	bl DC_FlushAll
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x6c]
	mov r3, r2
	ldr r1, [r0, #0xb8]
	mov r0, #7
	bl NNS_G2dBGSetupEx
	mov r0, r4
	bl sub_0201E9A8
	mov r0, #0xf
	str r0, [r4, #0x70]
	b _0201DF10
_0201DF00:
	mov r0, r4
	bl sub_0201EA2C
	mov r0, #0x10
	str r0, [r4, #0x70]
_0201DF10:
	mov r0, #0
	str r0, [r4, #0x54]
	ldr r0, [r4, #0x70]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0201DF24: .word 0x04001000
_0201DF28: .word MAIN_BSS_020B26A0
_0201DF2C: .word s_data_message_etc_pokemon_info_0208bbd4
_0201DF30: .word s_data_message_etc_menu_mes_0208bbf4
_0201DF34: .word s_data_message_etc_assist_mes_0208bc10
_0201DF38: .word s_data_menu_0208bc30
_0201DF3C: .word s_mt000_00_0208bc3c
_0201DF40: .word s_ma004_00_0208bc48
_0201DF44: .word s_ma000_00_0208bc54
_0201DF48: .word s_ma001_00_0208bc60
_0201DF4C: .word s_ma002_00_0208bc6c
_0201DF50: .word s_ma000_01_0208bc78

	arm_func_start sub_0201DF54
sub_0201DF54: ; 0x0201DF54
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r7, r1
	mov r5, r2
	bl sub_0201001C
	mov r4, r0
	str r7, [r6]
	mov r1, r7, lsl #0x10
	str r5, [r6, #4]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x434]
	mov r1, r1, lsr #0x10
	bl sub_020107A8
	mov r5, r0
	ldrb r0, [r5, #3]
	strb r0, [r6, #0xe]
	ldrb r0, [r5, #4]
	strh r0, [r6, #0x10]
	ldrh r0, [r5]
	strh r0, [r6, #0x16]
	ldr r0, [r6]
	cmp r0, #0
	moveq r0, #0
	streqh r0, [r6, #0x12]
	beq _0201DFD8
	ldrh r2, [r6, #0x16]
	ldr r1, _0201E090 ; =DAT_0208c55c
	ldr r0, _0201E094 ; =0x0000FFFF
	mov r2, r2, lsl #1
	ldrh r1, [r1, r2]
	cmp r1, r0
	ldreq r1, _0201E098 ; =0x000003E7
	strh r1, [r6, #0x12]
	arm_func_end sub_0201DF54
_0201DFD8:
	ldrb r0, [r5, #2]
	strh r0, [r6, #0x18]
	ldrb r0, [r5, #5]
	strb r0, [r6, #0x1a]
	ldrb r0, [r5, #6]
	strb r0, [r6, #0x1b]
	cmp r0, #9
	moveq r0, #0
	streqb r0, [r6, #0x1b]
	mov r0, #4
	strb r0, [r6, #0x14]
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _0201E074
	ldr r0, [r4, #0xc]
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
	cmp r0, #0
	ldrneh r2, [r6, #0x16]
	ldrne r0, _0201E09C ; =0x00000141
	cmpne r2, r0
	beq _0201E074
	cmp r2, #0
	ldr r1, _0201E0A0 ; =MAIN_BSS_020B26A0
	blt _0201E06C
	cmp r2, #0x1f4
	bge _0201E06C
	mov r0, r2, asr #4
	add r0, r1, r0, lsl #2
	add r0, r0, #0x7000
	mov r1, r2, lsl #0x1c
	ldr r2, [r0, #0xeb0]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #3
	b _0201E070
_0201E06C:
	mov r0, #3
_0201E070:
	strb r0, [r6, #0x14]
_0201E074:
	ldrh r0, [r5, #0x10]
	strh r0, [r6, #0x1c]
	ldrh r0, [r5, #0x12]
	strh r0, [r6, #0x1e]
	ldr r0, [r5, #0x14]
	strh r0, [r6, #0x20]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0201E090: .word DAT_0208c55c
_0201E094: .word 0x0000FFFF
_0201E098: .word 0x000003E7
_0201E09C: .word 0x00000141
_0201E0A0: .word MAIN_BSS_020B26A0

	arm_func_start sub_0201E0A4
sub_0201E0A4: ; 0x0201E0A4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	bl sub_0201001C
	ldr r1, [r5, #4]
	mov r4, r0
	cmp r1, #0
	ldr r0, [r5, #0x34]
	bne _0201E160
	bl sub_0200F6C4
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r5, #0x1a]
	ldr r0, [r5, #0x34]
	mov r2, #0x94
	mov r3, #0x7e
	bl sub_0200F4FC
	ldr r0, [r5, #0x38]
	bl sub_0200F6C4
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r5, #0x1b]
	ldr r0, [r5, #0x38]
	mov r2, #0xa0
	mov r3, #0x7e
	bl sub_0200F4FC
	ldr r0, [r5, #0x3c]
	bl sub_0200F6C4
	ldrb r1, [r5, #0x14]
	cmp r1, #4
	bhs _0201E138
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x3c]
	mov r2, #0x64
	mov r3, #0x68
	bl sub_0200F4FC
	arm_func_end sub_0201E0A4
_0201E138:
	ldr r0, [r5, #0x40]
	bl sub_0200F6C4
	mov r0, #0
	str r0, [sp]
	ldrh r1, [r5, #0x10]
	ldr r0, [r5, #0x40]
	mov r2, #0x94
	mov r3, #0x5a
	bl sub_0200F4FC
	b _0201E17C
_0201E160:
	bl sub_0200F6C4
	ldr r0, [r5, #0x38]
	bl sub_0200F6C4
	ldr r0, [r5, #0x3c]
	bl sub_0200F6C4
	ldr r0, [r5, #0x40]
	bl sub_0200F6C4
_0201E17C:
	ldr r0, [r5, #4]
	cmp r0, #2
	add r0, sp, #4
	bne _0201E198
	ldr r1, _0201E26C ; =s_bp000_0208bc84
	bl OS_SPrintf
	b _0201E1A4
_0201E198:
	ldrh r2, [r5, #0x16]
	ldr r1, _0201E270 ; =s_bp_03d_0208bc8c
	bl OS_SPrintf
_0201E1A4:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0201E1E8
	ldr r1, _0201E274 ; =0x07000630
	mov r0, #0xc0
	mov r2, #0xa0
	bl MIi_CpuClearFast
	ldr r6, [r5, #0x28]
	cmp r6, #0
	beq _0201E1E8
	beq _0201E1E0
	mov r0, r6
	bl sub_0200ED2C
	mov r0, r6
	bl _ZdlPv
_0201E1E0:
	mov r0, #0
	str r0, [r5, #0x28]
_0201E1E8:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201E218
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x254
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201E218:
	str r0, [r5, #0x28]
	mov r0, #0xb
	str r0, [sp]
	ldr r0, [r5, #0x28]
	ldr r3, [r5, #0x24]
	ldr r1, _0201E278 ; =s_data_pokeOBJ_0208bc94
	add r2, sp, #4
	bl sub_0200F168
	ldr r0, [r5, #0x28]
	bl sub_0200F3EC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r1, #0
	mov r2, #0x38
	mov r3, #0x50
	bl sub_0200F4FC
	mov r0, #0
	str r0, [r5, #0x54]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0201E26C: .word s_bp000_0208bc84
_0201E270: .word s_bp_03d_0208bc8c
_0201E274: .word 0x07000630
_0201E278: .word s_data_pokeOBJ_0208bc94

	arm_func_start sub_0201E27C
sub_0201E27C: ; 0x0201E27C
	mov r1, #1
	str r1, [r0, #0x54]
	bx lr
	arm_func_end sub_0201E27C

	arm_func_start sub_0201E288
sub_0201E288: ; 0x0201E288
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r1
	mov r5, r0
	bl sub_0201001C
	mov r4, r0
	cmp r6, #3
	addls pc, pc, r6, lsl #2
	b _0201E45C
_0201E2AC: ; jump table
	b _0201E45C ; case 0
	b _0201E2BC ; case 1
	b _0201E368 ; case 2
	b _0201E42C ; case 3
	arm_func_end sub_0201E288
_0201E2BC:
	ldr r0, [r5, #0x34]
	bl sub_0200F6C4
	ldr r0, [r5, #0x38]
	bl sub_0200F6C4
	ldr r0, [r5, #0x3c]
	bl sub_0200F6C4
	ldr r0, [r5, #0x40]
	bl sub_0200F6C4
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0201E360
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r5, #0x1a]
	ldr r0, [r5, #0x34]
	mov r2, #0x94
	mov r3, #0x7e
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r5, #0x1b]
	ldr r0, [r5, #0x38]
	mov r2, #0xa0
	mov r3, #0x7e
	bl sub_0200F4FC
	ldrb r1, [r5, #0x14]
	cmp r1, #4
	bhs _0201E344
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x3c]
	mov r2, #0x64
	mov r3, #0x68
	bl sub_0200F4FC
_0201E344:
	mov r0, #0
	str r0, [sp]
	ldrh r1, [r5, #0x10]
	ldr r0, [r5, #0x40]
	mov r2, #0x94
	mov r3, #0x5a
	bl sub_0200F4FC
_0201E360:
	mov r6, #2
	b _0201E45C
_0201E368:
	ldr r0, [r5, #4]
	cmp r0, #2
	add r0, sp, #4
	bne _0201E384
	ldr r1, _0201E468 ; =s_bp000_0208bc84
	bl OS_SPrintf
	b _0201E390
_0201E384:
	ldrh r2, [r5, #0x16]
	ldr r1, _0201E46C ; =s_bp_03d_0208bc8c
	bl OS_SPrintf
_0201E390:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0201E3D4
	ldr r1, _0201E470 ; =0x07000630
	mov r0, #0xc0
	mov r2, #0xa0
	bl MIi_CpuClearFast
	ldr r6, [r5, #0x28]
	cmp r6, #0
	beq _0201E3D4
	beq _0201E3CC
	mov r0, r6
	bl sub_0200ED2C
	mov r0, r6
	bl _ZdlPv
_0201E3CC:
	mov r0, #0
	str r0, [r5, #0x28]
_0201E3D4:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201E404
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x254
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201E404:
	str r0, [r5, #0x28]
	mov r0, #0xb
	str r0, [sp]
	ldr r0, [r5, #0x28]
	ldr r3, [r5, #0x24]
	ldr r1, _0201E474 ; =s_data_pokeOBJ_0208bc94
	add r2, sp, #4
	bl sub_0200F168
	mov r6, #3
	b _0201E45C
_0201E42C:
	ldr r0, [r5, #0x28]
	bl sub_0200F3EC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r1, #0
	mov r2, #0x38
	mov r3, #0x50
	bl sub_0200F4FC
	mov r0, r5
	bl sub_0201EC80
	mov r6, #0
_0201E45C:
	mov r0, r6
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0201E468: .word s_bp000_0208bc84
_0201E46C: .word s_bp_03d_0208bc8c
_0201E470: .word 0x07000630
_0201E474: .word s_data_pokeOBJ_0208bc94

	arm_func_start sub_0201E478
sub_0201E478: ; 0x0201E478
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _0201E4B8
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _0201E698 ; =s_BGS_0208bca4
	ldr r2, _0201E69C ; =s_data_menu_mt000_bg_LZ_bin_0208bca8
	str r4, [sp, #0xc]
	bl sub_02002AEC
	mov r4, r0
	arm_func_end sub_0201E478
_0201E4B8:
	mov r0, #0xbc
	bl _Znwm
	movs r5, r0
	beq _0201E4E0
	ldr r1, _0201E6A0 ; =s_BGS_mt000_NCGR_0208bcc4
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_0200365C
	mov r5, r0
_0201E4E0:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _0201E508
	ldr r1, _0201E6A4 ; =s_BGS_mt000_NCLR_0208bcd4
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_020033B0
	mov r6, r0
_0201E508:
	mov r0, #0xbc
	bl _Znwm
	movs r7, r0
	beq _0201E530
	ldr r1, _0201E6A8 ; =s_BGS_mt000_01_1_NSCR_0208bce4
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_02003494
	mov r7, r0
_0201E530:
	mov r0, #0xbc
	bl _Znwm
	movs r8, r0
	beq _0201E558
	ldr r1, _0201E6AC ; =s_BGS_mt000_02_NSCR_0208bcf8
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_02003494
	mov r8, r0
_0201E558:
	mov r0, #0xbc
	bl _Znwm
	movs sb, r0
	beq _0201E580
	ldr r1, _0201E6B0 ; =s_BGS_mt000_03_NSCR_0208bd0c
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_02003494
	mov sb, r0
_0201E580:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r7, #0xb8]
	ldr r2, [r5, #0xb8]
	ldr r3, [r6, #0xb8]
	mov r0, #5
	bl NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [r8, #0xb8]
	mov r3, r2
	mov r0, #6
	bl NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [sb, #0xb8]
	mov r0, #7
	mov r3, r2
	bl NNS_G2dBGSetupEx
	cmp r7, #0
	beq _0201E614
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E614:
	cmp r8, #0
	beq _0201E62C
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E62C:
	cmp sb, #0
	beq _0201E644
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E644:
	cmp r5, #0
	beq _0201E65C
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E65C:
	cmp r6, #0
	beq _0201E674
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E674:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0201E698: .word s_BGS_0208bca4
_0201E69C: .word s_data_menu_mt000_bg_LZ_bin_0208bca8
_0201E6A0: .word s_BGS_mt000_NCGR_0208bcc4
_0201E6A4: .word s_BGS_mt000_NCLR_0208bcd4
_0201E6A8: .word s_BGS_mt000_01_1_NSCR_0208bce4
_0201E6AC: .word s_BGS_mt000_02_NSCR_0208bcf8
_0201E6B0: .word s_BGS_mt000_03_NSCR_0208bd0c

	arm_func_start sub_0201E6B4
sub_0201E6B4: ; 0x0201E6B4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r5, [r4, #0x58]
	cmp r5, #0
	beq _0201E6E8
	beq _0201E6E0
	mov r0, r5
	bl sub_02002B6C
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_0201E6B4
_0201E6E0:
	mov r0, #0
	str r0, [r4, #0x58]
_0201E6E8:
	mov r0, #0x6c
	bl _Znwm
	cmp r0, #0
	beq _0201E71C
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _0201E8A4 ; =s_PTC_0208bd20
	ldr r2, _0201E8A8 ; =s_data_menu_mt000_bg_LZ_bin_0208bca8
	str ip, [sp, #0xc]
	bl sub_02002AEC
_0201E71C:
	str r0, [r4, #0x58]
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _0201E744
	beq _0201E73C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E73C:
	mov r0, #0
	str r0, [r4, #0x5c]
_0201E744:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201E768
	ldr r1, _0201E8AC ; =s_PTC_mt000_NCGR_0208bd24
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl sub_0200365C
_0201E768:
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _0201E790
	beq _0201E788
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E788:
	mov r0, #0
	str r0, [r4, #0x60]
_0201E790:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201E7B4
	ldr r1, _0201E8B0 ; =s_PTC_mt000_NCLR_0208bd34
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl sub_020033B0
_0201E7B4:
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _0201E7DC
	beq _0201E7D4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E7D4:
	mov r0, #0
	str r0, [r4, #0x64]
_0201E7DC:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201E800
	ldr r1, _0201E8B4 ; =s_PTC_mt000_01_1_NSCR_0208bd44
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl sub_02003494
_0201E800:
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0201E828
	beq _0201E820
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E820:
	mov r0, #0
	str r0, [r4, #0x68]
_0201E828:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201E84C
	ldr r1, _0201E8B8 ; =s_PTC_mt000_02_NSCR_0208bd58
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl sub_02003494
_0201E84C:
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _0201E874
	beq _0201E86C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E86C:
	mov r0, #0
	str r0, [r4, #0x6c]
_0201E874:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201E898
	ldr r1, _0201E8BC ; =s_PTC_mt000_03_NSCR_0208bd6c
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl sub_02003494
_0201E898:
	str r0, [r4, #0x6c]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0201E8A4: .word s_PTC_0208bd20
_0201E8A8: .word s_data_menu_mt000_bg_LZ_bin_0208bca8
_0201E8AC: .word s_PTC_mt000_NCGR_0208bd24
_0201E8B0: .word s_PTC_mt000_NCLR_0208bd34
_0201E8B4: .word s_PTC_mt000_01_1_NSCR_0208bd44
_0201E8B8: .word s_PTC_mt000_02_NSCR_0208bd58
_0201E8BC: .word s_PTC_mt000_03_NSCR_0208bd6c

	arm_func_start sub_0201E8C0
sub_0201E8C0: ; 0x0201E8C0
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _0201E8EC
	beq _0201E8E4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0201E8C0
_0201E8E4:
	mov r0, #0
	str r0, [r4, #0x6c]
_0201E8EC:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0201E910
	beq _0201E908
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E908:
	mov r0, #0
	str r0, [r4, #0x68]
_0201E910:
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _0201E934
	beq _0201E92C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E92C:
	mov r0, #0
	str r0, [r4, #0x64]
_0201E934:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _0201E958
	beq _0201E950
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E950:
	mov r0, #0
	str r0, [r4, #0x5c]
_0201E958:
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _0201E97C
	beq _0201E974
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E974:
	mov r0, #0
	str r0, [r4, #0x60]
_0201E97C:
	ldr r5, [r4, #0x58]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0201E99C
	mov r0, r5
	bl sub_02002B6C
	mov r0, r5
	bl _ZdlPv
_0201E99C:
	mov r0, #0
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201E9A8
sub_0201E9A8: ; 0x0201E9A8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr ip, _0201EA28 ; =0x04001000
	mov lr, #0x1b
	ldr r1, [ip]
	ldr r0, [ip]
	and r1, r1, #0x1f00
	mov r2, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r2, #0xe
	orr r0, r1, r0, lsl #8
	str r0, [ip]
	ldrh r2, [ip, #0xa]
	add r0, ip, #0x50
	mov r1, #0
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [ip, #0xa]
	ldrh r4, [ip, #0xc]
	mov r2, #0x1e
	mov r3, #4
	bic r4, r4, #3
	orr r4, r4, #2
	strh r4, [ip, #0xc]
	ldrh r4, [ip, #0xe]
	bic r4, r4, #3
	orr r4, r4, #3
	strh r4, [ip, #0xe]
	str lr, [sp]
	bl G2x_SetBlendAlpha_
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0201EA28: .word 0x04001000
	arm_func_end sub_0201E9A8

	arm_func_start sub_0201EA2C
sub_0201EA2C: ; 0x0201EA2C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x12c
	ldr r6, _0201EC74 ; =DAT_02084788
	add r5, sp, #0x14
	mov sl, r0
	mov r4, #0x11
	arm_func_end sub_0201EA2C
_0201EA44:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201EA44
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	bl sub_0201001C
	mov r6, r0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB14
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #0xa
	bl sub_0200CC88
	mov r8, #0
	add sb, sp, #0x14
	mov r7, #0x40
	add r4, r6, #0x1000
	mov r5, r8
	mov fp, #2
_0201EAA4:
	ldr r0, [sb, #8]
	mov r1, r8
	str r0, [sp]
	ldr r0, [sb, #0xc]
	stmib sp, {r0, r7}
	str r5, [sp, #0xc]
	str fp, [sp, #0x10]
	ldr r0, [r4, #0x498]
	ldmia sb, {r2, r3}
	bl sub_0200CCD0
	add r8, r8, #1
	ldr r1, [sb]
	ldr r0, [sb, #4]
	cmp r8, #0xa
	mla r7, r1, r0, r7
	add sb, sb, #0x1c
	blt _0201EAA4
	ldr r0, [sp, #0x2c]
	mov r1, #0
	str r0, [sp]
	ldr r2, [sl, #0x4c]
	add r0, r6, #0x1000
	ldr r2, [r2, #8]
	ldr r2, [r2, #0x24]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl sub_0200CDA0
	ldr r0, [sp, #0x2c]
	ldr r3, _0201EC78 ; =0x51EB851F
	str r0, [sp]
	ldrh r2, [sl, #0xc]
	ldr r5, [sl, #0x4c]
	mov r1, #0
	mov r0, r2, lsr #0x1f
	smull r2, r4, r3, r2
	add r4, r0, r4, asr #5
	ldr r2, [r5, #8]
	add r0, r4, #8
	add r0, r2, r0, lsl #3
	ldr r2, [r0, #4]
	add r0, r6, #0x1000
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r3, [sp, #0x28]
	mov r2, #0x5c
	bl sub_0200CDA0
	ldr r0, [sp, #0x2c]
	ldr r2, _0201EC7C ; =0x66666667
	str r0, [sp]
	ldrh r4, [sl, #0xc]
	ldr r0, [sl, #0x4c]
	mov r3, #0xa
	smull r1, r5, r2, r4
	mov r1, r4, lsr #0x1f
	add r5, r1, r5, asr #2
	smull r1, r4, r2, r5
	mov r1, r5, lsr #0x1f
	add r4, r1, r4, asr #2
	smull r1, r2, r3, r4
	sub r4, r5, r1
	ldr r0, [r0, #8]
	add r1, r4, #8
	add r0, r0, r1, lsl #3
	ldr r0, [r0, #4]
	mov r1, #0
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	ldr r3, [sp, #0x28]
	mov r2, #0x66
	bl sub_0200CDA0
	ldr r0, [sp, #0x2c]
	ldr r1, _0201EC7C ; =0x66666667
	str r0, [sp]
	ldrh r4, [sl, #0xc]
	ldr r0, [sl, #0x4c]
	add r3, r6, #0x1000
	ldr r6, [r0, #8]
	smull r0, r5, r1, r4
	mov r0, r4, lsr #0x1f
	mov r2, #0xa
	add r5, r0, r5, asr #2
	smull r0, r1, r2, r5
	sub r5, r4, r0
	add r0, r5, #8
	add r0, r6, r0, lsl #3
	ldr r0, [r0, #4]
	mov r1, #0
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, [r3, #0x498]
	ldr r3, [sp, #0x28]
	mov r2, #0x70
	bl sub_0200CDA0
	ldr r0, [sl, #8]
	cmp r0, #0
	mov r0, sl
	bne _0201EC50
	bl sub_0201F024
	b _0201EC54
_0201EC50:
	bl sub_0201F38C
_0201EC54:
	ldr r0, [sl]
	cmp r0, #0
	addeq sp, sp, #0x12c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	bl sub_0201EC80
	add sp, sp, #0x12c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0201EC74: .word DAT_02084788
_0201EC78: .word 0x51EB851F
_0201EC7C: .word 0x66666667

	arm_func_start sub_0201EC80
sub_0201EC80: ; 0x0201EC80
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x148
	ldr r6, _0201F018 ; =DAT_020848a0
	add r5, sp, #0x30
	mov r7, r0
	mov r4, #0x11
	arm_func_end sub_0201EC80
_0201EC98:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201EC98
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	bl sub_0201001C
	mov r4, r0
	mov r6, #0
	add r5, r4, #0x1000
_0201ECC0:
	cmp r6, #3
	ble _0201ECD4
	ldr r0, [r5, #0x498]
	mov r1, r6
	bl sub_0200CF7C
_0201ECD4:
	add r6, r6, #1
	cmp r6, #0xa
	blt _0201ECC0
	ldr r0, [r7]
	cmp r0, #0
	ble _0201EF48
	ldrh r0, [r7, #0x12]
	mov r2, #0
	cmp r0, #0x3e8
	bhs _0201EE5C
	ldr r6, [sp, #0xb4]
	ldr r5, [sp, #0xb8]
	add r0, r4, #0x1000
	str r5, [sp]
	ldr r1, [r7, #0x4c]
	mov r3, r6
	ldr r1, [r1, #8]
	ldr ip, [r1, #0x3c]
	mov r1, #4
	str ip, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0xb0]
	bl sub_0200CDA0
	str r5, [sp]
	ldrh r1, [r7, #0x12]
	ldr r2, _0201F01C ; =0x51EB851F
	ldr ip, [r7, #0x4c]
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	add r0, r3, #8
	ldr r1, [ip, #8]
	mov r3, r6
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #4
	mov r2, #0x1c
	bl sub_0200CDA0
	str r5, [sp]
	ldr r0, [r7, #0x4c]
	ldrh ip, [r7, #0x12]
	ldr r3, _0201F020 ; =0x66666667
	ldr r1, [r0, #8]
	smull r2, r0, r3, ip
	mov r2, ip, lsr #0x1f
	add r0, r2, r0, asr #2
	smull r2, lr, r3, r0
	mov r2, r0, lsr #0x1f
	add lr, r2, lr, asr #2
	mov ip, #0xa
	smull r2, r3, ip, lr
	sub lr, r0, r2
	add r0, lr, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #4
	mov r2, #0x26
	mov r3, r6
	bl sub_0200CDA0
	str r5, [sp]
	ldr r0, [r7, #0x4c]
	ldrh r5, [r7, #0x12]
	ldr ip, [r0, #8]
	ldr r2, _0201F020 ; =0x66666667
	mov r3, r6
	smull r1, r6, r2, r5
	mov r0, r5, lsr #0x1f
	add r6, r0, r6, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r6
	sub r6, r5, r0
	add r0, r6, #8
	add r0, ip, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #4
	mov r2, #0x30
	bl sub_0200CDA0
	b _0201EEA4
_0201EE5C:
	ldr r0, [sp, #0xb8]
	mov r3, #1
	str r0, [sp]
	ldr r0, [r7, #0x4c]
	ldr r1, [r0, #8]
	add r0, r4, #0x1000
	ldr r5, [r1, #0x1ec]
	mov r1, #4
	str r5, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0xb0]
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	ldrh r0, [r7, #0x12]
	sub r0, r0, #0x3e8
	strh r0, [r7, #0x12]
_0201EEA4:
	ldr r0, [r7, #4]
	cmp r0, #1
	bgt _0201EF08
	add r0, r4, #0x1000
	ldrh r1, [r7, #0x16]
	ldr r0, [r0, #0x4b0]
	bl sub_02018B10
	add r1, sp, #0x10
	mov r2, #0x1f
	bl sub_0202BC74
	ldr r1, [sp, #0x128]
	add r0, sp, #0x10
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	mov r1, #8
	bl sub_0200CDA0
	b _0201EF48
_0201EF08:
	ldr r0, [sp, #0x128]
	mov r3, #1
	str r0, [sp]
	ldr r0, [r7, #0x4c]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r4, #0x1000
	ldr r5, [r1, #0x94]
	mov r1, #8
	str r5, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	bl sub_0200CDA0
_0201EF48:
	ldr r0, [r7]
	cmp r0, #0
	ble _0201EFE0
	ldr r0, [r7, #4]
	mov r2, #0
	cmp r0, #0
	bne _0201EFA8
	ldr r0, [sp, #0x144]
	str r0, [sp]
	ldr r0, [r7, #0x48]
	ldrh r1, [r7, #0x16]
	ldr r3, [r0, #8]
	add r0, r4, #0x1000
	add r1, r3, r1, lsl #3
	ldr r3, [r1, #4]
	mov r1, #9
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x13c]
	ldr r3, [sp, #0x140]
	bl sub_0200CDA0
	b _0201EFE0
_0201EFA8:
	ldr r0, [sp, #0x144]
	str r0, [sp]
	ldr r1, [r7, #0x4c]
	add r0, r4, #0x1000
	ldr r3, [r1, #8]
	mov r1, #9
	ldr r3, [r3, #0x94]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x13c]
	ldr r3, [sp, #0x140]
	bl sub_0200CDA0
_0201EFE0:
	ldr r0, [r7]
	cmp r0, #0
	addle sp, sp, #0x148
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #8]
	cmp r0, #0
	mov r0, r7
	bne _0201F00C
	bl sub_0201F124
	add sp, sp, #0x148
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0201F00C:
	bl sub_0201F48C
	add sp, sp, #0x148
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0201F018: .word DAT_020848a0
_0201F01C: .word 0x51EB851F
_0201F020: .word 0x66666667

	arm_func_start sub_0201F024
sub_0201F024: ; 0x0201F024
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x64
	ldr lr, _0201F120 ; =DAT_020846c4
	add ip, sp, #0x10
	mov r5, r0
	mov r4, #5
	arm_func_end sub_0201F024
_0201F03C:
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201F03C
	ldr r0, [lr]
	str r0, [ip]
	bl sub_0201001C
	ldr r1, [sp, #0x28]
	mov r4, r0
	str r1, [sp]
	ldr r0, [r5, #0x4c]
	mov r1, #1
	ldr r0, [r0, #8]
	mov r2, #0
	ldr r3, [r0, #0x2c]
	add r0, r4, #0x1000
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0200CDA0
	ldr r0, [sp, #0x44]
	mov r3, #1
	str r0, [sp]
	ldr r0, [r5, #0x4c]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r4, #0x1000
	ldr ip, [r1, #0x34]
	mov r1, #2
	str ip, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	bl sub_0200CDA0
	add r0, r4, #0x1000
	ldr r1, [sp, #0x60]
	mov r3, #1
	str r1, [sp]
	ldr r1, [r5, #0x4c]
	mov r2, #0
	ldr r4, [r1, #8]
	mov r1, #3
	ldr r4, [r4, #0x1c]
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	bl sub_0200CDA0
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0201F120: .word DAT_020846c4

	arm_func_start sub_0201F124
sub_0201F124: ; 0x0201F124
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	ldr ip, _0201F388 ; =DAT_02084718
	add r5, sp, #0x10
	mov r6, r0
	mov r4, #7
	arm_func_end sub_0201F124
_0201F13C:
	ldmia ip!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201F13C
	bl sub_0201001C
	ldr r1, [r6, #4]
	mov r4, r0
	cmp r1, #0
	mov r5, #0
	mov r2, #1
	bne _0201F248
	ldr r0, [sp, #0x28]
	str r0, [sp]
	ldr r0, [r6, #0x50]
	ldrb r1, [r6, #0xe]
	ldr r3, [r0, #8]
	add r0, r4, #0x1000
	add r1, r1, #1
	add r1, r3, r1, lsl #3
	ldr r3, [r1, #4]
	mov r1, #5
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0200CDA0
	ldr r0, [sp, #0x44]
	mov r2, #1
	str r0, [sp]
	ldr r1, [r6, #0x50]
	ldrh r0, [r6, #0x10]
	ldr r3, [r1, #8]
	mov r1, r5
	add r0, r0, #1
	add r0, r3, r0, lsl #3
	ldr r3, [r0, #4]
	add r0, r4, #0x1000
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	mov r1, #6
	bl sub_0200CDA0
	add r2, r4, #0x1000
	ldrb r1, [r6, #0x1a]
	ldr r0, [r2, #0x4b0]
	ldr r5, [r2, #0x498]
	bl sub_02018B80
	ldr r2, [sp, #0x60]
	mov r1, #1
	str r2, [sp]
	stmib sp, {r0, r1}
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	mov r0, r5
	mov r1, #7
	bl sub_0200CDA0
	ldrb r0, [r6, #0x1a]
	bl sub_020107C4
	mov r5, r0
	b _0201F300
_0201F248:
	ldr r0, [sp, #0x28]
	str r0, [sp]
	ldr r1, [r6, #0x4c]
	add r0, r4, #0x1000
	ldr r3, [r1, #8]
	mov r1, #5
	ldr r3, [r3, #0x94]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0200CDA0
	ldr r0, [sp, #0x44]
	mov r3, #1
	str r0, [sp]
	ldr r0, [r6, #0x4c]
	mov r2, r5
	ldr r1, [r0, #8]
	add r0, r4, #0x1000
	ldr ip, [r1, #0x94]
	mov r1, #6
	str ip, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	bl sub_0200CDA0
	ldr r0, [sp, #0x60]
	mov r3, #1
	str r0, [sp]
	ldr r0, [r6, #0x4c]
	mov r2, r5
	ldr r1, [r0, #8]
	add r0, r4, #0x1000
	ldr ip, [r1, #0x94]
	mov r1, #7
	str ip, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	bl sub_0200CDA0
_0201F300:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #3
	bl sub_0200CF7C
	cmp r5, #2
	beq _0201F324
	cmp r5, #3
	beq _0201F334
	b _0201F344
_0201F324:
	ldr r0, [r6, #0x4c]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x1e4]
	b _0201F350
_0201F334:
	ldr r0, [r6, #0x4c]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x1dc]
	b _0201F350
_0201F344:
	ldr r0, [r6, #0x4c]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x1c]
_0201F350:
	ldr r1, [sp, #0x7c]
	mov r0, #1
	stmia sp, {r1, r2}
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x74]
	ldr r3, [sp, #0x78]
	mov r1, #3
	bl sub_0200CDA0
	add sp, sp, #0x80
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0201F388: .word DAT_02084718

	arm_func_start sub_0201F38C
sub_0201F38C: ; 0x0201F38C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x64
	ldr lr, _0201F488 ; =DAT_02084670
	add ip, sp, #0x10
	mov r5, r0
	mov r4, #5
	arm_func_end sub_0201F38C
_0201F3A4:
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201F3A4
	ldr r0, [lr]
	str r0, [ip]
	bl sub_0201001C
	ldr r1, [sp, #0x28]
	mov r4, r0
	str r1, [sp]
	ldr r0, [r5, #0x4c]
	mov r1, #1
	ldr r0, [r0, #8]
	mov r2, #0
	ldr r3, [r0, #0x1ac]
	add r0, r4, #0x1000
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0200CDA0
	ldr r0, [sp, #0x44]
	mov r3, #1
	str r0, [sp]
	ldr r0, [r5, #0x4c]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r4, #0x1000
	ldr ip, [r1, #0x1b4]
	mov r1, #2
	str ip, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	bl sub_0200CDA0
	add r0, r4, #0x1000
	ldr r1, [sp, #0x60]
	mov r3, #1
	str r1, [sp]
	ldr r1, [r5, #0x4c]
	mov r2, #0
	ldr r4, [r1, #8]
	mov r1, #3
	ldr r4, [r4, #0x1bc]
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	bl sub_0200CDA0
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0201F488: .word DAT_02084670

	arm_func_start sub_0201F48C
sub_0201F48C: ; 0x0201F48C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x64
	ldr r6, _0201F920 ; =DAT_0208461c
	add r5, sp, #0x10
	mov r7, r0
	mov r4, #5
	arm_func_end sub_0201F48C
_0201F4A4:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201F4A4
	ldr r0, [r6]
	str r0, [r5]
	bl sub_0201001C
	ldr r6, [sp, #0x24]
	ldr r5, [sp, #0x28]
	ldr r2, _0201F924 ; =0x10624DD3
	str r5, [sp]
	ldrh r1, [r7, #0x1c]
	ldr ip, [r7, #0x4c]
	mov r4, r0
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #6
	ldr r1, [ip, #8]
	add r0, r3, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r3, r6
	mov r1, #5
	mov r2, #4
	bl sub_0200CDA0
	str r5, [sp]
	ldrh ip, [r7, #0x1c]
	ldr r0, [r7, #0x4c]
	ldr r3, _0201F928 ; =0x51EB851F
	ldr r1, [r0, #8]
	smull r2, r0, r3, ip
	mov r2, ip, lsr #0x1f
	add r0, r2, r0, asr #5
	ldr ip, _0201F92C ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, lr, ip, r0
	add lr, r2, lr, asr #2
	mov ip, #0xa
	smull r2, r3, ip, lr
	sub lr, r0, r2
	add r0, lr, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0xe
	mov r3, r6
	bl sub_0200CDA0
	str r5, [sp]
	ldr r1, [r7, #0x4c]
	ldrh r0, [r7, #0x1c]
	ldr r1, [r1, #8]
	ldr ip, _0201F92C ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r0, ip, r0
	add r0, r2, r0, asr #2
	smull r2, r3, ip, r0
	mov r2, r0, lsr #0x1f
	add r3, r2, r3, asr #2
	mov ip, #0xa
	smull r2, r3, ip, r3
	sub r3, r0, r2
	add r0, r3, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x18
	mov r3, r6
	bl sub_0200CDA0
	str r5, [sp]
	ldr r0, [r7, #0x4c]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r4, #0x1000
	ldr r3, [r1, #0x1c4]
	mov r1, #5
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	mov r2, #0x22
	mov r3, r6
	bl sub_0200CDA0
	str r5, [sp]
	ldr r0, [r7, #0x4c]
	ldrh ip, [r7, #0x1c]
	ldr r0, [r0, #8]
	ldr r3, _0201F92C ; =0x66666667
	mov r1, ip, lsr #0x1f
	smull r2, lr, r3, ip
	add lr, r1, lr, asr #2
	mov r3, #0xa
	smull r1, r2, r3, lr
	sub lr, ip, r1
	add r1, lr, #8
	add r0, r0, r1, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x2c
	mov r3, r6
	bl sub_0200CDA0
	str r5, [sp]
	ldr r0, [r7, #0x4c]
	mov r1, #0
	ldr r2, [r0, #8]
	add r0, r4, #0x1000
	ldr r2, [r2, #0x1cc]
	mov r3, r6
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x36
	bl sub_0200CDA0
	ldr r6, [sp, #0x40]
	ldr r5, [sp, #0x44]
	ldr r2, _0201F924 ; =0x10624DD3
	str r5, [sp]
	ldrh r1, [r7, #0x1e]
	ldr lr, [r7, #0x4c]
	mov r3, #0
	mov r0, r1, lsr #0x1f
	smull r1, ip, r2, r1
	add ip, r0, ip, asr #6
	ldr r1, [lr, #8]
	add r0, ip, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	add r0, r4, #0x1000
	stmib sp, {r1, r3}
	str r3, [sp, #0xc]
	ldr r0, [r0, #0x498]
	mov r3, r6
	mov r1, #6
	mov r2, #0x14
	bl sub_0200CDA0
	str r5, [sp]
	ldr r0, [r7, #0x4c]
	ldrh ip, [r7, #0x1e]
	ldr r3, _0201F928 ; =0x51EB851F
	ldr r1, [r0, #8]
	smull r2, r0, r3, ip
	mov r2, ip, lsr #0x1f
	add r0, r2, r0, asr #5
	ldr ip, _0201F92C ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, lr, ip, r0
	add lr, r2, lr, asr #2
	mov ip, #0xa
	smull r2, r3, ip, lr
	sub lr, r0, r2
	add r0, lr, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #6
	mov r2, #0x1e
	mov r3, r6
	bl sub_0200CDA0
	str r5, [sp]
	ldrh r0, [r7, #0x1e]
	ldr r1, [r7, #0x4c]
	ldr ip, _0201F92C ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r0, ip, r0
	add r0, r2, r0, asr #2
	smull r2, r3, ip, r0
	mov r2, r0, lsr #0x1f
	add r3, r2, r3, asr #2
	mov ip, #0xa
	smull r2, r3, ip, r3
	sub r3, r0, r2
	add r0, r3, #8
	ldr r1, [r1, #8]
	mov r2, #0x28
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #6
	mov r3, r6
	bl sub_0200CDA0
	str r5, [sp]
	ldr r0, [r7, #0x4c]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r4, #0x1000
	ldr r3, [r1, #0x1c4]
	mov r1, #6
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	mov r2, #0x32
	mov r3, r6
	bl sub_0200CDA0
	str r5, [sp]
	ldrh r3, [r7, #0x1e]
	ldr r2, _0201F92C ; =0x66666667
	ldr lr, [r7, #0x4c]
	mov r0, r3, lsr #0x1f
	smull r1, ip, r2, r3
	add ip, r0, ip, asr #2
	mov r2, #0xa
	smull r0, r1, r2, ip
	sub ip, r3, r0
	ldr r1, [lr, #8]
	add r0, ip, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r3, r6
	mov r1, #6
	mov r2, #0x3c
	bl sub_0200CDA0
	str r5, [sp]
	ldr r0, [r7, #0x4c]
	mov r1, #0
	ldr r2, [r0, #8]
	add r0, r4, #0x1000
	ldr r2, [r2, #0x1d4]
	mov r3, r6
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	mov r1, #6
	mov r2, #0x46
	bl sub_0200CDA0
	ldr r0, [sp, #0x60]
	mov r2, #1
	str r0, [sp]
	ldr r0, [r7, #0x4c]
	ldrh r1, [r7, #0x20]
	ldr r3, [r0, #8]
	add r0, r4, #0x1000
	add r1, r3, r1, lsl #3
	ldr r3, [r1, #4]
	mov r1, #0
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	mov r1, #7
	bl sub_0200CDA0
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_0201F920: .word DAT_0208461c
_0201F924: .word 0x10624DD3
_0201F928: .word 0x51EB851F
_0201F92C: .word 0x66666667

	arm_func_start sub_0201F930
sub_0201F930: ; 0x0201F930
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x54]
	bl sub_0201E288
	str r0, [r4, #0x54]
	bl sub_0201001C
	mov r1, r0
	add r1, r1, #0x1000
	ldr r2, [r1, #0x5d0]
	ldr r0, [r4, #0x44]
	mov r2, r2, asr #0xc
	ldrsh r1, [r0, #0xc]
	bl sub_0200EB28
	ldr r0, [r4, #0x2c]
	bl sub_0200F64C
	ldr r0, [r4, #0x30]
	bl sub_0200F64C
	ldr r0, [r4, #0x28]
	cmp r0, #0
	ldreq r0, [r4]
	cmpeq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201F930

	arm_func_start sub_0201F988
sub_0201F988: ; 0x0201F988
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x2c]
	bl sub_0200F71C
	ldr r0, [r4, #0x30]
	bl sub_0200F71C
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _0201F9B8
	ldr r1, [r4]
	cmp r1, #0
	ldmneia sp!, {r4, pc}
	arm_func_end sub_0201F988
_0201F9B8:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	ldmneia sp!, {r4, pc}
	ldr r1, [r4]
	cmp r1, #0
	beq _0201F9D4
	bl sub_0200F71C
_0201F9D4:
	ldr r0, [r4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0201FA04
	ldr r0, [r4, #0x34]
	bl sub_0200F71C
	ldr r0, [r4, #0x38]
	bl sub_0200F71C
	ldr r0, [r4, #0x40]
	bl sub_0200F71C
_0201FA04:
	ldrb r0, [r4, #0x14]
	cmp r0, #4
	ldmhsia sp!, {r4, pc}
	ldr r0, [r4, #0x3c]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}

	arm_func_start sub_0201FA1C
sub_0201FA1C: ; 0x0201FA1C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #0x48]
	cmp r1, #0
	beq _0201FAB4
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0201FA80
	mov r6, r4
	arm_func_end sub_0201FA1C
_0201FA44:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201FA6C
	bl _ZdaPv
	ldr r0, [r5, #0x48]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0201FA6C:
	ldr r1, [r5, #0x48]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201FA44
_0201FA80:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201FA9C
	bl _ZdaPv
	ldr r0, [r5, #0x48]
	mov r1, #0
	str r1, [r0, #8]
_0201FA9C:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _0201FAB4
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x48]
_0201FAB4:
	ldr r1, [r5, #0x4c]
	cmp r1, #0
	beq _0201FB44
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0201FB10
	mov r6, r4
_0201FAD4:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201FAFC
	bl _ZdaPv
	ldr r0, [r5, #0x4c]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0201FAFC:
	ldr r1, [r5, #0x4c]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201FAD4
_0201FB10:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201FB2C
	bl _ZdaPv
	ldr r0, [r5, #0x4c]
	mov r1, #0
	str r1, [r0, #8]
_0201FB2C:
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	beq _0201FB44
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x4c]
_0201FB44:
	ldr r1, [r5, #0x50]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0201FBA0
	mov r6, r4
_0201FB64:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201FB8C
	bl _ZdaPv
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0201FB8C:
	ldr r1, [r5, #0x50]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201FB64
_0201FBA0:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201FBBC
	bl _ZdaPv
	ldr r0, [r5, #0x50]
	mov r1, #0
	str r1, [r0, #8]
_0201FBBC:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x50]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0201FBD8
sub_0201FBD8: ; 0x0201FBD8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, [r1, #0xc]
	ldr r6, [r1]
	ldmib r1, {r3, r5}
	mov r1, r6, lsl #0xc
	mov r7, r4, lsl #0xc
	mov r6, r5, lsl #0xc
	mov r3, r3, lsl #0xc
	mov r8, r0
	cmp r2, #0
	mov r4, r1, asr #0x10
	mov r5, r3, asr #0x10
	mov r6, r6, asr #0x10
	mov r7, r7, asr #0x10
	beq _0201FC24
	bl sub_0201001C
	mov r1, r8, lsl #2
	add r2, r0, #0x24
	b _0201FC34
	arm_func_end sub_0201FBD8
_0201FC24:
	bl sub_0201001C
	add r0, r0, #0x24
	mov r1, r8, lsl #2
	add r2, r0, #0x400
_0201FC34:
	and r0, r1, #0xff
	add r0, r2, r0, lsl #3
	strh r4, [r0, #6]
	strh r5, [r0, #0xe]
	strh r6, [r0, #0x16]
	strh r7, [r0, #0x1e]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start sub_0201FC50
sub_0201FC50: ; 0x0201FC50
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	add r0, sp, #0
	mov r4, r3
	blx MTX_Scale22_
	add r1, sp, #0
	mov r0, r5
	mov r2, r4
	bl sub_0201FBD8
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0201FC50

	arm_func_start sub_0201FC80
sub_0201FC80: ; 0x0201FC80
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4, #0x60]
	bl sub_0201FCC8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201FC80

	arm_func_start sub_0201FC9C
sub_0201FC9C: ; 0x0201FC9C
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x60]
	bl sub_0201FCC8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201FC9C

	arm_func_start sub_0201FCB4
sub_0201FCB4: ; 0x0201FCB4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201FCFC
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201FCB4

	arm_func_start sub_0201FCC8
sub_0201FCC8: ; 0x0201FCC8
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #8]
	str r1, [r0, #4]
	str r1, [r0, #0xc]
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	str r1, [r0, #0x18]
	str r1, [r0, #0x20]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x28]
	str r1, [r0, #0x5c]
	bx lr
	arm_func_end sub_0201FCC8

	arm_func_start sub_0201FCFC
sub_0201FCFC: ; 0x0201FCFC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02020708
	mov r0, r4
	bl sub_0202072C
	mov r0, r4
	bl sub_02020750
	mov r0, r4
	bl sub_020204A8
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201FCFC

	arm_func_start sub_0201FD24
sub_0201FD24: ; 0x0201FD24
	stmdb sp!, {r3, lr}
	mov r3, r0
	ldr r1, [r3, #8]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r3, #0x28]
	ldr r2, [r3, #4]
	ldr r3, [r3]
	bl sub_02020A14
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201FD24

	arm_func_start sub_0201FD4C
sub_0201FD4C: ; 0x0201FD4C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	ldr r6, [sl, #8]
	mov sb, r1
	mov r8, r2
	cmp r6, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r5, [sl, #4]
	mov r1, r8
	mov r0, r5
	bl _u32_div_f
	cmp r0, #4
	bhs _0201FD98
	ldr r0, [sl, #0x28]
	ldr r3, [sl]
	mov r1, r6
	mov r2, r5
	bl sub_02020A14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end sub_0201FD4C
_0201FD98:
	and r1, r0, #3
	sub r7, r0, r1
	mul r4, r7, sb
	sub r0, r8, #1
	cmp sb, r0
	subeq r7, r5, r4
	ldr r5, [sl]
	cmp r5, #0
	beq _0201FDD0
	ldr r0, [sl, #0x28]
	bl sub_02020B40
	cmp r0, #0
	moveq r5, r5, lsl #5
	movne r5, r5, lsl #6
_0201FDD0:
	ldr r0, [sl, #0x28]
	mov r2, r7
	add r1, r6, r4
	add r3, r5, r4
	bl sub_02020A54
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start sub_0201FDE8
sub_0201FDE8: ; 0x0201FDE8
	stmdb sp!, {r3, lr}
	mov r3, r0
	ldr ip, [r3, #0x14]
	cmp ip, #0
	ldmeqia sp!, {r3, pc}
	str r1, [sp]
	ldr r0, [r3, #0x28]
	ldr r2, [r3, #0x10]
	ldr r3, [r3, #0xc]
	mov r1, ip
	bl sub_02020F04
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201FDE8

	arm_func_start sub_0201FE18
sub_0201FE18: ; 0x0201FE18
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r3, #0x100
	str r3, [r4, #0x44]
	str r3, [r4, #0x48]
	str r1, [r4, #0x4c]
	str r2, [r4, #0x50]
	bl sub_0201FE40
	str r0, [r4, #0x24]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201FE18

	arm_func_start sub_0201FE40
sub_0201FE40: ; 0x0201FE40
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x28]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0201FEB4
_0201FE54: ; jump table
	b _0201FE74 ; case 0
	b _0201FE7C ; case 1
	b _0201FE84 ; case 2
	b _0201FE8C ; case 3
	b _0201FE94 ; case 4
	b _0201FE9C ; case 5
	b _0201FEA4 ; case 6
	b _0201FEAC ; case 7
	arm_func_end sub_0201FE40
_0201FE74:
	bl G2_GetBG0ScrPtr
	ldmia sp!, {r3, pc}
_0201FE7C:
	bl G2_GetBG1ScrPtr
	ldmia sp!, {r3, pc}
_0201FE84:
	bl G2_GetBG2ScrPtr
	ldmia sp!, {r3, pc}
_0201FE8C:
	bl G2_GetBG3ScrPtr
	ldmia sp!, {r3, pc}
_0201FE94:
	bl G2S_GetBG0ScrPtr
	ldmia sp!, {r3, pc}
_0201FE9C:
	bl G2S_GetBG1ScrPtr
	ldmia sp!, {r3, pc}
_0201FEA4:
	bl G2S_GetBG2ScrPtr
	ldmia sp!, {r3, pc}
_0201FEAC:
	bl G2S_GetBG3ScrPtr
	ldmia sp!, {r3, pc}
_0201FEB4:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0201FEBC
sub_0201FEBC: ; 0x0201FEBC
	ldr ip, _0201FED8 ; =sub_02021318
	mov r3, r0
	ldr r0, [r3, #0x28]
	ldr r1, [r3, #0x20]
	ldr r2, [r3, #0x1c]
	ldr r3, [r3, #0x18]
	bx ip
	.align 2, 0
_0201FED8: .word sub_02021318
	arm_func_end sub_0201FEBC

	arm_func_start sub_0201FEDC
sub_0201FEDC: ; 0x0201FEDC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201FD24
	mov r0, r4
	mov r1, #0
	bl sub_0201FDE8
	mov r0, r4
	bl sub_0201FEBC
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201FEDC

	arm_func_start sub_0201FF00
sub_0201FF00: ; 0x0201FF00
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	bl sub_02020330
	ldr r0, [r4, #0x54]
	add ip, sp, #4
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x58]
	add r1, sp, #0x10
	str r0, [sp, #0xc]
	add r2, sp, #0xc
	add r3, sp, #8
	mov r0, r4
	str ip, [sp]
	bl sub_020202A0
	ldr r1, [sp, #4]
	mov r0, r4
	str r1, [sp]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	bl sub_0202015C
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_0201FF00

	arm_func_start sub_0201FF60
sub_0201FF60: ; 0x0201FF60
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x24
	mov r4, r0
	ldr r3, [r4, #0x54]
	mov r6, r2
	str r3, [sp, #0x20]
	mov r7, r1
	ldr r1, [r4, #0x58]
	add r5, sp, #0x14
	str r1, [sp, #0x1c]
	add r1, sp, #0x20
	add r2, sp, #0x1c
	add r3, sp, #0x18
	str r5, [sp]
	bl sub_020202A0
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x18]
	ldr r8, [sp, #0x1c]
	add r5, r2, r1
	ldr r3, [sp, #0x14]
	mov r2, r6
	mov r0, r4
	mov r1, r7
	add r6, r8, r3
	bl sub_02020330
	ldr r0, [r4, #0x54]
	add r1, sp, #4
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x58]
	mov r0, r4
	str r2, [sp, #0xc]
	str r1, [sp]
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_020202A0
	ldr lr, [sp, #8]
	ldr sb, [sp, #0x10]
	ldr r3, [sp, #0x20]
	ldr ip, [sp, #4]
	ldr r2, [sp, #0xc]
	add r7, sb, lr
	mov r0, #0
	add r8, r2, ip
	cmp sb, r3
	bne _02020024
	ldr r1, [sp, #0x18]
	cmp lr, r1
	ble _02020080
	arm_func_end sub_0201FF60
_02020024:
	cmp sb, r3
	bge _0202004C
	cmp r7, r3
	blt _0202004C
	ldr r1, [sp, #0x10]
	mov r0, r4
	sub r3, r3, r1
	str ip, [sp]
	bl sub_0202015C
	mov r0, #1
_0202004C:
	cmp r7, r5
	ble _02020080
	ldr r1, [sp, #0x10]
	cmp r1, r5
	bge _02020080
	ldr r1, [sp, #4]
	mov r0, r4
	str r1, [sp]
	ldr r2, [sp, #0xc]
	mov r1, r5
	sub r3, r7, r5
	bl sub_0202015C
	mov r0, #1
_02020080:
	ldr r3, [sp, #0x1c]
	ldr sb, [sp, #0xc]
	cmp sb, r3
	bne _020200A0
	ldr r2, [sp, #4]
	ldr r1, [sp, #0x14]
	cmp r2, r1
	ble _02020104
_020200A0:
	cmp sb, r3
	bge _020200D0
	cmp r8, r3
	blt _020200D0
	ldr r2, [sp, #0xc]
	mov r0, r4
	sub r1, r3, r2
	str r1, [sp]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #8]
	bl sub_0202015C
	mov r0, #1
_020200D0:
	cmp r8, r6
	ble _02020104
	ldr r1, [sp, #0xc]
	cmp r1, r6
	bge _02020104
	sub r0, r8, r6
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #8]
	mov r0, r4
	mov r2, r6
	bl sub_0202015C
	mov r0, #1
_02020104:
	cmp r0, #0
	bne _02020150
	ldr r0, [sp, #0x20]
	cmp r7, r0
	ldrge r0, [sp, #0x1c]
	cmpge r8, r0
	blt _02020134
	ldr r0, [sp, #0x10]
	cmp r0, r5
	ldrle r0, [sp, #0xc]
	cmple r0, r6
	ble _02020150
_02020134:
	ldr r1, [sp, #4]
	mov r0, r4
	str r1, [sp]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	bl sub_0202015C
_02020150:
	bl DC_FlushAll
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_0202015C
sub_0202015C: ; 0x0202015C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	mov sl, r0
	ldr fp, [sl, #0x44]
	ldr sb, [sl, #0x48]
	ldr ip, [sl, #0x34]
	ldr r6, [sl, #0x38]
	mov r7, fp, asr #2
	mov r8, sb, asr #2
	add r7, fp, r7, lsr #29
	mov r4, ip, asr #2
	mov r5, r6, asr #2
	str r1, [sp, #8]
	mov r1, r7, asr #3
	add r6, r6, r5, lsr #29
	add r4, ip, r4, lsr #29
	add r8, sb, r8, lsr #29
	str r1, [sp, #0x1c]
	mov r1, r8, asr #3
	str r3, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r5, r4, asr #3
	mov r6, r6, asr #3
	str r1, [sp, #0x18]
	ldr fp, [sp, #0x48]
	bl sub_0201FE40
	str r0, [sl, #0x24]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #0x14]
	addle sp, sp, #0x20
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_0202015C
_020201E0:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r7, #0
	cmp fp, #0
	add r8, r1, r0
	ble _02020280
_020201F8:
	ldr r0, [sp, #0x1c]
	mov r2, r8
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, [sl, #0x24]
	add sb, r0, r7
	mov r0, sl
	mov r3, sb
	bl sub_020202DC
	mov r4, r0
	cmp r8, #0
	blt _02020248
	cmp r8, r5
	bge _02020248
	cmp sb, #0
	blt _02020248
	cmp sb, r6
	blt _02020254
_02020248:
	mov r0, #0
	strh r0, [r4]
	b _02020274
_02020254:
	stmia sp, {r5, r6}
	ldr r1, [sl, #0x20]
	mov r3, sb
	mov r0, sl
	mov r2, r8
	bl sub_020202DC
	ldrh r0, [r0]
	strh r0, [r4]
_02020274:
	add r7, r7, #1
	cmp r7, fp
	blt _020201F8
_02020280:
	ldr r0, [sp, #0x14]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _020201E0
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start sub_020202A0
sub_020202A0: ; 0x020202A0
	stmdb sp!, {r4, lr}
	ldr ip, [r1]
	ldr r4, [r0, #0x4c]
	ldr lr, [r0, #0x50]
	mov r0, ip, asr #3
	str r0, [r1]
	ldr r0, [r2]
	mov r1, r4, asr #3
	mov r0, r0, asr #3
	str r0, [r2]
	ldr r0, [sp, #8]
	str r1, [r3]
	mov r1, lr, asr #3
	str r1, [r0]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020202A0

	arm_func_start sub_020202DC
sub_020202DC: ; 0x020202DC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	ldr r1, [sp, #0x10]
	mov r0, r2
	mov r5, r3
	bl _s32_div_f
	mov r4, r1
	ldr r1, [sp, #0x14]
	mov r0, r5
	bl _s32_div_f
	cmp r4, #0x20
	addge r6, r6, #0x800
	cmp r1, #0x20
	and r2, r4, #0x1f
	mov r0, r1, lsl #0x1b
	addge r6, r6, #0x1000
	add r0, r2, r0, lsr #22
	add r0, r6, r0, lsl #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020202DC

	arm_func_start sub_02020328
sub_02020328: ; 0x02020328
	str r1, [r0, #0x28]
	bx lr
	arm_func_end sub_02020328

	arm_func_start sub_02020330
sub_02020330: ; 0x02020330
	str r1, [r0, #0x54]
	str r2, [r0, #0x58]
	ldr r0, [r0, #0x28]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	bx lr
_02020348: ; jump table
	b _02020368 ; case 0
	b _02020388 ; case 1
	b _020203A8 ; case 2
	b _020203C8 ; case 3
	b _020203E8 ; case 4
	b _02020408 ; case 5
	b _02020428 ; case 6
	b _02020448 ; case 7
	arm_func_end sub_02020330
_02020368:
	ldr r0, _02020468 ; =0x000001FF
	ldr ip, _0202046C ; =0x04000010
	mov r3, r0, lsl #0x10
	and r1, r1, r0
	and r0, r3, r2, lsl #16
	orr r0, r1, r0
	str r0, [ip]
	bx lr
_02020388:
	ldr r0, _02020468 ; =0x000001FF
	ldr ip, _02020470 ; =0x04000014
	mov r3, r0, lsl #0x10
	and r1, r1, r0
	and r0, r3, r2, lsl #16
	orr r0, r1, r0
	str r0, [ip]
	bx lr
_020203A8:
	ldr r0, _02020468 ; =0x000001FF
	ldr ip, _02020474 ; =0x04000018
	mov r3, r0, lsl #0x10
	and r1, r1, r0
	and r0, r3, r2, lsl #16
	orr r0, r1, r0
	str r0, [ip]
	bx lr
_020203C8:
	ldr r0, _02020468 ; =0x000001FF
	ldr ip, _02020478 ; =0x0400001C
	mov r3, r0, lsl #0x10
	and r1, r1, r0
	and r0, r3, r2, lsl #16
	orr r0, r1, r0
	str r0, [ip]
	bx lr
_020203E8:
	ldr r0, _02020468 ; =0x000001FF
	ldr ip, _0202047C ; =0x04001010
	mov r3, r0, lsl #0x10
	and r1, r1, r0
	and r0, r3, r2, lsl #16
	orr r0, r1, r0
	str r0, [ip]
	bx lr
_02020408:
	ldr r0, _02020468 ; =0x000001FF
	ldr ip, _02020480 ; =0x04001014
	mov r3, r0, lsl #0x10
	and r1, r1, r0
	and r0, r3, r2, lsl #16
	orr r0, r1, r0
	str r0, [ip]
	bx lr
_02020428:
	ldr r0, _02020468 ; =0x000001FF
	ldr ip, _02020484 ; =0x04001018
	mov r3, r0, lsl #0x10
	and r1, r1, r0
	and r0, r3, r2, lsl #16
	orr r0, r1, r0
	str r0, [ip]
	bx lr
_02020448:
	ldr r0, _02020468 ; =0x000001FF
	ldr ip, _02020488 ; =0x0400101C
	mov r3, r0, lsl #0x10
	and r1, r1, r0
	and r0, r3, r2, lsl #16
	orr r0, r1, r0
	str r0, [ip]
	bx lr
	.align 2, 0
_02020468: .word 0x000001FF
_0202046C: .word 0x04000010
_02020470: .word 0x04000014
_02020474: .word 0x04000018
_02020478: .word 0x0400001C
_0202047C: .word 0x04001010
_02020480: .word 0x04001014
_02020484: .word 0x04001018
_02020488: .word 0x0400101C

	arm_func_start sub_0202048C
sub_0202048C: ; 0x0202048C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	bl sub_020207D4
	str r0, [r4, #0x5c]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202048C

	arm_func_start sub_020204A8
sub_020204A8: ; 0x020204A8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x5c]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _020204D0
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_020204A8
_020204D0:
	mov r0, #0
	str r0, [r5, #0x5c]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020204DC
sub_020204DC: ; 0x020204DC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #8]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	beq _0202050C
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #8]
	arm_func_end sub_020204DC
_0202050C:
	cmp r6, #0
	moveq r6, #1
	ldr r0, [sp, #0x20]
	str r6, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #0x28]
	ldr r0, _02020554 ; =s_BGS_0208bd80
	mov r2, r7
	mov r3, r5
	bl sub_020208B4
	ldr r1, _02020558 ; =MAIN_BSS_0210C1AC
	str r0, [r4, #8]
	ldr r0, [r1, #4]
	str r0, [r4, #4]
	str r5, [r4]
	ldr r0, [r4, #8]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02020554: .word s_BGS_0208bd80
_02020558: .word MAIN_BSS_0210C1AC

	arm_func_start sub_0202055C
sub_0202055C: ; 0x0202055C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x14]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	beq _0202058C
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x14]
	arm_func_end sub_0202055C
_0202058C:
	cmp r6, #0
	moveq r6, #1
	ldr r0, [sp, #0x20]
	str r6, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #0x28]
	ldr r0, _020205D4 ; =s_BGS_0208bd80
	mov r2, r7
	mov r3, r5
	bl sub_02020DA0
	ldr r1, _020205D8 ; =MAIN_BSS_0210C1AC
	str r0, [r4, #0x14]
	ldr r0, [r1, #4]
	str r0, [r4, #0x10]
	str r5, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020205D4: .word s_BGS_0208bd80
_020205D8: .word MAIN_BSS_0210C1AC

	arm_func_start sub_020205DC
sub_020205DC: ; 0x020205DC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #0x20]
	mov r4, r1
	mov r7, r2
	mov r6, r3
	cmp r0, #0
	beq _0202060C
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r5, #0x20]
	arm_func_end sub_020205DC
_0202060C:
	ldr r0, [sp, #0x28]
	cmp r7, #0
	moveq r7, #1
	stmia sp, {r0, r7}
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [r5, #0x28]
	ldr r0, _02020674 ; =s_BGS_0208bd80
	mov r2, r4
	mov r3, r6
	bl sub_0202108C
	str r0, [r5, #0x20]
	ldr r1, _02020678 ; =MAIN_BSS_0210C1AC
	ldr r0, [sp, #0x2c]
	ldr r2, [r1, #4]
	str r2, [r5, #0x1c]
	ldr r2, [r1]
	str r2, [r5, #0x34]
	ldr r1, [r1, #8]
	str r1, [r5, #0x38]
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x20]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02020674: .word s_BGS_0208bd80
_02020678: .word MAIN_BSS_0210C1AC

	arm_func_start sub_0202067C
sub_0202067C: ; 0x0202067C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4, #0x20]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	beq _020206AC
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x20]
	arm_func_end sub_0202067C
_020206AC:
	ldr r1, [sp, #0x20]
	cmp r6, #0
	moveq r6, #1
	ldr r0, [sp, #0x24]
	stmia sp, {r1, r6}
	str r0, [sp, #8]
	ldr r1, [r4, #0x28]
	ldr r2, [sp, #0x28]
	mov r0, r7
	mov r3, r5
	bl sub_0202110C
	ldr r1, _02020704 ; =MAIN_BSS_0210C1AC
	str r0, [r4, #0x20]
	ldr r0, [r1, #4]
	str r0, [r4, #0x1c]
	ldr r0, [r1]
	str r0, [r4, #0x34]
	ldr r0, [r1, #8]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x20]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02020704: .word MAIN_BSS_0210C1AC

	arm_func_start sub_02020708
sub_02020708: ; 0x02020708
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02020708

	arm_func_start sub_0202072C
sub_0202072C: ; 0x0202072C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x14]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202072C

	arm_func_start sub_02020750
sub_02020750: ; 0x02020750
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x20]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02020750

	arm_func_start sub_02020774
sub_02020774: ; 0x02020774
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _020207C4
	bl sub_0201001C
	mov r3, #1
	add r0, r0, #0x1000
	str r3, [sp]
	ldr r0, [r0, #0x4a8]
	mov ip, #0
	stmib sp, {r0, ip}
	ldr r1, _020207D0 ; =s_BGS_0208bd80
	mov r0, r4
	mov r2, r5
	str ip, [sp, #0xc]
	bl sub_02002AEC
	mov r4, r0
	arm_func_end sub_02020774
_020207C4:
	mov r0, r4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020207D0: .word s_BGS_0208bd80

	arm_func_start sub_020207D4
sub_020207D4: ; 0x020207D4
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x40
	mov r3, r1
	mov r2, r0
	ldr r1, _02020800 ; =s_data_s_sLZ_bin_0208bd84
	add r0, sp, #0
	bl OS_SPrintf
	add r0, sp, #0
	bl sub_02020774
	add sp, sp, #0x40
	ldmia sp!, {r3, pc}
	.align 2, 0
_02020800: .word s_data_s_sLZ_bin_0208bd84
	arm_func_end sub_020207D4

	arm_func_start sub_02020804
sub_02020804: ; 0x02020804
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r4, r2
	mov r8, r3
	bl sub_020207D4
	mov r6, r0
	mov r0, #0x40
	sub r1, r0, #0x44
	bl _Z23Heap_AllocWithAlignmentmm
	mov r7, r0
	cmp r8, #0
	moveq r8, r5
	mov ip, #0
	str ip, [sp]
	ldr r3, [sp, #0x20]
	ldr r0, _020208B0 ; =s_BGS_0208bd80
	mov r1, r4
	mov r2, r8
	str ip, [sp, #4]
	bl sub_020208B4
	ldr r0, [sp, #0x24]
	mov ip, #0
	cmp r0, #0
	movne r5, r0
	str ip, [sp]
	ldr r3, [sp, #0x28]
	ldr r0, _020208B0 ; =s_BGS_0208bd80
	mov r1, r4
	mov r2, r5
	str ip, [sp, #4]
	bl sub_02020DA0
	cmp r6, #0
	beq _0202089C
	mov r0, r6
	bl sub_02002B6C
	mov r0, r6
	bl _ZdlPv
	arm_func_end sub_02020804
_0202089C:
	mov r0, r7
	bl _Z9Heap_FreePv
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_020208B0: .word s_BGS_0208bd80

	arm_func_start sub_020208B4
sub_020208B4: ; 0x020208B4
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r0, #0x40
	mov r6, r1
	sub r1, r0, #0x44
	mov r5, r2
	mov r4, r3
	bl _Z23Heap_AllocWithAlignmentmm
	ldr r1, _02020918 ; =s_BGS_s_NCGR_0208bd94
	mov r2, r5
	mov r5, r0
	bl OS_SPrintf
	ldr r0, [sp, #0x18]
	mov r1, r6
	str r0, [sp]
	ldr r2, [sp, #0x1c]
	mov r3, r4
	mov r0, r5
	bl sub_0202091C
	mov r4, r0
	mov r0, r5
	bl _Z9Heap_FreePv
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02020918: .word s_BGS_s_NCGR_0208bd94
	arm_func_end sub_020208B4

	arm_func_start sub_0202091C
sub_0202091C: ; 0x0202091C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, r0
	mov r0, #0xbc
	mov sb, r1
	mov r5, r2
	mov r8, r3
	mov r4, #0
	bl _Znwm
	movs r7, r0
	beq _0202096C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr ip, [r0, #0x4a8]
	mov r0, r7
	mov r1, r6
	mov r3, r5
	mov r2, #1
	str ip, [sp]
	bl sub_0200365C
	mov r7, r0
	arm_func_end sub_0202091C
_0202096C:
	ldr r0, [r7, #0xb8]
	ldr r5, [r0, #0x10]
	ldr r6, [r0, #0x14]
	mov r1, r5
	mov r0, r6
	bl DC_FlushRange
	ldr r1, [sp, #0x20]
	ldr r0, _02020A10 ; =MAIN_BSS_0210C1AC
	mov r2, #0
	str r2, [r0, #4]
	cmp r1, #0
	beq _020209DC
	cmp r1, #1
	movne r4, r1
	bne _020209B4
	mov r0, r5
	bl _Z10Heap_Allocm
	mov r4, r0
_020209B4:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MI_CpuCopy8
	ldr r2, _02020A10 ; =MAIN_BSS_0210C1AC
	mov r0, r4
	mov r1, r5
	str r5, [r2, #4]
	bl DC_FlushRange
	b _020209F0
_020209DC:
	mov r0, sb
	mov r1, r6
	mov r2, r5
	mov r3, r8
	bl sub_02020A14
_020209F0:
	cmp r7, #0
	beq _02020A08
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02020A08:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02020A10: .word MAIN_BSS_0210C1AC

	arm_func_start sub_02020A14
sub_02020A14: ; 0x02020A14
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r3
	mov r7, r0
	mov r6, r1
	mov r5, r2
	beq _02020A3C
	bl sub_02020B40
	cmp r0, #0
	moveq r4, r4, lsl #5
	movne r4, r4, lsl #6
	arm_func_end sub_02020A14
_02020A3C:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_02020A54
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02020A54
sub_02020A54: ; 0x02020A54
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	mov r7, r0
	mov r1, r5
	add r0, r6, r4
	bl DC_FlushRange
	cmp r7, #7
	addls pc, pc, r7, lsl #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02020A80: ; jump table
	b _02020AA0 ; case 0
	b _02020AB4 ; case 1
	b _02020AC8 ; case 2
	b _02020ADC ; case 3
	b _02020AF0 ; case 4
	b _02020B04 ; case 5
	b _02020B18 ; case 6
	b _02020B2C ; case 7
	arm_func_end sub_02020A54
_02020AA0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GX_LoadBG0Char
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02020AB4:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GX_LoadBG1Char
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02020AC8:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GX_LoadBG2Char
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02020ADC:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GX_LoadBG3Char
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02020AF0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG0Char
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02020B04:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG1Char
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02020B18:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG2Char
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02020B2C:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG3Char
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02020B40
sub_02020B40: ; 0x02020B40
	sub sp, sp, #0x40
	cmp r0, #7
	mov r1, #0
	addls pc, pc, r0, lsl #2
	b _02020D80
_02020B54: ; jump table
	b _02020B74 ; case 0
	b _02020B98 ; case 1
	b _02020BB8 ; case 2
	b _02020C20 ; case 3
	b _02020C80 ; case 4
	b _02020CA0 ; case 5
	b _02020CC0 ; case 6
	b _02020D28 ; case 7
	arm_func_end sub_02020B40
_02020B74:
	ldr r0, _02020D8C ; =0x04000008
	ldrh r2, [r0]
	strh r2, [sp, #0x1a]
	ldrsh r1, [sp, #0x1a]
	mov r0, r2, lsl #0x18
	strh r2, [sp, #0x1e]
	mov r1, r0, lsr #0x1f
	ldrsh r0, [sp, #0x1a]
	b _02020D80
_02020B98:
	ldr r0, _02020D90 ; =0x0400000A
	ldrh r1, [r0]
	strh r1, [sp, #0x18]
	mov r0, r1, lsl #0x18
	strh r1, [sp, #6]
	mov r1, r0, lsr #0x1f
	ldrsh r0, [sp, #0x18]
	b _02020D80
_02020BB8:
	mov r3, #0x4000000
	ldr r0, [r3]
	str r0, [sp, #0x30]
	ldr r2, [sp, #0x30]
	mov r0, r2, lsl #0x1d
	mov r0, r0, lsr #0x1d
	str r2, [sp, #0x38]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02020D80
_02020BE0: ; jump table
	b _02020C00 ; case 0
	b _02020C00 ; case 1
	b _02020BF8 ; case 2
	b _02020C00 ; case 3
	b _02020BF8 ; case 4
	b _02020BF8 ; case 5
_02020BF8:
	mov r1, #1
	b _02020D80
_02020C00:
	ldrh r2, [r3, #0xc]
	strh r2, [sp, #0x16]
	ldrsh r1, [sp, #0x16]
	mov r0, r2, lsl #0x18
	strh r2, [sp, #0x1c]
	mov r1, r0, lsr #0x1f
	ldrsh r0, [sp, #0x16]
	b _02020D80
_02020C20:
	mov r3, #0x4000000
	ldr r2, [r3]
	mov r0, r2, lsl #0x1d
	mov r0, r0, lsr #0x1d
	str r2, [sp, #0x2c]
	str r2, [sp, #0x20]
	ldr r2, [sp, #0x2c]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02020D80
_02020C48: ; jump table
	b _02020D80 ; case 0
	b _02020C60 ; case 1
	b _02020C60 ; case 2
	b _02020C60 ; case 3
	b _02020C60 ; case 4
	b _02020C60 ; case 5
_02020C60:
	ldrh r2, [r3, #0xc]
	strh r2, [sp, #0x14]
	ldrsh r1, [sp, #0x14]
	mov r0, r2, lsl #0x18
	strh r2, [sp]
	mov r1, r0, lsr #0x1f
	ldrsh r0, [sp, #0x14]
	b _02020D80
_02020C80:
	ldr r0, _02020D94 ; =0x04001008
	ldrh r1, [r0]
	strh r1, [sp, #0x12]
	mov r0, r1, lsl #0x18
	strh r1, [sp, #8]
	mov r1, r0, lsr #0x1f
	ldrsh r0, [sp, #0x12]
	b _02020D80
_02020CA0:
	ldr r0, _02020D98 ; =0x0400100A
	ldrh r1, [r0]
	strh r1, [sp, #0x10]
	mov r0, r1, lsl #0x18
	strh r1, [sp, #0xa]
	mov r1, r0, lsr #0x1f
	ldrsh r0, [sp, #0x10]
	b _02020D80
_02020CC0:
	ldr r3, _02020D9C ; =0x04001000
	ldr r2, [r3]
	mov r0, r2, lsl #0x1d
	mov r0, r0, lsr #0x1d
	str r2, [sp, #0x28]
	str r2, [sp, #0x3c]
	ldr r2, [sp, #0x28]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02020D80
_02020CE8: ; jump table
	b _02020D08 ; case 0
	b _02020D08 ; case 1
	b _02020D00 ; case 2
	b _02020D08 ; case 3
	b _02020D00 ; case 4
	b _02020D00 ; case 5
_02020D00:
	mov r1, #1
	b _02020D80
_02020D08:
	ldrh r2, [r3, #0xc]
	strh r2, [sp, #0xe]
	ldrsh r1, [sp, #0xe]
	mov r0, r2, lsl #0x18
	strh r2, [sp, #2]
	mov r1, r0, lsr #0x1f
	ldrsh r0, [sp, #0xe]
	b _02020D80
_02020D28:
	ldr r3, _02020D9C ; =0x04001000
	ldr r0, [r3]
	str r0, [sp, #0x24]
	ldr r2, [sp, #0x24]
	mov r0, r2, lsl #0x1d
	mov r0, r0, lsr #0x1d
	str r2, [sp, #0x34]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02020D80
_02020D50: ; jump table
	b _02020D80 ; case 0
	b _02020D68 ; case 1
	b _02020D68 ; case 2
	b _02020D68 ; case 3
	b _02020D68 ; case 4
	b _02020D68 ; case 5
_02020D68:
	ldrh r2, [r3, #0xe]
	strh r2, [sp, #0xc]
	ldrsh r1, [sp, #0xc]
	mov r0, r2, lsl #0x18
	strh r2, [sp, #4]
	mov r1, r0, lsr #0x1f
_02020D80:
	mov r0, r1
	add sp, sp, #0x40
	bx lr
	.align 2, 0
_02020D8C: .word 0x04000008
_02020D90: .word 0x0400000A
_02020D94: .word 0x04001008
_02020D98: .word 0x0400100A
_02020D9C: .word 0x04001000

	arm_func_start sub_02020DA0
sub_02020DA0: ; 0x02020DA0
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r0, #0x40
	mov r6, r1
	sub r1, r0, #0x44
	mov r5, r2
	mov r4, r3
	bl _Z23Heap_AllocWithAlignmentmm
	ldr r1, _02020E04 ; =s_BGS_s_NCLR_0208bda0
	mov r2, r5
	mov r5, r0
	bl OS_SPrintf
	ldr r0, [sp, #0x18]
	mov r1, r6
	str r0, [sp]
	ldr r2, [sp, #0x1c]
	mov r3, r4
	mov r0, r5
	bl sub_02020E08
	mov r4, r0
	mov r0, r5
	bl _Z9Heap_FreePv
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02020E04: .word s_BGS_s_NCLR_0208bda0
	arm_func_end sub_02020DA0

	arm_func_start sub_02020E08
sub_02020E08: ; 0x02020E08
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, r0
	mov r0, #0xbc
	mov sb, r1
	mov r5, r2
	mov r8, r3
	mov r4, #0
	bl _Znwm
	movs r7, r0
	beq _02020E58
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr ip, [r0, #0x4a8]
	mov r0, r7
	mov r1, r6
	mov r3, r5
	mov r2, #1
	str ip, [sp]
	bl sub_020033B0
	mov r7, r0
	arm_func_end sub_02020E08
_02020E58:
	ldr r0, [r7, #0xb8]
	ldr r5, [r0, #8]
	ldr r6, [r0, #0xc]
	mov r1, r5
	mov r0, r6
	bl DC_FlushRange
	ldr r1, [sp, #0x20]
	ldr r0, _02020F00 ; =MAIN_BSS_0210C1AC
	mov ip, #0
	str ip, [r0, #4]
	cmp r1, #0
	beq _02020EC8
	cmp r1, #1
	movne r4, r1
	bne _02020EA0
	mov r0, r5
	bl _Z10Heap_Allocm
	mov r4, r0
_02020EA0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MI_CpuCopy8
	ldr r2, _02020F00 ; =MAIN_BSS_0210C1AC
	mov r0, r4
	mov r1, r5
	str r5, [r2, #4]
	bl DC_FlushRange
	b _02020EE0
_02020EC8:
	mov r0, sb
	mov r1, r6
	mov r2, r5
	mov r3, r8
	str ip, [sp]
	bl sub_02020F04
_02020EE0:
	cmp r7, #0
	beq _02020EF8
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02020EF8:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02020F00: .word MAIN_BSS_0210C1AC

	arm_func_start sub_02020F04
sub_02020F04: ; 0x02020F04
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr ip, [sp, #0x18]
	mov r5, r1
	mov r4, r2
	mov r8, r0
	cmp ip, #0
	movne r7, r3, lsl #9
	mov r0, r5
	mov r1, r4
	moveq r7, r3, lsl #5
	mov r6, #0
	bl DC_FlushRange
	cmp r8, #7
	addls pc, pc, r8, lsl #2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02020F40: ; jump table
	b _02020F6C ; case 0
	b _02020F68 ; case 1
	b _02020F64 ; case 2
	b _02020F60 ; case 3
	b _02020FB4 ; case 4
	b _02020FB0 ; case 5
	b _02020FAC ; case 6
	b _02020FA8 ; case 7
	arm_func_end sub_02020F04
_02020F60:
	add r6, r6, #0x2000
_02020F64:
	add r6, r6, #0x2000
_02020F68:
	add r6, r6, #0x2000
_02020F6C:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02020F94
	bl GX_BeginLoadBGExtPltt
	mov r0, r5
	mov r2, r4
	add r1, r7, r6
	bl GX_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02020F94:
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl GX_LoadBGPltt
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02020FA8:
	add r6, r6, #0x2000
_02020FAC:
	add r6, r6, #0x2000
_02020FB0:
	add r6, r6, #0x2000
_02020FB4:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02020FDC
	bl GXS_BeginLoadBGExtPltt
	mov r0, r5
	mov r2, r4
	add r1, r7, r6
	bl GXS_LoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02020FDC:
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl GXS_LoadBGPltt
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start sub_02020FF0
sub_02020FF0: ; 0x02020FF0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r7, r1
	mov r6, r2
	mov r8, r3
	bl sub_020207D4
	mov r4, r0
	mov r0, #0x40
	sub r1, r0, #0x44
	bl _Z23Heap_AllocWithAlignmentmm
	ldr r1, [sp, #0x2c]
	mov r5, r0
	str r1, [sp]
	ldr r0, [sp, #0x30]
	cmp r8, #0
	str r0, [sp, #4]
	mov r0, #0
	movne r7, r8
	str r0, [sp, #8]
	ldr ip, [sp, #0x34]
	ldr r3, [sp, #0x28]
	ldr r0, _02021088 ; =s_BGS_0208bd80
	mov r1, r6
	mov r2, r7
	str ip, [sp, #0xc]
	bl sub_0202108C
	mov r6, r0
	cmp r4, #0
	beq _02021074
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02020FF0
_02021074:
	mov r0, r5
	bl _Z9Heap_FreePv
	mov r0, r6
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02021088: .word s_BGS_0208bd80

	arm_func_start sub_0202108C
sub_0202108C: ; 0x0202108C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r0, #0x40
	mov r6, r1
	sub r1, r0, #0x44
	mov r5, r2
	mov r4, r3
	bl _Z23Heap_AllocWithAlignmentmm
	ldr r1, _02021108 ; =s_s_s_NSCR_0208bdac
	mov r2, r7
	mov r3, r5
	mov r5, r0
	bl OS_SPrintf
	mov r1, r6
	mov r3, r4
	ldr r2, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r2, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	mov r0, r5
	str r2, [sp, #8]
	ldr r2, [sp, #0x28]
	bl sub_0202110C
	mov r4, r0
	mov r0, r5
	bl _Z9Heap_FreePv
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02021108: .word s_s_s_NSCR_0208bdac
	arm_func_end sub_0202108C

	arm_func_start sub_0202110C
sub_0202110C: ; 0x0202110C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, r0
	mov r0, #0xbc
	mov fp, r1
	mov r5, r2
	mov r8, r3
	mov r6, #0
	bl _Znwm
	movs r4, r0
	beq _0202115C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr sb, [r0, #0x4a8]
	mov r0, r4
	mov r1, r7
	mov r3, r5
	mov r2, #1
	str sb, [sp]
	bl sub_02003494
	mov r4, r0
	arm_func_end sub_0202110C
_0202115C:
	ldr r5, [r4, #0xb8]
	cmp r5, #0
	bne _02021188
	cmp r4, #0
	beq _02021180
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02021180:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02021188:
	ldrh r1, [r5]
	ldr r7, [r5, #8]
	ldr r0, _02021310 ; =MAIN_BSS_0210C1AC
	cmp r8, #0
	str r1, [r0]
	ldr r1, [r4, #0xb8]
	ldrh r1, [r1, #2]
	str r1, [r0, #8]
	movne r1, #1
	ldr r0, [sp, #0x28]
	moveq r1, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	orrs r0, r1, r0
	beq _02021278
	ldr r1, [sp, #0x28]
	ldr r0, _02021314 ; =0x000003FF
	mov r2, #0
	and r0, r1, r0
	add r8, r0, r8, lsl #12
	mov r1, r2, lsl #0x10
	orr r0, r2, #0
	orr r2, r0, r8, lsl #16
	mov r3, r7, lsr #3
	orr r1, r1, r8, lsr #16
	orr r0, r8, r8, lsl #16
	orr r0, r1, r0
	cmp r3, #0
	orr r0, r0, #0
	orr r1, r8, r2
	add ip, r5, #0xc
	mov r2, #0
	ble _02021238
_02021210:
	mov lr, ip
	ldr sl, [ip], #8
	ldr sb, [lr, #4]
	adds sl, sl, r1
	str sl, [lr]
	adc sb, sb, r0
	add r2, r2, #1
	str sb, [lr, #4]
	cmp r2, r3
	blt _02021210
_02021238:
	mov r0, r8, lsl #0x10
	mov r1, r0, lsr #0x10
	and r0, r7, #7
	orr r1, r1, r1, lsl #16
	mov r3, r0, lsr #1
	cmp r3, #0
	mov r0, r1, lsl #0x10
	mov r8, #0
	ble _02021278
_0202125C:
	mov r2, ip
	ldrh r1, [ip], #2
	add r8, r8, #1
	cmp r8, r3
	add r1, r1, r0, lsr #16
	strh r1, [r2]
	blt _0202125C
_02021278:
	mov r1, r7
	add r0, r5, #0xc
	bl DC_FlushRange
	ldr r1, [sp, #0x2c]
	ldr r0, _02021310 ; =MAIN_BSS_0210C1AC
	mov r2, #0
	str r2, [r0, #4]
	cmp r1, #0
	beq _020212DC
	cmp r1, #1
	movne r6, r1
	bne _020212B4
	mov r0, r7
	bl _Z10Heap_Allocm
	mov r6, r0
_020212B4:
	mov r1, r6
	mov r2, r7
	add r0, r5, #0xc
	bl MI_CpuCopy8
	ldr r2, _02021310 ; =MAIN_BSS_0210C1AC
	mov r0, r6
	mov r1, r7
	str r7, [r2, #4]
	bl DC_FlushRange
	b _020212F0
_020212DC:
	ldr r3, [sp, #0x30]
	mov r0, fp
	mov r2, r7
	add r1, r5, #0xc
	bl sub_02021318
_020212F0:
	cmp r4, #0
	beq _02021308
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02021308:
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02021310: .word MAIN_BSS_0210C1AC
_02021314: .word 0x000003FF

	arm_func_start sub_02021318
sub_02021318: ; 0x02021318
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r5, r2
	mov r7, r0
	mov r0, r6
	mov r1, r5
	mov r4, r3
	bl DC_FlushRange
	cmp r7, #7
	addls pc, pc, r7, lsl #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02021344: ; jump table
	b _02021364 ; case 0
	b _02021378 ; case 1
	b _0202138C ; case 2
	b _020213A0 ; case 3
	b _020213B4 ; case 4
	b _020213C8 ; case 5
	b _020213DC ; case 6
	b _020213F0 ; case 7
	arm_func_end sub_02021318
_02021364:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GX_LoadBG0Scr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02021378:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GX_LoadBG1Scr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0202138C:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GX_LoadBG2Scr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020213A0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GX_LoadBG3Scr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020213B4:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG0Scr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020213C8:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG1Scr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020213DC:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG2Scr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020213F0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG3Scr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02021404
sub_02021404: ; 0x02021404
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020214D8
	mov r0, r5
	mov r1, r4
	bl sub_020214E4
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02021404

	arm_func_start sub_02021428
sub_02021428: ; 0x02021428
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0202143C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02021428

	arm_func_start sub_0202143C
sub_0202143C: ; 0x0202143C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _020214A0
	mov r6, r4
	arm_func_end sub_0202143C
_02021464:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0202148C
	bl _ZdaPv
	ldr r0, [r5]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0202148C:
	ldr r1, [r5]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _02021464
_020214A0:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _020214BC
	bl _ZdaPv
	ldr r0, [r5]
	mov r1, #0
	str r1, [r0, #8]
_020214BC:
	ldr r0, [r5]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_020214D8
sub_020214D8: ; 0x020214D8
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end sub_020214D8

	arm_func_start sub_020214E4
sub_020214E4: ; 0x020214E4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, r1
	bl sub_0202143C
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _02021514
	mov r1, r4
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
	arm_func_end sub_020214E4
_02021514:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _020215DC
_0202156C:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0202156C
_020215DC:
	cmp r6, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_020215F8
sub_020215F8: ; 0x020215F8
	ldr r2, [r0]
	cmp r2, #0
	ldreq r0, _02021624 ; =DAT_0208bdb8
	bxeq lr
	ldr r0, [r2, #4]
	cmp r1, r0
	movhs r0, #0
	ldrlo r0, [r2, #8]
	addlo r0, r0, r1, lsl #3
	ldrlo r0, [r0, #4]
	bx lr
	.align 2, 0
_02021624: .word DAT_0208bdb8
	arm_func_end sub_020215F8

	arm_func_start sub_02021628
sub_02021628: ; 0x02021628
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end sub_02021628

	arm_func_start sub_0202163C
sub_0202163C: ; 0x0202163C
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0xa8]
	bl sub_02021808
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202163C

	arm_func_start sub_02021654
sub_02021654: ; 0x02021654
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02021668
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02021654

	arm_func_start sub_02021668
sub_02021668: ; 0x02021668
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0x3c]
	cmp r5, #0
	beq _02021698
	beq _02021690
	mov r0, r5
	bl sub_0201FCB4
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_02021668
_02021690:
	mov r0, #0
	str r0, [r4, #0x3c]
_02021698:
	ldr r5, [r4, #0x40]
	cmp r5, #0
	beq _020216C0
	beq _020216B8
	mov r0, r5
	bl sub_0201FCB4
	mov r0, r5
	bl _ZdlPv
_020216B8:
	mov r0, #0
	str r0, [r4, #0x40]
_020216C0:
	ldr r5, [r4, #0x44]
	cmp r5, #0
	beq _020216E8
	beq _020216E0
	mov r0, r5
	bl sub_0201FCB4
	mov r0, r5
	bl _ZdlPv
_020216E0:
	mov r0, #0
	str r0, [r4, #0x44]
_020216E8:
	ldr r5, [r4, #0x48]
	cmp r5, #0
	beq _02021710
	beq _02021708
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_02021708:
	mov r0, #0
	str r0, [r4, #0x48]
_02021710:
	ldr r5, [r4, #0x4c]
	cmp r5, #0
	beq _02021738
	beq _02021730
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_02021730:
	mov r0, #0
	str r0, [r4, #0x4c]
_02021738:
	ldr r5, [r4, #0x50]
	cmp r5, #0
	beq _02021760
	beq _02021758
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_02021758:
	mov r0, #0
	str r0, [r4, #0x50]
_02021760:
	ldr r0, [r4, #0xa8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldr r5, [r4, #0xa4]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _02021790
	mov r0, r5
	bl sub_02021428
	mov r0, r5
	bl _ZdlPv
_02021790:
	mov r0, #0
	str r0, [r4, #0xa4]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202179C
sub_0202179C: ; 0x0202179C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _020217C8
	ldr r2, [r4, #0xa8]
	mov r1, #0x80
	add r2, r2, #0x1000
	ldr r2, [r2, #0x5d0]
	mov r2, r2, asr #0xc
	bl sub_0200EB28
	arm_func_end sub_0202179C
_020217C8:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _020217D8
	bl sub_0200F64C
_020217D8:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _020217E8
	bl sub_0200F64C
_020217E8:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F64C
	ldmia sp!, {r4, pc}

	arm_func_start sub_020217FC
sub_020217FC: ; 0x020217FC
	ldr ip, _02021804 ; =sub_02021844
	bx ip
	.align 2, 0
_02021804: .word sub_02021844
	arm_func_end sub_020217FC

	arm_func_start sub_02021808
sub_02021808: ; 0x02021808
	mov r2, #0
	str r2, [r0, #0x30]
	str r2, [r0, #0x34]
	str r2, [r0, #0x3c]
	str r2, [r0, #0x40]
	str r2, [r0, #0x44]
	str r2, [r0, #0x48]
	str r2, [r0, #0x4c]
	str r2, [r0, #0x50]
	strh r2, [r0, #0x98]
	sub r1, r2, #1
	str r1, [r0, #0x38]
	str r2, [r0, #0xa4]
	str r2, [r0, #0x9c]
	bx lr
	arm_func_end sub_02021808

	arm_func_start sub_02021844
sub_02021844: ; 0x02021844
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x44]
	mov r5, #0
	mov r6, r5
	cmp r0, #0
	beq _02021888
	ldr r2, [r4, #0x30]
	ldr r1, [r4, #0x34]
	mov r3, r2, asr #2
	mov r2, r1, asr #2
	sub r1, r3, #0x80
	sub r2, r2, #0x60
	bl sub_0201FF60
	ldr r0, [r4, #0x44]
	ldr r5, [r0, #0x54]
	ldr r6, [r0, #0x58]
	arm_func_end sub_02021844
_02021888:
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x54]
	rsb r1, r5, r1, asr #2
	rsb r2, r6, r2, asr #2
	bl sub_0200EB28
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _020218B0
	bl sub_0200F71C
_020218B0:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _020218C0
	bl sub_0200F71C
_020218C0:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl sub_020218E0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_020218E0
sub_020218E0: ; 0x020218E0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r0
	mov r4, #0
	mov r7, r1
	mov r6, r2
	mov r5, r8
	mov sb, #1
	mov sl, r4
	arm_func_end sub_020218E0
_02021900:
	ldr r3, [r5, #0x5c]
	cmp r3, #0
	beq _0202194C
	ldrsh r1, [r5, #0x60]
	ldrsh r0, [r5, #0x62]
	rsbs r1, r7, r1, asr #2
	rsb r2, r6, r0, asr #2
	bmi _02021938
	cmp r1, #0x100
	bge _02021938
	cmp r2, #0
	blt _02021938
	cmp r2, #0xc0
	blt _02021940
_02021938:
	str sl, [r3, #0x14]
	b _0202194C
_02021940:
	str sb, [r3, #0x14]
	ldr r0, [r5, #0x5c]
	bl sub_0200EB28
_0202194C:
	add r4, r4, #1
	cmp r4, #5
	add r5, r5, #0xc
	blt _02021900
	ldr r0, [r8, #0x50]
	bl sub_0200F71C
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start sub_02021968
sub_02021968: ; 0x02021968
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	bl sub_02021668
	mov r0, r4
	bl sub_02022038
	mov r0, #4
	bl _Znwm
	cmp r0, #0
	beq _02021998
	ldr r1, _02021B3C ; =s_data_message_etc_place_name_0208bdbc
	bl sub_02021404
	arm_func_end sub_02021968
_02021998:
	str r0, [r4, #0xa4]
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _020219B4
	ldr r1, [r4, #0xa8]
	bl sub_0201FC9C
_020219B4:
	str r0, [r4, #0x3c]
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _020219D0
	ldr r1, [r4, #0xa8]
	bl sub_0201FC9C
_020219D0:
	str r0, [r4, #0x40]
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _020219EC
	ldr r1, [r4, #0xa8]
	bl sub_0201FC9C
_020219EC:
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x3c]
	mov r1, #5
	bl sub_02020328
	ldr r0, [r4, #0x3c]
	ldr r1, _02021B40 ; =s_menu_0208bddc
	ldr r2, _02021B44 ; =s_mm000_0208bde4
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x3c]
	ldr r1, _02021B48 ; =s_mm000_00_0208bdec
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x3c]
	ldr r1, _02021B4C ; =s_mm000_0208bdf8
	mov r3, r2
	bl sub_0202055C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #0x3c]
	ldr r1, _02021B48 ; =s_mm000_00_0208bdec
	mov r3, r2
	bl sub_020205DC
	ldr r0, [r4, #0x3c]
	bl sub_020204A8
	ldr r0, [r4, #0x3c]
	mov r1, #0x100
	mov r2, r1
	bl sub_0201FE18
	ldr r0, [r4, #0x40]
	mov r1, #7
	bl sub_02020328
	ldr r0, [r4, #0x40]
	ldr r1, _02021B40 ; =s_menu_0208bddc
	ldr r2, _02021B44 ; =s_mm000_0208bde4
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #0x40]
	ldr r1, _02021B50 ; =s_mm000_01_0208be00
	mov r3, r2
	bl sub_020205DC
	ldr r0, [r4, #0x40]
	bl sub_020204A8
	ldr r0, [r4, #0x40]
	mov r1, #0x100
	mov r2, r1
	bl sub_0201FE18
	ldr r0, [r4, #0x44]
	mov r1, #6
	bl sub_02020328
	ldr r0, [r4, #0x44]
	ldr r1, _02021B40 ; =s_menu_0208bddc
	ldr r2, _02021B54 ; =s_um_0208be0c
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x44]
	ldr r1, _02021B58 ; =s_um000_00_0208be10
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x44]
	ldr r1, _02021B5C ; =s_um000_0208be1c
	mov r3, #5
	bl sub_0202055C
	ldr r0, [r4, #0x44]
	bl sub_020204A8
	ldr r0, [r4, #0x44]
	mov r1, #0x100
	mov r2, r1
	bl sub_0201FE18
	mov r0, r4
	bl sub_02021B60
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02021B3C: .word s_data_message_etc_place_name_0208bdbc
_02021B40: .word s_menu_0208bddc
_02021B44: .word s_mm000_0208bde4
_02021B48: .word s_mm000_00_0208bdec
_02021B4C: .word s_mm000_0208bdf8
_02021B50: .word s_mm000_01_0208be00
_02021B54: .word s_um_0208be0c
_02021B58: .word s_um000_00_0208be10
_02021B5C: .word s_um000_0208be1c

	arm_func_start sub_02021B60
sub_02021B60: ; 0x02021B60
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x48]
	cmp r4, #0
	beq _02021B90
	beq _02021B88
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02021B60
_02021B88:
	mov r0, #0
	str r0, [r5, #0x48]
_02021B90:
	ldr r4, [r5, #0x4c]
	cmp r4, #0
	beq _02021BB8
	beq _02021BB0
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_02021BB0:
	mov r0, #0
	str r0, [r5, #0x4c]
_02021BB8:
	ldr r4, [r5, #0x50]
	cmp r4, #0
	beq _02021BE0
	beq _02021BD8
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_02021BD8:
	mov r0, #0
	str r0, [r5, #0x50]
_02021BE0:
	mov r4, #0
	mov r0, #0x44
	str r4, [r5, #0xa0]
	bl _Znwm
	cmp r0, #0
	beq _02021C28
	ldr r2, [r5, #0xa8]
	mov r1, #0x40
	str r1, [sp]
	ldr r3, [r5, #0xa0]
	add r1, r2, #0x24
	add r2, r2, #0x1000
	add ip, r1, #0x400
	and r1, r3, #0xff
	ldr r2, [r2, #0x4a8]
	add r1, ip, r1, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_02021C28:
	str r0, [r5, #0x48]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x48]
	ldr r1, _02021D9C ; =s_data_menu_0208be24
	ldr r2, _02021DA0 ; =s_mm001_00_0208be30
	bl sub_0200F168
	add r4, r4, r0
	ldr r0, [r5, #0x48]
	bl sub_0200F398
	mov r1, #0
	str r1, [sp]
	ldr r0, [r5, #0x48]
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [r5, #0x54]
	ldr r0, [r5, #0x48]
	ldr r2, [r5, #0xa0]
	ldr r1, [r0, #0x30]
	mov r0, #0x44
	add r1, r2, r1
	str r1, [r5, #0xa0]
	bl _Znwm
	cmp r0, #0
	beq _02021CC0
	ldr r2, [r5, #0xa8]
	mov r1, #0x40
	str r1, [sp]
	ldr r3, [r5, #0xa0]
	add r1, r2, #0x24
	add r2, r2, #0x1000
	add ip, r1, #0x400
	and r1, r3, #0xff
	ldr r2, [r2, #0x4a8]
	add r1, ip, r1, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_02021CC0:
	str r0, [r5, #0x4c]
	mov r0, #3
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r5, #0x4c]
	ldr r1, _02021D9C ; =s_data_menu_0208be24
	ldr r2, _02021DA4 ; =s_ma004_00_0208be3c
	mov r3, r3, asr #5
	bl sub_0200F168
	add r4, r4, r0
	ldr r0, [r5, #0x4c]
	bl sub_0200F398
	mov r1, #0
	mov r0, #2
	str r0, [sp]
	ldr r0, [r5, #0x4c]
	mov r2, r1
	mov r3, r1
	bl sub_0200F4FC
	str r0, [r5, #0x58]
	ldr r0, [r5, #0x4c]
	ldr r2, [r5, #0xa0]
	ldr r1, [r0, #0x30]
	mov r0, #0x44
	add r1, r2, r1
	str r1, [r5, #0xa0]
	bl _Znwm
	cmp r0, #0
	beq _02021D68
	ldr r2, [r5, #0xa8]
	mov r1, #0x40
	str r1, [sp]
	ldr r3, [r5, #0xa0]
	add r1, r2, #0x24
	add r2, r2, #0x1000
	add ip, r1, #0x400
	and r1, r3, #0xff
	ldr r2, [r2, #0x4a8]
	add r1, ip, r1, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_02021D68:
	str r0, [r5, #0x50]
	mov r0, #4
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r5, #0x50]
	ldr r1, _02021D9C ; =s_data_menu_0208be24
	ldr r2, _02021DA8 ; =s_mm001_03_0208be48
	mov r3, r3, asr #5
	bl sub_0200F168
	ldr r0, [r5, #0x50]
	bl sub_0200F398
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02021D9C: .word s_data_menu_0208be24
_02021DA0: .word s_mm001_00_0208be30
_02021DA4: .word s_ma004_00_0208be3c
_02021DA8: .word s_mm001_03_0208be48

	arm_func_start sub_02021DAC
sub_02021DAC: ; 0x02021DAC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x48]
	bl sub_0200F398
	ldr r0, [r4, #0x4c]
	bl sub_0200F398
	ldr r0, [r4, #0x50]
	bl sub_0200F398
	ldmia sp!, {r4, pc}
	arm_func_end sub_02021DAC

	arm_func_start sub_02021DD0
sub_02021DD0: ; 0x02021DD0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x4c
	ldr r1, _02021EA8 ; =MAIN_BSS_0210CA6C
	mov r4, r0
	ldr r7, [r1]
	ldr r1, [r4, #0x38]
	mov r0, r7
	bl sub_02041D80
	ldrb r5, [r0]
	ldr r1, [r4, #0x38]
	mov r0, r7
	bl sub_02041D80
	ldrb r6, [r0, #1]
	ldr r1, [r4, #0x38]
	mov r0, r7
	bl sub_02041D80
	ldrb r1, [r0, #2]
	add r0, sp, #0xc
	cmp r1, #0xff
	bne _02021E34
	ldr r1, _02021EAC ; =s_data_menu_um_03d_03d_LZ_bin_0208be54
	mov r2, r5
	mov r3, r6
	bl OS_SPrintf
	b _02021E4C
	arm_func_end sub_02021DD0
_02021E34:
	add ip, r1, #0x61
	ldr r1, _02021EB0 ; =s_data_menu_um_03d_03d_c_LZ_bin_0208be74
	mov r2, r5
	mov r3, r6
	str ip, [sp]
	bl OS_SPrintf
_02021E4C:
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	add r1, sp, #0xc
	mov r3, #5
	bl sub_0202067C
	cmp r0, #0
	addne sp, sp, #0x4c
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	ldr r1, _02021EB4 ; =s_data_menu_um004_001_LZ_bin_0208be94
	mov r3, #5
	bl sub_0202067C
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02021EA8: .word MAIN_BSS_0210CA6C
_02021EAC: .word s_data_menu_um_03d_03d_LZ_bin_0208be54
_02021EB0: .word s_data_menu_um_03d_03d_c_LZ_bin_0208be74
_02021EB4: .word s_data_menu_um004_001_LZ_bin_0208be94

	arm_func_start sub_02021EB8
sub_02021EB8: ; 0x02021EB8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mvn r0, #0
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x44]
	bl sub_02020750
	ldr r0, [r4, #0xa8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02021EB8

	arm_func_start sub_02021EF0
sub_02021EF0: ; 0x02021EF0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	ldr r1, _02021FD0 ; =MAIN_BSS_0210CA6C
	mov r5, r0
	ldr r0, [r1]
	ldr r1, [r5, #0x38]
	bl sub_02041D80
	ldrb r4, [r0]
	cmp r4, #0xc8
	subhs r0, r4, #0x9b
	andhs r4, r0, #0xff
	ldr r0, [r5, #0xa8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldr r0, [r5, #0xa8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB14
	ldr r0, [r5, #0xa8]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CC88
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x334
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r3, #2
	str r3, [sp, #0x10]
	ldr r0, [r5, #0xa8]
	mov r2, #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CCD0
	ldr r2, [r5, #0xa8]
	ldr r0, [r5, #0xa4]
	add r2, r2, #0x1000
	mov r1, r4
	ldr r4, [r2, #0x498]
	bl sub_020215F8
	mov r1, #1
	str r1, [sp]
	stmib sp, {r0, r1}
	mov r1, #0
	mov r0, r4
	mov r2, r1
	mov r3, r1
	str r1, [sp, #0xc]
	bl sub_0200CDA0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02021FD0: .word MAIN_BSS_0210CA6C
	arm_func_end sub_02021EF0

	arm_func_start sub_02021FD4
sub_02021FD4: ; 0x02021FD4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02022038
	ldr r0, [r4, #0x3c]
	bl sub_0201FEDC
	ldr r0, [r4, #0x40]
	bl sub_0201FEDC
	ldr r0, [r4, #0x44]
	bl sub_0201FD24
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_0201FDE8
	mov r0, r4
	bl sub_02021EF0
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x34]
	mov r1, r1, asr #2
	sub r1, r1, #0x80
	mov r2, r2, asr #2
	sub r2, r2, #0x60
	bl sub_0201FF00
	mov r0, r4
	bl sub_02021DAC
	ldmia sp!, {r4, pc}
	arm_func_end sub_02021FD4

	arm_func_start sub_02022038
sub_02022038: ; 0x02022038
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r0, #0
	bl GXS_SetGraphicsMode
	ldr ip, _020220F8 ; =0x04001000
	mov lr, #0x1a
	ldr r1, [ip]
	add r0, ip, #0x50
	bic r1, r1, #0x1f00
	orr r1, r1, #0x1f00
	str r1, [ip]
	ldrh r3, [ip, #0xa]
	mov r1, #0
	mov r2, #0xc
	and r3, r3, #0x43
	orr r3, r3, #0x200
	strh r3, [ip, #0xa]
	ldrh r4, [ip, #0xc]
	mov r3, #5
	and r4, r4, #0x43
	orr r4, r4, #0x304
	strh r4, [ip, #0xc]
	ldrh r4, [ip, #0xe]
	and r4, r4, #0x43
	orr r4, r4, #0x400
	strh r4, [ip, #0xe]
	ldrh r4, [ip, #8]
	bic r4, r4, #3
	strh r4, [ip, #8]
	ldrh r4, [ip, #0xa]
	bic r4, r4, #3
	orr r4, r4, #1
	strh r4, [ip, #0xa]
	ldrh r4, [ip, #0xc]
	bic r4, r4, #3
	orr r4, r4, #2
	strh r4, [ip, #0xc]
	ldrh r4, [ip, #0xe]
	bic r4, r4, #3
	orr r4, r4, #3
	strh r4, [ip, #0xe]
	ldrh r4, [ip, #8]
	bic r4, r4, #0x40
	strh r4, [ip, #8]
	str lr, [sp]
	bl G2x_SetBlendAlpha_
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_020220F8: .word 0x04001000
	arm_func_end sub_02022038

	arm_func_start sub_020220FC
sub_020220FC: ; 0x020220FC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, r2
	mov r5, r0
	mov r2, r3
	bl sub_02022184
	ldr r0, [r5, #0x38]
	cmp r0, r4
	beq _02022134
	mov r0, r5
	str r4, [r5, #0x38]
	bl sub_02022038
	mov r0, r5
	bl sub_02021DD0
	arm_func_end sub_020220FC
_02022134:
	mov r0, r5
	str r4, [r5, #0x38]
	bl sub_02021FD4
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02022148
sub_02022148: ; 0x02022148
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, r2
	mov r5, r0
	mov r2, r3
	bl sub_02022184
	ldr r0, [r5, #0x38]
	cmp r0, r4
	beq _02022178
	mov r0, r5
	str r4, [r5, #0x38]
	bl sub_02021DD0
	arm_func_end sub_02022148
_02022178:
	str r4, [r5, #0x38]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02022184
sub_02022184: ; 0x02022184
	str r1, [r0, #0x30]
	str r2, [r0, #0x34]
	bx lr
	arm_func_end sub_02022184

	arm_func_start sub_02022190
sub_02022190: ; 0x02022190
	stmdb sp!, {r3, lr}
	mov r3, #0
	mov ip, r0
	mov r2, #3
	mov r1, r3
	arm_func_end sub_02022190
_020221A4:
	strh r2, [ip, #0x64]
	str r1, [ip, #0x5c]
	strh r1, [ip, #0x60]
	add r3, r3, #1
	strh r1, [ip, #0x62]
	cmp r3, #5
	add ip, ip, #0xc
	blt _020221A4
	ldr r0, [r0, #0x50]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_0200F6C4
	ldmia sp!, {r3, pc}

	arm_func_start sub_020221D8
sub_020221D8: ; 0x020221D8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	ldr r0, [r8, #0x48]
	mov r7, r1
	cmp r0, #0
	mov r6, r2
	mov r5, r3
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r1, r8
	mov r4, #0
	arm_func_end sub_020221D8
_02022204:
	ldr r0, [r1, #0x5c]
	cmp r0, #0
	bne _02022284
	cmp r5, #0
	beq _02022224
	cmp r5, #1
	beq _0202222C
	b _02022234
_02022224:
	mov r1, #0
	b _02022238
_0202222C:
	mov r1, #1
	b _02022238
_02022234:
	mov r1, #0
_02022238:
	mov r0, #2
	str r0, [sp]
	mov r2, #0
	ldr r0, [r8, #0x50]
	mov r3, r2
	mov sb, #0xc
	bl sub_0200F4FC
	mla r1, r4, sb, r8
	str r0, [r1, #0x5c]
	strh r7, [r1, #0x60]
	strh r6, [r1, #0x62]
	strh r5, [r1, #0x64]
	ldr r0, [r8, #0x48]
	ldr r2, [r8, #0xa0]
	ldr r1, [r0, #0x30]
	mov r0, #1
	add r1, r2, r1
	str r1, [r8, #0xa0]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02022284:
	add r4, r4, #1
	cmp r4, #5
	add r1, r1, #0xc
	blt _02022204
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_0202229C
sub_0202229C: ; 0x0202229C
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #4]
	bl sub_020222D4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202229C

	arm_func_start sub_020222B4
sub_020222B4: ; 0x020222B4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020222C8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020222B4

	arm_func_start sub_020222C8
sub_020222C8: ; 0x020222C8
	bx lr
	arm_func_end sub_020222C8

	arm_func_start sub_020222CC
sub_020222CC: ; 0x020222CC
	bx lr
	arm_func_end sub_020222CC

	arm_func_start sub_020222D0
sub_020222D0: ; 0x020222D0
	bx lr
	arm_func_end sub_020222D0

	arm_func_start sub_020222D4
sub_020222D4: ; 0x020222D4
	bx lr
	arm_func_end sub_020222D4

	arm_func_start sub_020222D8
sub_020222D8: ; 0x020222D8
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x50
	mov r4, r1
	bl sub_02022370
	ldr r1, _02022364 ; =s_uppict_03d_0208beb0
	add r0, sp, #0x10
	mov r2, r4
	bl OS_SPrintf
	ldr r1, _02022368 ; =s_uppict_03d_00_0208bebc
	add r0, sp, #0x30
	mov r2, r4
	bl OS_SPrintf
	mov r0, #0x20
	str r0, [sp]
	add r3, sp, #0x30
	mov r0, #0
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0202236C ; =s_uppict_0208becc
	add r1, sp, #0x10
	mov r2, #4
	bl sub_02020804
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0202236C ; =s_uppict_0208becc
	add r1, sp, #0x10
	mov r2, #4
	add r3, sp, #0x30
	bl sub_02020FF0
	mov r0, #1
	add sp, sp, #0x50
	ldmia sp!, {r4, pc}
	.align 2, 0
_02022364: .word s_uppict_03d_0208beb0
_02022368: .word s_uppict_03d_00_0208bebc
_0202236C: .word s_uppict_0208becc
	arm_func_end sub_020222D8

	arm_func_start sub_02022370
sub_02022370: ; 0x02022370
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl GX_ResetBankForSubBG
	bl GX_ResetBankForSubOBJ
	bl GX_ResetBankForSubBGExtPltt
	bl GX_ResetBankForSubOBJExtPltt
	mov r0, #0x180
	bl GX_SetBankForSubBG
	mov r0, #0
	bl GX_SetBankForSubOBJ
	mov r0, #0
	bl GXS_SetGraphicsMode
	ldr ip, _02022400 ; =0x04001000
	mov lr, #7
	ldr r1, [ip]
	add r0, ip, #0x50
	bic r1, r1, #0x1f00
	orr r1, r1, #0x100
	str r1, [ip]
	ldrh r3, [ip, #8]
	mov r1, #0
	mov r2, r1
	and r3, r3, #0x43
	orr r3, r3, #0x80
	strh r3, [ip, #8]
	ldrh r4, [ip, #8]
	mov r3, #8
	bic r4, r4, #3
	strh r4, [ip, #8]
	ldrh r4, [ip, #8]
	bic r4, r4, #0x40
	strh r4, [ip, #8]
	str lr, [sp]
	bl G2x_SetBlendAlpha_
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02022400: .word 0x04001000
	arm_func_end sub_02022370

	arm_func_start sub_02022404
sub_02022404: ; 0x02022404
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x68]
	bl sub_020227C4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02022404

	arm_func_start sub_0202241C
sub_0202241C: ; 0x0202241C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0x30]
	cmp r5, #0
	beq _0202244C
	beq _02022444
	mov r0, r5
	bl sub_02024844
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_0202241C
_02022444:
	mov r0, #0
	str r0, [r4, #0x30]
_0202244C:
	ldr r5, [r4, #0x40]
	cmp r5, #0
	beq _02022474
	beq _0202246C
	mov r0, r5
	bl sub_0201B78C
	mov r0, r5
	bl _ZdlPv
_0202246C:
	mov r0, #0
	str r0, [r4, #0x40]
_02022474:
	ldr r5, [r4, #0x34]
	cmp r5, #0
	beq _0202249C
	beq _02022494
	mov r0, r5
	bl sub_0201CAF0
	mov r0, r5
	bl _ZdlPv
_02022494:
	mov r0, #0
	str r0, [r4, #0x34]
_0202249C:
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _020224C4
	beq _020224BC
	mov r0, r5
	bl sub_02021654
	mov r0, r5
	bl _ZdlPv
_020224BC:
	mov r0, #0
	str r0, [r4, #0x18]
_020224C4:
	ldr r5, [r4, #0x4c]
	cmp r5, #0
	beq _020224EC
	beq _020224E4
	mov r0, r5
	bl sub_02025690
	mov r0, r5
	bl _ZdlPv
_020224E4:
	mov r0, #0
	str r0, [r4, #0x4c]
_020224EC:
	ldr r5, [r4, #0x54]
	cmp r5, #0
	beq _02022514
	beq _0202250C
	mov r0, r5
	bl sub_020222B4
	mov r0, r5
	bl _ZdlPv
_0202250C:
	mov r0, #0
	str r0, [r4, #0x54]
_02022514:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202251C
sub_0202251C: ; 0x0202251C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _02022608
_02022534: ; jump table
	b _02022608 ; case 0
	b _02022560 ; case 1
	b _0202256C ; case 2
	b _02022608 ; case 3
	b _02022578 ; case 4
	b _02022608 ; case 5
	b _02022598 ; case 6
	b _02022608 ; case 7
	b _020225F4 ; case 8
	b _020225B8 ; case 9
	b _02022600 ; case 10
	arm_func_end sub_0202251C
_02022560:
	ldr r0, [r4, #0x18]
	bl sub_0202179C
	b _02022608
_0202256C:
	ldr r0, [r4, #0x30]
	bl sub_020255F0
	b _02022608
_02022578:
	ldr r0, [r4, #0x34]
	ldr r1, [r0, #0x70]
	cmp r1, #0x10
	bne _02022608
	bl sub_0201F930
	mov r0, r4
	bl sub_020231A0
	b _02022608
_02022598:
	ldr r0, [r4, #0x40]
	ldr r1, [r0, #0x50]
	cmp r1, #0x10
	bne _02022608
	bl sub_0201C82C
	mov r0, r4
	bl sub_020231A0
	b _02022608
_020225B8:
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x48]
	bl sub_020257F4
	mvn r1, #0
	str r0, [r4, #0x48]
	cmp r0, r1
	bne _02022608
	ldr r0, [r4, #0x4c]
	bl sub_020276A0
	mov r2, #8
	mov r0, r4
	mov r1, #0xa
	strh r2, [r4]
	bl sub_02023230
	b _02022608
_020225F4:
	ldr r0, [r4, #0x4c]
	bl sub_02027640
	b _02022608
_02022600:
	ldr r0, [r4, #0x54]
	bl sub_020222CC
_02022608:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl sub_0202331C
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, #0
	str r0, [r4, #4]
	ldrh r0, [r4, #2]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_0202263C: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	b _02022668 ; case 1
	b _02022674 ; case 2
	ldmia sp!, {r4, pc} ; case 3
	b _02022680 ; case 4
	ldmia sp!, {r4, pc} ; case 5
	b _020226BC ; case 6
	ldmia sp!, {r4, pc} ; case 7
	ldmia sp!, {r4, pc} ; case 8
	b _020226F8 ; case 9
	b _02022704 ; case 10
_02022668:
	mov r0, r4
	bl sub_02022EE8
	ldmia sp!, {r4, pc}
_02022674:
	mov r0, r4
	bl sub_02022F50
	ldmia sp!, {r4, pc}
_02022680:
	mov r1, #3
	mov r0, r4
	strh r1, [r4]
	bl sub_02022FF4
	cmp r0, #0x10
	movne r0, #1
	strne r0, [r4, #4]
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl sub_02023134
	ldr r0, [r4, #0x34]
	bl sub_0201FA1C
	mov r0, #4
	strh r0, [r4]
	ldmia sp!, {r4, pc}
_020226BC:
	mov r1, #5
	mov r0, r4
	strh r1, [r4]
	bl sub_02023060
	cmp r0, #0x10
	movne r0, #1
	strne r0, [r4, #4]
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl sub_02023134
	ldr r0, [r4, #0x40]
	bl sub_0201C8B0
	mov r0, #6
	strh r0, [r4]
	ldmia sp!, {r4, pc}
_020226F8:
	mov r0, r4
	bl sub_02023078
	ldmia sp!, {r4, pc}
_02022704:
	mov r0, r4
	bl sub_020230D4
	ldmia sp!, {r4, pc}

	arm_func_start sub_02022710
sub_02022710: ; 0x02022710
	bx lr
	arm_func_end sub_02022710

	arm_func_start sub_02022714
sub_02022714: ; 0x02022714
	stmdb sp!, {r3, lr}
	ldrh r1, [r0]
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, pc}
_02022728: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _02022754 ; case 1
	b _0202275C ; case 2
	ldmia sp!, {r3, pc} ; case 3
	b _02022764 ; case 4
	ldmia sp!, {r3, pc} ; case 5
	b _0202277C ; case 6
	b _020227A4 ; case 7
	b _02022794 ; case 8
	ldmia sp!, {r3, pc} ; case 9
	b _0202279C ; case 10
	arm_func_end sub_02022714
_02022754:
	bl sub_020228C4
	ldmia sp!, {r3, pc}
_0202275C:
	bl sub_020228D4
	ldmia sp!, {r3, pc}
_02022764:
	ldr r1, [r0, #0x34]
	ldr r1, [r1, #0x70]
	cmp r1, #0x10
	ldmneia sp!, {r3, pc}
	bl sub_020228E4
	ldmia sp!, {r3, pc}
_0202277C:
	ldr r1, [r0, #0x40]
	ldr r1, [r1, #0x50]
	cmp r1, #0x10
	ldmneia sp!, {r3, pc}
	bl sub_020228F4
	ldmia sp!, {r3, pc}
_02022794:
	bl sub_02022904
	ldmia sp!, {r3, pc}
_0202279C:
	bl sub_02022914
	ldmia sp!, {r3, pc}
_020227A4:
	bl sub_02001210
	ldmia sp!, {r3, pc}

	arm_func_start sub_020227AC
sub_020227AC: ; 0x020227AC
	stmdb sp!, {r3, lr}
	ldrh r0, [r0]
	cmp r0, #7
	ldmneia sp!, {r3, pc}
	bl sub_02007D78
	ldmia sp!, {r3, pc}
	arm_func_end sub_020227AC

	arm_func_start sub_020227C4
sub_020227C4: ; 0x020227C4
	stmdb sp!, {r4, lr}
	mov r2, #0
	mov r4, r0
	strh r2, [r4]
	ldr r1, _020228BC ; =MAIN_BSS_0210C1B8
	strh r2, [r4, #2]
	str r4, [r1]
	bl sub_020228C0
	mov r1, #0
	mov r0, #0xac
	str r1, [r4, #4]
	bl _Znwm
	cmp r0, #0
	beq _02022804
	ldr r1, [r4, #0x68]
	bl sub_0202163C
	arm_func_end sub_020227C4
_02022804:
	str r0, [r4, #0x18]
	bl sub_02021968
	mov r0, #0x5c
	bl _Znwm
	cmp r0, #0
	beq _02022820
	bl sub_0201B724
_02022820:
	str r0, [r4, #0x40]
	bl sub_0201C340
	mov r0, #0x7c
	bl _Znwm
	cmp r0, #0
	beq _0202283C
	bl sub_0201CA6C
_0202283C:
	str r0, [r4, #0x34]
	bl sub_0201E6B4
	mov r0, #0x78
	bl _Znwm
	cmp r0, #0
	beq _02022858
	bl sub_020247CC
_02022858:
	str r0, [r4, #0x30]
	mov r0, #0x54
	bl _Znwm
	cmp r0, #0
	beq _02022870
	bl sub_02025648
_02022870:
	str r0, [r4, #0x4c]
	mov r0, #8
	bl _Znwm
	cmp r0, #0
	beq _0202288C
	ldr r1, [r4, #0x68]
	bl sub_0202229C
_0202288C:
	str r0, [r4, #0x54]
	mvn r1, #0
	str r1, [r4, #0x38]
	mov r0, r4
	str r1, [r4, #0x44]
	mov r2, #0
	mov r1, #1
	str r2, [r4, #0x58]
	bl sub_02023198
	mov r0, #0
	str r0, [r4, #0x64]
	ldmia sp!, {r4, pc}
	.align 2, 0
_020228BC: .word MAIN_BSS_0210C1B8

	arm_func_start sub_020228C0
sub_020228C0: ; 0x020228C0
	bx lr
	arm_func_end sub_020228C0

	arm_func_start sub_020228C4
sub_020228C4: ; 0x020228C4
	ldr ip, _020228D0 ; =sub_020217FC
	ldr r0, [r0, #0x18]
	bx ip
	.align 2, 0
_020228D0: .word sub_020217FC
	arm_func_end sub_020228C4

	arm_func_start sub_020228D4
sub_020228D4: ; 0x020228D4
	ldr ip, _020228E0 ; =sub_02025624
	ldr r0, [r0, #0x30]
	bx ip
	.align 2, 0
_020228E0: .word sub_02025624
	arm_func_end sub_020228D4

	arm_func_start sub_020228E4
sub_020228E4: ; 0x020228E4
	ldr ip, _020228F0 ; =sub_0201F988
	ldr r0, [r0, #0x34]
	bx ip
	.align 2, 0
_020228F0: .word sub_0201F988
	arm_func_end sub_020228E4

	arm_func_start sub_020228F4
sub_020228F4: ; 0x020228F4
	ldr ip, _02022900 ; =sub_0201C874
	ldr r0, [r0, #0x40]
	bx ip
	.align 2, 0
_02022900: .word sub_0201C874
	arm_func_end sub_020228F4

	arm_func_start sub_02022904
sub_02022904: ; 0x02022904
	ldr ip, _02022910 ; =sub_02027674
	ldr r0, [r0, #0x4c]
	bx ip
	.align 2, 0
_02022910: .word sub_02027674
	arm_func_end sub_02022904

	arm_func_start sub_02022914
sub_02022914: ; 0x02022914
	ldr ip, _02022920 ; =sub_020222D0
	ldr r0, [r0, #0x54]
	bx ip
	.align 2, 0
_02022920: .word sub_020222D0
	arm_func_end sub_02022914

	arm_func_start sub_02022924
sub_02022924: ; 0x02022924
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02021EB8
	ldmia sp!, {r3, pc}
	arm_func_end sub_02022924

	arm_func_start sub_0202293C
sub_0202293C: ; 0x0202293C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r0, #0
	str r0, [r4, #0x64]
	str r0, [r4, #0x2c]
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	mov r7, r2
	mov r6, r3
	bl sub_02022148
	ldr r0, [r4, #0x58]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mvn r1, #0
	str r1, [r4, #0x44]
	mov r0, r4
	str r1, [r4, #0x38]
	bl sub_02023180
	ldr r5, _020229F0 ; =MAIN_BSS_020BB210
	ldr r0, [r5]
	cmp r0, #0
	bne _020229C4
	ldr r0, [r4, #0x30]
	bl sub_02024A2C
	ldr r0, [r4, #0x30]
	bl sub_02024A60
	mov r0, r4
	bl sub_02023160
	mov r0, #2
	strh r0, [r4]
	mov r0, #0
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0202293C
_020229C4:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	mov r2, r7
	mov r3, r6
	bl sub_020220FC
	mov r0, #1
	strh r0, [r4]
	mov r1, #0
	strh r1, [r4, #2]
	str r0, [r5]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020229F0: .word MAIN_BSS_020BB210

	arm_func_start sub_020229F4
sub_020229F4: ; 0x020229F4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov lr, #0
	str lr, [r4, #0x64]
	ldr r0, [r4, #0x58]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov ip, #1
	sub r0, lr, #0x3e8
	cmp r2, r0
	cmpeq r3, r0
	strh ip, [r4, #2]
	cmpeq r1, r0
	strne r1, [r4, #0x20]
	strne r2, [r4, #0x24]
	strne r3, [r4, #0x28]
	bne _02022A58
	ldr r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0x30]
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0x34]
	str r0, [r4, #0x28]
	arm_func_end sub_020229F4
_02022A58:
	mov r0, r4
	bl sub_02022ED0
	cmp r0, #0
	bne _02022A78
	mov r1, #0
	mov r0, r4
	str r1, [r4, #4]
	bl sub_02022EE8
_02022A78:
	ldr r0, _02022A94 ; =MAIN_BSS_020BA6A0
	mov r1, #1
	str r1, [r0, #0xb70]
	sub r0, r1, #2
	str r0, [r4, #0x38]
	str r0, [r4, #0x44]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02022A94: .word MAIN_BSS_020BA6A0

	arm_func_start sub_02022A98
sub_02022A98: ; 0x02022A98
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x58]
	cmp r3, #0
	ldmneia sp!, {r3, pc}
	ldr r0, [r0, #0x18]
	bl sub_02022184
	ldmia sp!, {r3, pc}
	arm_func_end sub_02022A98

	arm_func_start sub_02022AB4
sub_02022AB4: ; 0x02022AB4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	str r2, [r4, #0x64]
	ldr r1, [r4, #0x58]
	cmp r1, #0
	movne r0, r2
	ldmneia sp!, {r4, pc}
	str r2, [r4, #0x2c]
	mov r1, #2
	strh r1, [r4, #2]
	bl sub_02022ED0
	cmp r0, #0
	bne _02022AFC
	mov r1, #0
	mov r0, r4
	str r1, [r4, #4]
	bl sub_02022F50
	arm_func_end sub_02022AB4
_02022AFC:
	ldr r0, _02022B1C ; =MAIN_BSS_020BA6A0
	mov r1, #0
	str r1, [r0, #0xb70]
	sub r0, r1, #1
	str r0, [r4, #0x38]
	str r0, [r4, #0x44]
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02022B1C: .word MAIN_BSS_020BA6A0

	arm_func_start sub_02022B20
sub_02022B20: ; 0x02022B20
	stmdb sp!, {r3, lr}
	mov r2, #0
	str r2, [r0, #0x64]
	ldr r1, [r0, #0x58]
	cmp r1, #0
	movne r0, r2
	ldmneia sp!, {r3, pc}
	ldrh r1, [r0]
	cmp r1, #2
	bne _02022B58
	ldrh r1, [r0, #2]
	cmp r1, #2
	beq _02022B58
	bl sub_02022AB4
	arm_func_end sub_02022B20
_02022B58:
	mov r0, #1
	ldmia sp!, {r3, pc}

	arm_func_start sub_02022B60
sub_02022B60: ; 0x02022B60
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov ip, #0
	str ip, [r4, #0x64]
	ldr r3, [r4, #0x58]
	cmp r3, #0
	movne r0, ip
	ldmneia sp!, {r4, pc}
	str ip, [r4, #0x2c]
	ldr r3, [r4, #0x38]
	cmp r1, r3
	moveq r0, ip
	ldmeqia sp!, {r4, pc}
	mov r3, #4
	strh r3, [r4, #2]
	str r1, [r4, #0x38]
	str r2, [r4, #0x3c]
	bl sub_02022ED0
	mov r0, r4
	bl sub_02022FA8
	mvn r0, #0
	str r0, [r4, #0x44]
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02022B60

	arm_func_start sub_02022BC0
sub_02022BC0: ; 0x02022BC0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r3, #0
	str r3, [r4, #0x64]
	ldr r2, [r4, #0x58]
	cmp r2, #0
	movne r0, r3
	ldmneia sp!, {r4, pc}
	str r3, [r4, #0x2c]
	ldr r2, [r4, #0x44]
	cmp r1, r2
	moveq r0, r3
	ldmeqia sp!, {r4, pc}
	mov r2, #6
	strh r2, [r4, #2]
	str r1, [r4, #0x44]
	bl sub_02022ED0
	mov r0, r4
	bl sub_02023014
	mvn r0, #0
	str r0, [r4, #0x38]
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02022BC0

	arm_func_start sub_02022C1C
sub_02022C1C: ; 0x02022C1C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	str r2, [r4, #0x64]
	ldr r1, [r4, #0x58]
	cmp r1, #0
	movne r0, r2
	ldmneia sp!, {r4, pc}
	sub r1, r2, #1
	str r1, [r4, #0x38]
	str r1, [r4, #0x44]
	mov r1, #9
	strh r1, [r4, #2]
	bl sub_02022ED0
	cmp r0, #0
	bne _02022C6C
	mov r1, #0
	mov r0, r4
	str r1, [r4, #4]
	bl sub_02023078
	arm_func_end sub_02022C1C
_02022C6C:
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start sub_02022C74
sub_02022C74: ; 0x02022C74
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r2, #0
	str r2, [r5, #0x64]
	ldr r1, [r5, #0x58]
	cmp r1, #0
	movne r0, r2
	ldmneia sp!, {r3, r4, r5, pc}
	bl sub_02023180
	mvn r1, #0
	str r1, [r5, #0x38]
	mov r0, r5
	str r1, [r5, #0x44]
	bl sub_02023180
	ldr r0, [r5, #0x4c]
	bl sub_020256A4
	mov r1, #0
	sub r0, r1, #1
	str r1, [r5, #0x48]
	cmp r1, r0
	beq _02022CE4
	mvn r4, #0
	arm_func_end sub_02022C74
_02022CCC:
	ldr r0, [r5, #0x4c]
	bl sub_020257F4
	mov r1, r0
	str r0, [r5, #0x48]
	cmp r1, r4
	bne _02022CCC
_02022CE4:
	ldr r0, [r5, #0x4c]
	bl sub_020276A0
	mov r1, #8
	mov r0, r5
	strh r1, [r5]
	bl sub_02023160
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02022D04
sub_02022D04: ; 0x02022D04
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	str r2, [r4, #0x64]
	ldr r1, [r4, #0x58]
	cmp r1, #0
	movne r0, r2
	ldmneia sp!, {r4, pc}
	ldr r1, [r4, #0x68]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x5d4]
	cmp r1, #0
	moveq r0, r2
	ldmeqia sp!, {r4, pc}
	ldrh r2, [r4]
	cmp r2, #8
	ldrneh r1, [r4, #2]
	cmpne r1, #9
	cmpne r2, #9
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_02023180
	mov r0, #7
	ldr r1, _02022D84 ; =0x04001000
	strh r0, [r4]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x800
	str r0, [r1]
	bl sub_02007D68
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02022D84: .word 0x04001000
	arm_func_end sub_02022D04

	arm_func_start sub_02022D88
sub_02022D88: ; 0x02022D88
	stmdb sp!, {r3, lr}
	mov r1, #0
	str r1, [r0, #0x64]
	ldr r1, [r0, #0x58]
	cmp r1, #0
	ldmneia sp!, {r3, pc}
	ldr r1, _02022DD0 ; =MAIN_BSS_020BA6A0
	ldr r1, [r1, #0xb70]
	cmp r1, #0
	beq _02022DB8
	bl sub_02022AB4
	ldmia sp!, {r3, pc}
	arm_func_end sub_02022D88
_02022DB8:
	ldr r3, [r0, #0x18]
	ldr r1, [r0, #0x1c]
	ldr r2, [r3, #0x30]
	ldr r3, [r3, #0x34]
	bl sub_020229F4
	ldmia sp!, {r3, pc}
	.align 2, 0
_02022DD0: .word MAIN_BSS_020BA6A0

	arm_func_start sub_02022DD4
sub_02022DD4: ; 0x02022DD4
	stmdb sp!, {r3, lr}
	mov r1, #0
	str r1, [r0, #0x64]
	ldrh r2, [r0, #2]
	cmp r2, #9
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #0x58]
	cmp r1, #0
	ldmneia sp!, {r3, pc}
	ldr r1, _02022E44 ; =MAIN_BSS_020BA6A0
	ldr r1, [r1, #0xb70]
	cmp r1, #0
	ldrh r1, [r0]
	beq _02022E30
	cmp r1, #1
	cmpne r2, #1
	ldmeqia sp!, {r3, pc}
	ldr r3, [r0, #0x18]
	ldr r1, [r0, #0x1c]
	ldr r2, [r3, #0x30]
	ldr r3, [r3, #0x34]
	bl sub_020229F4
	ldmia sp!, {r3, pc}
	arm_func_end sub_02022DD4
_02022E30:
	cmp r1, #2
	cmpne r2, #2
	ldmeqia sp!, {r3, pc}
	bl sub_02022AB4
	ldmia sp!, {r3, pc}
	.align 2, 0
_02022E44: .word MAIN_BSS_020BA6A0

	arm_func_start sub_02022E48
sub_02022E48: ; 0x02022E48
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0
	str r0, [r5, #0x64]
	ldr r0, [r5, #0x30]
	mov r4, r1
	bl sub_02024A2C
	ldr r0, [r5, #0x34]
	bl sub_0201CB0C
	ldr r0, [r5, #0x40]
	bl sub_0201B7A8
	ldr r0, [r5, #0x4c]
	bl sub_020256A4
	ldr r0, [r5, #0x54]
	bl sub_020222D4
	mov r0, #1
	str r0, [r5, #0x58]
	mov r0, r5
	str r4, [r5, #0x50]
	mov r1, #0xa
	strh r1, [r5, #2]
	bl sub_02022ED0
	cmp r0, #0
	bne _02022EB8
	mov r1, #0
	mov r0, r5
	str r1, [r5, #4]
	bl sub_020230D4
	arm_func_end sub_02022E48
_02022EB8:
	mov r0, #0
	str r0, [r5, #0x64]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02022EC4
sub_02022EC4: ; 0x02022EC4
	mov r1, #0
	str r1, [r0, #0x58]
	bx lr
	arm_func_end sub_02022EC4

	arm_func_start sub_02022ED0
sub_02022ED0: ; 0x02022ED0
	ldr ip, _02022EE4 ; =sub_02023298
	mov r2, #1
	mov r1, #0xa
	str r2, [r0, #4]
	bx ip
	.align 2, 0
_02022EE4: .word sub_02023298
	arm_func_end sub_02022ED0

	arm_func_start sub_02022EE8
sub_02022EE8: ; 0x02022EE8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	bl sub_02024A2C
	ldr r0, [r4, #0x34]
	bl sub_0201CB0C
	ldr r0, [r4, #0x40]
	bl sub_0201B7A8
	ldr r0, [r4, #0x4c]
	bl sub_020256A4
	ldr r0, [r4, #0x54]
	bl sub_020222D4
	mov r0, r4
	bl sub_02023180
	mov r0, r4
	bl sub_02023134
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x20]
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	bl sub_020220FC
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02022EE8

	arm_func_start sub_02022F50
sub_02022F50: ; 0x02022F50
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x34]
	bl sub_0201CB0C
	ldr r0, [r4, #0x40]
	bl sub_0201B7A8
	ldr r0, [r4, #0x4c]
	bl sub_020256A4
	ldr r0, [r4, #0x54]
	bl sub_020222D4
	mov r0, r4
	bl sub_02023180
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	bl sub_02024A2C
	ldr r0, [r4, #0x30]
	bl sub_02024A60
	mov r0, r4
	bl sub_02023134
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02022F50

	arm_func_start sub_02022FA8
sub_02022FA8: ; 0x02022FA8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	bl sub_02024A2C
	ldr r0, [r4, #0x40]
	bl sub_0201B7A8
	ldr r0, [r4, #0x4c]
	bl sub_020256A4
	ldr r0, [r4, #0x54]
	bl sub_020222D4
	mov r0, r4
	bl sub_02023180
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x34]
	bl sub_0201CB0C
	ldr r0, [r4, #0x34]
	bl sub_0201D5A4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02022FA8

	arm_func_start sub_02022FF4
sub_02022FF4: ; 0x02022FF4
	ldr ip, _02023010 ; =sub_0201D5B0
	mov r2, r0
	ldr r0, [r2, #0x34]
	ldr r1, [r2, #0x38]
	ldr r2, [r2, #0x3c]
	mov r3, #0
	bx ip
	.align 2, 0
_02023010: .word sub_0201D5B0
	arm_func_end sub_02022FF4

	arm_func_start sub_02023014
sub_02023014: ; 0x02023014
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	bl sub_02024A2C
	ldr r0, [r4, #0x40]
	bl sub_0201B7A8
	ldr r0, [r4, #0x4c]
	bl sub_020256A4
	ldr r0, [r4, #0x54]
	bl sub_020222D4
	mov r0, r4
	bl sub_02023180
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x40]
	bl sub_0201B7A8
	ldr r0, [r4, #0x40]
	bl sub_0201BA40
	ldmia sp!, {r4, pc}
	arm_func_end sub_02023014

	arm_func_start sub_02023060
sub_02023060: ; 0x02023060
	ldr ip, _02023074 ; =sub_0201BA4C
	mov r1, r0
	ldr r0, [r1, #0x40]
	ldr r1, [r1, #0x44]
	bx ip
	.align 2, 0
_02023074: .word sub_0201BA4C
	arm_func_end sub_02023060

	arm_func_start sub_02023078
sub_02023078: ; 0x02023078
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	bl sub_02024A2C
	ldr r0, [r4, #0x34]
	bl sub_0201CB0C
	ldr r0, [r4, #0x40]
	bl sub_0201B7A8
	ldr r0, [r4, #0x54]
	bl sub_020222D4
	mov r0, r4
	bl sub_02023180
	ldr r0, [r4, #0x4c]
	bl sub_020256A4
	mov r0, r4
	bl sub_02023160
	ldrh r2, [r4, #2]
	mov r1, #0
	mov r0, #1
	strh r2, [r4]
	strh r1, [r4, #2]
	str r1, [r4, #0x48]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02023078

	arm_func_start sub_020230D4
sub_020230D4: ; 0x020230D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	bl sub_02024A2C
	ldr r0, [r4, #0x34]
	bl sub_0201CB0C
	ldr r0, [r4, #0x40]
	bl sub_0201B7A8
	ldr r0, [r4, #0x4c]
	bl sub_020256A4
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x54]
	bl sub_020222D4
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x50]
	bl sub_020222D8
	mov r0, r4
	bl sub_02023134
	mov r0, r4
	mov r1, #0x1e
	bl sub_02023230
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_020230D4

	arm_func_start sub_02023134
sub_02023134: ; 0x02023134
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02023160
	ldrh r1, [r4, #2]
	mov r0, r4
	mov r2, #0
	strh r1, [r4]
	mov r1, #0xa
	strh r2, [r4, #2]
	bl sub_02023230
	ldmia sp!, {r4, pc}
	arm_func_end sub_02023134

	arm_func_start sub_02023160
sub_02023160: ; 0x02023160
	ldr r0, _0202317C ; =0x04001010
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_0202317C: .word 0x04001010
	arm_func_end sub_02023160

	arm_func_start sub_02023180
sub_02023180: ; 0x02023180
	stmdb sp!, {r3, lr}
	mov r0, #0x80
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	ldmia sp!, {r3, pc}
	arm_func_end sub_02023180

	arm_func_start sub_02023198
sub_02023198: ; 0x02023198
	str r1, [r0, #0x5c]
	bx lr
	arm_func_end sub_02023198

	arm_func_start sub_020231A0
sub_020231A0: ; 0x020231A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x68]
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008E50
	mov r1, r0
	mov r0, #0x3c
	bl _s32_div_f
	ldr r1, [r4, #0x2c]
	add r0, r1, r0
	str r0, [r4, #0x2c]
	cmp r0, #0x12c
	ldmltia sp!, {r4, pc}
	mov r0, r4
	bl sub_02022DD4
	mov r0, #1
	str r0, [r4, #0x64]
	mov r0, #0
	str r0, [r4, #0x2c]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020231A0

	arm_func_start sub_02023200
sub_02023200: ; 0x02023200
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02022190
	ldmia sp!, {r3, pc}
	arm_func_end sub_02023200

	arm_func_start sub_02023218
sub_02023218: ; 0x02023218
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_020221D8
	ldmia sp!, {r3, pc}
	arm_func_end sub_02023218

	arm_func_start sub_02023230
sub_02023230: ; 0x02023230
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x68]
	mov r4, r1
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x60]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	add r0, r2, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E324
	cmp r0, #2
	ldr r0, [r5, #0x68]
	mov r2, r4
	bne _02023284
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #1
	bl sub_0200E0E0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02023230
_02023284:
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #3
	bl sub_0200E0E0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02023298
sub_02023298: ; 0x02023298
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x68]
	mov r4, r1
	cmp r0, #0
	mov r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	str r0, [r5, #0x60]
	ldr r0, [r5, #0x68]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E324
	cmp r0, #4
	beq _020232E8
	ldr r0, [r5, #0x68]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E324
	cmp r0, #2
	bne _020232FC
	arm_func_end sub_02023298
_020232E8:
	ldr r0, [r5, #0x68]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	ldmia sp!, {r3, r4, r5, pc}
_020232FC:
	ldr r0, [r5, #0x68]
	mov r2, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #4
	bl sub_0200E0E0
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202331C
sub_0202331C: ; 0x0202331C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x64]
	cmp r0, #0
	ldr r0, [r4, #0x68]
	add r0, r0, #0x1000
	beq _02023398
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _02023384
	ldr r0, [r4, #0x68]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02023384
	ldr r0, [r4, #0x68]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c4]
	ldrh r0, [r0]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0202338C
	arm_func_end sub_0202331C
_02023384:
	mov r0, #1
	ldmia sp!, {r4, pc}
_0202338C:
	mov r0, #0
	str r0, [r4, #0x64]
	ldmia sp!, {r4, pc}
_02023398:
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	ldmia sp!, {r4, pc}

	arm_func_start sub_020233A4
sub_020233A4: ; 0x020233A4
	ldr r0, _020233B0 ; =MAIN_BSS_0210C1B8
	ldr r0, [r0]
	bx lr
	.align 2, 0
_020233B0: .word MAIN_BSS_0210C1B8
	arm_func_end sub_020233A4

	arm_func_start sub_020233B4
sub_020233B4: ; 0x020233B4
	ldrh r0, [r0]
	cmp r0, #8
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_020233B4

	arm_func_start sub_020233C8
sub_020233C8: ; 0x020233C8
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0xc]
	bl sub_0202349C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020233C8

	arm_func_start sub_020233E0
sub_020233E0: ; 0x020233E0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _02023410
	beq _02023408
	mov r0, r4
	bl sub_02023570
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_020233E0
_02023408:
	mov r0, #0
	str r0, [r5, #8]
_02023410:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02023418
sub_02023418: ; 0x02023418
	stmdb sp!, {r3, lr}
	ldrh r1, [r0]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #1
	ldmneia sp!, {r3, pc}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02023584
	ldmia sp!, {r3, pc}
	arm_func_end sub_02023418

	arm_func_start sub_02023444
sub_02023444: ; 0x02023444
	stmdb sp!, {r3, lr}
	ldrh r1, [r0]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #1
	ldmneia sp!, {r3, pc}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_0202379C
	ldmia sp!, {r3, pc}
	arm_func_end sub_02023444

	arm_func_start sub_02023470
sub_02023470: ; 0x02023470
	stmdb sp!, {r3, lr}
	ldrh r1, [r0]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #1
	ldmneia sp!, {r3, pc}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_020237E0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02023470

	arm_func_start sub_0202349C
sub_0202349C: ; 0x0202349C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	strh r1, [r4]
	strh r1, [r4, #2]
	mov r0, #0x124
	str r1, [r4, #4]
	bl _Znwm
	cmp r0, #0
	beq _020234CC
	ldr r1, [r4, #0xc]
	bl sub_02023558
	arm_func_end sub_0202349C
_020234CC:
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}

	arm_func_start sub_020234D4
sub_020234D4: ; 0x020234D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	bl sub_02024380
	mov r0, #1
	strh r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020234D4

	arm_func_start sub_020234F0
sub_020234F0: ; 0x020234F0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	bl sub_020243CC
	mov r0, #1
	strh r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020234F0

	arm_func_start sub_0202350C
sub_0202350C: ; 0x0202350C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	bl sub_020243F0
	mov r0, #1
	strh r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202350C

	arm_func_start sub_02023528
sub_02023528: ; 0x02023528
	ldr ip, _02023534 ; =sub_02024728
	ldr r0, [r0, #8]
	bx ip
	.align 2, 0
_02023534: .word sub_02024728
	arm_func_end sub_02023528

	arm_func_start sub_02023538
sub_02023538: ; 0x02023538
	stmdb sp!, {r3, lr}
	ldrh r1, [r0]
	cmp r1, #1
	mvnne r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, [r0, #8]
	bl sub_0202473C
	ldmia sp!, {r3, pc}
	arm_func_end sub_02023538

	arm_func_start sub_02023558
sub_02023558: ; 0x02023558
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x120]
	bl sub_020237E4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02023558

	arm_func_start sub_02023570
sub_02023570: ; 0x02023570
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02023A14
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02023570

	arm_func_start sub_02023584
sub_02023584: ; 0x02023584
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	bl sub_0201AF40
	ldrh r0, [r4]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _02023774
_020235A4: ; jump table
	b _02023774 ; case 0
	b _0202376C ; case 1
	b _020235CC ; case 2
	b _020236CC ; case 3
	b _0202367C ; case 4
	b _02023708 ; case 5
	b _02023754 ; case 6
	b _020236E4 ; case 7
	b _02023774 ; case 8
	b _02023614 ; case 9
	arm_func_end sub_02023584
_020235CC:
	mov r0, r4
	bl sub_02023C58
	cmp r0, #0
	bne _02023774
	ldr r1, [r4, #8]
	mvn r0, #0
	cmp r1, r0
	bne _020235F8
	mov r0, r4
	bl sub_02024570
	b _02023774
_020235F8:
	cmp r1, #5
	mov r0, r4
	bne _0202360C
	bl sub_020245A8
	b _02023774
_0202360C:
	bl sub_02024690
	b _02023774
_02023614:
	ldr r0, [r4, #0x11c]
	cmp r0, #0
	beq _02023774
	bl sub_0202780C
	cmp r0, #0
	bne _02023774
	ldr r5, [r4, #0x11c]
	cmp r5, #0
	beq _02023654
	beq _0202364C
	mov r0, r5
	bl sub_020277AC
	mov r0, r5
	bl _ZdlPv
_0202364C:
	mov r0, #0
	str r0, [r4, #0x11c]
_02023654:
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r1, _02023798 ; =0xFFCFFFEF
	mov r0, r4
	and r1, r2, r1
	orr r1, r1, #0x10
	orr r1, r1, #0x100000
	str r1, [r3]
	bl sub_020245D8
	b _02023774
_0202367C:
	mov r0, r4
	bl sub_02023C58
	cmp r0, #0
	bne _02023774
	ldr r0, [r4, #8]
	cmp r0, #5
	bne _020236B0
	mov r0, r4
	mov r1, #1
	bl sub_02023AE8
	mov r0, r4
	bl sub_02024480
	b _02023774
_020236B0:
	mov r2, #0
	strh r2, [r4]
	ldr r1, [r4, #0x6c]
	mov r0, r4
	str r2, [r1, #0x14]
	bl sub_020244F8
	b _02023774
_020236CC:
	mov r0, r4
	bl sub_02023C58
	cmp r0, #0
	moveq r0, #1
	streqh r0, [r4]
	b _02023774
_020236E4:
	mov r0, r4
	bl sub_020246E0
	cmp r0, #0
	bne _02023774
	mov r1, #8
	mov r0, r4
	strh r1, [r4]
	bl sub_020244F8
	b _02023774
_02023708:
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02023774
	mov r0, #6
	strh r0, [r4]
	ldr r0, [r4, #0x120]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [r4, #0x120]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x1e
	bl sub_0200E0E0
	b _02023774
_02023754:
	mov r0, r4
	bl sub_020246E0
	cmp r0, #0
	bne _02023774
	mov r0, #1
	strh r0, [r4]
_0202376C:
	mov r0, r4
	bl sub_02023B54
_02023774:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02023784
	bl sub_0200F64C
_02023784:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl sub_0200F64C
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02023798: .word 0xFFCFFFEF

	arm_func_start sub_0202379C
sub_0202379C: ; 0x0202379C
	stmdb sp!, {r3, lr}
	ldrh r1, [r0]
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, pc}
_020237B0: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _020237D8 ; case 1
	b _020237D8 ; case 2
	b _020237D8 ; case 3
	b _020237D8 ; case 4
	ldmia sp!, {r3, pc} ; case 5
	b _020237D8 ; case 6
	b _020237D8 ; case 7
	b _020237D8 ; case 8
	b _020237D8 ; case 9
	arm_func_end sub_0202379C
_020237D8:
	bl sub_02024140
	ldmia sp!, {r3, pc}

	arm_func_start sub_020237E0
sub_020237E0: ; 0x020237E0
	bx lr
	arm_func_end sub_020237E0

	arm_func_start sub_020237E4
sub_020237E4: ; 0x020237E4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r1, #0
	mov r0, #0x2c
	strh r1, [r4]
	bl _Znwm
	cmp r0, #0
	beq _0202380C
	bl sub_02003718
	arm_func_end sub_020237E4
_0202380C:
	mov r1, #0x100000
	str r0, [r4, #0xc]
	str r1, [sp]
	sub r0, r1, #0x500000
	str r0, [sp, #4]
	mov r0, #0x800000
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0x400000
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r3, r1
	mov r2, #0xc0000
	bl sub_02003788
	mov r0, #0xd8
	bl _Znwm
	cmp r0, #0
	beq _02023858
	bl sub_0201AD60
_02023858:
	str r0, [r4, #0x18]
	mov r1, #0x14
	mov r2, #0x1c
	mov r3, #0x1a
	bl sub_0201B5F4
	ldr r0, [r4, #0x18]
	mov r1, #0x28
	mov r2, #0x29
	mov r3, #0x2a
	bl sub_0201B658
	mov r1, #0
	mov r2, r1
_02023888:
	add r0, r4, r1, lsl #2
	str r2, [r0, #0x24]
	add r1, r1, #1
	str r2, [r0, #0x48]
	cmp r1, #9
	blt _02023888
	str r2, [r4, #0x6c]
	mov r1, #3
_020238A8:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0xa4]
	cmp r2, #9
	blt _020238A8
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x11c]
	str r0, [r4, #0x114]
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}

	arm_func_start sub_020238D8
sub_020238D8: ; 0x020238D8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r0, [sl, #0x1c]
	bl sub_0200F6C4
	ldr r0, [sl, #0x20]
	bl sub_0200F6C4
	mov r8, #0
	ldr fp, _02023A0C ; =DAT_020849b8
	ldr r4, _02023A10 ; =0x55555556
	mov r5, r8
	arm_func_end sub_020238D8
_02023900:
	mov r0, #0
	str r0, [sp]
	smull r0, r1, r4, r8
	add r1, r1, r8, lsr #31
	mov r0, #3
	smull r1, r2, r0, r1
	sub r1, r8, r1
	mov r0, #0x50
	mul r7, r1, r0
	smull r0, r1, r4, r8
	add r1, r1, r8, lsr #31
	mov r0, #0x30
	mul r6, r1, r0
	ldr sb, [fp, r8, lsl #2]
	ldr r0, [sl, #0x1c]
	mov r1, sb
	add r2, r7, #0x30
	add r3, r6, #0x3c
	bl sub_0200F4FC
	add r1, sl, sb, lsl #2
	str r0, [r1, #0x24]
	mov r0, #0
	str r0, [sp]
	ldr r0, [sl, #0x1c]
	add r2, r7, #0x30
	add r3, r6, #0x3c
	mov r1, #9
	bl sub_0200F4FC
	add r1, sl, sb, lsl #2
	str r0, [r1, #0x48]
	ldr r0, [r1, #0x24]
	mov r1, sb
	mov r2, #0
	bl sub_0200EB34
	add r0, sl, sb, lsl #2
	ldr r0, [r0, #0x48]
	mov r1, sb
	mov r2, #0
	bl sub_0200EB34
	add r0, sl, sb, lsl #2
	str r5, [sp]
	ldr r0, [r0, #0x24]
	mov r1, #0x40
	mov r2, #0x30
	mov r3, r5
	bl sub_0200EBF4
	add r8, r8, #1
	cmp r8, #9
	blt _02023900
	mov r0, #2
	str r0, [sp]
	ldr r0, [sl, #0x20]
	mov r1, #0
	mov r2, #0xf0
	mov r3, #0x10
	bl sub_0200F4FC
	mov r1, #0x20
	str r0, [sl, #0x6c]
	mov r3, #0
	str r3, [sp]
	ldr r0, [sl, #0x6c]
	mov r2, r1
	bl sub_0200EBF4
	mov r0, sl
	mov r1, #0
	bl sub_02023AE8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02023A0C: .word DAT_020849b8
_02023A10: .word 0x55555556

	arm_func_start sub_02023A14
sub_02023A14: ; 0x02023A14
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0x11c]
	cmp r5, #0
	beq _02023A44
	beq _02023A3C
	mov r0, r5
	bl sub_020277AC
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_02023A14
_02023A3C:
	mov r0, #0
	str r0, [r4, #0x11c]
_02023A44:
	ldr r5, [r4, #0x1c]
	cmp r5, #0
	beq _02023A6C
	beq _02023A64
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_02023A64:
	mov r0, #0
	str r0, [r4, #0x1c]
_02023A6C:
	ldr r5, [r4, #0x20]
	cmp r5, #0
	beq _02023A94
	beq _02023A8C
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_02023A8C:
	mov r0, #0
	str r0, [r4, #0x20]
_02023A94:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _02023ABC
	beq _02023AB4
	mov r0, r5
	bl sub_0200372C
	mov r0, r5
	bl _ZdlPv
_02023AB4:
	mov r0, #0
	str r0, [r4, #0xc]
_02023ABC:
	ldr r5, [r4, #0x18]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _02023ADC
	mov r0, r5
	bl sub_0201AE58
	mov r0, r5
	bl _ZdlPv
_02023ADC:
	mov r0, #0
	str r0, [r4, #0x18]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02023AE8
sub_02023AE8: ; 0x02023AE8
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r4, #1
	mov lr, r5
	mov r2, r5
	mov r3, r4
	arm_func_end sub_02023AE8
_02023B00:
	add ip, r0, r5, lsl #2
	cmp r1, #0
	movne r6, r4
	moveq r6, lr
	ldr ip, [ip, #0x24]
	cmp r1, #0
	str r6, [ip, #0x14]
	add ip, r0, r5, lsl #2
	movne r6, r3
	ldr ip, [ip, #0x48]
	moveq r6, r2
	add r5, r5, #1
	str r6, [ip, #0x14]
	cmp r5, #9
	blt _02023B00
	cmp r1, #0
	movne r1, #1
	ldr r0, [r0, #0x6c]
	moveq r1, #0
	str r1, [r0, #0x14]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02023B54
sub_02023B54: ; 0x02023B54
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl sub_020233A4
	bl sub_020233B4
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x114]
	cmp r0, #0
	beq _02023B98
	ldr r0, [r4, #0x118]
	sub r0, r0, #1
	str r0, [r4, #0x118]
	cmp r0, #0
	ldmgtia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl sub_02024440
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02023B54
_02023B98:
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	ldrne r1, [r0, #0x14]
	cmpne r1, #0
	beq _02023BF0
	ldr r1, [r4, #0x120]
	ldr r5, [r1, #0x14]
	bl sub_0200EB84
	cmp r0, #0
	bne _02023BE4
	ldrh r1, [r5, #2]
	and r0, r1, #2
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	bne _02023BE4
	and r0, r1, #0x100
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _02023BF0
_02023BE4:
	mov r0, r4
	bl sub_02024440
	ldmia sp!, {r3, r4, r5, pc}
_02023BF0:
	mov r5, #0
_02023BF4:
	add r0, r4, r5, lsl #2
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _02023C48
	bl sub_0200EB84
	cmp r0, #0
	beq _02023C48
	add r1, r4, r5, lsl #2
	mov r0, #5
	str r0, [r1, #0xa4]
	mov r0, #0
	str r0, [r1, #0x80]
	mov r0, #2
	strh r0, [r4]
	str r5, [r4, #8]
	ldr r0, [r4, #0x120]
	mov r1, #0xff
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldmia sp!, {r3, r4, r5, pc}
_02023C48:
	add r5, r5, #1
	cmp r5, #9
	blt _02023BF4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02023C58
sub_02023C58: ; 0x02023C58
	mov r2, #0
	arm_func_end sub_02023C58
_02023C5C:
	add r1, r0, r2, lsl #2
	ldr r1, [r1, #0xa4]
	cmp r1, #4
	cmpne r1, #3
	movne r0, #1
	bxne lr
	add r2, r2, #1
	cmp r2, #9
	blt _02023C5C
	mov r0, #0
	bx lr

	arm_func_start sub_02023C88
sub_02023C88: ; 0x02023C88
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, #1
	mov sb, r0
	mov r8, r1
	mov r7, #0
	mov r5, #0x1000
	mov r6, r4
	arm_func_end sub_02023C88
_02023CA4:
	cmp r8, #0
	beq _02023CC8
	add r0, sb, r7, lsl #2
	ldr r1, [r0, #0xc8]
	ldr r2, [r0, #0xec]
	mov r0, r7
	mov r3, r6
	bl sub_0201FC50
	b _02023CDC
_02023CC8:
	mov r0, r7
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl sub_0201FC50
_02023CDC:
	add r7, r7, #1
	cmp r7, #9
	blt _02023CA4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_02023CEC
sub_02023CEC: ; 0x02023CEC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r2, [r0, #0x80]
	ldr r8, [r0, #0xa4]
	mov r1, #0x1000
	str r1, [r0, #0xc8]
	add r7, r2, #1
	str r1, [r0, #0xec]
	cmp r7, #0
	bgt _02023D44
	str r7, [r0, #0x80]
	ldr r1, [r5, #0x110]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r1, [r0, #0x24]
	mov r2, #0
	str r2, [r1, #0x14]
	ldr r0, [r0, #0x48]
	str r2, [r0, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_02023CEC
_02023D44:
	ldr r1, [r0, #0x24]
	mov r2, #1
	str r2, [r1, #0x14]
	ldr r1, [r0, #0x48]
	cmp r8, #5
	str r2, [r1, #0x14]
	addls pc, pc, r8, lsl #2
	b _02024044
_02023D64: ; jump table
	b _02023D7C ; case 0
	b _02023EFC ; case 1
	b _02023EC8 ; case 2
	b _02024008 ; case 3
	b _02024010 ; case 4
	b _02024028 ; case 5
_02023D7C:
	ldr r0, [r5, #0x110]
	cmp r0, #0
	beq _02023DAC
	mov r6, r7
	cmp r7, #1
	bne _02023DB4
	ldr r0, [r5, #0x120]
	mov r1, #0xa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	b _02023DB4
_02023DAC:
	ldr r0, [r5, #0x70]
	sub r6, r0, r7
_02023DB4:
	ldr r0, [r5, #0x70]
	cmp r7, r0
	blt _02023DF8
	ldr r0, [r5, #0x110]
	mov r7, #0
	cmp r0, #0
	movne r0, #0x1000
	movne r8, #2
	bne _02023EB4
	add r1, r5, r4, lsl #2
	ldr r0, [r1, #0x24]
	mov r8, #4
	str r7, [r0, #0x14]
	ldr r1, [r1, #0x48]
	mov r0, #0x40000
	str r7, [r1, #0x14]
	b _02023EB4
_02023DF8:
	mul r0, r6, r6
	mov r1, r0, lsl #0xc
	mov r0, r1, asr #0x1f
	mov r2, r0, lsl #0xc
	mov r0, #0x800
	adds r0, r0, r1, lsl #12
	orr r2, r2, r1, lsr #20
	adc r2, r2, #0
	mov r0, r0, lsr #0xc
	ldr r1, [r5, #0x78]
	orr r0, r0, r2, lsl #20
	bl FX_Div
	mov r6, r0
	mov r1, r6
	mov r0, #0x1000
	bl FX_DivFx64c
	bl _f_lltof
	ldr r1, _02024054 ; =0x4F800000
	bl _f_div
	mov r1, #0
	bl _f_fgt
	mov r1, r6
	mov r0, #0x1000
	bls _02023E84
	bl FX_DivFx64c
	bl _f_lltof
	ldr r1, _02024054 ; =0x4F800000
	bl _f_div
	mov r1, r0
	ldr r0, _02024058 ; =0x45800000
	bl _f_mul
	mov r1, r0
	mov r0, #0x3f000000
	bl _f_add
	b _02023EA8
_02023E84:
	bl FX_DivFx64c
	bl _f_lltof
	ldr r1, _02024054 ; =0x4F800000
	bl _f_div
	mov r1, r0
	ldr r0, _02024058 ; =0x45800000
	bl _f_mul
	mov r1, #0x3f000000
	bl _f_sub
_02023EA8:
	bl _f_ftoi
	cmp r0, #0x40000
	movge r0, #0x40000
_02023EB4:
	add r1, r5, r4, lsl #2
	str r0, [r1, #0xc8]
	mov r0, #0xa000
	str r0, [r1, #0xec]
	b _02024044
_02023EC8:
	cmp r7, #1
	blt _02023EE4
	ldr r0, [r5, #0x110]
	mov r7, #0
	cmp r0, #0
	movne r8, r2
	moveq r8, r7
_02023EE4:
	add r1, r5, r4, lsl #2
	mov r0, #0x1000
	str r0, [r1, #0xc8]
	mov r0, #0xa000
	str r0, [r1, #0xec]
	b _02024044
_02023EFC:
	ldr r0, [r5, #0x110]
	cmp r0, #0
	ldrne r0, [r5, #0x74]
	subne r6, r0, r7
	bne _02023F30
	mov r6, r7
	cmp r7, #1
	bne _02023F30
	ldr r0, [r5, #0x120]
	mov r1, #0xa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
_02023F30:
	ldr r0, [r5, #0x74]
	cmp r7, r0
	blt _02023F5C
	ldr r0, [r5, #0x110]
	mov r7, #0
	cmp r0, #0
	movne r0, #0x1000
	movne r8, #3
	moveq r8, #2
	moveq r0, #0xa000
	b _02023FF4
_02023F5C:
	ldr r3, _0202405C ; =0x00000666
	mov sb, r0, lsl #0xc
	mov r0, r5
	mov r1, #0x1000
	mov r2, #0
	str sb, [sp]
	bl sub_02024788
	mov sb, r0
	ldr r2, _0202405C ; =0x00000666
	mov r0, r5
	str sb, [sp]
	mov r3, r6, lsl #0xc
	mov r1, #0x1000
	bl sub_02024750
	str sb, [sp]
	ldr r1, [r5, #0x74]
	mov r6, r0
	mov r3, r1, lsl #0xc
	ldr r2, _0202405C ; =0x00000666
	mov r0, r5
	mov r1, #0x1000
	bl sub_02024750
	ldr r2, _02024060 ; =0x00000E66
	mov r3, r6, asr #0x1f
	umull lr, ip, r6, r2
	mla ip, r3, r2, ip
	mov r2, lr, lsr #0xc
	orr r2, r2, ip, lsl #20
	add r2, r2, #0x99
	add r2, r2, #0x100
	mov r1, #0
	mov r0, #0x1000000
	mov r3, r2, asr #0x1f
	bl _ll_div
	cmp r0, #0x40000
	movge r0, #0x40000
	cmp r0, #0xa000
	movgt r0, #0xa000
_02023FF4:
	add r1, r5, r4, lsl #2
	mov r2, #0x1000
	str r2, [r1, #0xc8]
	str r0, [r1, #0xec]
	b _02024044
_02024008:
	mov r7, #0
	b _02024044
_02024010:
	ldr r1, [r0, #0x24]
	mov r7, #0
	str r7, [r1, #0x14]
	ldr r0, [r0, #0x48]
	str r7, [r0, #0x14]
	b _02024044
_02024028:
	ldr r1, _02024064 ; =0x000011C7
	add r0, r5, r4, lsl #2
	str r1, [r0, #0xc8]
	cmp r7, #6
	movge r7, #0
	movge r8, #3
	str r1, [r0, #0xec]
_02024044:
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x80]
	str r8, [r0, #0xa4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02024054: .word 0x4F800000
_02024058: .word 0x45800000
_0202405C: .word 0x00000666
_02024060: .word 0x00000E66
_02024064: .word 0x000011C7

	arm_func_start sub_02024068
sub_02024068: ; 0x02024068
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1, lsl #0xc
	smull r4, lr, r5, r5
	adds r6, r4, #0x800
	mov r5, r2, lsl #0xc
	smull ip, r4, r5, r5
	adc r5, lr, #0
	mov r6, r6, lsr #0xc
	orr r6, r6, r5, lsl #20
	mov r5, r6, asr #0x1f
	mov r5, r5, lsl #0xc
	mov lr, #0x800
	orr r5, r5, r6, lsr #20
	adds r7, lr, r6, lsl #12
	adc r6, r5, #0
	adds r5, ip, #0x800
	mov ip, r7, lsr #0xc
	orr ip, ip, r6, lsl #20
	str ip, [r0, #0x78]
	adc r4, r4, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r4, lsl #20
	mov r4, r5, asr #0x1f
	mov r4, r4, lsl #0xc
	adds lr, lr, r5, lsl #12
	orr r4, r4, r5, lsr #20
	mov r5, lr, lsr #0xc
	adc r4, r4, #0
	orr r5, r5, r4, lsl #20
	str r5, [r0, #0x7c]
	str r3, [r0, #0x110]
	str r1, [r0, #0x70]
	str r2, [r0, #0x74]
	ldr r1, [r0, #0x110]
	mov r5, #0
	mov r4, #0
	cmp r1, #0
	ldr ip, _0202413C ; =DAT_0208bed4
	moveq r4, #1
	mov lr, #0xa
	mov r2, r5
	arm_func_end sub_02024068
_0202410C:
	mov r1, r5, lsl #1
	ldrh r3, [ip, r1]
	add r1, r0, r5, lsl #2
	add r5, r5, #1
	add r3, r0, r3, lsl #2
	ldr r3, [r3, #0x20]
	cmp r5, #9
	strh lr, [r3, #0x1a]
	str r2, [r1, #0x80]
	str r4, [r1, #0xa4]
	blt _0202410C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0202413C: .word DAT_0208bed4

	arm_func_start sub_02024140
sub_02024140: ; 0x02024140
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0202420C ; =0x04000454
	mov r2, #0
	mov r4, r0
	str r2, [r1]
	ldr r0, [r4, #0xc]
	bl sub_020037B4
	ldr r0, [r4, #0xc]
	bl sub_0200381C
	ldr r0, _02024210 ; =0x0400044C
	mov r1, #0
	str r1, [r0]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0xc]
	bl sub_0201B460
	ldrh r0, [r4]
	mov r5, #0
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _020241DC
_02024190: ; jump table
	b _020241DC ; case 0
	b _020241DC ; case 1
	b _020241BC ; case 2
	b _020241BC ; case 3
	b _020241BC ; case 4
	b _020241DC ; case 5
	b _020241DC ; case 6
	b _020241DC ; case 7
	b _020241DC ; case 8
	b _020241B8 ; case 9
	arm_func_end sub_02024140
_020241B8:
	ldmia sp!, {r3, r4, r5, pc}
_020241BC:
	mov r1, r5, lsl #0x10
	mov r0, r4
	mov r1, r1, lsr #0x10
	bl sub_02023CEC
	add r5, r5, #1
	cmp r5, #9
	blt _020241BC
	mov r5, #1
_020241DC:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _020241EC
	bl sub_0200F71C
_020241EC:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _020241FC
	bl sub_0200F71C
_020241FC:
	mov r0, r4
	mov r1, r5
	bl sub_02023C88
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202420C: .word 0x04000454
_02024210: .word 0x0400044C

	arm_func_start sub_02024214
sub_02024214: ; 0x02024214
	stmdb sp!, {r3, r4, r5, lr}
	mov ip, #0x4000000
	ldr r2, [ip]
	ldr r1, [ip]
	and r2, r2, #0x1f00
	mov r3, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, r3, #0x10
	orr r1, r2, r1, lsl #8
	str r1, [ip]
	ldr r2, [ip]
	ldr r1, _02024370 ; =0xFFCFFFEF
	mov r4, r0
	and r0, r2, r1
	orr r0, r0, #0x10
	orr r0, r0, #0x100000
	str r0, [ip]
	mov r3, #8
	str r3, [sp]
	add r0, ip, #0x50
	mov r1, #0
	mov r2, #1
	bl G2x_SetBlendAlpha_
	ldr r5, [r4, #0x1c]
	cmp r5, #0
	beq _02024298
	beq _02024290
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_02024214
_02024290:
	mov r0, #0
	str r0, [r4, #0x1c]
_02024298:
	ldr r5, [r4, #0x20]
	cmp r5, #0
	beq _020242C0
	beq _020242B8
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_020242B8:
	mov r0, #0
	str r0, [r4, #0x20]
_020242C0:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _020242F0
	ldr r3, [r4, #0x120]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x24
	mov r3, #0
	bl sub_0200ECD0
_020242F0:
	str r0, [r4, #0x1c]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02024324
	ldr r3, [r4, #0x120]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x324
	mov r3, #0
	bl sub_0200ECD0
_02024324:
	str r0, [r4, #0x20]
	mov r0, #0xa
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	ldr r1, _02024374 ; =s_data_menu_0208bee8
	ldr r2, _02024378 ; =s_cm000_00_0208bef4
	mov r3, #0x300
	bl sub_0200EE14
	add r1, r0, #0x6000
	mov r0, #0xd
	str r0, [sp]
	mov r0, r1, asr #4
	add r3, r1, r0, lsr #27
	ldr r0, [r4, #0x20]
	ldr r1, _02024374 ; =s_data_menu_0208bee8
	ldr r2, _0202437C ; =s_ma005_00_0208bf00
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02024370: .word 0xFFCFFFEF
_02024374: .word s_data_menu_0208bee8
_02024378: .word s_cm000_00_0208bef4
_0202437C: .word s_ma005_00_0208bf00

	arm_func_start sub_02024380
sub_02024380: ; 0x02024380
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #1
	strh r1, [r4]
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r1, _020243C8 ; =0xFFCFFFEF
	and r1, r2, r1
	orr r1, r1, #0x10
	orr r1, r1, #0x100000
	str r1, [r3]
	bl sub_020244DC
	mov r0, r4
	bl sub_0202458C
	mov r0, #0
	str r0, [r4, #0x114]
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_020243C8: .word 0xFFCFFFEF
	arm_func_end sub_02024380

	arm_func_start sub_020243CC
sub_020243CC: ; 0x020243CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020244DC
	mov r0, r4
	bl sub_0202462C
	mov r0, #0
	str r0, [r4, #0x114]
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_020243CC

	arm_func_start sub_020243F0
sub_020243F0: ; 0x020243F0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r2, #1
	strh r2, [r5]
	mov ip, #0x4000000
	ldr r3, [ip]
	ldr r2, _0202443C ; =0xFFCFFFEF
	mov r4, r1
	and r1, r3, r2
	orr r1, r1, #0x10
	orr r1, r1, #0x100000
	str r1, [ip]
	bl sub_020244DC
	mov r0, r5
	bl sub_0202458C
	mov r0, #1
	str r0, [r5, #0x114]
	str r4, [r5, #0x118]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202443C: .word 0xFFCFFFEF
	arm_func_end sub_020243F0

	arm_func_start sub_02024440
sub_02024440: ; 0x02024440
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x120]
	ldr r1, _0202447C ; =0x00000103
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	bl sub_02024570
	mvn r0, #0
	str r0, [r4, #8]
	bl sub_020233A4
	bl sub_02022DD4
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202447C: .word 0x00000103
	arm_func_end sub_02024440

	arm_func_start sub_02024480
sub_02024480: ; 0x02024480
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #9
	strh r0, [r5]
	ldr r4, [r5, #0x11c]
	cmp r4, #0
	beq _020244B8
	beq _020244B0
	mov r0, r4
	bl sub_020277AC
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02024480
_020244B0:
	mov r0, #0
	str r0, [r5, #0x11c]
_020244B8:
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _020244D0
	ldr r1, [r5, #0x120]
	bl sub_0202773C
_020244D0:
	str r0, [r5, #0x11c]
	bl sub_020279A4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020244DC
sub_020244DC: ; 0x020244DC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02024214
	mov r0, r4
	bl sub_020238D8
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_020244DC

	arm_func_start sub_020244F8
sub_020244F8: ; 0x020244F8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x1c]
	cmp r4, #0
	beq _02024528
	beq _02024520
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_020244F8
_02024520:
	mov r0, #0
	str r0, [r5, #0x1c]
_02024528:
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _02024550
	beq _02024548
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_02024548:
	mov r0, #0
	str r0, [r5, #0x20]
_02024550:
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, _0202456C ; =0xFFCFFFEF
	and r0, r1, r0
	orr r0, r0, #0x10
	str r0, [r2]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202456C: .word 0xFFCFFFEF

	arm_func_start sub_02024570
sub_02024570: ; 0x02024570
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	bl sub_0201B568
	mov r0, r4
	bl sub_020245A8
	ldmia sp!, {r4, pc}
	arm_func_end sub_02024570

	arm_func_start sub_0202458C
sub_0202458C: ; 0x0202458C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	bl sub_0201B508
	mov r0, r4
	bl sub_020245D8
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202458C

	arm_func_start sub_020245A8
sub_020245A8: ; 0x020245A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #5
	mov r2, #6
	mov r3, #0
	bl sub_02024068
	ldr r0, [r4, #0x6c]
	mov r1, #1
	str r1, [r0, #0x14]
	mov r0, #4
	strh r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020245A8

	arm_func_start sub_020245D8
sub_020245D8: ; 0x020245D8
	stmdb sp!, {r4, lr}
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov ip, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, ip, #0x10
	orr r1, r2, r1, lsl #8
	mov r4, r0
	str r1, [r3]
	mov r1, #5
	mov r2, #6
	mov r3, #1
	bl sub_02024068
	ldr r0, [r4, #0x6c]
	mov r1, #1
	str r1, [r0, #0x14]
	mov r0, #3
	strh r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020245D8

	arm_func_start sub_0202462C
sub_0202462C: ; 0x0202462C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x120]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #6
	strh r0, [r4]
	ldr r0, [r4, #0x120]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [r4, #0x120]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [r4, #0x18]
	bl sub_0201B5D0
	mov r0, r4
	mov r1, #1
	bl sub_02023AE8
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202462C

	arm_func_start sub_02024690
sub_02024690: ; 0x02024690
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x120]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #7
	strh r0, [r4]
	ldr r0, [r4, #0x120]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [r4, #0x120]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02024690

	arm_func_start sub_020246E0
sub_020246E0: ; 0x020246E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x120]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02024718
	ldr r0, [r4, #0x120]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	beq _02024720
	arm_func_end sub_020246E0
_02024718:
	mov r0, #1
	ldmia sp!, {r4, pc}
_02024720:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02024728
sub_02024728: ; 0x02024728
	ldrh r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02024728

	arm_func_start sub_0202473C
sub_0202473C: ; 0x0202473C
	ldrh r1, [r0]
	cmp r1, #8
	mvnne r0, #0
	ldreq r0, [r0, #8]
	bx lr
	arm_func_end sub_0202473C

	arm_func_start sub_02024750
sub_02024750: ; 0x02024750
	stmdb sp!, {r4, lr}
	smull ip, r0, r3, r3
	mov ip, ip, lsr #0xc
	ldr lr, [sp, #8]
	orr ip, ip, r0, lsl #20
	smull r4, r3, r2, r3
	smull r2, r0, lr, ip
	mov r4, r4, lsr #0xc
	mov r2, r2, lsr #0xc
	orr r4, r4, r3, lsl #20
	orr r2, r2, r0, lsl #20
	add r0, r4, r2
	add r0, r1, r0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02024750

	arm_func_start sub_02024788
sub_02024788: ; 0x02024788
	stmdb sp!, {r3, lr}
	ldr lr, [sp, #8]
	smull ip, r0, r3, lr
	mov r3, ip, lsr #0xc
	orr r3, r3, r0, lsl #20
	sub r0, r2, r3
	sub ip, r0, r1
	smull r1, r0, lr, lr
	mov r3, ip, asr #0x1f
	mov r2, r1, lsr #0xc
	mov r1, r3, lsl #0xc
	orr r2, r2, r0, lsl #20
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	ldmia sp!, {r3, pc}
	arm_func_end sub_02024788

	arm_func_start sub_020247CC
sub_020247CC: ; 0x020247CC
	stmdb sp!, {r4, lr}
	mov r3, #0
	mov r4, r0
	str r3, [r4, #0x20]
	str r3, [r4, #0x24]
	str r3, [r4, #0x28]
	str r3, [r4, #0x2c]
	mov r2, r3
	arm_func_end sub_020247CC
_020247EC:
	str r2, [r4, r3, lsl #2]
	add r1, r4, r3, lsl #1
	add r0, r4, r3
	strh r2, [r1, #0x30]
	strb r2, [r0, #0x40]
	add r3, r3, #1
	strb r2, [r0, #0x48]
	cmp r3, #8
	blt _020247EC
	str r2, [r4, #0x50]
	str r2, [r4, #0x54]
	str r2, [r4, #0x58]
	str r2, [r4, #0x74]
	str r2, [r4, #0x68]
	str r2, [r4, #0x6c]
	str r2, [r4, #0x70]
	str r2, [r4, #0x60]
	mov r0, r4
	str r2, [r4, #0x64]
	bl sub_02024D00
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start sub_02024844
sub_02024844: ; 0x02024844
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl sub_02024A2C
	ldr r0, [r5, #0x50]
	bl sub_0200F4A8
	ldr r0, [r5, #0x54]
	bl sub_0200F4A8
	ldr r0, [r5, #0x58]
	bl sub_0200F4A8
	ldr r4, [r5, #0x50]
	cmp r4, #0
	beq _02024890
	beq _02024888
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02024844
_02024888:
	mov r0, #0
	str r0, [r5, #0x50]
_02024890:
	ldr r4, [r5, #0x54]
	cmp r4, #0
	beq _020248B8
	beq _020248B0
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_020248B0:
	mov r0, #0
	str r0, [r5, #0x54]
_020248B8:
	ldr r4, [r5, #0x58]
	cmp r4, #0
	beq _020248E0
	beq _020248D8
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_020248D8:
	mov r0, #0
	str r0, [r5, #0x58]
_020248E0:
	ldr r1, [r5, #0x74]
	cmp r1, #0
	beq _02024970
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0202493C
	mov r6, r4
_02024900:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02024928
	bl _ZdaPv
	ldr r0, [r5, #0x74]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_02024928:
	ldr r1, [r5, #0x74]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _02024900
_0202493C:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02024958
	bl _ZdaPv
	ldr r0, [r5, #0x74]
	mov r1, #0
	str r1, [r0, #8]
_02024958:
	ldr r0, [r5, #0x74]
	cmp r0, #0
	beq _02024970
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x74]
_02024970:
	ldr r0, [r5, #0x68]
	cmp r0, #0
	beq _02024994
	beq _0202498C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0202498C:
	mov r0, #0
	str r0, [r5, #0x68]
_02024994:
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _020249B8
	beq _020249B0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020249B0:
	mov r0, #0
	str r0, [r5, #0x6c]
_020249B8:
	ldr r0, [r5, #0x70]
	cmp r0, #0
	beq _020249DC
	beq _020249D4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020249D4:
	mov r0, #0
	str r0, [r5, #0x70]
_020249DC:
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _02024A00
	beq _020249F8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020249F8:
	mov r0, #0
	str r0, [r5, #0x60]
_02024A00:
	ldr r0, [r5, #0x64]
	cmp r0, #0
	beq _02024A24
	beq _02024A1C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02024A1C:
	mov r0, #0
	str r0, [r5, #0x64]
_02024A24:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02024A2C
sub_02024A2C: ; 0x02024A2C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldr r0, [r4, #0x50]
	bl sub_0200F6C4
	ldr r0, [r4, #0x54]
	bl sub_0200F6C4
	ldr r0, [r4, #0x58]
	bl sub_0200F6C4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02024A2C

	arm_func_start sub_02024A60
sub_02024A60: ; 0x02024A60
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov r4, r0
	bl sub_0201001C
	mov lr, #0
	str lr, [r4, #0x20]
	ldr r1, _02024CF4 ; =MAIN_BSS_0210CA4C
	str lr, [r4, #0x24]
	ldr r8, [r1]
	str r0, [sp, #4]
	cmp r8, #0
	beq _02024B3C
	ldr r0, [r8, #0x88]
	mov r5, #1
	str r0, [r4, #0x28]
	cmp r0, #0
	ldr ip, [r8, #0x84]
	ble _02024B3C
	mov r2, lr
	mov fp, lr
	mov r0, r5
	mov r3, lr
	arm_func_end sub_02024A60
_02024AB8:
	ldr sb, [r8, #4]
	mov r6, r3
	cmp sb, #0
	ble _02024AFC
	add r7, ip, lr
_02024ACC:
	cmp sb, r6
	ldrgt r1, [r8, #8]
	movle sl, r2
	ldrgt sl, [r1, r6, lsl #2]
	cmp sl, #0
	beq _02024AF0
	ldr r1, [sl, #0x1e8]
	cmp r7, r1
	beq _02024B00
_02024AF0:
	add r6, r6, #1
	cmp r6, sb
	blt _02024ACC
_02024AFC:
	mov sl, fp
_02024B00:
	cmp sl, #0
	beq _02024B2C
	ldr r1, [sl, #4]
	tst r1, #0x20
	ldreq r1, [sl, #0x200]
	streq r1, [r4, r5, lsl #2]
	addeq r5, r5, #1
	beq _02024B2C
	str r0, [r4, #0x20]
	ldr r1, [sl, #0x200]
	str r1, [r4]
_02024B2C:
	ldr r1, [r4, #0x28]
	add lr, lr, #1
	cmp lr, r1
	blt _02024AB8
_02024B3C:
	ldr r5, _02024CF8 ; =MAIN_BSS_020B26A0
	ldrb r1, [r5, #3]
	mov r0, r5
	and r1, r1, #0xf
	bl sub_02015658
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02024B78
	ldr r0, [r4]
	bl sub_02035088
	add r0, r5, r0
	ldrb r0, [r0, #9]
	add r0, r0, #1
	str r0, [r4, #0x24]
_02024B78:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02024BC4
	ldr r1, [r4, #0x28]
	ldr r0, [sp, #4]
	sub r1, r1, #1
	str r1, [r4, #0x28]
	ldr r1, [r4]
	add r0, r0, #0x1000
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #0x434]
	mov r1, r1, lsr #0x10
	bl sub_020107A8
	ldrh r1, [r0]
	strh r1, [r4, #0x30]
	ldrb r1, [r0, #5]
	strb r1, [r4, #0x40]
	ldrb r0, [r0, #6]
	strb r0, [r4, #0x48]
_02024BC4:
	ldr r0, [r4, #0x28]
	mov r5, #1
	cmp r0, #1
	blt _02024C20
	ldr r0, [sp, #4]
	add r6, r0, #0x1000
_02024BDC:
	ldr r1, [r4, r5, lsl #2]
	ldr r0, [r6, #0x434]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_020107A8
	ldrh r3, [r0]
	add r1, r4, r5, lsl #1
	add r2, r4, r5
	strh r3, [r1, #0x30]
	ldrb r1, [r0, #5]
	add r5, r5, #1
	strb r1, [r2, #0x40]
	ldrb r0, [r0, #6]
	strb r0, [r2, #0x48]
	ldr r0, [r4, #0x28]
	cmp r5, r0
	ble _02024BDC
_02024C20:
	ldrh r2, [r4, #0x30]
	ldr r1, _02024CFC ; =s_bp_03d_0208bf0c
	add r0, sp, #8
	bl OS_SPrintf
	ldr r0, [r4, #0x50]
	bl sub_0200F398
	ldr r0, [r4, #0x54]
	bl sub_0200F398
	ldr r0, [r4, #0x28]
	mov r8, #1
	cmp r0, #1
	blt _02024CAC
	mov r7, #0
	mov sb, #0x40
	mov r6, #0xd0
	mov r5, r7
	mov fp, #0xdc
_02024C64:
	str r7, [sp]
	add sl, r4, r8
	ldrb r1, [sl, #0x40]
	ldr r0, [r4, #0x50]
	mov r2, r6
	mov r3, sb
	bl sub_0200F4FC
	str r5, [sp]
	ldrb r1, [sl, #0x48]
	ldr r0, [r4, #0x54]
	mov r2, fp
	mov r3, sb
	bl sub_0200F4FC
	ldr r0, [r4, #0x28]
	add r8, r8, #1
	cmp r8, r0
	add sb, sb, #0x10
	ble _02024C64
_02024CAC:
	ldr r0, [r4, #0x58]
	bl sub_0200F398
	mov r0, #3
	str r0, [sp]
	mov r2, #0x80
	ldr r0, [r4, #0x58]
	sub r3, r2, #0x88
	mov r1, #0
	bl sub_0200F4FC
	str r0, [r4, #0x5c]
	mov r0, r4
	bl sub_02025068
	mov r0, r4
	bl sub_0202510C
	mov r0, r4
	bl sub_0202524C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02024CF4: .word MAIN_BSS_0210CA4C
_02024CF8: .word MAIN_BSS_020B26A0
_02024CFC: .word s_bp_03d_0208bf0c

	arm_func_start sub_02024D00
sub_02024D00: ; 0x02024D00
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _02024D2C
	ldr r1, _02025038 ; =s_data_message_etc_menu_mes_0208bf14
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
	arm_func_end sub_02024D00
_02024D2C:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7, #0x74]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #0x74]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #0x74]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7, #0x74]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #0x74]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _02024DF4
_02024D84:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #0x74]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7, #0x74]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #0x74]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7, #0x74]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _02024D84
_02024DF4:
	cmp r6, #0
	beq _02024E0C
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02024E0C:
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _02024E44
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _0202503C ; =s_BGS_0208bf30
	ldr r2, _02025040 ; =s_data_menu_mc000_bg_LZ_bin_0208bf34
	str r4, [sp, #0xc]
	bl sub_02002AEC
	mov r4, r0
_02024E44:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02024E68
	mov r2, #0
	ldr r1, _02025044 ; =s_BGS_mc000_NCGR_0208bf50
	mov r3, r2
	str r2, [sp]
	bl sub_0200365C
_02024E68:
	str r0, [r7, #0x60]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02024E90
	mov r2, #0
	ldr r1, _02025048 ; =s_BGS_mc000_NCLR_0208bf60
	mov r3, r2
	str r2, [sp]
	bl sub_020033B0
_02024E90:
	str r0, [r7, #0x64]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02024EB8
	mov r2, #0
	ldr r1, _0202504C ; =s_BGS_mc000_01_NSCR_0208bf70
	mov r3, r2
	str r2, [sp]
	bl sub_02003494
_02024EB8:
	str r0, [r7, #0x68]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02024EE0
	mov r2, #0
	ldr r1, _02025050 ; =s_BGS_mc000_02_NSCR_0208bf84
	mov r3, r2
	str r2, [sp]
	bl sub_02003494
_02024EE0:
	str r0, [r7, #0x6c]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02024F08
	mov r2, #0
	ldr r1, _02025054 ; =s_BGS_mc000_03_NSCR_0208bf98
	mov r3, r2
	str r2, [sp]
	bl sub_02003494
_02024F08:
	str r0, [r7, #0x70]
	cmp r4, #0
	beq _02024F24
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl _ZdlPv
_02024F24:
	mov r5, #0
	bl sub_0201001C
	mov r6, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02024F60
	mov r1, #0x40
	str r1, [sp]
	add r2, r6, #0x1000
	add r1, r6, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02024F60:
	str r0, [r7, #0x50]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r7, #0x50]
	ldr r1, _02025058 ; =s_data_menu_0208bfac
	ldr r2, _0202505C ; =s_ma000_00_0208bfb8
	bl sub_0200F168
	ldr r1, [r7, #0x50]
	mov r0, #0x44
	ldr r1, [r1, #0x28]
	add r5, r5, r1
	bl _Znwm
	cmp r0, #0
	beq _02024FB8
	mov r1, #0x40
	str r1, [sp]
	add r2, r6, #0x1000
	add r1, r6, #0xa4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02024FB8:
	str r0, [r7, #0x54]
	mov r0, #3
	str r0, [sp]
	ldr r0, [r7, #0x54]
	ldr r1, _02025058 ; =s_data_menu_0208bfac
	ldr r2, _02025060 ; =s_ma001_00_0208bfc4
	mov r3, r5
	bl sub_0200F168
	ldr r1, [r7, #0x54]
	mov r0, #0x44
	ldr r4, [r1, #0x28]
	bl _Znwm
	cmp r0, #0
	beq _02025010
	mov r1, #0x40
	str r1, [sp]
	add r2, r6, #0x1000
	add r1, r6, #0x2a4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02025010:
	str r0, [r7, #0x58]
	mov r0, #8
	str r0, [sp]
	ldr r0, [r7, #0x58]
	ldr r1, _02025058 ; =s_data_menu_0208bfac
	ldr r2, _02025064 ; =s_ma004_00_0208bfd0
	add r3, r5, r4
	bl sub_0200F168
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02025038: .word s_data_message_etc_menu_mes_0208bf14
_0202503C: .word s_BGS_0208bf30
_02025040: .word s_data_menu_mc000_bg_LZ_bin_0208bf34
_02025044: .word s_BGS_mc000_NCGR_0208bf50
_02025048: .word s_BGS_mc000_NCLR_0208bf60
_0202504C: .word s_BGS_mc000_01_NSCR_0208bf70
_02025050: .word s_BGS_mc000_02_NSCR_0208bf84
_02025054: .word s_BGS_mc000_03_NSCR_0208bf98
_02025058: .word s_data_menu_0208bfac
_0202505C: .word s_ma000_00_0208bfb8
_02025060: .word s_ma001_00_0208bfc4
_02025064: .word s_ma004_00_0208bfd0

	arm_func_start sub_02025068
sub_02025068: ; 0x02025068
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #8]
	mov r4, r0
	str r2, [sp, #0xc]
	ldr r1, [r4, #0x68]
	ldr r2, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r1, #0xb8]
	ldr r2, [r2, #0xb8]
	ldr r3, [r0, #0xb8]
	mov r0, #5
	bl NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x6c]
	mov r3, r2
	ldr r1, [r0, #0xb8]
	mov r0, #6
	bl NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x70]
	mov r3, r2
	ldr r1, [r0, #0xb8]
	mov r0, #7
	bl NNS_G2dBGSetupEx
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	arm_func_end sub_02025068

	arm_func_start sub_0202510C
sub_0202510C: ; 0x0202510C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, r0
	ldr r0, [r7, #0x20]
	cmp r0, #1
	bne _0202513C
	bl G2S_GetBG1ScrPtr
	mov r4, r0
	bl G2S_GetBG1ScrPtr
	add r0, r0, #0x600
	add r1, r4, #0xc0
	mov r2, #0x100
	bl MIi_CpuCopyFast
	arm_func_end sub_0202510C
_0202513C:
	ldr r1, [r7, #0x2c]
	ldr r0, [r7, #0x20]
	sub r0, r1, r0
	cmp r0, #2
	ble _020251D8
	mov sl, #0x34
	mov r4, #0
	mov r5, #0xb
	mov r6, #0xc
	mov fp, sl
_02025164:
	bl G2S_GetBG1ScrPtr
	mov r1, r5, lsl #6
	mov sb, r0
	add r8, r1, #6
	bl G2S_GetBG1ScrPtr
	add r1, sb, r8
	mov r2, sl
	add r0, r0, #0x700
	bl MIi_CpuCopy16
	bl G2S_GetBG1ScrPtr
	mov sb, r0
	mov r0, r6, lsl #6
	add r8, r0, #6
	bl G2S_GetBG1ScrPtr
	add r1, sb, r8
	add r0, r0, #0x740
	mov r2, fp
	bl MIi_CpuCopy16
	add r2, r4, #3
	ldr r1, [r7, #0x2c]
	ldr r0, [r7, #0x20]
	sub r0, r1, r0
	cmp r2, r0
	bge _020251D8
	add r4, r4, #1
	cmp r4, #5
	add r5, r5, #2
	add r6, r6, #2
	blt _02025164
_020251D8:
	ldr r4, _02025248 ; =0x04001000
	mov r3, #8
	ldr r1, [r4]
	ldr r0, [r4]
	and r1, r1, #0x1f00
	mov r2, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r2, #0x1e
	orr r0, r1, r0, lsl #8
	str r0, [r4]
	ldrh r2, [r4, #0xa]
	add r0, r4, #0x50
	mov r1, #2
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r4, #0xa]
	ldrh r5, [r4, #0xc]
	mov r2, #0x1c
	bic r5, r5, #3
	orr r5, r5, #2
	strh r5, [r4, #0xc]
	ldrh r5, [r4, #0xe]
	bic r5, r5, #3
	orr r5, r5, #3
	strh r5, [r4, #0xe]
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02025248: .word 0x04001000

	arm_func_start sub_0202524C
sub_0202524C: ; 0x0202524C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x22c
	ldr r6, _020255EC ; =DAT_020849dc
	add r5, sp, #0x34
	mov sl, r0
	mov r4, #0x1f
	arm_func_end sub_0202524C
_02025264:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02025264
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	bl sub_0201001C
	mov r6, r0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB14
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #0x12
	bl sub_0200CC88
	mov r8, #0
	add sb, sp, #0x34
	mov r7, #0x60
	add r4, r6, #0x1000
	mov r5, r8
	mov fp, #2
_020252C4:
	ldr r0, [sb, #8]
	mov r1, r8
	str r0, [sp]
	ldr r0, [sb, #0xc]
	stmib sp, {r0, r7}
	str r5, [sp, #0xc]
	str fp, [sp, #0x10]
	ldr r0, [r4, #0x498]
	ldmia sb, {r2, r3}
	bl sub_0200CCD0
	add r8, r8, #1
	ldr r1, [sb]
	ldr r0, [sb, #4]
	cmp r8, #0x12
	mla r7, r1, r0, r7
	add sb, sb, #0x1c
	blt _020252C4
	ldr r0, [sp, #0x4c]
	mov r2, #1
	str r0, [sp]
	ldr r0, [sl, #0x74]
	mov r1, #0
	ldr r3, [r0, #8]
	add r0, r6, #0x1000
	ldr r3, [r3, #0x9c]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x44]
	ldr r3, [sp, #0x48]
	bl sub_0200CDA0
	ldr r0, [sp, #0x68]
	mov r2, #0
	str r0, [sp]
	ldr r1, [sl, #0x74]
	add r0, r6, #0x1000
	ldr r3, [r1, #8]
	mov r1, #1
	ldr r3, [r3, #0xa4]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	bl sub_0200CDA0
	ldr r0, [sp, #0x68]
	mov r1, #0
	str r0, [sp]
	ldr r2, [sl, #0x74]
	ldr r0, [sl, #0x28]
	ldr r2, [r2, #8]
	add r0, r0, #8
	add r0, r2, r0, lsl #3
	ldr r2, [r0, #4]
	add r0, r6, #0x1000
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r3, [sp, #0x64]
	mov r1, #1
	mov r2, #0x33
	bl sub_0200CDA0
	ldr r0, [sp, #0x68]
	mov r3, #0
	str r0, [sp]
	ldr r1, [sl, #0x74]
	add r0, r6, #0x1000
	ldr r2, [r1, #8]
	mov r1, #1
	ldr r4, [r2, #0xf4]
	mov r2, #0x3d
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r3, [sp, #0x64]
	bl sub_0200CDA0
	ldr r0, [sp, #0x68]
	mov r2, #0
	str r0, [sp]
	ldr r1, [sl, #0x74]
	ldr r0, [sl, #0x2c]
	ldr r4, [r1, #8]
	add r3, r0, #8
	ldr r1, [sl, #0x20]
	add r0, r6, #0x1000
	sub r1, r3, r1
	add r1, r4, r1, lsl #3
	ldr r3, [r1, #4]
	mov r1, #1
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	mov r2, #0x47
	ldr r3, [sp, #0x64]
	bl sub_0200CDA0
	ldr r0, [sl, #0x20]
	cmp r0, #0
	beq _02025500
	add r0, r6, #0x1000
	ldrh r1, [sl, #0x30]
	ldr r0, [r0, #0x4b0]
	bl sub_02018B10
	add r1, sp, #0x14
	mov r2, #0x1f
	bl sub_0202BC74
	ldr r1, [sp, #0x84]
	add r0, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x7c]
	ldr r3, [sp, #0x80]
	mov r1, #2
	bl sub_0200CDA0
	ldr r0, [sp, #0xa0]
	mov r1, #1
	str r0, [sp]
	ldr r2, [sl, #0x74]
	ldr r0, [sl, #0x24]
	ldr r2, [r2, #8]
	add r0, r0, #0x15
	add r0, r2, r0, lsl #3
	ldr r2, [r0, #4]
	mov r0, #0
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x98]
	ldr r3, [sp, #0x9c]
	mov r1, #3
	bl sub_0200CDA0
_02025500:
	ldr r0, [sl, #0x28]
	mov r5, #0
	cmp r0, #0
	addle sp, sp, #0x22c
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r7, #4
	mov r8, #5
	add r4, r6, #0x1000
	add fp, sp, #0x34
_02025524:
	add r6, r5, #1
	add r1, sl, r6, lsl #1
	ldrh r1, [r1, #0x30]
	ldr r0, [r4, #0x4b0]
	bl sub_02018B10
	add r1, sp, #0x14
	mov r2, #0x1f
	bl sub_0202BC74
	mov r0, #0x1c
	mla r3, r7, r0, fp
	ldr r0, [r3, #0x18]
	mov r1, r7
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r3, #0x10]
	ldr r0, [r4, #0x498]
	ldr r3, [r3, #0x14]
	bl sub_0200CDA0
	add r0, sl, r6
	ldrb r1, [r0, #0x40]
	mov r0, #0x1c
	mla sb, r8, r0, fp
	ldr r0, [r4, #0x4b0]
	ldr r6, [r4, #0x498]
	bl sub_02018B80
	ldr r2, [sb, #0x18]
	mov r1, r8
	str r2, [sp]
	str r0, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r2, [sb, #0x10]
	ldr r3, [sb, #0x14]
	mov r0, r6
	bl sub_0200CDA0
	ldr r0, [sl, #0x28]
	add r5, r5, #1
	add r7, r7, #2
	add r8, r8, #2
	cmp r5, r0
	blt _02025524
	add sp, sp, #0x22c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020255EC: .word DAT_020849dc

	arm_func_start sub_020255F0
sub_020255F0: ; 0x020255F0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201001C
	mov r1, r0
	ldr r0, [r4, #0x5c]
	add r1, r1, #0x1000
	ldr r2, [r1, #0x5d0]
	ldrsh r1, [r0, #0xc]
	mov r2, r2, asr #0xc
	bl sub_0200EB28
	ldr r0, [r4, #0x58]
	bl sub_0200F64C
	ldmia sp!, {r4, pc}
	arm_func_end sub_020255F0

	arm_func_start sub_02025624
sub_02025624: ; 0x02025624
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x50]
	bl sub_0200F71C
	ldr r0, [r4, #0x54]
	bl sub_0200F71C
	ldr r0, [r4, #0x58]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}
	arm_func_end sub_02025624

	arm_func_start sub_02025648
sub_02025648: ; 0x02025648
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x38]
	str r1, [r0, #0x3c]
	bx lr
	arm_func_end sub_02025648

	arm_func_start sub_02025690
sub_02025690: ; 0x02025690
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020256A4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02025690

	arm_func_start sub_020256A4
sub_020256A4: ; 0x020256A4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl sub_0201001C
	ldr r1, [r7, #0x3c]
	mov r5, r0
	cmp r1, #0
	beq _02025744
	ldr r0, [r1, #4]
	mov r6, #0
	cmp r0, #0
	bls _02025710
	mov r4, r6
	arm_func_end sub_020256A4
_020256D4:
	ldr r0, [r1, #8]
	add r0, r0, r6, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020256FC
	bl _ZdaPv
	ldr r0, [r7, #0x3c]
	ldr r0, [r0, #8]
	add r0, r0, r6, lsl #3
	str r4, [r0, #4]
_020256FC:
	ldr r1, [r7, #0x3c]
	add r6, r6, #1
	ldr r0, [r1, #4]
	cmp r6, r0
	blo _020256D4
_02025710:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0202572C
	bl _ZdaPv
	ldr r0, [r7, #0x3c]
	mov r1, #0
	str r1, [r0, #8]
_0202572C:
	ldr r0, [r7, #0x3c]
	cmp r0, #0
	beq _02025744
	bl _ZdlPv
	mov r0, #0
	str r0, [r7, #0x3c]
_02025744:
	ldr r4, [r7, #0x28]
	cmp r4, #0
	beq _0202576C
	beq _02025764
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_02025764:
	mov r0, #0
	str r0, [r7, #0x28]
_0202576C:
	ldr r4, [r7, #0x2c]
	cmp r4, #0
	beq _02025794
	beq _0202578C
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_0202578C:
	mov r0, #0
	str r0, [r7, #0x2c]
_02025794:
	ldr r4, [r7, #0x30]
	cmp r4, #0
	beq _020257BC
	beq _020257B4
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_020257B4:
	mov r0, #0
	str r0, [r7, #0x30]
_020257BC:
	ldr r4, [r7, #0x34]
	cmp r4, #0
	beq _020257E4
	beq _020257DC
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_020257DC:
	mov r0, #0
	str r0, [r7, #0x34]
_020257E4:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_020257F4
sub_020257F4: ; 0x020257F4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r5, r1
	mov sb, r0
	add r0, r5, #1
	str r0, [sp, #4]
	bl sub_0201001C
	mov r4, r0
	cmp r5, #6
	addls pc, pc, r5, lsl #2
	b _02026108
_02025820: ; jump table
	b _0202583C ; case 0
	b _02025A78 ; case 1
	b _02025C38 ; case 2
	b _02025E34 ; case 3
	b _02026030 ; case 4
	b _020260C4 ; case 5
	b _020260E8 ; case 6
	arm_func_end sub_020257F4
_0202583C:
	mov r0, #0
	str r0, [sb, #4]
	str r0, [sb, #8]
	add r0, r4, #0x1000
	ldr r1, [r0, #0x4a0]
	ldr r5, _02026114 ; =MAIN_BSS_020B26A0
	ldrb r2, [r1]
	ldr r1, _02026118 ; =MAIN_BSS_020BA6A0
	str r2, [sb, #0x20]
	ldr r2, [r0, #0x4a0]
	ldrb r2, [r2, #1]
	str r2, [sb, #0x24]
	ldrb r2, [r5]
	str r2, [sb]
	ldrb r2, [r5, #3]
	and r2, r2, #0xf
	str r2, [sb, #0xc]
	ldrb r2, [r5, #3]
	mov r2, r2, asr #4
	and r2, r2, #0xf
	str r2, [sb, #0x10]
	ldrb r1, [r1, #0x7db]
	str r1, [sb, #0x14]
	ldr r1, [r5, #0x28]
	str r1, [sb, #0x1c]
	ldr r1, [sb, #0x14]
	ldr r0, [r0, #0x438]
	and r1, r1, #0xff
	bl sub_02010EAC
	mov r2, #0
	mov r1, r2
	str r0, [sb, #0x18]
	mov r3, r2
_020258C0:
	cmp r1, #0
	blt _020258F4
	cmp r1, #0x1f4
	bge _020258F4
	mov r0, r1, asr #4
	add r0, r5, r0, lsl #2
	add r0, r0, #0x7000
	mov r6, r1, lsl #0x1c
	ldr r7, [r0, #0xc3c]
	mov r0, r6, lsr #0x1b
	mov r0, r7, lsr r0
	and r0, r0, #3
	b _020258F8
_020258F4:
	mov r0, r3
_020258F8:
	add r1, r1, #1
	cmp r0, #2
	addhs r2, r2, #1
	cmp r1, #0x1f4
	blt _020258C0
	add r0, r5, #0x7000
	ldr r1, [r0, #0xcb4]
	mov r0, r1, lsr #6
	and r0, r0, #3
	cmp r0, #2
	mov r0, r1, lsr #8
	and r0, r0, #3
	subeq r2, r2, #1
	cmp r0, #2
	mov r0, r1, lsr #0x18
	and r0, r0, #3
	subeq r2, r2, #1
	cmp r0, #2
	ldr r0, _0202611C ; =0x0000010B
	subeq r2, r2, #1
	cmp r2, r0
	moveq r0, #1
	movne r0, #0
	str r0, [sb, #8]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r1, #0x1e
	bl sub_02019278
	mov r0, r0, asr #3
	and r1, r0, #1
	mov r0, #0xb8
	str r1, [sb, #4]
	bl _Znwm
	movs r6, r0
	beq _02025994
	ldr r1, _02026120 ; =s_data_message_etc_menu_mes_0208bfdc
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_02025994:
	mov r0, #0xc
	bl _Znwm
	str r0, [sb, #0x3c]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [sb, #0x3c]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [sb, #0x3c]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [sb, #0x3c]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [sb, #0x3c]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _02025A5C
_020259EC:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [sb, #0x3c]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [sb, #0x3c]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [sb, #0x3c]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [sb, #0x3c]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _020259EC
_02025A5C:
	cmp r6, #0
	beq _02026108
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	b _02026108
_02025A78:
	mov r1, #0
	mov r0, #0x44
	str r1, [sb, #0x40]
	bl _Znwm
	cmp r0, #0
	beq _02025AB0
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02025AB0:
	str r0, [sb, #0x28]
	ldr r0, [sb, #0x10]
	cmp r0, #0
	bne _02025B34
	ldr r0, [sb]
	cmp r0, #0
	mov r0, #0
	str r0, [sp]
	bne _02025B04
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x28]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _02026128 ; =s_mp003_00_0208c004
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	add r0, r1, r0
	str r0, [sb, #0x40]
	b _02025C1C
_02025B04:
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x28]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _0202612C ; =s_mp004_00_0208c010
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	add r0, r1, r0
	str r0, [sb, #0x40]
	b _02025C1C
_02025B34:
	cmp r0, #1
	ldr r0, [sb]
	bne _02025BB0
	cmp r0, #0
	mov r0, #0
	str r0, [sp]
	bne _02025B80
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x28]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _02026130 ; =s_mp005_00_0208c01c
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	add r0, r1, r0
	str r0, [sb, #0x40]
	b _02025C1C
_02025B80:
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x28]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _02026134 ; =s_mp006_00_0208c028
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	add r0, r1, r0
	str r0, [sb, #0x40]
	b _02025C1C
_02025BB0:
	cmp r0, #0
	mov r0, #0
	str r0, [sp]
	bne _02025BF0
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x28]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _02026138 ; =s_mp007_00_0208c034
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	add r0, r1, r0
	str r0, [sb, #0x40]
	b _02025C1C
_02025BF0:
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x28]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _0202613C ; =s_mp008_00_0208c040
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	add r0, r1, r0
	str r0, [sb, #0x40]
_02025C1C:
	mov r1, #0
	str r1, [sp]
	ldr r0, [sb, #0x28]
	mov r2, #0xd0
	mov r3, #0x5b
	bl sub_0200F4FC
	b _02026108
_02025C38:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02025C68
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0xa4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02025C68:
	str r0, [sb, #0x2c]
	mov r0, #2
	str r0, [sp]
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x2c]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _02026140 ; =s_mp001_00_0208c04c
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	add r0, r1, r0
	str r0, [sb, #0x40]
	ldr r0, [sb, #4]
	cmp r0, #0
	beq _02025CC8
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xc
	mov r2, #0x10
	mov r3, #0x11
	bl sub_0200F4FC
_02025CC8:
	ldr r0, [sb, #8]
	cmp r0, #0
	beq _02025CF0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xd
	mov r2, #0x23
	mov r3, #0x11
	bl sub_0200F4FC
_02025CF0:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x14]
	ldr r3, _02026144 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r0, r1, r3, r0
	ldr r0, [sb, #0x2c]
	add r1, r2, r1, asr #2
	mov r2, #0x78
	mov r3, #0x80
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r4, [sb, #0x14]
	ldr r3, _02026144 ; =0x66666667
	mov r0, r4, lsr #0x1f
	smull r2, r1, r3, r4
	add r1, r0, r1, asr #2
	mov r2, #0xa
	smull r1, r0, r2, r1
	ldr r0, [sb, #0x2c]
	sub r1, r4, r1
	mov r2, #0x88
	mov r3, #0x80
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0x11
	mov r2, #0x50
	mov r3, #0x88
	bl sub_0200F4FC
	ldr r0, [sb, #0x20]
	cmp r0, #0
	beq _02025D98
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xa
	mov r2, #0x72
	mov r3, #0xab
	bl sub_0200F4FC
_02025D98:
	ldr r0, [sb, #0x24]
	cmp r0, #0
	beq _02025DC0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xb
	mov r2, #0x8e
	mov r3, #0xab
	bl sub_0200F4FC
_02025DC0:
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xf
	mov r2, #0x40
	mov r3, #0xab
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xe
	mov r2, #0xc0
	mov r3, #0xab
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0x10
	mov r2, #0x38
	mov r3, #0x27
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0x10
	mov r2, #0x38
	mov r3, #0x80
	bl sub_0200F4FC
	b _02026108
_02025E34:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02025E64
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x204
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02025E64:
	str r0, [sb, #0x30]
	mov r0, #7
	str r0, [sp]
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x30]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _02026148 ; =s_ma003_00_0208c058
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	mov r8, #0
	add r0, r1, r0
	str r0, [sb, #0x40]
	ldr r0, [sb, #0xc]
	cmp r0, #0
	ble _02026108
	mov fp, r8
	mov sl, r8
	mov r4, r8
	mov r5, r8
	mov r6, r8
	mov r7, r8
_02025EC4:
	cmp r8, #9
	addls pc, pc, r8, lsl #2
	b _0202601C
_02025ED0: ; jump table
	b _02025EF8 ; case 0
	b _02025F18 ; case 1
	b _02025F34 ; case 2
	b _02025F50 ; case 3
	b _02025F6C ; case 4
	b _02025F88 ; case 5
	b _02025FA4 ; case 6
	b _02025FC0 ; case 7
	b _02025FE0 ; case 8
	b _02026000 ; case 9
_02025EF8:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #0
	mov r2, #0x14
	mov r3, #0x40
	bl sub_0200F4FC
	b _0202601C
_02025F18:
	str r7, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #1
	mov r2, #0x2c
	mov r3, #0x40
	bl sub_0200F4FC
	b _0202601C
_02025F34:
	str r6, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #2
	mov r2, #0x44
	mov r3, #0x40
	bl sub_0200F4FC
	b _0202601C
_02025F50:
	str r5, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #3
	mov r2, #0x5c
	mov r3, #0x40
	bl sub_0200F4FC
	b _0202601C
_02025F6C:
	str r4, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #4
	mov r2, #0x74
	mov r3, #0x40
	bl sub_0200F4FC
	b _0202601C
_02025F88:
	str sl, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #5
	mov r2, #0x24
	mov r3, #0x60
	bl sub_0200F4FC
	b _0202601C
_02025FA4:
	str fp, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #6
	mov r2, #0x3c
	mov r3, #0x60
	bl sub_0200F4FC
	b _0202601C
_02025FC0:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #7
	mov r2, #0x54
	mov r3, #0x60
	bl sub_0200F4FC
	b _0202601C
_02025FE0:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #8
	mov r2, #0x6c
	mov r3, #0x60
	bl sub_0200F4FC
	b _0202601C
_02026000:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #9
	mov r2, #0x84
	mov r3, #0x60
	bl sub_0200F4FC
_0202601C:
	add r8, r8, #1
	ldr r0, [sb, #0xc]
	cmp r8, r0
	blt _02025EC4
	b _02026108
_02026030:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02026060
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x394
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02026060:
	str r0, [sb, #0x34]
	mov r0, #8
	str r0, [sp]
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x34]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _0202614C ; =s_ma004_00_0208c064
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	mov r2, #0x80
	add r0, r1, r0
	str r0, [sb, #0x40]
	mov r0, #3
	str r0, [sp]
	ldr r0, [sb, #0x34]
	sub r3, r2, #0x88
	mov r1, #0
	bl sub_0200F4FC
	str r0, [sb, #0x38]
	mov r0, #0
	str r0, [sb, #0x44]
	b _02026108
_020260C4:
	ldr r1, [sb, #0x44]
	mov r0, sb
	bl sub_02026968
	mvn r1, #0
	str r0, [sb, #0x44]
	cmp r0, r1
	movne r0, #5
	strne r0, [sp, #4]
	b _02026108
_020260E8:
	mov r0, sb
	bl sub_02026E54
	mov r0, sb
	bl sub_02026ECC
	mov r0, sb
	bl sub_02027550
	mvn r0, #0
	str r0, [sp, #4]
_02026108:
	ldr r0, [sp, #4]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02026114: .word MAIN_BSS_020B26A0
_02026118: .word MAIN_BSS_020BA6A0
_0202611C: .word 0x0000010B
_02026120: .word s_data_message_etc_menu_mes_0208bfdc
_02026124: .word s_data_menu_0208bff8
_02026128: .word s_mp003_00_0208c004
_0202612C: .word s_mp004_00_0208c010
_02026130: .word s_mp005_00_0208c01c
_02026134: .word s_mp006_00_0208c028
_02026138: .word s_mp007_00_0208c034
_0202613C: .word s_mp008_00_0208c040
_02026140: .word s_mp001_00_0208c04c
_02026144: .word 0x66666667
_02026148: .word s_ma003_00_0208c058
_0202614C: .word s_ma004_00_0208c064

	arm_func_start sub_02026150
sub_02026150: ; 0x02026150
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r0
	bl sub_0201001C
	mov r1, #0
	mov r6, r0
	str r1, [sb, #4]
	add r0, r6, #0x1000
	str r1, [sb, #8]
	ldr r1, [r0, #0x4a0]
	ldr r4, _0202692C ; =MAIN_BSS_020B26A0
	ldrb r2, [r1]
	ldr r1, _02026930 ; =MAIN_BSS_020BA6A0
	str r2, [sb, #0x20]
	ldr r2, [r0, #0x4a0]
	ldrb r2, [r2, #1]
	str r2, [sb, #0x24]
	ldrb r2, [r4]
	str r2, [sb]
	ldrb r2, [r4, #3]
	and r2, r2, #0xf
	str r2, [sb, #0xc]
	ldrb r2, [r4, #3]
	mov r2, r2, asr #4
	and r2, r2, #0xf
	str r2, [sb, #0x10]
	ldrb r1, [r1, #0x7db]
	str r1, [sb, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [sb, #0x1c]
	ldr r1, [sb, #0x14]
	ldr r0, [r0, #0x438]
	and r1, r1, #0xff
	bl sub_02010EAC
	mov r2, #0
	mov r1, r2
	str r0, [sb, #0x18]
	mov r3, r2
	arm_func_end sub_02026150
_020261E4:
	cmp r1, #0
	blt _02026218
	cmp r1, #0x1f4
	bge _02026218
	mov r0, r1, asr #4
	add r0, r4, r0, lsl #2
	add r0, r0, #0x7000
	mov r5, r1, lsl #0x1c
	ldr r7, [r0, #0xc3c]
	mov r0, r5, lsr #0x1b
	mov r0, r7, lsr r0
	and r0, r0, #3
	b _0202621C
_02026218:
	mov r0, r3
_0202621C:
	add r1, r1, #1
	cmp r0, #2
	addhs r2, r2, #1
	cmp r1, #0x1f4
	blt _020261E4
	add r0, r4, #0x7000
	ldr r1, [r0, #0xcb4]
	mov r0, r1, lsr #6
	and r0, r0, #3
	cmp r0, #2
	mov r0, r1, lsr #8
	and r0, r0, #3
	subeq r2, r2, #1
	cmp r0, #2
	mov r0, r1, lsr #0x18
	and r0, r0, #3
	subeq r2, r2, #1
	cmp r0, #2
	ldr r0, _02026934 ; =0x0000010B
	subeq r2, r2, #1
	cmp r2, r0
	moveq r0, #1
	movne r0, #0
	str r0, [sb, #8]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r1, #0x1e
	bl sub_02019278
	mov r0, r0, asr #3
	and r1, r0, #1
	mov r0, #0xb8
	str r1, [sb, #4]
	bl _Znwm
	movs r7, r0
	beq _020262B8
	ldr r1, _02026938 ; =s_data_message_etc_menu_mes_0208bfdc
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r7, r0
_020262B8:
	mov r0, #0xc
	bl _Znwm
	str r0, [sb, #0x3c]
	ldr r1, [r7, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r7, #0x4c]
	ldr r0, [sb, #0x3c]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [sb, #0x3c]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [sb, #0x3c]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [sb, #0x3c]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _02026380
_02026310:
	ldr r1, [r7, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [sb, #0x3c]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [sb, #0x3c]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [sb, #0x3c]
	ldr r0, [r7, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [sb, #0x3c]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _02026310
_02026380:
	cmp r7, #0
	beq _02026398
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026398:
	mov r0, #0x44
	mov r7, #0
	bl _Znwm
	cmp r0, #0
	beq _020263CC
	mov r1, #0x40
	str r1, [sp]
	add r2, r6, #0x1000
	add r1, r6, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_020263CC:
	str r0, [sb, #0x28]
	ldr r0, [sb, #0x10]
	mov r3, #0
	cmp r0, #0
	bne _02026420
	ldr r0, [sb]
	cmp r0, #0
	str r3, [sp]
	bne _02026408
	ldr r0, [sb, #0x28]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _02026940 ; =s_mp003_00_0208c004
	bl sub_0200EE14
	add r7, r7, r0
	b _020264A0
_02026408:
	ldr r0, [sb, #0x28]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _02026944 ; =s_mp004_00_0208c010
	bl sub_0200EE14
	add r7, r7, r0
	b _020264A0
_02026420:
	cmp r0, #1
	ldr r0, [sb]
	bne _02026468
	cmp r0, #0
	str r3, [sp]
	bne _02026450
	ldr r0, [sb, #0x28]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _02026948 ; =s_mp005_00_0208c01c
	bl sub_0200EE14
	add r7, r7, r0
	b _020264A0
_02026450:
	ldr r0, [sb, #0x28]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _0202694C ; =s_mp006_00_0208c028
	bl sub_0200EE14
	add r7, r7, r0
	b _020264A0
_02026468:
	cmp r0, #0
	str r3, [sp]
	bne _0202648C
	ldr r0, [sb, #0x28]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _02026950 ; =s_mp007_00_0208c034
	bl sub_0200EE14
	add r7, r7, r0
	b _020264A0
_0202648C:
	ldr r0, [sb, #0x28]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _02026954 ; =s_mp008_00_0208c040
	bl sub_0200EE14
	add r7, r7, r0
_020264A0:
	mov r1, #0
	str r1, [sp]
	ldr r0, [sb, #0x28]
	mov r2, #0xd0
	mov r3, #0x5b
	bl sub_0200F4FC
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _020264E8
	mov r1, #0x40
	str r1, [sp]
	add r2, r6, #0x1000
	add r1, r6, #0xa4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_020264E8:
	str r0, [sb, #0x2c]
	mov r0, #2
	str r0, [sp]
	mov r0, r7, asr #4
	add r3, r7, r0, lsr #27
	ldr r0, [sb, #0x2c]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _02026958 ; =s_mp001_00_0208c04c
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #4]
	add r7, r7, r0
	cmp r1, #0
	beq _0202653C
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xc
	mov r2, #0x10
	mov r3, #0x11
	bl sub_0200F4FC
_0202653C:
	ldr r0, [sb, #8]
	cmp r0, #0
	beq _02026564
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xd
	mov r2, #0x23
	mov r3, #0x11
	bl sub_0200F4FC
_02026564:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x14]
	ldr r3, _0202695C ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r0, r1, r3, r0
	ldr r0, [sb, #0x2c]
	add r1, r2, r1, asr #2
	mov r2, #0x78
	mov r3, #0x80
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r4, [sb, #0x14]
	ldr r3, _0202695C ; =0x66666667
	mov r0, r4, lsr #0x1f
	smull r2, r1, r3, r4
	add r1, r0, r1, asr #2
	mov r2, #0xa
	smull r1, r0, r2, r1
	ldr r0, [sb, #0x2c]
	sub r1, r4, r1
	mov r2, #0x88
	mov r3, #0x80
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0x11
	mov r2, #0x50
	mov r3, #0x88
	bl sub_0200F4FC
	ldr r0, [sb, #0x20]
	cmp r0, #0
	beq _0202660C
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xa
	mov r2, #0x72
	mov r3, #0xab
	bl sub_0200F4FC
_0202660C:
	ldr r0, [sb, #0x24]
	cmp r0, #0
	beq _02026634
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xb
	mov r2, #0x8e
	mov r3, #0xab
	bl sub_0200F4FC
_02026634:
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xf
	mov r2, #0x40
	mov r3, #0xab
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xe
	mov r2, #0xc0
	mov r3, #0xab
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0x10
	mov r2, #0x38
	mov r3, #0x27
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0x10
	mov r2, #0x38
	mov r3, #0x80
	bl sub_0200F4FC
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _020266D4
	mov r1, #0x40
	str r1, [sp]
	add r2, r6, #0x1000
	add r1, r6, #0x204
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_020266D4:
	str r0, [sb, #0x30]
	mov r0, #7
	str r0, [sp]
	mov r0, r7, asr #4
	add r3, r7, r0, lsr #27
	ldr r0, [sb, #0x30]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _02026960 ; =s_ma003_00_0208c058
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0xc]
	add r7, r7, r0
	cmp r1, #0
	mov r8, #0
	ble _02026890
	mov fp, r8
	mov sl, r8
	mov r4, r8
	mov r5, r8
_02026720:
	cmp r8, #9
	addls pc, pc, r8, lsl #2
	b _02026880
_0202672C: ; jump table
	b _02026754 ; case 0
	b _02026774 ; case 1
	b _02026790 ; case 2
	b _020267AC ; case 3
	b _020267C8 ; case 4
	b _020267E4 ; case 5
	b _02026804 ; case 6
	b _02026824 ; case 7
	b _02026844 ; case 8
	b _02026864 ; case 9
_02026754:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #0
	mov r2, #0x14
	mov r3, #0x40
	bl sub_0200F4FC
	b _02026880
_02026774:
	str r5, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #1
	mov r2, #0x2c
	mov r3, #0x40
	bl sub_0200F4FC
	b _02026880
_02026790:
	str r4, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #2
	mov r2, #0x44
	mov r3, #0x40
	bl sub_0200F4FC
	b _02026880
_020267AC:
	str sl, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #3
	mov r2, #0x5c
	mov r3, #0x40
	bl sub_0200F4FC
	b _02026880
_020267C8:
	str fp, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #4
	mov r2, #0x74
	mov r3, #0x40
	bl sub_0200F4FC
	b _02026880
_020267E4:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #5
	mov r2, #0x24
	mov r3, #0x60
	bl sub_0200F4FC
	b _02026880
_02026804:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #6
	mov r2, #0x3c
	mov r3, #0x60
	bl sub_0200F4FC
	b _02026880
_02026824:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #7
	mov r2, #0x54
	mov r3, #0x60
	bl sub_0200F4FC
	b _02026880
_02026844:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #8
	mov r2, #0x6c
	mov r3, #0x60
	bl sub_0200F4FC
	b _02026880
_02026864:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #9
	mov r2, #0x84
	mov r3, #0x60
	bl sub_0200F4FC
_02026880:
	add r8, r8, #1
	ldr r0, [sb, #0xc]
	cmp r8, r0
	blt _02026720
_02026890:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _020268C0
	mov r1, #0x40
	str r1, [sp]
	add r2, r6, #0x1000
	add r1, r6, #0x394
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_020268C0:
	str r0, [sb, #0x34]
	mov r0, #8
	str r0, [sp]
	mov r0, r7, asr #4
	add r3, r7, r0, lsr #27
	ldr r0, [sb, #0x34]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _02026964 ; =s_ma004_00_0208c064
	mov r3, r3, asr #5
	bl sub_0200EE14
	mov r0, #3
	str r0, [sp]
	mov r2, #0x80
	ldr r0, [sb, #0x34]
	sub r3, r2, #0x88
	mov r1, #0
	bl sub_0200F4FC
	str r0, [sb, #0x38]
	mov r0, sb
	bl sub_02026C18
	mov r0, sb
	bl sub_02026E54
	mov r0, sb
	bl sub_02026ECC
	mov r0, sb
	bl sub_02027550
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0202692C: .word MAIN_BSS_020B26A0
_02026930: .word MAIN_BSS_020BA6A0
_02026934: .word 0x0000010B
_02026938: .word s_data_message_etc_menu_mes_0208bfdc
_0202693C: .word s_data_menu_0208bff8
_02026940: .word s_mp003_00_0208c004
_02026944: .word s_mp004_00_0208c010
_02026948: .word s_mp005_00_0208c01c
_0202694C: .word s_mp006_00_0208c028
_02026950: .word s_mp007_00_0208c034
_02026954: .word s_mp008_00_0208c040
_02026958: .word s_mp001_00_0208c04c
_0202695C: .word 0x66666667
_02026960: .word s_ma003_00_0208c058
_02026964: .word s_ma004_00_0208c064

	arm_func_start sub_02026968
sub_02026968: ; 0x02026968
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	cmp r1, #5
	add r4, r1, #1
	addls pc, pc, r1, lsl #2
	b _02026BF0
_02026984: ; jump table
	b _0202699C ; case 0
	b _020269D8 ; case 1
	b _02026A04 ; case 2
	b _02026A30 ; case 3
	b _02026AA8 ; case 4
	b _02026B14 ; case 5
	arm_func_end sub_02026968
_0202699C:
	mov r0, #0x6c
	bl _Znwm
	cmp r0, #0
	beq _020269D0
	mov r1, #1
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r1, _02026BFC ; =s_BGS_0208c070
	ldr r2, _02026C00 ; =s_data_menu_mp000_bg_LZ_bin_0208c074
	str r3, [sp, #0xc]
	bl sub_02002AEC
_020269D0:
	str r0, [r5, #0x48]
	b _02026BF0
_020269D8:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _020269FC
	mov r2, #0
	ldr r1, _02026C04 ; =s_BGS_mp000_NCGR_0208c090
	mov r3, r2
	str r2, [sp]
	bl sub_0200365C
_020269FC:
	str r0, [r5, #0x4c]
	b _02026BF0
_02026A04:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02026A28
	mov r2, #0
	ldr r1, _02026C08 ; =s_BGS_mp000_NCLR_0208c0a0
	mov r3, r2
	str r2, [sp]
	bl sub_020033B0
_02026A28:
	str r0, [r5, #0x50]
	b _02026BF0
_02026A30:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _02026A58
	mov r2, #0
	ldr r1, _02026C0C ; =s_BGS_mp000_00_NSCR_0208c0b0
	mov r3, r2
	str r2, [sp]
	bl sub_02003494
	mov r6, r0
_02026A58:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, #0x50]
	ldr r1, [r6, #0xb8]
	ldr r3, [r0, #0xb8]
	ldr r2, [r2, #0xb8]
	mov r0, #5
	bl NNS_G2dBGSetupEx
	cmp r6, #0
	beq _02026BF0
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	b _02026BF0
_02026AA8:
	mov r0, #0xbc
	bl _Znwm
	movs r5, r0
	beq _02026AD0
	mov r2, #0
	ldr r1, _02026C10 ; =s_BGS_mp000_01_NSCR_0208c0c4
	mov r3, r2
	str r2, [sp]
	bl sub_02003494
	mov r5, r0
_02026AD0:
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [r5, #0xb8]
	mov r3, r2
	mov r0, #6
	bl NNS_G2dBGSetupEx
	cmp r5, #0
	beq _02026BF0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	b _02026BF0
_02026B14:
	mov r0, #0xbc
	bl _Znwm
	movs r4, r0
	beq _02026B3C
	mov r2, #0
	ldr r1, _02026C14 ; =s_BGS_mp000_02_NSCR_0208c0d8
	mov r3, r2
	str r2, [sp]
	bl sub_02003494
	mov r4, r0
_02026B3C:
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [r4, #0xb8]
	mov r3, r2
	mov r0, #7
	bl NNS_G2dBGSetupEx
	cmp r4, #0
	beq _02026B7C
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026B7C:
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	beq _02026BA0
	beq _02026B98
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026B98:
	mov r0, #0
	str r0, [r5, #0x4c]
_02026BA0:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _02026BC4
	beq _02026BBC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026BBC:
	mov r0, #0
	str r0, [r5, #0x50]
_02026BC4:
	ldr r4, [r5, #0x48]
	cmp r4, #0
	beq _02026BEC
	beq _02026BE4
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl _ZdlPv
_02026BE4:
	mov r0, #0
	str r0, [r5, #0x48]
_02026BEC:
	mvn r4, #0
_02026BF0:
	mov r0, r4
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02026BFC: .word s_BGS_0208c070
_02026C00: .word s_data_menu_mp000_bg_LZ_bin_0208c074
_02026C04: .word s_BGS_mp000_NCGR_0208c090
_02026C08: .word s_BGS_mp000_NCLR_0208c0a0
_02026C0C: .word s_BGS_mp000_00_NSCR_0208c0b0
_02026C10: .word s_BGS_mp000_01_NSCR_0208c0c4
_02026C14: .word s_BGS_mp000_02_NSCR_0208c0d8

	arm_func_start sub_02026C18
sub_02026C18: ; 0x02026C18
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _02026C58
	mov r1, #1
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r1, _02026E38 ; =s_BGS_0208c070
	ldr r2, _02026E3C ; =s_data_menu_mp000_bg_LZ_bin_0208c074
	str r3, [sp, #0xc]
	bl sub_02002AEC
	mov r4, r0
	arm_func_end sub_02026C18
_02026C58:
	mov r0, #0xbc
	bl _Znwm
	movs r5, r0
	beq _02026C80
	mov r2, #0
	ldr r1, _02026E40 ; =s_BGS_mp000_NCGR_0208c090
	mov r3, r2
	str r2, [sp]
	bl sub_0200365C
	mov r5, r0
_02026C80:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _02026CA8
	mov r2, #0
	ldr r1, _02026E44 ; =s_BGS_mp000_NCLR_0208c0a0
	mov r3, r2
	str r2, [sp]
	bl sub_020033B0
	mov r6, r0
_02026CA8:
	mov r0, #0xbc
	bl _Znwm
	movs r7, r0
	beq _02026CD0
	mov r2, #0
	ldr r1, _02026E48 ; =s_BGS_mp000_00_NSCR_0208c0b0
	mov r3, r2
	str r2, [sp]
	bl sub_02003494
	mov r7, r0
_02026CD0:
	mov r0, #0xbc
	bl _Znwm
	movs r8, r0
	beq _02026CF8
	mov r2, #0
	ldr r1, _02026E4C ; =s_BGS_mp000_01_NSCR_0208c0c4
	mov r3, r2
	str r2, [sp]
	bl sub_02003494
	mov r8, r0
_02026CF8:
	mov r0, #0xbc
	bl _Znwm
	movs sb, r0
	beq _02026D20
	mov r2, #0
	ldr r1, _02026E50 ; =s_BGS_mp000_02_NSCR_0208c0d8
	mov r3, r2
	str r2, [sp]
	bl sub_02003494
	mov sb, r0
_02026D20:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r7, #0xb8]
	ldr r2, [r5, #0xb8]
	ldr r3, [r6, #0xb8]
	mov r0, #5
	bl NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [r8, #0xb8]
	mov r3, r2
	mov r0, #6
	bl NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [sb, #0xb8]
	mov r0, #7
	mov r3, r2
	bl NNS_G2dBGSetupEx
	cmp r7, #0
	beq _02026DB4
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026DB4:
	cmp r8, #0
	beq _02026DCC
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026DCC:
	cmp sb, #0
	beq _02026DE4
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026DE4:
	cmp r5, #0
	beq _02026DFC
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026DFC:
	cmp r6, #0
	beq _02026E14
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026E14:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02026E38: .word s_BGS_0208c070
_02026E3C: .word s_data_menu_mp000_bg_LZ_bin_0208c074
_02026E40: .word s_BGS_mp000_NCGR_0208c090
_02026E44: .word s_BGS_mp000_NCLR_0208c0a0
_02026E48: .word s_BGS_mp000_00_NSCR_0208c0b0
_02026E4C: .word s_BGS_mp000_01_NSCR_0208c0c4
_02026E50: .word s_BGS_mp000_02_NSCR_0208c0d8

	arm_func_start sub_02026E54
sub_02026E54: ; 0x02026E54
	stmdb sp!, {r3, lr}
	ldr ip, _02026EC8 ; =0x04001000
	mov r3, #8
	ldr r1, [ip]
	ldr r0, [ip]
	and r1, r1, #0x1f00
	mov r2, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r2, #0x1e
	orr r0, r1, r0, lsl #8
	str r0, [ip]
	ldrh r2, [ip, #0xa]
	add r0, ip, #0x50
	mov r1, #2
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [ip, #0xa]
	ldrh lr, [ip, #0xc]
	mov r2, #0x1c
	bic lr, lr, #3
	orr lr, lr, #2
	strh lr, [ip, #0xc]
	ldrh lr, [ip, #0xe]
	bic lr, lr, #3
	orr lr, lr, #3
	strh lr, [ip, #0xe]
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	ldmia sp!, {r3, pc}
	.align 2, 0
_02026EC8: .word 0x04001000
	arm_func_end sub_02026E54

	arm_func_start sub_02026ECC
sub_02026ECC: ; 0x02026ECC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xbc
	ldr r6, _02027538 ; =DAT_02084bd4
	add r5, sp, #0x14
	mov sl, r0
	mov r4, #0xa
	arm_func_end sub_02026ECC
_02026EE4:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02026EE4
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	bl sub_0201001C
	mov r6, r0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB14
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #6
	bl sub_0200CC88
	mov r8, #0
	add sb, sp, #0x14
	mov r7, #0x60
	add r4, r6, #0x1000
	mov r5, r8
	mov fp, #2
_02026F44:
	ldr r0, [sb, #8]
	mov r1, r8
	str r0, [sp]
	ldr r0, [sb, #0xc]
	stmib sp, {r0, r7}
	str r5, [sp, #0xc]
	str fp, [sp, #0x10]
	ldr r0, [r4, #0x498]
	ldmia sb, {r2, r3}
	bl sub_0200CCD0
	add r8, r8, #1
	ldr r1, [sb]
	ldr r0, [sb, #4]
	cmp r8, #6
	mla r7, r1, r0, r7
	add sb, sb, #0x1c
	blt _02026F44
	ldr r1, [sp, #0x2c]
	ldr r0, _0202753C ; =MAIN_BSS_020BAE83
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	mov r1, #0
	bl sub_0200CDA0
	ldr r0, [sp, #0x48]
	mov r1, #1
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	mov r2, #0
	ldr r3, [r0, #8]
	add r0, r6, #0x1000
	ldr r3, [r3, #0xd4]
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_0200CDA0
	ldr r0, [sp, #0x64]
	mov r3, #1
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r6, #0x1000
	ldr r4, [r1, #0xdc]
	mov r1, #2
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	bl sub_0200CDA0
	ldr r0, [sp, #0x80]
	mov r3, #1
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r6, #0x1000
	ldr r4, [r1, #0xe4]
	mov r1, #3
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_0200CDA0
	ldr r0, [sp, #0x9c]
	mov r3, #1
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r6, #0x1000
	ldr r4, [r1, #0xec]
	mov r1, #4
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x94]
	ldr r3, [sp, #0x98]
	bl sub_0200CDA0
	ldr r0, [sl, #0x18]
	cmp r0, #0
	addeq sp, sp, #0xbc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0xb8]
	mov r2, #0
	str r0, [sp]
	ldr r1, [sl, #0x3c]
	add r0, r6, #0x1000
	ldr r3, [r1, #8]
	mov r1, #5
	ldr r3, [r3, #0xf4]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0xb0]
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r2, _02027540 ; =0x68DB8BAD
	str r0, [sp]
	ldr r1, [sl, #0x1c]
	ldr r4, [sl, #0x3c]
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #12
	ldr r1, [r4, #8]
	add r0, r3, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	ldr r3, [sp, #0xb4]
	mov r1, #5
	mov r2, #0xa
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r2, _02027544 ; =0x10624DD3
	str r0, [sp]
	ldr r3, [sl, #0x1c]
	ldr r4, [sl, #0x3c]
	smull r1, r0, r2, r3
	ldr r1, [r4, #8]
	mov r2, r3, lsr #0x1f
	add r0, r2, r0, asr #6
	ldr r4, _02027548 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r5, r4, r0
	add r5, r2, r5, asr #2
	mov r4, #0xa
	smull r2, r3, r4, r5
	sub r5, r0, r2
	add r0, r5, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x14
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r3, _0202754C ; =0x51EB851F
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	ldr r4, [sl, #0x1c]
	ldr r1, [r0, #8]
	smull r2, r0, r3, r4
	mov r2, r4, lsr #0x1f
	add r0, r2, r0, asr #5
	ldr r4, _02027548 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r5, r4, r0
	add r5, r2, r5, asr #2
	mov r4, #0xa
	smull r2, r3, r4, r5
	sub r5, r0, r2
	add r0, r5, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x1e
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r2, _02027548 ; =0x66666667
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	ldr r3, [sl, #0x1c]
	ldr r0, [r0, #8]
	smull r1, r4, r2, r3
	mov r1, r3, lsr #0x1f
	add r4, r1, r4, asr #2
	smull r1, r5, r2, r4
	mov r1, r4, lsr #0x1f
	add r5, r1, r5, asr #2
	mov r3, #0xa
	smull r1, r2, r3, r5
	sub r5, r4, r1
	add r1, r5, #8
	add r0, r0, r1, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x28
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r2, _02027548 ; =0x66666667
	str r0, [sp]
	ldr r3, [sl, #0x1c]
	ldr r5, [sl, #0x3c]
	mov r0, r3, lsr #0x1f
	smull r1, r4, r2, r3
	add r4, r0, r4, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r4
	sub r4, r3, r0
	ldr r1, [r5, #8]
	add r0, r4, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	ldr r3, [sp, #0xb4]
	mov r1, #5
	mov r2, #0x32
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r2, _02027540 ; =0x68DB8BAD
	str r0, [sp]
	ldr r1, [sl, #0x18]
	ldr r4, [sl, #0x3c]
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #12
	ldr r1, [r4, #8]
	add r0, r3, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	ldr r3, [sp, #0xb4]
	mov r1, #5
	mov r2, #0x46
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r3, _02027544 ; =0x10624DD3
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	ldr r4, [sl, #0x18]
	ldr r1, [r0, #8]
	smull r2, r0, r3, r4
	mov r2, r4, lsr #0x1f
	add r0, r2, r0, asr #6
	ldr r4, _02027548 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r5, r4, r0
	add r5, r2, r5, asr #2
	mov r4, #0xa
	smull r2, r3, r4, r5
	sub r5, r0, r2
	add r0, r5, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x50
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r3, _0202754C ; =0x51EB851F
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	ldr r4, [sl, #0x18]
	ldr r1, [r0, #8]
	smull r2, r0, r3, r4
	mov r2, r4, lsr #0x1f
	add r0, r2, r0, asr #5
	ldr r4, _02027548 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r5, r4, r0
	add r5, r2, r5, asr #2
	mov r4, #0xa
	smull r2, r3, r4, r5
	sub r5, r0, r2
	add r0, r5, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x5a
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r2, _02027548 ; =0x66666667
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	ldr r3, [sl, #0x18]
	ldr r0, [r0, #8]
	smull r1, r4, r2, r3
	mov r1, r3, lsr #0x1f
	add r4, r1, r4, asr #2
	smull r1, r5, r2, r4
	mov r1, r4, lsr #0x1f
	add r5, r1, r5, asr #2
	mov r3, #0xa
	smull r1, r2, r3, r5
	sub r5, r4, r1
	add r1, r5, #8
	add r0, r0, r1, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x64
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r2, _02027548 ; =0x66666667
	str r0, [sp]
	ldr r3, [sl, #0x18]
	ldr r5, [sl, #0x3c]
	mov r0, r3, lsr #0x1f
	smull r1, r4, r2, r3
	add r4, r0, r4, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r4
	sub r4, r3, r0
	ldr r1, [r5, #8]
	add r0, r4, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	ldr r3, [sp, #0xb4]
	mov r1, #5
	mov r2, #0x6e
	bl sub_0200CDA0
	add sp, sp, #0xbc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02027538: .word DAT_02084bd4
_0202753C: .word MAIN_BSS_020BAE83
_02027540: .word 0x68DB8BAD
_02027544: .word 0x10624DD3
_02027548: .word 0x66666667
_0202754C: .word 0x51EB851F

	arm_func_start sub_02027550
sub_02027550: ; 0x02027550
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, [r0, #0x18]
	ldr r0, [r0, #0x1c]
	mov r1, r4
	mov r0, r0, lsl #7
	bl _s32_div_f
	mov r1, r0, asr #2
	mov r2, r0, lsr #0x1f
	add r1, r0, r1, lsr #29
	rsb r0, r2, r0, lsl #29
	cmp r4, #0
	mov r4, r1, asr #3
	add r5, r2, r0, ror #29
	beq _02027600
	cmp r4, #0
	mov r6, #0
	ble _020275CC
	mov r7, #2
	arm_func_end sub_02027550
_02027598:
	bl G2S_GetBG0ScrPtr
	add r1, r6, #2
	mov r1, r1, lsl #1
	mov sb, r0
	add r8, r1, #0x440
	bl G2S_GetBG1ScrPtr
	mov r2, r7
	add r0, r0, #0x610
	add r1, sb, r8
	bl MIi_CpuCopy16
	add r6, r6, #1
	cmp r6, r4
	blt _02027598
_020275CC:
	bl G2S_GetBG0ScrPtr
	add r1, r6, #2
	mov r1, r1, lsl #1
	mov r6, r0
	add r4, r1, #0x440
	bl G2S_GetBG1ScrPtr
	mov r1, r5, lsl #1
	add r1, r1, #0x600
	add r0, r0, r1
	add r1, r6, r4
	mov r2, #2
	bl MIi_CpuCopy16
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02027600:
	mov r7, #0
	mov r4, #2
_02027608:
	bl G2S_GetBG0ScrPtr
	add r1, r7, #2
	mov r1, r1, lsl #1
	mov r6, r0
	add r5, r1, #0x440
	bl G2S_GetBG1ScrPtr
	mov r2, r4
	add r0, r0, #0x610
	add r1, r6, r5
	bl MIi_CpuCopy16
	add r7, r7, #1
	cmp r7, #0x10
	blt _02027608
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_02027640
sub_02027640: ; 0x02027640
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201001C
	mov r1, r0
	ldr r0, [r4, #0x38]
	add r1, r1, #0x1000
	ldr r2, [r1, #0x5d0]
	ldrsh r1, [r0, #0xc]
	mov r2, r2, asr #0xc
	bl sub_0200EB28
	ldr r0, [r4, #0x34]
	bl sub_0200F64C
	ldmia sp!, {r4, pc}
	arm_func_end sub_02027640

	arm_func_start sub_02027674
sub_02027674: ; 0x02027674
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	bl sub_0200F71C
	ldr r0, [r4, #0x2c]
	bl sub_0200F71C
	ldr r0, [r4, #0x30]
	bl sub_0200F71C
	ldr r0, [r4, #0x34]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}
	arm_func_end sub_02027674

	arm_func_start sub_020276A0
sub_020276A0: ; 0x020276A0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _02027704
	mov r6, r4
	arm_func_end sub_020276A0
_020276C8:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020276F0
	bl _ZdaPv
	ldr r0, [r5, #0x3c]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_020276F0:
	ldr r1, [r5, #0x3c]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _020276C8
_02027704:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02027720
	bl _ZdaPv
	ldr r0, [r5, #0x3c]
	mov r1, #0
	str r1, [r0, #8]
_02027720:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x3c]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0202773C
sub_0202773C: ; 0x0202773C
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x14]
	bl sub_0202798C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202773C

	arm_func_start sub_02027754
sub_02027754: ; 0x02027754
	stmdb sp!, {r4, lr}
	ldr r0, _02027798 ; =MAIN_BSS_0210C1BC
	ldr r0, [r0]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, #0x18
	bl _Znwm
	movs r4, r0
	beq _0202778C
	bl sub_0201001C
	mov r1, r0
	mov r0, r4
	bl sub_0202773C
	mov r4, r0
	arm_func_end sub_02027754
_0202778C:
	ldr r0, _02027798 ; =MAIN_BSS_0210C1BC
	str r4, [r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02027798: .word MAIN_BSS_0210C1BC

	arm_func_start sub_0202779C
sub_0202779C: ; 0x0202779C
	ldr r0, _020277A8 ; =MAIN_BSS_0210C1BC
	ldr r0, [r0]
	bx lr
	.align 2, 0
_020277A8: .word MAIN_BSS_0210C1BC
	arm_func_end sub_0202779C

	arm_func_start sub_020277AC
sub_020277AC: ; 0x020277AC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x14]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	ldr r0, [r5, #0x14]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _02027804
	beq _020277FC
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_020277AC
_020277FC:
	mov r0, #0
	str r0, [r5, #8]
_02027804:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202780C
sub_0202780C: ; 0x0202780C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrh r1, [r4]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _02027978
_02027824: ; jump table
	b _02027978 ; case 0
	b _02027968 ; case 1
	b _02027844 ; case 2
	b _020278C0 ; case 3
	b _020278E0 ; case 4
	b _02027978 ; case 5
	b _02027978 ; case 6
	b _02027970 ; case 7
	arm_func_end sub_0202780C
_02027844:
	ldr r0, [r4, #0x14]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	bne _02027978
	ldr r0, [r4, #0x14]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200B6A4
	cmp r0, #0
	bne _02027978
	ldr r0, [r4, #0x14]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200B6D4
	cmp r0, #0
	moveq r0, #1
	streqh r0, [r4]
	beq _02027978
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r0, _02027984 ; =0xFFCFFFEF
	mov r1, #5
	and r0, r2, r0
	orr r0, r0, #0x10
	orr r0, r0, #0x100000
	str r0, [r3]
	strh r1, [r4]
	b _02027978
_020278C0:
	ldr r0, [r4, #0x14]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	moveq r0, #1
	streqh r0, [r4]
	b _02027978
_020278E0:
	ldr r0, [r4, #8]
	bl sub_0202841C
	cmp r0, #0
	beq _02027978
	tst r0, #0x80
	moveq r0, #1
	streqh r0, [r4]
	beq _0202793C
	ldr r1, _02027988 ; =DAT_0208c0ec
	mov r0, r4
	mov r2, #1
	mov r3, #0
	bl sub_02027A94
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B58
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034E38
_0202793C:
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _02027978
	beq _0202795C
	mov r0, r5
	bl sub_02028054
	mov r0, r5
	bl _ZdlPv
_0202795C:
	mov r0, #0
	str r0, [r4, #8]
	b _02027978
_02027968:
	bl sub_02027B34
	b _02027978
_02027970:
	mov r0, #1
	strh r0, [r4]
_02027978:
	mov r0, r4
	bl sub_02027CB4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02027984: .word 0xFFCFFFEF
_02027988: .word DAT_0208c0ec

	arm_func_start sub_0202798C
sub_0202798C: ; 0x0202798C
	mov r2, #0
	strh r2, [r0]
	sub r1, r2, #1
	stmib r0, {r1, r2}
	str r2, [r0, #0xc]
	bx lr
	arm_func_end sub_0202798C

	arm_func_start sub_020279A4
sub_020279A4: ; 0x020279A4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034DC8
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034DD8
	mov r0, #7
	strh r0, [r4]
	mov r1, #0
	ldr r0, _02027A24 ; =DAT_0208c12c
	str r1, [r4, #4]
	str r0, [r4, #0xc]
	mov r0, #1
	strh r0, [r4, #0x10]
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r0, _02027A28 ; =0xFFCFFFEF
	mov r1, #0x45
	and r0, r2, r0
	orr r0, r0, #0x10
	str r0, [r3]
	ldr r0, [r4, #0x14]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020349E8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02027A24: .word DAT_0208c12c
_02027A28: .word 0xFFCFFFEF
	arm_func_end sub_020279A4

	arm_func_start sub_02027A2C
sub_02027A2C: ; 0x02027A2C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034DC8
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034DD8
	mov r0, #7
	strh r0, [r4]
	mov r1, #0
	ldr r0, _02027A90 ; =DAT_0208c0fc
	str r1, [r4, #4]
	str r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	mov r1, #0x45
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020349E8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02027A90: .word DAT_0208c0fc
	arm_func_end sub_02027A2C

	arm_func_start sub_02027A94
sub_02027A94: ; 0x02027A94
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldrh r1, [r6, #4]
	mov r7, r0
	mov r5, r2
	strh r1, [r7]
	ldr r0, [r6]
	mov r4, r3
	cmp r0, #0
	ldr r0, [r7, #0x14]
	bge _02027AE8
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	ldr r0, [r7, #0x14]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_02027A94
_02027AE8:
	add r0, r0, #0x1000
	mov r1, #1
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	ldr r0, [r7, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA04
	str r4, [sp]
	ldr r0, [r7, #0x14]
	ldr r1, [r6]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	ldr r3, [r6, #8]
	mov r2, r5
	bl sub_0200AD34
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02027B34
sub_02027B34: ; 0x02027B34
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r3, [r4, #4]
	cmp r3, #0
	addlt sp, sp, #0x1c
	ldmltia sp!, {r4, r5, pc}
	ldr r1, [r4, #0xc]
	mov r2, #1
	add r1, r1, r3, lsl #4
	mov r3, #0
	bl sub_02027A94
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #4]
	add r0, r1, r0, lsl #4
	ldrh r0, [r0, #4]
	cmp r0, #4
	bne _02027C04
	add r0, sp, #0x10
	bl RTC_GetTime
	add r0, sp, #0
	bl RTC_GetDate
	ldr r0, _02027CA8 ; =MAIN_BSS_020B26A0
	add r1, sp, #0x10
	add r2, sp, #0
	bl sub_0201630C
	ldr r0, [r4, #0x14]
	bl sub_02010324
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _02027BCC
	beq _02027BC4
	mov r0, r5
	bl sub_02028054
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_02027B34
_02027BC4:
	mov r0, #0
	str r0, [r4, #8]
_02027BCC:
	mov r0, #0x74
	bl _Znwm
	cmp r0, #0
	beq _02027BE4
	mov r1, #1
	bl sub_02027FE8
_02027BE4:
	str r0, [r4, #8]
	ldr r0, _02027CAC ; =MAIN_BSS_0210C1C0
	bl sub_0202A4A0
	ldr r0, _02027CB0 ; =MAIN_BSS_0210C228
	bl sub_0202A4D8
	ldrh r1, [r4, #0x10]
	ldr r0, [r4, #8]
	bl sub_02028220
_02027C04:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #4]
	add r0, r1, r0, lsl #4
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _02027C94
	cmp r1, #0
	ldr r0, [r4, #0x14]
	bge _02027C6C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0
	bl sub_02034E38
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #4]
	mvn r0, #1
	add r1, r2, r1, lsl #4
	ldr r1, [r1, #0xc]
	cmp r1, r0
	beq _02027C94
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B68
	b _02027C94
_02027C6C:
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r2, #0
	mov r3, #0x100
	bl sub_02034DE8
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B58
_02027C94:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02027CA8: .word MAIN_BSS_020B26A0
_02027CAC: .word MAIN_BSS_0210C1C0
_02027CB0: .word MAIN_BSS_0210C228

	arm_func_start sub_02027CB4
sub_02027CB4: ; 0x02027CB4
	ldrh r0, [r0]
	cmp r0, #5
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02027CB4

	arm_func_start sub_02027CC8
sub_02027CC8: ; 0x02027CC8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0202B5D0
	ldr r0, _02027CEC ; =ptr_FUN_02027cf0_0208c1a4
	mov r1, #0
	str r0, [r4]
	mov r0, r4
	str r1, [r4, #0x10]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02027CEC: .word ptr_FUN_02027cf0_0208c1a4
	arm_func_end sub_02027CC8

	arm_func_start sub_02027CF0
sub_02027CF0: ; 0x02027CF0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0202B64C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02027CF0

	arm_func_start sub_02027D04
sub_02027D04: ; 0x02027D04
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0202B64C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02027D04

	arm_func_start sub_02027D20
sub_02027D20: ; 0x02027D20
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r7, r0
	mov r4, #0
	str r4, [r7, #0x10]
	ldr ip, [r7, #4]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp ip, #0
	bne _02027D68
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	arm_func_end sub_02027D20
_02027D68:
	bl CARD_GetBackupPageSize
	bl CARD_GetBackupTotalSize
	ldr r0, [r7, #8]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_LockBackup
	bl CARD_GetCurrentBackupType
	and r0, r0, #0xff
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02027DD8
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov ip, #0xa
	ldr r3, _02027E50 ; =sub_02027FB4
	mov r0, r5
	mov r1, r6
	mov r2, r4
	str ip, [sp, #0xc]
	mov r4, #2
	str r4, [sp, #0x10]
	bl CARDi_RequestStreamCommand
	b _02027E2C
_02027DD8:
	bl CARD_GetCurrentBackupType
	and r0, r0, #0xff
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02027E2C
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov ip, #0xa
	ldr r3, _02027E50 ; =sub_02027FB4
	mov r0, r5
	mov r1, r6
	mov r2, r4
	str ip, [sp, #0xc]
	mov r4, #2
	str r4, [sp, #0x10]
	bl CARDi_RequestStreamCommand
_02027E2C:
	bl CARD_GetResultCode
	cmp r0, #0
	str r0, [r7, #0xc]
	ldreq r1, [sp, #0x28]
	movne r0, #0
	moveq r0, #1
	streq r1, [r7, #0x10]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02027E50: .word sub_02027FB4

	arm_func_start sub_02027E54
sub_02027E54: ; 0x02027E54
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r7, r0
	ldr ip, [r7, #4]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp ip, #0
	bne _02027E94
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	arm_func_end sub_02027E54
_02027E94:
	bl CARD_GetBackupPageSize
	bl CARD_GetBackupTotalSize
	ldr r0, [r7, #8]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_LockBackup
	bl CARD_GetCurrentBackupType
	and r0, r0, #0xff
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02027F00
	str r7, [sp]
	mov ip, #1
	str ip, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	ldr r3, _02027F6C ; =sub_02027FB4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	str ip, [sp, #0xc]
	mov r4, #0
	str r4, [sp, #0x10]
	bl CARDi_RequestStreamCommand
	b _02027F50
_02027F00:
	bl CARD_GetCurrentBackupType
	and r0, r0, #0xff
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02027F50
	str r7, [sp]
	mov ip, #1
	str ip, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	ldr r3, _02027F6C ; =sub_02027FB4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	str ip, [sp, #0xc]
	mov r4, #0
	str r4, [sp, #0x10]
	bl CARDi_RequestStreamCommand
_02027F50:
	bl CARD_GetResultCode
	str r0, [r7, #0xc]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02027F6C: .word sub_02027FB4

	arm_func_start sub_02027F70
sub_02027F70: ; 0x02027F70
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _02027F94
	bl CARD_WaitBackupAsync
	bl CARD_GetResultCode
	str r0, [r4, #0xc]
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02027F70
_02027F94:
	bl CARD_TryWaitBackupAsync
	cmp r0, #1
	movne r0, #0
	ldmneia sp!, {r4, pc}
	bl CARD_GetResultCode
	str r0, [r4, #0xc]
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start sub_02027FB4
sub_02027FB4: ; 0x02027FB4
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #8]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_UnlockBackup
	ldr r1, [r4, #0x10]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #0
	blx r1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02027FB4

	arm_func_start sub_02027FE8
sub_02027FE8: ; 0x02027FE8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #4
	mov r5, r1
	bl sub_02027CC8
	add r0, r4, #0x18
	bl sub_0202B8A4
	mov r0, #0
	str r0, [r4, #0x54]
	strb r0, [r4, #0x64]
	str r0, [r4, #0x68]
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x6c]
	str r0, [r4, #0x70]
	mov r0, #8
	strh r0, [r4, #0x66]
	bl sub_0201001C
	add r0, r0, #0x1000
	mov r1, #0
	str r1, [r0, #0x5d4]
	cmp r5, #0
	addne r0, r4, #4
	addeq r0, r4, #0x18
	str r0, [r4]
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02027FE8

	arm_func_start sub_02028054
sub_02028054: ; 0x02028054
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _02028074
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x58]
	arm_func_end sub_02028054
_02028074:
	bl sub_0201001C
	add r1, r0, #0x1000
	mov r2, #1
	add r0, r4, #0x18
	str r2, [r1, #0x5d4]
	bl sub_0202B8D8
	add r0, r4, #4
	bl sub_02027CF0
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202809C
sub_0202809C: ; 0x0202809C
	cmp r1, #0
	beq _020280B4
	cmp r1, #1
	add r1, r0, #4
	str r1, [r0]
	bx lr
	arm_func_end sub_0202809C
_020280B4:
	add r1, r0, #0x18
	str r1, [r0]
	bx lr

	arm_func_start sub_020280C0
sub_020280C0: ; 0x020280C0
	ldr r0, _020280E8 ; =PTR_PTR_LAB_0208c1e4
	ldr r1, [r0, r1, lsl #2]
	ldr r0, [r1]
	cmp r0, #0
	beq _020280E0
	arm_func_end sub_020280C0
_020280D4:
	ldr r0, [r1, #8]!
	cmp r0, #0
	bne _020280D4
_020280E0:
	ldr r0, [r1, #4]
	bx lr
	.align 2, 0
_020280E8: .word PTR_PTR_LAB_0208c1e4

	arm_func_start sub_020280EC
sub_020280EC: ; 0x020280EC
	ldr r2, _0202811C ; =PTR_PTR_LAB_0208c1e4
	mov r0, #0
	ldr r3, [r2, r1, lsl #2]
	ldr r1, [r3]
	cmp r1, #0
	bxeq lr
	arm_func_end sub_020280EC
_02028104:
	ldr r2, [r3, #4]
	ldr r1, [r3, #8]!
	add r0, r0, r2
	cmp r1, #0
	bne _02028104
	bx lr
	.align 2, 0
_0202811C: .word PTR_PTR_LAB_0208c1e4

	arm_func_start sub_02028120
sub_02028120: ; 0x02028120
	ldr ip, _02028128 ; =sub_0202812C
	bx ip
	.align 2, 0
_02028128: .word sub_0202812C
	arm_func_end sub_02028120

	arm_func_start sub_0202812C
sub_0202812C: ; 0x0202812C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	movs r6, r1
	mov r7, r0
	mov r5, r4
	beq _02028168
	arm_func_end sub_0202812C
_02028144:
	mov r0, r7
	mov r1, r5
	bl sub_02028184
	add r1, r5, #1
	mov r1, r1, lsl #0x10
	cmp r6, r1, lsr #16
	add r4, r4, r0
	mov r5, r1, lsr #0x10
	bhi _02028144
_02028168:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02028170
sub_02028170: ; 0x02028170
	ldr r2, [r0, #0x60]
	ldr r0, [r0, #0x5c]
	add r2, r2, #0x1c
	mla r0, r1, r0, r2
	bx lr
	arm_func_end sub_02028170

	arm_func_start sub_02028184
sub_02028184: ; 0x02028184
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl sub_020280EC
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl sub_020280C0
	mul r0, r4, r0
	add r0, r0, #0x1c
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02028184

	arm_func_start sub_020281B0
sub_020281B0: ; 0x020281B0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrh r2, [r6, #0x66]
	mov r5, r1
	cmp r2, r5
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r2, _0202821C ; =PTR_PTR_LAB_0208c1e4
	ldr r2, [r2, r5, lsl #2]
	str r2, [r6, #0x68]
	bl sub_020280EC
	mov r4, r0
	ldr r0, [r6, #0x58]
	cmp r0, #0
	beq _020281F4
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r6, #0x58]
	arm_func_end sub_020281B0
_020281F4:
	mov r0, r4
	bl _Z10Heap_Allocm
	str r0, [r6, #0x58]
	mov r0, r6
	mov r1, r5
	str r4, [r6, #0x5c]
	bl sub_02028120
	str r0, [r6, #0x60]
	strh r5, [r6, #0x66]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0202821C: .word PTR_PTR_LAB_0208c1e4

	arm_func_start sub_02028220
sub_02028220: ; 0x02028220
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020281B0
	ldr r0, [r5, #0x54]
	cmp r0, #0xd
	bgt _0202825C
	cmp r0, #0xb
	blt _02028250
	cmpne r0, #0xd
	beq _02028288
	b _020282C0
	arm_func_end sub_02028220
_02028250:
	cmp r0, #0
	beq _02028288
	b _020282C0
_0202825C:
	cmp r0, #0x14
	bgt _0202826C
	beq _02028288
	b _020282C0
_0202826C:
	cmp r0, #0x19
	bgt _020282C0
	cmp r0, #0x15
	blt _020282C0
	cmpne r0, #0x18
	cmpne r0, #0x19
	bne _020282C0
_02028288:
	mov r1, #1
	strb r1, [r5, #0x65]
	mov r0, #0
	strb r0, [r5, #0x64]
	str r1, [r5, #0x54]
	strb r0, [r5, #0x64]
	bl sub_0200FA2C
	cmp r4, #0
	bne _020282B8
	ldr r0, _020282C8 ; =MAIN_BSS_020B26A0
	mov r1, #1
	bl sub_02016E7C
_020282B8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020282C0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020282C8: .word MAIN_BSS_020B26A0

	arm_func_start sub_020282CC
sub_020282CC: ; 0x020282CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020281B0
	ldr r0, [r4, #0x54]
	cmp r0, #0xd
	bgt _02028304
	cmp r0, #0xb
	blt _020282F8
	cmpne r0, #0xd
	beq _02028330
	b _02028358
	arm_func_end sub_020282CC
_020282F8:
	cmp r0, #0
	beq _02028330
	b _02028358
_02028304:
	cmp r0, #0x14
	bgt _02028314
	beq _02028330
	b _02028358
_02028314:
	cmp r0, #0x19
	bgt _02028358
	cmp r0, #0x15
	blt _02028358
	cmpne r0, #0x18
	cmpne r0, #0x19
	bne _02028358
_02028330:
	mov r0, #2
	strb r0, [r4, #0x65]
	mov r0, #0
	strb r0, [r4, #0x64]
	mov r1, #0xe
	str r1, [r4, #0x54]
	strb r0, [r4, #0x64]
	bl sub_0200FA2C
	mov r0, #1
	ldmia sp!, {r4, pc}
_02028358:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02028360
sub_02028360: ; 0x02028360
	ldr ip, _02028370 ; =sub_020282CC
	mov r2, #1
	str r2, [r0, #0x70]
	bx ip
	.align 2, 0
_02028370: .word sub_020282CC
	arm_func_end sub_02028360

	arm_func_start sub_02028374
sub_02028374: ; 0x02028374
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020281B0
	ldr r0, [r4, #0x54]
	cmp r0, #0xd
	bgt _020283AC
	cmp r0, #0xb
	blt _020283A0
	cmpne r0, #0xd
	beq _020283D8
	b _02028400
	arm_func_end sub_02028374
_020283A0:
	cmp r0, #0
	beq _020283D8
	b _02028400
_020283AC:
	cmp r0, #0x14
	bgt _020283BC
	beq _020283D8
	b _02028400
_020283BC:
	cmp r0, #0x19
	bgt _02028400
	cmp r0, #0x15
	blt _02028400
	cmpne r0, #0x18
	cmpne r0, #0x19
	bne _02028400
_020283D8:
	mov r0, #3
	strb r0, [r4, #0x65]
	mov r0, #0
	strb r0, [r4, #0x64]
	mov r1, #1
	str r1, [r4, #0x54]
	strb r0, [r4, #0x64]
	bl sub_0200FA2C
	mov r0, #1
	ldmia sp!, {r4, pc}
_02028400:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02028408
sub_02028408: ; 0x02028408
	ldr ip, _02028418 ; =sub_020282CC
	mov r2, #1
	str r2, [r0, #0x6c]
	bx ip
	.align 2, 0
_02028418: .word sub_020282CC
	arm_func_end sub_02028408

	arm_func_start sub_0202841C
sub_0202841C: ; 0x0202841C
	stmdb sp!, {r3, lr}
	ldrb r1, [r0, #0x65]
	cmp r1, #1
	beq _02028440
	cmp r1, #2
	beq _0202844C
	cmp r1, #3
	beq _02028454
	b _0202845C
	arm_func_end sub_0202841C
_02028440:
	mov r1, #0
	bl sub_02028464
	ldmia sp!, {r3, pc}
_0202844C:
	bl sub_0202899C
	ldmia sp!, {r3, pc}
_02028454:
	bl sub_02028CEC
	ldmia sp!, {r3, pc}
_0202845C:
	mov r0, #0x80
	ldmia sp!, {r3, pc}

	arm_func_start sub_02028464
sub_02028464: ; 0x02028464
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r2, [r6, #0x54]
	mov r5, r1
	cmp r2, #0xd
	mov r4, #0
	addls pc, pc, r2, lsl #2
	b _02028980
_02028484: ; jump table
	b _02028980 ; case 0
	b _020284BC ; case 1
	b _02028564 ; case 2
	b _020286F4 ; case 3
	b _02028754 ; case 4
	b _02028980 ; case 5
	b _02028980 ; case 6
	b _020287A8 ; case 7
	b _02028980 ; case 8
	b _020288E4 ; case 9
	b _02028980 ; case 10
	b _02028938 ; case 11
	b _02028980 ; case 12
	b _02028958 ; case 13
	arm_func_end sub_02028464
_020284BC:
	ldr r0, [r6]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	bne _020284E8
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #1
	strb r0, [r6, #0x64]
	b _0202898C
_020284E8:
	ldr r0, _02028994 ; =MAIN_BSS_0210CA38
	ldr r1, [r6, #0x5c]
	ldr r0, [r0]
	add r1, r1, #0x1c
	cmp r1, r0
	bls _02028514
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, r4
	strb r0, [r6, #0x64]
	b _0202898C
_02028514:
	mov r0, r4
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r6, #0x60]
	ldr ip, [r0]
	add r2, r6, #0x38
	ldr ip, [ip, #0x14]
	mov r3, #0x1c
	blx ip
	cmp r0, #0
	bne _02028554
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #2
	strb r0, [r6, #0x64]
	b _0202898C
_02028554:
	mov r0, #2
	str r0, [r6, #0x54]
	mov r0, r4
	strb r0, [r6, #0x64]
_02028564:
	ldr r0, [r6]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _0202898C
	ldr r0, [r6]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _020286E0
	mov r0, r6
	bl sub_02028D94
	cmp r0, #0
	beq _02028608
	ldrh r3, [r6, #0x50]
	mov r0, r6
	add r1, r6, #0x38
	mov r2, #0x18
	bl sub_02028E04
	cmp r0, #0
	beq _020285CC
	ldr r0, [r6, #0x60]
	add r0, r0, #0x1c
	str r0, [r6, #0x40]
	b _020285DC
_020285CC:
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #3
	strb r0, [r6, #0x64]
_020285DC:
	cmp r5, #0
	bne _02028678
	ldrh r1, [r6, #0x66]
	mov r0, r6
	bl sub_020280C0
	ldrh r2, [r6, #0x4c]
	mov r1, r0
	add r0, r2, #1
	bl _u32_div_f
	strh r1, [r6, #0x4c]
	b _02028678
_02028608:
	ldr r0, _02028998 ; =PTR_LAB_0208c1c0
	mov r3, #0
_02028610:
	ldr r2, [r0]
	add r1, r6, r3
	ldrsb r2, [r2, r3]
	add r3, r3, #1
	cmp r3, #8
	strb r2, [r1, #0x38]
	blt _02028610
	ldrh r1, [r6, #0x66]
	mov r0, r6
	bl sub_020280C0
	cmp r0, #0
	mov r7, #0
	bls _02028668
	mvn ip, #1
	mov r2, r7
_0202864C:
	add r3, r6, r7, lsl #2
	add r1, r6, r7, lsl #1
	str ip, [r3, #0x40]
	add r7, r7, #1
	strh r2, [r1, #0x48]
	cmp r7, r0
	blo _0202864C
_02028668:
	mov r0, #0
	strh r0, [r6, #0x4c]
	strh r0, [r6, #0x4e]
	strh r0, [r6, #0x52]
_02028678:
	ldrh r1, [r6, #0x4c]
	ldr r2, _02028994 ; =MAIN_BSS_0210CA38
	mov r0, r6
	ldr r7, [r2]
	bl sub_02028170
	ldr r1, [r6, #0x5c]
	add r0, r1, r0
	cmp r0, r7
	bls _020286B0
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #0
	strb r0, [r6, #0x64]
	b _0202898C
_020286B0:
	cmp r5, #0
	beq _020286CC
	mov r0, #7
	str r0, [r6, #0x54]
	mov r0, #0
	strb r0, [r6, #0x64]
	b _0202898C
_020286CC:
	mov r0, #3
	str r0, [r6, #0x54]
	mov r0, #0
	strb r0, [r6, #0x64]
	b _0202898C
_020286E0:
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #3
	strb r0, [r6, #0x64]
	b _0202898C
_020286F4:
	bl sub_02028CFC
	ldrh r1, [r6, #0x4c]
	mov r0, r6
	bl sub_02028170
	mov r1, r4
	str r1, [sp]
	mov r1, r0
	ldr r0, [r6]
	ldr r2, [r6, #0x58]
	ldr r5, [r0]
	ldr r3, [r6, #0x5c]
	ldr r5, [r5, #0x10]
	blx r5
	cmp r0, #0
	bne _02028744
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #4
	strb r0, [r6, #0x64]
	b _0202898C
_02028744:
	mov r0, #4
	str r0, [r6, #0x54]
	mov r0, r4
	strb r0, [r6, #0x64]
_02028754:
	ldr r0, [r6]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _0202898C
	ldr r0, [r6]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02028794
	mov r0, #7
	str r0, [r6, #0x54]
	mov r0, #0
	strb r0, [r6, #0x64]
	b _0202898C
_02028794:
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #5
	strb r0, [r6, #0x64]
	b _0202898C
_020287A8:
	cmp r5, #0
	ldrh r1, [r6, #0x4c]
	beq _02028854
	add r1, r6, r1, lsl #1
	strh r4, [r1, #0x48]
	ldrh r1, [r6, #0x4c]
	sub r2, r4, #2
	add r1, r6, r1, lsl #2
	str r2, [r1, #0x40]
	ldrh r1, [r6, #0x66]
	bl sub_020280C0
	mov r1, r0
	cmp r1, #1
	movlt r1, #1
	cmp r1, #0
	mov r3, #0
	ble _0202880C
	mvn r0, #1
_020287F0:
	add r2, r6, r3, lsl #2
	ldr r2, [r2, #0x40]
	cmp r2, r0
	bne _0202880C
	add r3, r3, #1
	cmp r3, r1
	blt _020287F0
_0202880C:
	cmp r3, r1
	blt _02028828
	add r0, r6, #0x38
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	b _02028894
_02028828:
	ldrh r2, [r6, #0x4c]
	sub r0, r1, #1
	add r0, r2, r0
	bl _s32_div_f
	strh r1, [r6, #0x4c]
	mov r0, r6
	add r1, r6, #0x38
	mov r2, #0x18
	bl sub_02028DD4
	strh r0, [r6, #0x50]
	b _02028894
_02028854:
	bl sub_02028170
	ldrh r1, [r6, #0x4c]
	add r1, r6, r1, lsl #2
	str r0, [r1, #0x40]
	ldr r1, [r6, #0x58]
	ldr r2, [r6, #0x5c]
	mov r0, r6
	bl sub_02028DD4
	ldrh r3, [r6, #0x4c]
	add r1, r6, #0x38
	mov r2, #0x18
	add r3, r6, r3, lsl #1
	strh r0, [r3, #0x48]
	mov r0, r6
	bl sub_02028DD4
	strh r0, [r6, #0x50]
_02028894:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r6, #0x60]
	ldr r5, [r0]
	add r2, r6, #0x38
	ldr r5, [r5, #0x10]
	mov r3, #0x1c
	blx r5
	cmp r0, #0
	bne _020288D4
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #6
	strb r0, [r6, #0x64]
	b _0202898C
_020288D4:
	mov r0, #9
	str r0, [r6, #0x54]
	mov r0, #0
	strb r0, [r6, #0x64]
_020288E4:
	ldr r0, [r6]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _0202898C
	ldr r0, [r6]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02028924
	mov r0, #0xb
	str r0, [r6, #0x54]
	mov r0, #0
	strb r0, [r6, #0x64]
	b _0202898C
_02028924:
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #7
	strb r0, [r6, #0x64]
	b _0202898C
_02028938:
	ldr r0, [r6]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	bl sub_0200FA0C
	mov r4, #1
	b _0202898C
_02028958:
	ldr r0, [r6]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	bl sub_0200FA0C
	ldrb r0, [r6, #0x64]
	orr r0, r0, #0x80
	and r4, r0, #0xff
	b _0202898C
_02028980:
	mov r0, #0
	mov r4, #0x80
	bl sub_0200FA0C
_0202898C:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02028994: .word MAIN_BSS_0210CA38
_02028998: .word PTR_LAB_0208c1c0

	arm_func_start sub_0202899C
sub_0202899C: ; 0x0202899C
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r1, [r5, #0x54]
	mov r4, #0
	sub r1, r1, #0xe
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _02028CD0
_020289C0: ; jump table
	b _020289E0 ; case 0
	b _02028A8C ; case 1
	b _02028B58 ; case 2
	b _02028BF4 ; case 3
	b _02028CD0 ; case 4
	b _02028CD0 ; case 5
	b _02028C88 ; case 6
	b _02028CA8 ; case 7
	arm_func_end sub_0202899C
_020289E0:
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	bne _02028A0C
	mov r0, #0x15
	str r0, [r5, #0x54]
	mov r0, #1
	strb r0, [r5, #0x64]
	b _02028CDC
_02028A0C:
	ldr r1, [r5, #0x60]
	ldr r0, _02028CE8 ; =MAIN_BSS_0210CA38
	ldr r2, [r5, #0x5c]
	add r3, r1, #0x1c
	ldr r0, [r0]
	add r2, r3, r2, lsl #1
	cmp r2, r0
	bls _02028A40
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, r4
	strb r0, [r5, #0x64]
	b _02028CDC
_02028A40:
	mov r0, r4
	str r0, [sp]
	ldr r0, [r5]
	add r2, r5, #0x38
	ldr r6, [r0]
	mov r3, #0x1c
	ldr r6, [r6, #0x14]
	blx r6
	cmp r0, #0
	bne _02028A7C
	mov r0, #0x15
	str r0, [r5, #0x54]
	mov r0, #2
	strb r0, [r5, #0x64]
	b _02028CDC
_02028A7C:
	mov r0, #0xf
	str r0, [r5, #0x54]
	mov r0, r4
	strb r0, [r5, #0x64]
_02028A8C:
	ldr r0, [r5]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _02028CDC
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02028B44
	mov r0, r5
	bl sub_02028D94
	cmp r0, #0
	beq _02028B30
	ldrh r3, [r5, #0x50]
	mov r0, r5
	add r1, r5, #0x38
	mov r2, #0x18
	bl sub_02028E04
	cmp r0, #0
	beq _02028B1C
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _02028B08
	mov r1, #0
	str r1, [r5, #0x6c]
	mov r0, #0x14
	str r0, [r5, #0x54]
	strb r1, [r5, #0x64]
	b _02028CDC
_02028B08:
	mov r0, #0x10
	str r0, [r5, #0x54]
	mov r0, #0
	strb r0, [r5, #0x64]
	b _02028CDC
_02028B1C:
	mov r0, #0x15
	str r0, [r5, #0x54]
	mov r0, #3
	strb r0, [r5, #0x64]
	b _02028CDC
_02028B30:
	mov r0, #0x15
	str r0, [r5, #0x54]
	mov r0, #0xa
	strb r0, [r5, #0x64]
	b _02028CDC
_02028B44:
	mov r0, #0x15
	str r0, [r5, #0x54]
	mov r0, #3
	strb r0, [r5, #0x64]
	b _02028CDC
_02028B58:
	ldr r1, [r5, #0x70]
	cmp r1, #0
	beq _02028B9C
	ldrh r1, [r5, #0x66]
	bl sub_020280C0
	mov r6, r0
	ldrh r1, [r5, #0x66]
	mov r0, r5
	bl sub_020280C0
	ldrh r3, [r5, #0x4c]
	sub r2, r6, #1
	mov r1, r0
	add r0, r3, r2
	bl _u32_div_f
	strh r1, [r5, #0x4c]
	mov r0, r4
	str r0, [r5, #0x70]
_02028B9C:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	ldrh r1, [r5, #0x4c]
	ldr ip, [r0]
	ldr r2, [r5, #0x58]
	add r1, r5, r1, lsl #2
	ldr r1, [r1, #0x40]
	ldr r3, [r5, #0x5c]
	ldr ip, [ip, #0x14]
	blx ip
	cmp r0, #0
	bne _02028BE4
	mov r0, #0x15
	str r0, [r5, #0x54]
	mov r0, #8
	strb r0, [r5, #0x64]
	b _02028CDC
_02028BE4:
	mov r0, #0x11
	str r0, [r5, #0x54]
	mov r0, #0
	strb r0, [r5, #0x64]
_02028BF4:
	ldr r0, [r5]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _02028CDC
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02028C74
	ldrh r0, [r5, #0x4c]
	ldr r1, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	add r0, r5, r0, lsl #1
	ldrh r3, [r0, #0x48]
	mov r0, r5
	bl sub_02028E04
	cmp r0, #0
	beq _02028C60
	mov r0, r5
	bl sub_02028D58
	mov r0, #0x14
	str r0, [r5, #0x54]
	mov r0, #0
	strb r0, [r5, #0x64]
	b _02028CDC
_02028C60:
	mov r0, #0x15
	str r0, [r5, #0x54]
	mov r0, #0xb
	strb r0, [r5, #0x64]
	b _02028CDC
_02028C74:
	mov r0, #0x15
	str r0, [r5, #0x54]
	mov r0, #9
	strb r0, [r5, #0x64]
	b _02028CDC
_02028C88:
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	mov r4, #1
	bl sub_0200FA0C
	b _02028CDC
_02028CA8:
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldrb r1, [r5, #0x64]
	mov r0, r4
	orr r1, r1, #0x80
	and r4, r1, #0xff
	bl sub_0200FA0C
	b _02028CDC
_02028CD0:
	mov r0, #0
	mov r4, #0x80
	bl sub_0200FA0C
_02028CDC:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02028CE8: .word MAIN_BSS_0210CA38

	arm_func_start sub_02028CEC
sub_02028CEC: ; 0x02028CEC
	ldr ip, _02028CF8 ; =sub_02028464
	mov r1, #1
	bx ip
	.align 2, 0
_02028CF8: .word sub_02028464
	arm_func_end sub_02028CEC

	arm_func_start sub_02028CFC
sub_02028CFC: ; 0x02028CFC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, [r0, #0x68]
	ldr r6, [r0, #0x58]
	ldr r0, [r5]
	mov r7, r1
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	arm_func_end sub_02028CFC
_02028D1C:
	cmp r7, #0
	ldr r2, [r5, #4]
	beq _02028D38
	mov r0, r6
	mov r1, r4
	bl MI_CpuFill8
	b _02028D40
_02028D38:
	mov r1, r6
	bl MI_CpuCopy8
_02028D40:
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]!
	add r6, r6, r1
	cmp r0, #0
	bne _02028D1C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02028D58
sub_02028D58: ; 0x02028D58
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, [r0, #0x68]
	ldr r5, [r0, #0x58]
	ldr r1, [r4]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02028D58
_02028D70:
	ldr r2, [r4, #4]
	mov r0, r5
	bl MI_CpuCopy8
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]!
	add r5, r5, r0
	cmp r1, #0
	bne _02028D70
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02028D94
sub_02028D94: ; 0x02028D94
	ldr r1, _02028DD0 ; =PTR_LAB_0208c1c0
	mov r3, #0
	ldr ip, [r1]
	arm_func_end sub_02028D94
_02028DA0:
	add r1, r0, r3
	ldrsb r2, [r1, #0x38]
	ldrsb r1, [ip]
	cmp r2, r1
	movne r0, #0
	bxne lr
	add r3, r3, #1
	cmp r3, #8
	add ip, ip, #1
	blt _02028DA0
	mov r0, #1
	bx lr
	.align 2, 0
_02028DD0: .word PTR_LAB_0208c1c0

	arm_func_start sub_02028DD4
sub_02028DD4: ; 0x02028DD4
	mov r0, #0
	mov ip, r0
	cmp r2, #0
	bxle lr
	arm_func_end sub_02028DD4
_02028DE4:
	ldrb r3, [r1], #1
	add ip, ip, #1
	cmp ip, r2
	add r0, r0, r3
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	blt _02028DE4
	bx lr

	arm_func_start sub_02028E04
sub_02028E04: ; 0x02028E04
	stmdb sp!, {r4, lr}
	mov r4, r3
	bl sub_02028DD4
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02028E04

	arm_func_start sub_02028E20
sub_02028E20: ; 0x02028E20
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r1, [r5, #0x54]
	mov r4, #0
	cmp r1, #0xd
	addls pc, pc, r1, lsl #2
	b _020292AC
_02028E40: ; jump table
	b _020292AC ; case 0
	b _02028E78 ; case 1
	b _02028F24 ; case 2
	b _02029090 ; case 3
	b _020290F4 ; case 4
	b _020292AC ; case 5
	b _020292AC ; case 6
	b _02029148 ; case 7
	b _020291A4 ; case 8
	b _020291F0 ; case 9
	b _02029244 ; case 10
	b _0202924C ; case 11
	b _0202927C ; case 12
	b _02029284 ; case 13
	arm_func_end sub_02028E20
_02028E78:
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	bne _02028EA4
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #1
	strb r0, [r5, #0x64]
	b _020292B8
_02028EA4:
	ldr r0, _020292C4 ; =MAIN_BSS_0210CA38
	ldr r1, [r5, #0x5c]
	ldr r0, [r0]
	add r1, r1, #0x1c
	cmp r1, r0
	bls _02028ED0
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, r4
	strb r0, [r5, #0x64]
	b _020292B8
_02028ED0:
	mov r0, r4
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r5, #0x60]
	ldr ip, [r0]
	add r2, r5, #0x38
	ldr ip, [ip, #0x14]
	mov r3, #0x1c
	blx ip
	cmp r0, #0
	bne _02028F10
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #2
	strb r0, [r5, #0x64]
	b _020292B8
_02028F10:
	mov r0, #2
	str r0, [r5, #0x54]
	mov r0, r4
	strb r0, [r5, #0x64]
	b _020292B8
_02028F24:
	ldr r0, [r5]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _020292B8
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0202907C
	mov r0, r5
	bl sub_02028D94
	cmp r0, #0
	beq _02028FC0
	ldrh r3, [r5, #0x50]
	mov r0, r5
	add r1, r5, #0x38
	mov r2, #0x18
	bl sub_02028E04
	cmp r0, #0
	beq _02028F8C
	ldr r0, [r5, #0x60]
	add r0, r0, #0x1c
	str r0, [r5, #0x40]
	b _02028F9C
_02028F8C:
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #3
	strb r0, [r5, #0x64]
_02028F9C:
	ldrh r1, [r5, #0x66]
	mov r0, r5
	bl sub_020280C0
	ldrh r2, [r5, #0x4c]
	mov r1, r0
	add r0, r2, #1
	bl _u32_div_f
	strh r1, [r5, #0x4c]
	b _02029030
_02028FC0:
	ldr r0, _020292C8 ; =PTR_LAB_0208c1c0
	mov r3, r4
_02028FC8:
	ldr r2, [r0]
	add r1, r5, r3
	ldrsb r2, [r2, r3]
	add r3, r3, #1
	cmp r3, #8
	strb r2, [r1, #0x38]
	blt _02028FC8
	ldrh r1, [r5, #0x66]
	mov r0, r5
	bl sub_020280C0
	cmp r0, #0
	mov r6, #0
	bls _02029020
	mvn ip, #1
	mov r2, r6
_02029004:
	add r3, r5, r6, lsl #2
	add r1, r5, r6, lsl #1
	str ip, [r3, #0x40]
	add r6, r6, #1
	strh r2, [r1, #0x48]
	cmp r6, r0
	blo _02029004
_02029020:
	mov r0, #0
	strh r0, [r5, #0x4c]
	strh r0, [r5, #0x4e]
	strh r0, [r5, #0x52]
_02029030:
	ldrh r1, [r5, #0x4c]
	ldr r2, _020292C4 ; =MAIN_BSS_0210CA38
	mov r0, r5
	ldr r6, [r2]
	bl sub_02028170
	ldr r1, [r5, #0x5c]
	add r0, r1, r0
	cmp r0, r6
	bls _02029068
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #0
	strb r0, [r5, #0x64]
	b _020292B8
_02029068:
	mov r0, #3
	str r0, [r5, #0x54]
	mov r0, #0
	strb r0, [r5, #0x64]
	b _020292B8
_0202907C:
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #3
	strb r0, [r5, #0x64]
	b _020292B8
_02029090:
	mov r1, r4
	bl sub_02028CFC
	ldrh r1, [r5, #0x4c]
	mov r0, r5
	bl sub_02028170
	mov r1, r4
	str r1, [sp]
	mov r1, r0
	ldr r0, [r5]
	ldr r2, [r5, #0x58]
	ldr ip, [r0]
	ldr r3, [r5, #0x5c]
	ldr ip, [ip, #0x10]
	blx ip
	cmp r0, #0
	bne _020290E4
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #4
	strb r0, [r5, #0x64]
	b _020292B8
_020290E4:
	mov r0, #4
	str r0, [r5, #0x54]
	mov r0, r4
	strb r0, [r5, #0x64]
_020290F4:
	ldr r0, [r5]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _020292B8
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02029134
	mov r0, #7
	str r0, [r5, #0x54]
	mov r0, #0
	strb r0, [r5, #0x64]
	b _020292B8
_02029134:
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #5
	strb r0, [r5, #0x64]
	b _020292B8
_02029148:
	ldrh r1, [r5, #0x4c]
	bl sub_02028170
	ldrh r1, [r5, #0x4c]
	add r1, r5, r1, lsl #2
	str r0, [r1, #0x40]
	ldr r1, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	mov r0, r5
	bl sub_02028DD4
	ldrh r3, [r5, #0x4c]
	add r1, r5, #0x38
	mov r2, #0x18
	add r3, r5, r3, lsl #1
	strh r0, [r3, #0x48]
	mov r0, r5
	bl sub_02028DD4
	strh r0, [r5, #0x50]
	mov r0, #0xa
	str r0, [r5, #0x54]
	mov r0, r4
	strb r0, [r5, #0x64]
	mov r4, #2
	b _020292B8
_020291A4:
	str r4, [sp]
	ldr r0, [r5]
	ldr r1, [r5, #0x60]
	ldr ip, [r0]
	add r2, r5, #0x38
	ldr ip, [ip, #0x10]
	mov r3, #0x1c
	blx ip
	cmp r0, #0
	bne _020291E0
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #6
	strb r0, [r5, #0x64]
	b _020292B8
_020291E0:
	mov r0, #9
	str r0, [r5, #0x54]
	mov r0, r4
	strb r0, [r5, #0x64]
_020291F0:
	ldr r0, [r5]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _020292B8
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02029230
	mov r0, #0xb
	str r0, [r5, #0x54]
	mov r0, #0
	strb r0, [r5, #0x64]
	b _020292B8
_02029230:
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #7
	strb r0, [r5, #0x64]
	b _020292B8
_02029244:
	mov r4, #2
	b _020292B8
_0202924C:
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	bl sub_0200FA0C
	mov r0, #0xc
	str r0, [r5, #0x54]
	mov r0, r4
	strb r0, [r5, #0x64]
	mov r4, #1
	b _020292B8
_0202927C:
	mov r4, #1
	b _020292B8
_02029284:
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	bl sub_0200FA0C
	ldrb r0, [r5, #0x64]
	orr r0, r0, #0x80
	and r4, r0, #0xff
	b _020292B8
_020292AC:
	mov r0, #0
	mov r4, #0x80
	bl sub_0200FA0C
_020292B8:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_020292C4: .word MAIN_BSS_0210CA38
_020292C8: .word PTR_LAB_0208c1c0

	arm_func_start sub_020292CC
sub_020292CC: ; 0x020292CC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020281B0
	ldr r0, [r5, #0x54]
	cmp r0, #0xd
	bgt _02029308
	cmp r0, #0xb
	blt _020292FC
	cmpne r0, #0xd
	beq _02029334
	b _0202936C
	arm_func_end sub_020292CC
_020292FC:
	cmp r0, #0
	beq _02029334
	b _0202936C
_02029308:
	cmp r0, #0x14
	bgt _02029318
	beq _02029334
	b _0202936C
_02029318:
	cmp r0, #0x19
	bgt _0202936C
	cmp r0, #0x15
	blt _0202936C
	cmpne r0, #0x18
	cmpne r0, #0x19
	bne _0202936C
_02029334:
	mov r1, #1
	strb r1, [r5, #0x65]
	mov r0, #0
	strb r0, [r5, #0x64]
	str r1, [r5, #0x54]
	strb r0, [r5, #0x64]
	bl sub_0200FA2C
	cmp r4, #0
	bne _02029364
	ldr r0, _02029374 ; =MAIN_BSS_020B26A0
	mov r1, #1
	bl sub_02016E7C
_02029364:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_0202936C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02029374: .word MAIN_BSS_020B26A0

	arm_func_start sub_02029378
sub_02029378: ; 0x02029378
	ldr r1, [r0, #0x54]
	cmp r1, #0xa
	movne r0, #0
	bxne lr
	mov r1, #8
	str r1, [r0, #0x54]
	mov r1, #0
	strb r1, [r0, #0x64]
	mov r0, #1
	bx lr
	arm_func_end sub_02029378

	arm_func_start sub_020293A0
sub_020293A0: ; 0x020293A0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_02029484
	ldr r4, [r5]
	cmp r4, #0
	beq _020293D4
	beq _020293CC
	mov r0, r4
	bl sub_02007548
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_020293A0
_020293CC:
	mov r0, #0
	str r0, [r5]
_020293D4:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020293F8
	beq _020293F0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020293F0:
	mov r0, #0
	str r0, [r5, #4]
_020293F8:
	ldr r4, [r5, #8]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _02029418
	mov r0, r4
	bl sub_020087C8
	mov r0, r4
	bl _ZdlPv
_02029418:
	mov r0, #0
	str r0, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02029424
sub_02029424: ; 0x02029424
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xc]
	mov r4, r1
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r5]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	str r0, [r5, #0xc]
	cmp r4, #0
	ldr r1, [r5, #0xc]
	ldr r0, [r5]
	beq _02029474
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02029424
_02029474:
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_02007714
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02029484
sub_02029484: ; 0x02029484
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl NNS_GfdFreeLnkTexVram
	mov r0, #0
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02029484

	arm_func_start sub_020294A8
sub_020294A8: ; 0x020294A8
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_020076B0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020294A8

	arm_func_start sub_020294C0
sub_020294C0: ; 0x020294C0
	stmdb sp!, {r4, lr}
	ldr r1, _020294E4 ; =ptr_FUN_020294c0_0208c4a4
	mov r4, r0
	str r1, [r4]
	bl sub_02029540
	add r0, r4, #4
	bl sub_02007B28
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_020294E4: .word ptr_FUN_020294c0_0208c4a4
	arm_func_end sub_020294C0

	arm_func_start sub_020294E8
sub_020294E8: ; 0x020294E8
	stmdb sp!, {r4, lr}
	ldr r1, _02029514 ; =ptr_FUN_020294c0_0208c4a4
	mov r4, r0
	str r1, [r4]
	bl sub_02029540
	add r0, r4, #4
	bl sub_02007B28
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02029514: .word ptr_FUN_020294c0_0208c4a4
	arm_func_end sub_020294E8

	arm_func_start sub_02029518
sub_02029518: ; 0x02029518
	stmdb sp!, {r4, lr}
	ldr r1, _0202953C ; =ptr_FUN_020294c0_0208c4a4
	mov r4, r0
	str r1, [r4]
	bl sub_02029540
	add r0, r4, #4
	bl sub_02007B28
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202953C: .word ptr_FUN_020294c0_0208c4a4
	arm_func_end sub_02029518

	arm_func_start sub_02029540
sub_02029540: ; 0x02029540
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0x2c]
	cmp r4, #0
	beq _02029594
	ldr r0, [r6, #0x30]
	cmp r0, #0
	sub r5, r0, #1
	beq _0202957C
	arm_func_end sub_02029540
_02029564:
	mov r0, r4
	bl sub_020293A0
	cmp r5, #0
	add r4, r4, #0x10
	sub r5, r5, #1
	bne _02029564
_0202957C:
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	beq _02029594
	bl _ZdaPv
	mov r0, #0
	str r0, [r6, #0x2c]
_02029594:
	add r0, r6, #4
	bl sub_02007BC4
	mov r0, r6
	bl sub_02029648
	mov r0, #0
	str r0, [r6, #0x30]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_020295B0
sub_020295B0: ; 0x020295B0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #0x28]
	mov r4, r1
	cmp r0, #0
	bne _0202960C
	ldr r0, [r5, #8]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	str r0, [r5, #0x28]
	cmp r4, #0
	ldr r1, [r5, #0x28]
	add r0, r5, #4
	beq _02029600
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	b _0202960C
	arm_func_end sub_020295B0
_02029600:
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_02007C34
_0202960C:
	ldr r0, [r5, #0x30]
	mov r6, #0
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, r6
_02029620:
	ldr r0, [r5, #0x2c]
	mov r1, r4
	add r0, r0, r7
	bl sub_02029424
	ldr r0, [r5, #0x30]
	add r6, r6, #1
	cmp r6, r0
	add r7, r7, #0x10
	blo _02029620
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02029648
sub_02029648: ; 0x02029648
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _02029690
	ldr r0, [r4, #0x30]
	mov r5, #0
	cmp r0, #0
	bls _02029690
	mov r6, r5
	arm_func_end sub_02029648
_02029670:
	ldr r0, [r4, #0x2c]
	add r0, r0, r6
	bl sub_02029484
	ldr r0, [r4, #0x30]
	add r5, r5, #1
	cmp r5, r0
	add r6, r6, #0x10
	blo _02029670
_02029690:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl NNS_GfdFreeLnkPlttVram
	mov r0, #0
	str r0, [r4, #0x28]
	strb r0, [r4, #0x24]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_020296B0
sub_020296B0: ; 0x020296B0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #4
	bl sub_02007BC4
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x30]
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
	mov r5, r4
	arm_func_end sub_020296B0
_020296E0:
	ldr r0, [r6, #0x2c]
	add r0, r0, r5
	bl sub_020294A8
	ldr r0, [r6, #0x30]
	add r4, r4, #1
	cmp r4, r0
	add r5, r5, #0x10
	blo _020296E0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02029704
sub_02029704: ; 0x02029704
	ldrb r1, [r0, #0x24]
	cmp r1, #0
	beq _02029764
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq _0202975C
	cmp r1, #0
	mov r2, #1
	mov r3, #0
	bls _02029768
	ldr ip, [r0, #0x2c]
	arm_func_end sub_02029704
_02029730:
	ldr r1, [ip, r3, lsl #4]
	cmp r1, #0
	ldrneb r1, [r1, #0x30]
	cmpne r1, #0
	moveq r2, #0
	beq _02029768
	ldr r1, [r0, #0x30]
	add r3, r3, #1
	cmp r3, r1
	blo _02029730
	b _02029768
_0202975C:
	mov r2, #0
	b _02029768
_02029764:
	mov r2, #0
_02029768:
	mov r0, r2
	bx lr

	arm_func_start sub_02029770
sub_02029770: ; 0x02029770
	ldr r0, [r0, #0x30]
	bx lr
	arm_func_end sub_02029770

	arm_func_start sub_02029778
sub_02029778: ; 0x02029778
	bx lr
	arm_func_end sub_02029778

	arm_func_start sub_0202977C
sub_0202977C: ; 0x0202977C
	add r0, r0, #4
	bx lr
	arm_func_end sub_0202977C

	arm_func_start sub_02029784
sub_02029784: ; 0x02029784
	cmp r1, #0
	blt _020297A8
	ldr r2, [r0, #0x30]
	cmp r1, r2
	bhs _020297A8
	ldr r0, [r0, #0x2c]
	add r0, r0, r1, lsl #4
	ldr r0, [r0, #8]
	bx lr
	arm_func_end sub_02029784
_020297A8:
	mov r0, #0
	bx lr

	arm_func_start sub_020297B0
sub_020297B0: ; 0x020297B0
	cmp r1, #0
	blt _020297D4
	ldr r2, [r0, #0x30]
	cmp r1, r2
	bhs _020297D4
	ldr r0, [r0, #0x2c]
	add r0, r0, r1, lsl #4
	ldr r0, [r0, #4]
	bx lr
	arm_func_end sub_020297B0
_020297D4:
	mov r0, #0
	bx lr

	arm_func_start sub_020297DC
sub_020297DC: ; 0x020297DC
	cmp r1, #0
	blt _020297F8
	ldr r2, [r0, #0x30]
	cmp r1, r2
	ldrlo r0, [r0, #0x2c]
	ldrlo r0, [r0, r1, lsl #4]
	bxlo lr
	arm_func_end sub_020297DC
_020297F8:
	mov r0, #0
	bx lr

	arm_func_start sub_02029800
sub_02029800: ; 0x02029800
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0x20]
	bx lr
	arm_func_end sub_02029800

	arm_func_start sub_02029818
sub_02029818: ; 0x02029818
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0202A1B4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02029818

	arm_func_start sub_0202982C
sub_0202982C: ; 0x0202982C
	stmdb sp!, {r3, lr}
	str r1, [r0, #0x24]
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov ip, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, ip, #0x10
	orr r1, r2, r1, lsl #8
	str r1, [r3]
	ldr r1, [r0, #0x24]
	cmp r1, #0x64
	bge _0202986C
	bl sub_02029A34
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202982C
_0202986C:
	cmp r1, #0xc8
	bge _0202987C
	bl sub_02029B70
	ldmia sp!, {r3, pc}
_0202987C:
	bl sub_02029884
	ldmia sp!, {r3, pc}

	arm_func_start sub_02029884
sub_02029884: ; 0x02029884
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r4, #0
	bl sub_0201001C
	mov r5, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _020298C8
	mov r1, #0x40
	str r1, [sp]
	add r1, r5, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r5, #0x224
	mov r3, r4
	bl sub_0200ECD0
	arm_func_end sub_02029884
_020298C8:
	str r0, [r6]
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, _02029A24 ; =s_data_menu_0208c4c8
	ldr r2, _02029A28 ; =s_title100_01_0208c4d4
	mov r3, #0
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	add r4, r4, r0
	ldr r0, [r6]
	sub r2, r1, #0x40
	mov r3, #0x40
	bl sub_0200F4FC
	mov r1, #0
	mov r2, #1
	str r0, [r6, #0xc]
	bl sub_0200EB34
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02029940
	mov r1, #0x40
	str r1, [sp]
	add r1, r5, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r5, #0x2a4
	mov r3, #0
	bl sub_0200ECD0
_02029940:
	str r0, [r6, #4]
	mov r0, #5
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r6, #4]
	ldr r1, _02029A24 ; =s_data_menu_0208c4c8
	ldr r2, _02029A2C ; =s_title100_00_0208c4e0
	mov r3, r3, asr #5
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	add r4, r4, r0
	ldr r0, [r6, #4]
	mov r2, #0x80
	mov r3, #0x30
	bl sub_0200F4FC
	str r0, [r6, #0x10]
	ldr r1, [r6, #4]
	mov r0, #0x44
	ldr r1, [r1, #0x24]
	str r1, [r6, #0x28]
	bl _Znwm
	cmp r0, #0
	beq _020299C0
	mov r1, #0x40
	str r1, [sp]
	add r1, r5, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r5, #0x324
	mov r3, #0
	bl sub_0200ECD0
_020299C0:
	str r0, [r6, #8]
	mov r0, #0xd
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r6, #8]
	ldr r1, _02029A24 ; =s_data_menu_0208c4c8
	ldr r2, _02029A30 ; =s_title100_02_0208c4ec
	mov r3, r3, asr #5
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	ldr r0, [r6, #8]
	mov r2, #0x180
	mov r3, #0x30
	bl sub_0200F4FC
	str r0, [r6, #0x14]
	mov r0, #1
	str r0, [r6, #0x20]
	mov r0, #0x46
	str r0, [r6, #0x18]
	mov r0, #0
	str r0, [r6, #0x1c]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02029A24: .word s_data_menu_0208c4c8
_02029A28: .word s_title100_01_0208c4d4
_02029A2C: .word s_title100_00_0208c4e0
_02029A30: .word s_title100_02_0208c4ec

	arm_func_start sub_02029A34
sub_02029A34: ; 0x02029A34
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r6, r0
	mov r4, #0
	bl sub_0201001C
	mov r5, r0
	ldr r2, [r6, #0x24]
	ldr r1, _02029B64 ; =s_mit_03d_0208c4f8
	add r0, sp, #4
	bl OS_SPrintf
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02029A88
	mov r1, #0x40
	str r1, [sp]
	add r1, r5, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r5, #0x224
	mov r3, r4
	bl sub_0200ECD0
	arm_func_end sub_02029A34
_02029A88:
	str r0, [r6]
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, _02029B68 ; =s_data_menu_0208c4c8
	add r2, sp, #4
	mov r3, #0
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	add r4, r4, r0
	ldr r0, [r6]
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [r6, #0xc]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02029AF4
	mov r1, #0x40
	str r1, [sp]
	add r1, r5, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r5, #0x244
	mov r3, #0
	bl sub_0200ECD0
_02029AF4:
	str r0, [r6, #4]
	mov r0, #5
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r6, #4]
	ldr r1, _02029B68 ; =s_data_menu_0208c4c8
	ldr r2, _02029B6C ; =s_mit104_0208c500
	mov r3, r3, asr #5
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	ldr r0, [r6, #4]
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	mov r1, #1
	ldr r2, [r0, #0x24]
	mov r0, #0
	str r2, [r6, #0x28]
	str r1, [r6, #0x20]
	str r0, [r6, #0x18]
	mov r0, #0xf0
	str r0, [r6, #0x1c]
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02029B64: .word s_mit_03d_0208c4f8
_02029B68: .word s_data_menu_0208c4c8
_02029B6C: .word s_mit104_0208c500

	arm_func_start sub_02029B70
sub_02029B70: ; 0x02029B70
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r4, #0
	bl sub_0201001C
	mov r5, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02029BB4
	mov r1, #0x40
	str r1, [sp]
	add r1, r5, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r5, #0x224
	mov r3, r4
	bl sub_0200ECD0
	arm_func_end sub_02029B70
_02029BB4:
	str r0, [r6]
	ldr r0, [r6, #0x24]
	cmp r0, #0x64
	beq _02029BD8
	cmp r0, #0x65
	beq _02029C04
	cmp r0, #0x66
	beq _02029C30
	b _02029C58
_02029BD8:
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, _02029D34 ; =s_data_menu_0208c4c8
	ldr r2, _02029D38 ; =s_title101_00_0208c508
	mov r3, #0
	bl sub_0200EE14
	mov r1, #0xf0
	str r1, [r6, #0x1c]
	add r4, r4, r0
	b _02029C58
_02029C04:
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, _02029D34 ; =s_data_menu_0208c4c8
	ldr r2, _02029D3C ; =s_title101_02_0208c514
	mov r3, #0
	bl sub_0200EE14
	mov r1, #0xf0
	str r1, [r6, #0x1c]
	add r4, r4, r0
	b _02029C58
_02029C30:
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, _02029D34 ; =s_data_menu_0208c4c8
	ldr r2, _02029D40 ; =s_title101_03_0208c520
	mov r3, #0
	bl sub_0200EE14
	mov r1, #0x1a4
	str r1, [r6, #0x1c]
	add r4, r4, r0
_02029C58:
	mov r1, #0
	str r1, [sp]
	mov r2, #0x80
	ldr r0, [r6]
	sub r3, r2, #0xb0
	bl sub_0200F4FC
	str r0, [r6, #0xc]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02029CA0
	mov r1, #0x40
	str r1, [sp]
	add r1, r5, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r5, #0x244
	mov r3, #0
	bl sub_0200ECD0
_02029CA0:
	str r0, [r6, #4]
	ldr r0, [r6, #0x24]
	cmp r0, #0x66
	mov r0, #0xc
	str r0, [sp]
	bne _02029CD8
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r6, #4]
	ldr r1, _02029D34 ; =s_data_menu_0208c4c8
	ldr r2, _02029D44 ; =s_title101_04_0208c52c
	mov r3, r3, asr #5
	bl sub_0200EE14
	b _02029CF4
_02029CD8:
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r6, #4]
	ldr r1, _02029D34 ; =s_data_menu_0208c4c8
	ldr r2, _02029D48 ; =s_title101_01_0208c538
	mov r3, r3, asr #5
	bl sub_0200EE14
_02029CF4:
	mov r1, #0
	str r1, [sp]
	mov r2, #0x80
	ldr r0, [r6, #4]
	sub r3, r2, #0xb0
	bl sub_0200F4FC
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	mov r1, #1
	ldr r2, [r0, #0x24]
	mov r0, #0
	str r2, [r6, #0x28]
	str r1, [r6, #0x20]
	str r0, [r6, #0x18]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02029D34: .word s_data_menu_0208c4c8
_02029D38: .word s_title101_00_0208c508
_02029D3C: .word s_title101_02_0208c514
_02029D40: .word s_title101_03_0208c520
_02029D44: .word s_title101_04_0208c52c
_02029D48: .word s_title101_01_0208c538

	arm_func_start sub_02029D4C
sub_02029D4C: ; 0x02029D4C
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x24]
	cmp r1, #0x64
	bge _02029D64
	bl sub_02029F34
	ldmia sp!, {r3, pc}
	arm_func_end sub_02029D4C
_02029D64:
	cmp r1, #0xc8
	bge _02029D74
	bl sub_02029F74
	ldmia sp!, {r3, pc}
_02029D74:
	bl sub_02029D7C
	ldmia sp!, {r3, pc}

	arm_func_start sub_02029D7C
sub_02029D7C: ; 0x02029D7C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl sub_0201001C
	ldr r1, [r6, #0x20]
	mov r4, r0
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0xc]
	cmp r1, #4
	ldrsh r5, [r0, #0xc]
	addls pc, pc, r1, lsl #2
	b _02029E2C
_02029DAC: ; jump table
	b _02029E2C ; case 0
	b _02029DC0 ; case 1
	b _02029DF0 ; case 2
	b _02029E08 ; case 3
	b _02029E1C ; case 4
	arm_func_end sub_02029D7C
_02029DC0:
	add r5, r5, #0x20
	cmp r5, #0x140
	bne _02029E2C
	mov r0, #2
	str r0, [r6, #0x20]
	mov r0, #0xa
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0xc]
	mov r1, r5
	mov r2, #0x10
	bl sub_0200EB28
	b _02029E2C
_02029DF0:
	ldr r0, [r6, #0x1c]
	subs r0, r0, #1
	str r0, [r6, #0x1c]
	moveq r0, #3
	streq r0, [r6, #0x20]
	b _02029E2C
_02029E08:
	sub r5, r5, #0x10
	cmp r5, #0xd0
	moveq r0, #4
	streq r0, [r6, #0x20]
	b _02029E2C
_02029E1C:
	sub r5, r5, #0x10
	cmp r5, #0x10
	moveq r0, #5
	streq r0, [r6, #0x20]
_02029E2C:
	ldr r0, [r6, #0xc]
	mov r1, r5
	ldrsh r2, [r0, #0xe]
	bl sub_0200EB28
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x20]
	ldrsh r5, [r1, #0xc]
	cmp r0, #4
	cmpne r0, #5
	beq _02029E60
	cmp r0, #6
	beq _02029E80
	b _02029EBC
_02029E60:
	cmp r5, #0x80
	subgt r5, r5, #0x10
	bgt _02029EBC
	mov r0, #6
	str r0, [r6, #0x20]
	mov r0, #0xf
	str r0, [r6, #0x1c]
	b _02029EBC
_02029E80:
	ldr r0, [r6, #0x1c]
	subs r0, r0, #1
	str r0, [r6, #0x1c]
	bne _02029EBC
	mov r0, #7
	str r0, [r6, #0x20]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x2f
	bl sub_0203499C
	add r0, r4, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x15
	mov r2, #0
	bl sub_02034A40
_02029EBC:
	ldr r0, [r6, #0x14]
	mov r1, r5
	ldrsh r2, [r0, #0xe]
	bl sub_0200EB28
	ldr r0, [r6, #0x20]
	cmp r0, #7
	bne _02029F00
	ldr r2, [r6, #4]
	ldr r0, [r6, #0x28]
	ldr r1, [r2, #8]
	mov r0, r0, lsl #1
	ldrh r1, [r1, r0]
	ldr r0, [r2, #0x38]
	bl sub_02008860
	cmp r0, #0
	moveq r0, #8
	streq r0, [r6, #0x20]
_02029F00:
	ldr r0, [r6, #0x18]
	add r0, r0, #1
	str r0, [r6, #0x18]
	ldr r0, [r6]
	bl sub_0200F64C
	ldr r0, [r6, #0x20]
	cmp r0, #7
	blt _02029F28
	ldr r0, [r6, #4]
	bl sub_0200F64C
_02029F28:
	ldr r0, [r6, #8]
	bl sub_0200F64C
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02029F34
sub_02029F34: ; 0x02029F34
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r4, #0x1c]
	moveq r0, #2
	streq r0, [r4, #0x20]
	ldr r0, [r4]
	bl sub_0200F64C
	ldr r0, [r4, #4]
	bl sub_0200F64C
	ldmia sp!, {r4, pc}
	arm_func_end sub_02029F34

	arm_func_start sub_02029F74
sub_02029F74: ; 0x02029F74
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x20]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xc]
	cmp r1, #8
	ldrsh r4, [r0, #0xe]
	addls pc, pc, r1, lsl #2
	b _0202A04C
_02029F9C: ; jump table
	b _0202A04C ; case 0
	b _02029FC0 ; case 1
	b _02029FD4 ; case 2
	b _02029FE8 ; case 3
	b _02029FFC ; case 4
	b _0202A010 ; case 5
	b _0202A024 ; case 6
	b _0202A038 ; case 7
	b _0202A04C ; case 8
	arm_func_end sub_02029F74
_02029FC0:
	add r4, r4, #8
	cmp r4, #0x30
	moveq r0, #2
	streq r0, [r5, #0x20]
	b _0202A04C
_02029FD4:
	add r4, r4, #4
	cmp r4, #0x38
	moveq r0, #3
	streq r0, [r5, #0x20]
	b _0202A04C
_02029FE8:
	sub r4, r4, #2
	cmp r4, #0x30
	moveq r0, #4
	streq r0, [r5, #0x20]
	b _0202A04C
_02029FFC:
	ldr r0, [r5, #0x1c]
	cmp r0, #0x10
	moveq r0, #5
	streq r0, [r5, #0x20]
	b _0202A04C
_0202A010:
	add r4, r4, #1
	cmp r4, #0x38
	moveq r0, #6
	streq r0, [r5, #0x20]
	b _0202A04C
_0202A024:
	sub r4, r4, #4
	cmp r4, #0x30
	moveq r0, #7
	streq r0, [r5, #0x20]
	b _0202A04C
_0202A038:
	sub r4, r4, #8
	mvn r0, #0x2f
	cmp r4, r0
	moveq r0, #8
	streq r0, [r5, #0x20]
_0202A04C:
	ldr r0, [r5, #0xc]
	mov r2, r4
	ldrsh r1, [r0, #0xc]
	bl sub_0200EB28
	ldr r0, [r5, #0x10]
	mov r2, r4
	ldrsh r1, [r0, #0xc]
	bl sub_0200EB28
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r5, #0x1c]
	moveq r0, #9
	streq r0, [r5, #0x20]
	ldr r0, [r5, #0x1c]
	cmp r0, #0xbe
	bge _0202A098
	ldr r0, [r5]
	bl sub_0200F64C
_0202A098:
	ldr r0, [r5, #4]
	bl sub_0200F64C
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202A0A4
sub_0202A0A4: ; 0x0202A0A4
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x24]
	cmp r1, #0x64
	bge _0202A0BC
	bl sub_0202A150
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202A0A4
_0202A0BC:
	cmp r1, #0xc8
	bge _0202A0CC
	bl sub_0202A184
	ldmia sp!, {r3, pc}
_0202A0CC:
	bl sub_0202A0D4
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202A0D4
sub_0202A0D4: ; 0x0202A0D4
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #3
	movlt r6, #2
	movge r6, #1
	bl sub_0201001C
	mov r5, r0
	mov r1, r6
	mov r0, #0x1000
	bl _s32_div_f
	mov r0, r0, lsl #0xc
	mov r1, r0, asr #0x10
	strh r1, [r5, #0x2a]
	mov r0, #0
	strh r0, [r5, #0x32]
	strh r0, [r5, #0x3a]
	strh r1, [r5, #0x42]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r4]
	bl sub_0200F71C
	ldr r0, [r4, #0x20]
	cmp r0, #7
	blt _0202A144
	ldr r0, [r4, #4]
	bl sub_0200F71C
	arm_func_end sub_0202A0D4
_0202A144:
	ldr r0, [r4, #8]
	bl sub_0200F71C
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0202A150
sub_0202A150: ; 0x0202A150
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x1c]
	cmp r0, #0x8c
	bge _0202A178
	ldr r0, [r4]
	bl sub_0200F71C
	arm_func_end sub_0202A150
_0202A178:
	ldr r0, [r4, #4]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202A184
sub_0202A184: ; 0x0202A184
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4]
	bl sub_0200F71C
	ldr r0, [r4, #4]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202A184

	arm_func_start sub_0202A1AC
sub_0202A1AC: ; 0x0202A1AC
	ldr r0, [r0, #0x20]
	bx lr
	arm_func_end sub_0202A1AC

	arm_func_start sub_0202A1B4
sub_0202A1B4: ; 0x0202A1B4
	stmdb sp!, {r3, r4, r5, lr}
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov r4, r2, lsr #8
	bic r2, r1, #0x1f00
	eor r1, r4, #0x10
	orr r1, r2, r1, lsl #8
	mov r4, r0
	str r1, [r3]
	ldr r0, [r4]
	cmp r0, #0
	beq _0202A1F8
	bl sub_0200F6C4
	ldr r0, [r4]
	bl sub_0200F4A8
	arm_func_end sub_0202A1B4
_0202A1F8:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0202A210
	bl sub_0200F6C4
	ldr r0, [r4, #4]
	bl sub_0200F4A8
_0202A210:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0202A228
	bl sub_0200F6C4
	ldr r0, [r4, #8]
	bl sub_0200F4A8
_0202A228:
	ldr r5, [r4]
	cmp r5, #0
	beq _0202A250
	beq _0202A248
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0202A248:
	mov r0, #0
	str r0, [r4]
_0202A250:
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _0202A278
	beq _0202A270
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0202A270:
	mov r0, #0
	str r0, [r4, #4]
_0202A278:
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _0202A2A0
	beq _0202A298
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0202A298:
	mov r0, #0
	str r0, [r4, #8]
_0202A2A0:
	mov r0, #0
	str r0, [r4, #0x20]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202A2AC
sub_0202A2AC: ; 0x0202A2AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201001C
	str r0, [r4]
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	str r1, [r4, #0x14]
	str r1, [r4, #0x18]
	str r1, [r4, #0x1c]
	str r1, [r4, #0x20]
	mov r0, r4
	str r1, [r4, #0x24]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202A2AC

	arm_func_start sub_0202A2EC
sub_0202A2EC: ; 0x0202A2EC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0
	str r0, [r5, #4]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0202A324
	beq _0202A31C
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_0202A2EC
_0202A31C:
	mov r0, #0
	str r0, [r5, #8]
_0202A324:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202A32C
sub_0202A32C: ; 0x0202A32C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	str r6, [r7, #0xc]
	mov r4, r3
	str r5, [r7, #0x14]
	mov r0, #0x44
	str r4, [r7, #0x1c]
	bl _Znwm
	cmp r0, #0
	beq _0202A384
	ldr r2, [r7]
	mov r1, #0x40
	str r1, [sp]
	add r1, r2, #0x1000
	add ip, r2, #0x24
	and r3, r5, #0xff
	ldr r2, [r1, #0x4a8]
	add r1, ip, r3, lsl #3
	mov r3, #0
	bl sub_0200ECD0
	arm_func_end sub_0202A32C
_0202A384:
	str r0, [r7, #8]
	str r4, [sp]
	ldr r0, [r7, #8]
	ldr r1, _0202A3FC ; =s_data_menu_0208c544
	ldr r2, _0202A400 ; =s_ma005_00_0208c550
	mov r3, r6
	bl sub_0200EE14
	mov r1, r0, asr #4
	add r0, r0, r1, lsr #27
	mov r0, r0, asr #5
	str r0, [r7, #0x10]
	mov r1, #0
	str r1, [sp]
	ldr r0, [r7, #8]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_0200F4FC
	mov r1, #0x20
	str r0, [r7, #4]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r7, #4]
	mov r2, r1
	bl sub_0200EBF4
	ldr r1, [r7, #8]
	mov r0, #1
	ldr r1, [r1, #0x30]
	str r1, [r7, #0x18]
	str r0, [r7, #0x20]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0202A3FC: .word s_data_menu_0208c544
_0202A400: .word s_ma005_00_0208c550

	arm_func_start sub_0202A404
sub_0202A404: ; 0x0202A404
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #4]
	cmp r0, #0
	ldrne r1, [r4, #0x20]
	cmpne r1, #0
	beq _0202A470
	ldr r1, [r4]
	ldr r1, [r1, #0x14]
	ldrh r1, [r1, #2]
	and r1, r1, #2
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	bne _0202A450
	bl sub_0200EB84
	cmp r0, #0
	beq _0202A470
	arm_func_end sub_0202A404
_0202A450:
	ldr r0, [r4]
	ldr r1, _0202A478 ; =0x00000103
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, #1
	str r0, [r4, #0x24]
	ldmia sp!, {r4, pc}
_0202A470:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202A478: .word 0x00000103

	arm_func_start sub_0202A47C
sub_0202A47C: ; 0x0202A47C
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, r1
	bl sub_0200F71C
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202A47C

	arm_func_start sub_0202A4A0
sub_0202A4A0: ; 0x0202A4A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, [r4, #0x64]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, [r0]
	mov r1, r4
	ldr r3, [r3]
	mov r2, #0x60
	blx r3
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202A4A0

	arm_func_start sub_0202A4D8
sub_0202A4D8: ; 0x0202A4D8
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	mov r2, #0x800
	bl MI_CpuFill8
	ldr r0, [r4, #0x804]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, [r0]
	mov r1, r4
	ldr r3, [r3]
	mov r2, #0x800
	blx r3
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202A4D8

	arm_func_start sub_0202A510
sub_0202A510: ; 0x0202A510
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x64]
	bl sub_0202A53C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202A510

	arm_func_start sub_0202A528
sub_0202A528: ; 0x0202A528
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0202A5FC
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202A528

	arm_func_start sub_0202A53C
sub_0202A53C: ; 0x0202A53C
	stmdb sp!, {r4, lr}
	mov r1, #0
	mov r4, r0
	strh r1, [r4]
	str r1, [r4, #0x10]
	str r1, [r4, #0x14]
	str r1, [r4, #0x18]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	str r1, [r4, #0x20]
	mov r2, r1
	arm_func_end sub_0202A53C
_0202A568:
	add r0, r4, r1, lsl #2
	add r1, r1, #1
	str r2, [r0, #0x28]
	cmp r1, #5
	blt _0202A568
	mov r1, #0x25
	mov r0, #0xc
	str r2, [r4, #4]
	str r2, [r4, #0x5c]
	smulbb r0, r1, r0
	str r1, [r4, #0x24]
	bl _Znam
	str r0, [r4, #0x1c]
	mov r0, #1
	str r0, [r4, #0x60]
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202A5A8
sub_0202A5A8: ; 0x0202A5A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0202A5C0
	bl sub_0200F64C
	arm_func_end sub_0202A5A8
_0202A5C0:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0202A5D0
	bl sub_0200F64C
_0202A5D0:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0202A5E0
	bl sub_0200F64C
_0202A5E0:
	mov r0, r4
	bl sub_0202AE7C
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202A5EC
sub_0202A5EC: ; 0x0202A5EC
	ldr ip, _0202A5F4 ; =sub_0202A6E8
	bx ip
	.align 2, 0
_0202A5F4: .word sub_0202A6E8
	arm_func_end sub_0202A5EC

	arm_func_start sub_0202A5F8
sub_0202A5F8: ; 0x0202A5F8
	bx lr
	arm_func_end sub_0202A5F8

	arm_func_start sub_0202A5FC
sub_0202A5FC: ; 0x0202A5FC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _0202A62C
	beq _0202A624
	mov r0, r5
	bl sub_02021428
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_0202A5FC
_0202A624:
	mov r0, #0
	str r0, [r4, #0xc]
_0202A62C:
	ldr r5, [r4, #0x10]
	cmp r5, #0
	beq _0202A654
	beq _0202A64C
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0202A64C:
	mov r0, #0
	str r0, [r4, #0x10]
_0202A654:
	ldr r5, [r4, #0x14]
	cmp r5, #0
	beq _0202A67C
	beq _0202A674
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0202A674:
	mov r0, #0
	str r0, [r4, #0x14]
_0202A67C:
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _0202A6A4
	beq _0202A69C
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0202A69C:
	mov r0, #0
	str r0, [r4, #0x18]
_0202A6A4:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0202A6BC
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x1c]
_0202A6BC:
	ldr r5, [r4, #0x20]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0202A6DC
	mov r0, r5
	bl sub_0201FCB4
	mov r0, r5
	bl _ZdlPv
_0202A6DC:
	mov r0, #0
	str r0, [r4, #0x20]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202A6E8
sub_0202A6E8: ; 0x0202A6E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0202A700
	bl sub_0200F71C
	arm_func_end sub_0202A6E8
_0202A700:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0202A710
	bl sub_0200F71C
_0202A710:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F71C
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202A724
sub_0202A724: ; 0x0202A724
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r6, [r5, #0x20]
	mov r7, r1
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	cmp r6, #0
	ldr r4, [sp, #0x38]
	beq _0202A76C
	cmp r6, #0
	beq _0202A764
	mov r0, r6
	bl sub_0201FCB4
	mov r0, r6
	bl _ZdlPv
	arm_func_end sub_0202A724
_0202A764:
	mov r0, #0
	str r0, [r5, #0x20]
_0202A76C:
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _0202A784
	ldr r1, [r5, #0x64]
	bl sub_0201FC9C
_0202A784:
	str r0, [r5, #0x20]
	mov r1, r7
	bl sub_02020328
	ldr r0, [r5, #0x20]
	ldr r1, _0202ACDC ; =s_menu_0208cc1c
	ldr r2, _0202ACE0 ; =s_map000_0208cc24
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5, #0x20]
	ldr r1, _0202ACE4 ; =s_map000_0208cc2c
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5, #0x20]
	ldr r1, _0202ACE4 ; =s_map000_0208cc2c
	mov r3, r2
	bl sub_0202055C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r5, #0x20]
	ldr r1, _0202ACE4 ; =s_map000_0208cc2c
	mov r3, r2
	bl sub_020205DC
	ldr r0, [r5, #0x20]
	bl sub_020204A8
	ldr r0, [r5, #0x20]
	bl sub_0201FD24
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x3c]
	bl sub_0201FDE8
	ldr r0, [r5, #0x20]
	bl sub_0201FEBC
	cmp r7, #3
	addls pc, pc, r7, lsl #2
	b _0202A838
_0202A820: ; jump table
	b _0202A830 ; case 0
	b _0202A830 ; case 1
	b _0202A830 ; case 2
	b _0202A830 ; case 3
_0202A830:
	mov fp, #1
	b _0202A83C
_0202A838:
	mov fp, #0
_0202A83C:
	ldr r0, [r4]
	str r0, [r5, #0x50]
	ldr r0, [sp, #0x10]
	ldr r6, [r5, #0x10]
	ldr r8, [r0]
	ldr r0, [sp, #0xc]
	cmp r6, #0
	ldrb sb, [r0]
	beq _0202A880
	cmp r6, #0
	beq _0202A878
	mov r0, r6
	bl sub_0200ED2C
	mov r0, r6
	bl _ZdlPv
_0202A878:
	mov r0, #0
	str r0, [r5, #0x10]
_0202A880:
	cmp fp, #0
	mov r0, #0x44
	beq _0202A8C4
	bl _Znwm
	cmp r0, #0
	beq _0202A8BC
	ldr r2, [r5, #0x64]
	mov r1, #0x40
	str r1, [sp]
	add r1, r2, #0x1000
	add r3, r2, #0x24
	ldr r2, [r1, #0x4a8]
	add r1, r3, sb, lsl #3
	mov r3, #0
	bl sub_0200ECD0
_0202A8BC:
	str r0, [r5, #0x10]
	b _0202A8FC
_0202A8C4:
	bl _Znwm
	cmp r0, #0
	beq _0202A8F8
	ldr r6, [r5, #0x64]
	mov r2, #0x40
	add r1, r6, #0x24
	add r3, r1, #0x400
	str r2, [sp]
	add r1, r6, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, sb, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_0202A8F8:
	str r0, [r5, #0x10]
_0202A8FC:
	ldr r1, [r4]
	mov r0, r8, asr #4
	str r1, [sp]
	add r3, r8, r0, lsr #27
	ldr r0, [r5, #0x10]
	ldr r1, _0202ACE8 ; =s_data_menu_0208cc34
	ldr r2, _0202ACEC ; =s_map000_00_0208cc40
	mov r3, r3, asr #5
	bl sub_0200F168
	add r8, r8, r0
	ldr r0, [r5, #0x10]
	bl sub_0200F398
	ldr r0, [r5, #0x24]
	mov r7, #0
	cmp r0, #0
	ble _0202AA04
	mov sl, r7
	mov r6, #0x10
_0202A944:
	mov r0, #3
	str r0, [sp]
	ldr r0, [r5, #0x10]
	mov r1, r7
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	ldr r2, [r5, #0x1c]
	mov r1, r6
	str r0, [r2, sl]
	ldr r2, [r5, #0x10]
	ldr r0, [r5, #0x1c]
	ldr r2, [r2, #0x24]
	add r0, r0, sl
	str r2, [r0, #4]
	ldr r0, [r5, #0x1c]
	mov r2, r6
	ldr r0, [r0, sl]
	ldr r3, [r0, #4]
	ldr r3, [r3, #4]
	ldrh ip, [r3]
	and ip, ip, #0xff
	add ip, ip, #0x68
	mov ip, ip, lsl #0x10
	mov ip, ip, asr #0x10
	and ip, ip, #0xff
	sub ip, ip, #0x60
	mov ip, ip, lsl #0x10
	mov ip, ip, asr #0x10
	str ip, [sp]
	ldrh ip, [r3, #2]
	ldr r3, _0202ACF0 ; =0x000001FF
	and r3, ip, r3
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	add r3, r3, #0x88
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	and r3, r3, #0xff
	sub r3, r3, #0x80
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl sub_0200EBF4
	ldr r0, [r5, #0x24]
	add r7, r7, #1
	add sl, sl, #0xc
	cmp r7, r0
	blt _0202A944
_0202AA04:
	ldr r0, [r5, #0x10]
	ldr r6, [r5, #0x14]
	ldr r0, [r0, #0x30]
	cmp r6, #0
	add r0, sb, r0
	and sb, r0, #0xff
	beq _0202AA40
	cmp r6, #0
	beq _0202AA38
	mov r0, r6
	bl sub_0200ED2C
	mov r0, r6
	bl _ZdlPv
_0202AA38:
	mov r0, #0
	str r0, [r5, #0x14]
_0202AA40:
	cmp fp, #0
	mov r0, #0x44
	beq _0202AA84
	bl _Znwm
	cmp r0, #0
	beq _0202AA7C
	ldr r2, [r5, #0x64]
	mov r1, #0x40
	str r1, [sp]
	add r1, r2, #0x1000
	add r3, r2, #0x24
	ldr r2, [r1, #0x4a8]
	add r1, r3, sb, lsl #3
	mov r3, #0
	bl sub_0200ECD0
_0202AA7C:
	str r0, [r5, #0x14]
	b _0202AABC
_0202AA84:
	bl _Znwm
	cmp r0, #0
	beq _0202AAB8
	ldr r6, [r5, #0x64]
	mov r2, #0x40
	add r1, r6, #0x24
	add r3, r1, #0x400
	str r2, [sp]
	add r1, r6, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, sb, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_0202AAB8:
	str r0, [r5, #0x14]
_0202AABC:
	ldr r1, [r4]
	mov r0, r8, asr #4
	add r1, r1, #2
	str r1, [r4]
	str r1, [sp]
	add r3, r8, r0, lsr #27
	ldr r0, [r5, #0x14]
	ldr r1, _0202ACE8 ; =s_data_menu_0208cc34
	ldr r2, _0202ACF4 ; =s_map000_01_0208cc4c
	mov r3, r3, asr #5
	bl sub_0200F168
	add r8, r8, r0
	ldr r0, [r5, #0x14]
	bl sub_0200F398
	ldr r0, _0202ACF8 ; =MAIN_BSS_020B26A0
	mov r2, #0
	ldrb r0, [r0]
	mov r1, #0
	mov r3, r2
	cmp r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x14]
	movne r1, #1
	bl sub_0200F4FC
	mov r1, #0x18
	str r0, [r5, #0x2c]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x2c]
	mov r2, r1
	bl sub_0200EBF4
	ldr r0, [r5, #0x14]
	ldr r6, [r5, #0x18]
	ldr r0, [r0, #0x30]
	cmp r6, #0
	add r0, sb, r0
	and sb, r0, #0xff
	beq _0202AB78
	cmp r6, #0
	beq _0202AB70
	mov r0, r6
	bl sub_0200ED2C
	mov r0, r6
	bl _ZdlPv
_0202AB70:
	mov r0, #0
	str r0, [r5, #0x18]
_0202AB78:
	cmp fp, #0
	mov r0, #0x44
	beq _0202ABBC
	bl _Znwm
	cmp r0, #0
	beq _0202ABB4
	ldr r2, [r5, #0x64]
	mov r1, #0x40
	str r1, [sp]
	add r1, r2, #0x1000
	add r3, r2, #0x24
	ldr r2, [r1, #0x4a8]
	add r1, r3, sb, lsl #3
	mov r3, #0
	bl sub_0200ECD0
_0202ABB4:
	str r0, [r5, #0x18]
	b _0202ABF4
_0202ABBC:
	bl _Znwm
	cmp r0, #0
	beq _0202ABF0
	ldr r6, [r5, #0x64]
	mov r2, #0x40
	add r1, r6, #0x24
	add r3, r1, #0x400
	str r2, [sp]
	add r1, r6, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, sb, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_0202ABF0:
	str r0, [r5, #0x18]
_0202ABF4:
	ldr r1, [r4]
	mov r0, r8, asr #4
	add r1, r1, #1
	str r1, [r4]
	str r1, [sp]
	add r3, r8, r0, lsr #27
	ldr r0, [r5, #0x18]
	ldr r1, _0202ACE8 ; =s_data_menu_0208cc34
	ldr r2, _0202ACFC ; =s_map000_02_0208cc58
	mov r3, r3, asr #5
	bl sub_0200F168
	add r8, r8, r0
	ldr r0, [r5, #0x18]
	bl sub_0200F398
	mov r1, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x18]
	mov r2, r1
	mov r3, r1
	bl sub_0200F4FC
	mov r1, #0x20
	str r0, [r5, #0x38]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x38]
	mov r2, r1
	bl sub_0200EBF4
	mov r1, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x18]
	mov r2, r1
	mov r3, r1
	bl sub_0200F4FC
	mov r1, #0x18
	str r0, [r5, #0x34]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x34]
	mov r2, r1
	bl sub_0200EBF4
	ldr r1, [r5, #0x18]
	ldr r0, _0202AD00 ; =MAIN_BSS_0210CA6C
	ldr r1, [r1, #0x30]
	ldr r0, [r0]
	add r1, sb, r1
	str r0, [r5, #8]
	ldr r0, [sp, #0x10]
	str r8, [r0]
	ldr r0, [sp, #0xc]
	strb r1, [r0]
	mov r0, r5
	bl sub_0202B2CC
	mov r0, r5
	bl sub_0202AED4
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0202ACDC: .word s_menu_0208cc1c
_0202ACE0: .word s_map000_0208cc24
_0202ACE4: .word s_map000_0208cc2c
_0202ACE8: .word s_data_menu_0208cc34
_0202ACEC: .word s_map000_00_0208cc40
_0202ACF0: .word 0x000001FF
_0202ACF4: .word s_map000_01_0208cc4c
_0202ACF8: .word MAIN_BSS_020B26A0
_0202ACFC: .word s_map000_02_0208cc58
_0202AD00: .word MAIN_BSS_0210CA6C

	arm_func_start sub_0202AD04
sub_0202AD04: ; 0x0202AD04
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x20]
	mov r4, r1
	cmp r0, #0
	beq _0202AD34
	bl sub_0201FD24
	ldr r0, [r5, #0x20]
	mov r1, r4
	bl sub_0201FDE8
	ldr r0, [r5, #0x20]
	bl sub_0201FEBC
	arm_func_end sub_0202AD04
_0202AD34:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0202AD44
	bl sub_0200F398
_0202AD44:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0202AD54
	bl sub_0200F398
_0202AD54:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0202AD64
	bl sub_0200F398
_0202AD64:
	mov r0, r5
	bl sub_0202B2CC
	mov r0, r5
	bl sub_0202AED4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202AD78
sub_0202AD78: ; 0x0202AD78
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x60]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mvn r0, #0
	strh r0, [r7, #0x58]
	add r0, r0, #0x10000
	strh r0, [r7, #0x54]
	mov r4, #0
	arm_func_end sub_0202AD78
_0202ADA0:
	add r0, r7, r4, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _0202ADD4
	cmp r4, #1
	beq _0202ADC4
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _0202ADD4
_0202ADC4:
	bl sub_0200EB84
	cmp r0, #0
	strneh r4, [r7, #0x58]
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_0202ADD4:
	add r4, r4, #1
	cmp r4, #1
	ble _0202ADA0
	ldr r0, [r7, #0x24]
	mov r6, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _0202AE78 ; =DAT_0208c938
	mov r4, r6
_0202ADF8:
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, r4]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _0202AE5C
	bl sub_0200EB84
	cmp r0, #0
	beq _0202AE5C
	ldr r0, [r7, #0x1c]
	ldr r1, [r7, #0x50]
	ldr r0, [r0, r4]
	ldrh r0, [r0, #0x1a]
	cmp r1, r0
	bne _0202AE5C
	ldrh r0, [r5, #0xc]
	cmp r0, #2
	beq _0202AE5C
	mov r0, #0x14
	mul r2, r6, r0
	ldr r1, _0202AE78 ; =DAT_0208c938
	mov r0, #6
	ldrh r1, [r1, r2]
	strh r1, [r7, #0x54]
	strh r0, [r7, #0x58]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0202AE5C:
	ldr r0, [r7, #0x24]
	add r6, r6, #1
	cmp r6, r0
	add r4, r4, #0xc
	add r5, r5, #0x14
	blt _0202ADF8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0202AE78: .word DAT_0208c938

	arm_func_start sub_0202AE7C
sub_0202AE7C: ; 0x0202AE7C
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x5c]
	ldr r2, _0202AED0 ; =0x88888889
	add ip, r1, #1
	smull r1, lr, r2, ip
	add lr, ip, lr
	mov r1, ip, lsr #0x1f
	add lr, r1, lr, asr #4
	mov r3, #0x1e
	smull r1, r2, r3, lr
	sub lr, ip, r1
	cmp lr, #0xf
	movlt r1, #1
	movge r1, #0
	str lr, [r0, #0x5c]
	cmp r1, #0
	movne r1, #1
	ldr r0, [r0, #0x2c]
	moveq r1, #0
	str r1, [r0, #0x14]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202AED0: .word 0x88888889
	arm_func_end sub_0202AE7C

	arm_func_start sub_0202AED4
sub_0202AED4: ; 0x0202AED4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	ldr r1, _0202AF58 ; =MAIN_BSS_020BA604
	add r6, sp, #0
	ldmia r1, {r2, r3}
	stmia r6, {r2, r3}
	mov sb, r0
	ldr r0, [sb, #0x24]
	mov r7, #0
	cmp r0, #0
	addle sp, sp, #8
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r8, r7
	mov r4, #1
	mov r5, r7
	arm_func_end sub_0202AED4
_0202AF10:
	ldr r1, [sb, #0x1c]
	mov r0, sb
	ldr r3, [r1, r8]
	mov r1, r7
	mov r2, r6
	str r5, [r3, #0x14]
	bl sub_0202B244
	cmp r0, #0
	ldrne r0, [sb, #0x1c]
	add r7, r7, #1
	ldrne r0, [r0, r8]
	add r8, r8, #0xc
	strne r4, [r0, #0x14]
	ldr r0, [sb, #0x24]
	cmp r7, r0
	blt _0202AF10
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0202AF58: .word MAIN_BSS_020BA604

	arm_func_start sub_0202AF5C
sub_0202AF5C: ; 0x0202AF5C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r0, [r5, #0x24]
	mov fp, #0
	mov r4, r1
	mov r2, fp
	cmp r0, #0
	ldr r3, _0202B138 ; =MAIN_BSS_020B26A0
	ble _0202AFAC
	mov r6, fp
	mov r1, fp
	arm_func_end sub_0202AF5C
_0202AF8C:
	ldr r0, [r5, #0x1c]
	add r2, r2, #1
	ldr r0, [r0, r6]
	add r6, r6, #0xc
	str r1, [r0, #0x14]
	ldr r0, [r5, #0x24]
	cmp r2, r0
	blt _0202AF8C
_0202AFAC:
	add r0, r3, #0x364
	add r1, r0, #0x7c00
	add r0, sp, #0
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r1, [r4, #4]
	mov r0, #0xf
	and r0, r0, r1, lsr #28
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	cmp r1, #3
	mov r0, #0
	addls pc, pc, r1, lsl #2
	b _0202B038
_0202AFE4: ; jump table
	b _0202AFF4 ; case 0
	b _0202B038 ; case 1
	b _0202AFFC ; case 2
	b _0202B01C ; case 3
_0202AFF4:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0202AFFC:
	ldr r1, [r5, #0x64]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4a0]
	ldr r1, [r1, #8]
	cmp r1, #0x45
	bge _0202B038
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0202B01C:
	ldr r1, [r5, #0x64]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4a0]
	ldr r1, [r1, #8]
	cmp r1, #0x37
	addlt sp, sp, #8
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0202B038:
	ldr r0, [r5, #0x24]
	mov sl, #0
	cmp r0, #0
	ble _0202B0F0
	ldr r8, _0202B13C ; =DAT_0208c938
	mov sb, sl
	mov r7, #1
	mov r6, sl
_0202B058:
	mov r0, r5
	mov r1, sl
	add r2, sp, #0
	bl sub_0202B244
	cmp r0, #0
	beq _0202B0D8
	ldrh r2, [r8]
	ldr r1, [r8, #4]
	ldr r0, [r8, #8]
	cmp r2, #0xc8
	ldr r2, [r5, #0x1c]
	movhs r1, #0
	ldr r2, [r2, sb]
	movhs r0, r1
	str r7, [r2, #0x14]
	ldr r3, [r4]
	ldr r2, [r4, #4]
	and r3, r1, r3
	and r1, r0, r2
	mov r0, #0
	cmp r1, r0
	cmpeq r3, r6
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x50]
	beq _0202B0CC
	ldr r0, [r0, sb]
	mov fp, r7
	strh r1, [r0, #0x1a]
	b _0202B0D8
_0202B0CC:
	ldr r0, [r0, sb]
	add r1, r1, #1
	strh r1, [r0, #0x1a]
_0202B0D8:
	ldr r0, [r5, #0x24]
	add sl, sl, #1
	cmp sl, r0
	add r8, r8, #0x14
	add sb, sb, #0xc
	blt _0202B058
_0202B0F0:
	cmp fp, #0
	bne _0202B12C
	cmp r0, #0
	mov r3, #0
	ble _0202B12C
	mov r2, r3
	mov r1, r3
_0202B10C:
	ldr r0, [r5, #0x1c]
	add r3, r3, #1
	ldr r0, [r0, r2]
	add r2, r2, #0xc
	str r1, [r0, #0x14]
	ldr r0, [r5, #0x24]
	cmp r3, r0
	blt _0202B10C
_0202B12C:
	mov r0, fp
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0202B138: .word MAIN_BSS_020B26A0
_0202B13C: .word DAT_0208c938

	arm_func_start sub_0202B140
sub_0202B140: ; 0x0202B140
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r2, _0202B23C ; =MAIN_BSS_020BA604
	add r4, sp, #0
	ldmia r2, {r2, r3}
	stmia r4, {r2, r3}
	mov sl, r0
	ldr r0, [sl, #0x24]
	mov fp, #0
	mov sb, r1
	mov r6, fp
	cmp r0, #0
	ble _0202B230
	ldr r8, _0202B240 ; =DAT_0208c938
	mov r7, fp
	mov r5, #1
	mov r4, fp
	arm_func_end sub_0202B140
_0202B184:
	ldr r1, [sl, #0x1c]
	mov r2, #0
	ldr r3, [r1, r7]
	mov r0, sl
	str r2, [r3, #0x14]
	mov r1, r6
	add r2, sp, #0
	bl sub_0202B244
	cmp r0, #0
	beq _0202B218
	ldr r0, [sl, #0x1c]
	ldr r0, [r0, r7]
	str r5, [r0, #0x14]
	ldrh r1, [r8]
	ldr r2, [sb]
	ldr r0, [sb, #4]
	and r3, r2, r5, lsl r1
	mov r2, #0
	mov r2, r2, lsl r1
	rsb ip, r1, #0x20
	orr r2, r2, r5, lsr ip
	sub r1, r1, #0x20
	orr r2, r2, r5, lsl r1
	and r1, r2, r0
	mov r0, #0
	cmp r1, r0
	cmpeq r3, r4
	ldr r0, [sl, #0x1c]
	ldr r1, [sl, #0x50]
	beq _0202B20C
	ldr r0, [r0, r7]
	mov fp, r5
	strh r1, [r0, #0x1a]
	b _0202B218
_0202B20C:
	ldr r0, [r0, r7]
	add r1, r1, #1
	strh r1, [r0, #0x1a]
_0202B218:
	ldr r0, [sl, #0x24]
	add r6, r6, #1
	cmp r6, r0
	add r7, r7, #0xc
	add r8, r8, #0x14
	blt _0202B184
_0202B230:
	mov r0, fp
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0202B23C: .word MAIN_BSS_020BA604
_0202B240: .word DAT_0208c938

	arm_func_start sub_0202B244
sub_0202B244: ; 0x0202B244
	ldr r0, [r0, #0x64]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	ldr r0, [r0, #8]
	cmp r0, #0x28
	mov r0, #0x14
	mul ip, r1, r0
	blt _0202B27C
	ldr r0, _0202B2C4 ; =DAT_0208c938
	ldrh r0, [r0, ip]
	cmp r0, #0x14
	bne _0202B290
	mov r0, #0
	bx lr
	arm_func_end sub_0202B244
_0202B27C:
	ldr r0, _0202B2C4 ; =DAT_0208c938
	ldrh r0, [r0, ip]
	cmp r0, #0x78
	moveq r0, #0
	bxeq lr
_0202B290:
	ldr r1, _0202B2C8 ; =DAT_0208c93c
	ldr r3, [r2]
	add r0, r1, ip
	ldr r1, [r1, ip]
	ldr r2, [r2, #4]
	ldr r0, [r0, #4]
	and r3, r3, r1
	and r1, r2, r0
	mov r0, #0
	cmp r1, r0
	cmpeq r3, r0
	movne r0, #1
	bx lr
	.align 2, 0
_0202B2C4: .word DAT_0208c938
_0202B2C8: .word DAT_0208c93c

	arm_func_start sub_0202B2CC
sub_0202B2CC: ; 0x0202B2CC
	stmdb sp!, {r4, lr}
	ldr r1, _0202B2F8 ; =MAIN_BSS_020B26A0
	mov r4, r0
	ldrh r1, [r1, #0x1a]
	bl sub_0202B338
	strh r0, [r4, #0x56]
	ldrh r2, [r4, #0x56]
	mov r0, r4
	mov r1, #1
	bl sub_0202B2FC
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202B2F8: .word MAIN_BSS_020B26A0
	arm_func_end sub_0202B2CC

	arm_func_start sub_0202B2FC
sub_0202B2FC: ; 0x0202B2FC
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r1, r2
	add r2, sp, #4
	add r3, sp, #0
	mov r5, r0
	bl sub_0202B370
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x28]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl sub_0200EB28
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0202B2FC

	arm_func_start sub_0202B338
sub_0202B338: ; 0x0202B338
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	bl sub_02041D80
	ldr r1, [r4, #0x64]
	ldrb r0, [r0]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4a0]
	ldr r1, [r1, #8]
	cmp r1, #0x28
	ldmltia sp!, {r4, pc}
	cmp r0, #0x14
	moveq r0, #0x78
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202B338

	arm_func_start sub_0202B370
sub_0202B370: ; 0x0202B370
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr ip, [r6, #0x10]
	mov r5, r2
	mov r4, r3
	cmp ip, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r2, #0
	str r2, [r5]
	mov r2, #0xe0
	str r2, [r4]
	bl sub_0202B458
	cmp r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	mov r1, #0x14
	mul r3, r0, r1
	ldr r1, _0202B448 ; =DAT_0208c944
	ldrh r1, [r1, r3]
	cmp r1, #2
	movne r1, #8
	movne r2, r1
	bne _0202B3D8
	ldr r1, _0202B44C ; =DAT_0208c946
	ldr r2, _0202B450 ; =DAT_0208c948
	ldrsh r1, [r1, r3]
	ldrsh r2, [r2, r3]
	arm_func_end sub_0202B370
_0202B3D8:
	mov r3, #0xc
	mul r3, r0, r3
	ldr r6, [r6, #0x1c]
	ldr r0, _0202B454 ; =0x000001FF
	ldr ip, [r6, r3]
	ldr r3, [ip, #4]
	ldrsh r6, [ip, #0xc]
	ldr lr, [r3, #4]
	ldrsh ip, [ip, #0xe]
	ldrh r3, [lr, #2]
	ldrh lr, [lr]
	and r0, r3, r0
	mov r3, r0, lsl #0x10
	and lr, lr, #0xff
	mov r0, lr, lsl #0x10
	add r2, r2, r0, asr #16
	add r1, r1, r3, asr #16
	add r0, r1, r6
	mov r1, r0, lsl #0x10
	add r2, r2, ip
	mov r0, r2, lsl #0x10
	mov r1, r1, asr #0x10
	mov r0, r0, asr #0x10
	and r1, r1, #0xff
	and r0, r0, #0xff
	str r1, [r5]
	str r0, [r4]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0202B448: .word DAT_0208c944
_0202B44C: .word DAT_0208c946
_0202B450: .word DAT_0208c948
_0202B454: .word 0x000001FF

	arm_func_start sub_0202B458
sub_0202B458: ; 0x0202B458
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, [r0, #0x24]
	mov r0, #0
	cmp r3, #0
	ble _0202B48C
	ldr r4, _0202B508 ; =DAT_0208c938
	arm_func_end sub_0202B458
_0202B470:
	ldrh r2, [r4]
	cmp r1, r2
	beq _0202B48C
	add r0, r0, #1
	cmp r0, r3
	add r4, r4, #0x14
	blt _0202B470
_0202B48C:
	cmp r0, r3
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r3, #0
	mov r0, #0
	ble _0202B4FC
	mov r2, r0, lsl r1
	rsb ip, r1, #0x20
	mov r6, #1
	orr r2, r2, r6, lsr ip
	sub ip, r1, #0x20
	orr r2, r2, r6, lsl ip
	ldr r7, _0202B508 ; =DAT_0208c938
	mov lr, r0
	mov ip, r0
_0202B4C4:
	ldrh r4, [r7]
	cmp r4, #0xc8
	bhs _0202B4EC
	ldr r5, [r7, #4]
	ldr r4, [r7, #8]
	and r5, r5, r6, lsl r1
	and r4, r2, r4
	cmp r4, lr
	cmpeq r5, ip
	bne _0202B4FC
_0202B4EC:
	add r0, r0, #1
	cmp r0, r3
	add r7, r7, #0x14
	blt _0202B4C4
_0202B4FC:
	cmp r0, r3
	mvnge r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0202B508: .word DAT_0208c938

	arm_func_start sub_0202B50C
sub_0202B50C: ; 0x0202B50C
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r0
	cmp r2, #0
	mov r5, #3
	beq _0202B550
	cmp r2, #3
	beq _0202B554
	cmp r2, #4
	bne _0202B554
	ldr r0, [r4, #0x38]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x34]
	add sp, sp, #8
	str r1, [r0, #0x14]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0202B50C
_0202B550:
	mov r5, #4
_0202B554:
	add r2, sp, #4
	add r3, sp, #0
	mov r0, r4
	bl sub_0202B370
	cmp r5, #4
	moveq r0, #3
	movne r0, #4
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x28]
	mov r1, #0
	str r1, [r0, #0x14]
	add r1, r4, r5, lsl #2
	ldr r0, [r1, #0x28]
	mov r2, #1
	str r2, [r0, #0x14]
	ldr r0, [r1, #0x28]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl sub_0200EB28
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202B5A8
sub_0202B5A8: ; 0x0202B5A8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_0202AD78
	ldrsh r0, [r6, #0x58]
	strh r0, [r5]
	ldrh r0, [r6, #0x54]
	strh r0, [r4]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0202B5A8

	arm_func_start sub_0202B5D0
sub_0202B5D0: ; 0x0202B5D0
	ldr r2, _0202B5F0 ; =PTR_LAB_0208cc6c
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #4]
	str r1, [r0, #0xc]
	sub r1, r1, #3
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_0202B5F0: .word PTR_LAB_0208cc6c
	arm_func_end sub_0202B5D0

	arm_func_start sub_0202B5F4
sub_0202B5F4: ; 0x0202B5F4
	stmdb sp!, {r4, lr}
	ldr r1, _0202B618 ; =PTR_LAB_0208cc6c
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202B618: .word PTR_LAB_0208cc6c
	arm_func_end sub_0202B5F4

	arm_func_start sub_0202B61C
sub_0202B61C: ; 0x0202B61C
	stmdb sp!, {r4, lr}
	ldr r1, _0202B648 ; =PTR_LAB_0208cc6c
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
_0202B648: .word PTR_LAB_0208cc6c
	arm_func_end sub_0202B61C

	arm_func_start sub_0202B64C
sub_0202B64C: ; 0x0202B64C
	stmdb sp!, {r4, lr}
	ldr r1, _0202B670 ; =PTR_LAB_0208cc6c
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202B670: .word PTR_LAB_0208cc6c
	arm_func_end sub_0202B64C

	arm_func_start sub_0202B674
sub_0202B674: ; 0x0202B674
	stmdb sp!, {r4, lr}
	ldr r1, _0202B6EC ; =sCardBackupInfo
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0202B6C0
	bl CARD_Init
	bl OS_GetLockID
	mvn r1, #2
	str r0, [r4, #8]
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #1
	str r0, [r4, #4]
	arm_func_end sub_0202B674
_0202B6C0:
	mov r0, r4
	bl sub_0202B72C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202B6EC: .word sCardBackupInfo

	arm_func_start sub_0202B6F0
sub_0202B6F0: ; 0x0202B6F0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0202B724
	ldr r0, [r4, #8]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl OS_ReleaseLockID
	mov r0, #0
	str r0, [r4, #4]
	sub r0, r0, #3
	str r0, [r4, #8]
	arm_func_end sub_0202B6F0
_0202B724:
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202B72C
sub_0202B72C: ; 0x0202B72C
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, #0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_LockBackup
	bl CARD_GetCurrentBackupType
	and r0, r0, #0xff
	cmp r0, #1
	moveq r0, #1
	movne r0, r4
	cmp r0, #0
	beq _0202B79C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #6
	str r1, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	add r1, sp, #0x14
	mov r3, r0
	str r0, [sp, #0x10]
	bl CARDi_RequestStreamCommand
	mov r4, r0
	b _0202B7E8
	arm_func_end sub_0202B72C
_0202B79C:
	bl CARD_GetCurrentBackupType
	and r0, r0, #0xff
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _0202B7E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #6
	str r1, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	add r1, sp, #0x14
	mov r3, r0
	str r0, [sp, #0x10]
	bl CARDi_RequestStreamCommand
	mov r4, r0
_0202B7E8:
	bl CARD_GetResultCode
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_UnlockBackup
	mov r0, r4
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
