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
