    .include "macros/function.inc"
    .include "include/libdwcauth.inc"

    .text

	arm_func_start DWC_Auth_SetCustomNas
DWC_Auth_SetCustomNas: ; 0x02135390
	ldr r1, _0213539C ; =ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	str r0, [r1]
	bx lr
	.align 2, 0
_0213539C: .word ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	arm_func_end DWC_Auth_SetCustomNas

	arm_func_start DWC_Auth_Create
DWC_Auth_Create: ; 0x021353A0
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _021354B4 ; =OVERLAY11_BSS_02169CA8
	mov r5, r0
	ldr r0, [r2, #8]
	mov r4, r1
	cmp r0, #0
	ldr r2, [r5, #0x40]
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _021354B8 ; =s_ALLOC_DWCauth_overlay_11_02166814
	ldr r1, _021354BC ; =0x000013F4
	blx r2
	ldr r1, _021354B4 ; =OVERLAY11_BSS_02169CA8
	cmp r0, #0
	str r0, [r1, #8]
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, _021354BC ; =0x000013F4
	mov r1, #0
	bl MI_CpuFill8
	ldr r3, _021354B4 ; =OVERLAY11_BSS_02169CA8
	mov r1, #0
	ldr r0, [r3, #8]
	mov r2, #0x1c4
	add r0, r0, #0x1000
	str r4, [r0, #0x314]
	str r1, [r3]
	ldr r0, [r3, #8]
	add r0, r0, #8
	add r0, r0, #0x1000
	bl MI_CpuFill8
	ldr r1, _021354B4 ; =OVERLAY11_BSS_02169CA8
	ldr r2, _021354C0 ; =0x00004E84
	ldr r0, [r1, #8]
	mov r4, #4
	add r0, r0, #0x1000
	str r2, [r0, #8]
	ldr lr, [r1, #8]
	add r0, lr, #0x1cc
	add ip, r0, #0x1000
	arm_func_end DWC_Auth_Create
_02135440:
	ldmia r5!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02135440
	ldmia r5, {r0, r1}
	stmia ip, {r0, r1}
	add r0, lr, #0x1100
	mov r2, #0
	strh r2, [r0, #0xfe]
	ldr r1, _021354B4 ; =OVERLAY11_BSS_02169CA8
	mov r0, #1
	ldr r1, [r1, #8]
	add r1, r1, #0x1000
	strb r2, [r1, #0x20b]
	bl ov11_02135768
	ldr r2, _021354B4 ; =OVERLAY11_BSS_02169CA8
	ldr r1, [r2, #8]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r0, [r2, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #0
	str r0, [r2, #4]
	bl ov11_021354C4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021354B4: .word OVERLAY11_BSS_02169CA8
_021354B8: .word s_ALLOC_DWCauth_overlay_11_02166814
_021354BC: .word 0x000013F4
_021354C0: .word 0x00004E84

	arm_func_start ov11_021354C4
ov11_021354C4: ; 0x021354C4
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _0213556C ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_InitMutex
	ldr r1, _0213556C ; =OVERLAY11_BSS_02169CA8
	mov r2, #0
	ldr r0, [r1, #8]
	add r0, r0, #0x1000
	str r2, [r0, #0x3f0]
	ldr r1, [r1, #8]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	beq _02135520
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, pc}
	arm_func_end ov11_021354C4
_02135520:
	ldr r0, _0213556C ; =OVERLAY11_BSS_02169CA8
	mov r3, #0x1000
	ldr lr, [r0, #8]
	ldr r1, _02135570 ; =ov11_02135878
	add r0, lr, #0x318
	ldr r2, _02135574 ; =OVERLAY11_BSS_02169CB0
	str r3, [sp]
	mov ip, #0x10
	add r0, r0, #0x1000
	add r3, lr, #0x1000
	str ip, [sp, #4]
	bl OS_CreateThread
	ldr r0, _0213556C ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	add r0, r0, #0x318
	add r0, r0, #0x1000
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0213556C: .word OVERLAY11_BSS_02169CA8
_02135570: .word ov11_02135878
_02135574: .word OVERLAY11_BSS_02169CB0

	arm_func_start ov11_02135578
ov11_02135578: ; 0x02135578
	stmdb sp!, {r3, lr}
	ldr r0, _02135600 ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r1, _02135600 ; =OVERLAY11_BSS_02169CA8
	mov r2, #1
	ldr r0, [r1, #8]
	add r0, r0, #0x1000
	str r2, [r0, #0x3f0]
	ldr r0, [r1, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldr r0, _02135600 ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	cmp r0, #0
	beq _021355D8
	bl ov11_02136A30
	arm_func_end ov11_02135578
_021355D8:
	ldr r0, _02135600 ; =OVERLAY11_BSS_02169CA8
	ldr r1, [r0, #8]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl OS_JoinThread
	ldmia sp!, {r3, pc}
	.align 2, 0
_02135600: .word OVERLAY11_BSS_02169CA8

	arm_func_start DWC_Auth_Destroy
DWC_Auth_Destroy: ; 0x02135604
	stmdb sp!, {r4, lr}
	ldr r0, _02135654 ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r1, r0, #0x1000
	ldr r0, [r1, #0x314]
	ldr r4, [r1, #0x210]
	cmp r0, #0
	beq _02135630
	bl ov11_02136F74
	arm_func_end DWC_Auth_Destroy
_02135630:
	ldr r1, _02135654 ; =OVERLAY11_BSS_02169CA8
	ldr r0, _02135658 ; =s_FREE_DWCauth_overlay_11_02166824
	ldr r1, [r1, #8]
	mov r2, #0
	blx r4
	ldr r0, _02135654 ; =OVERLAY11_BSS_02169CA8
	mov r1, #0
	str r1, [r0, #8]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02135654: .word OVERLAY11_BSS_02169CA8
_02135658: .word s_FREE_DWCauth_overlay_11_02166824

	arm_func_start ov11_0213565C
ov11_0213565C: ; 0x0213565C
	stmdb sp!, {r3, lr}
	ldr r0, _02135688 ; =OVERLAY11_BSS_02169CA8
	ldr r1, [r0, #8]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl OS_JoinThread
	ldmia sp!, {r3, pc}
	.align 2, 0
_02135688: .word OVERLAY11_BSS_02169CA8
	arm_func_end ov11_0213565C

	arm_func_start DWC_Auth_GetError
DWC_Auth_GetError: ; 0x0213568C
	stmdb sp!, {r4, lr}
	ldr r0, _021356D4 ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #0x16
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r0, _021356D4 ; =OVERLAY11_BSS_02169CA8
	ldr r1, [r0, #8]
	add r0, r1, #0x3d8
	add r1, r1, #0x1000
	add r0, r0, #0x1000
	ldr r4, [r1, #4]
	bl OS_UnlockMutex
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021356D4: .word OVERLAY11_BSS_02169CA8
	arm_func_end DWC_Auth_GetError

	arm_func_start DWC_Auth_GetResult
DWC_Auth_GetResult: ; 0x021356D8
	stmdb sp!, {r4, lr}
	ldr r1, _02135754 ; =OVERLAY11_BSS_02169CA8
	mov r4, r0
	ldr r1, [r1, #8]
	cmp r1, #0
	bne _021356FC
	mov r1, #0
	mov r2, #0x1c4
	bl MI_CpuFill8
	arm_func_end DWC_Auth_GetResult
_021356FC:
	ldr r0, _02135754 ; =OVERLAY11_BSS_02169CA8
	mov r1, r4
	ldr r0, [r0, #8]
	mov r2, #0x1c4
	add r0, r0, #8
	add r0, r0, #0x1000
	bl MI_CpuCopy8
	ldr r1, [r4]
	ldr r0, _02135758 ; =0x00004E20
	cmp r1, r0
	blt _02135734
	ldr r0, _0213575C ; =0x00007530
	cmp r1, r0
	blt _0213573C
_02135734:
	ldr r0, _02135760 ; =0x00005206
	str r0, [r4]
_0213573C:
	ldr r1, [r4]
	ldr r0, _02135764 ; =0x00004E84
	cmp r1, r0
	rsbge r0, r1, #0
	strge r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02135754: .word OVERLAY11_BSS_02169CA8
_02135758: .word 0x00004E20
_0213575C: .word 0x00007530
_02135760: .word 0x00005206
_02135764: .word 0x00004E84

	arm_func_start ov11_02135768
ov11_02135768: ; 0x02135768
	stmdb sp!, {r4, lr}
	ldr r1, _02135860 ; =ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	mov r4, r0
	ldr r0, [r1]
	ldr r1, _02135864 ; =s_https_nas_nintendowifi_net_ac_overlay_11_02166834
	bl strcmp
	cmp r0, #0
	ldrne r0, _02135860 ; =ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	movne r1, #1
	strne r1, [r0, #0x14]
	ldr r0, _02135868 ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135860 ; =ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	ldr r0, [r0, #8]
	ldr r1, _0213586C ; =ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	add r0, r0, #0x1000
	ldr r3, [r0, #0x20c]
	str r3, [r2, #0xc]
	ldr r3, [r0, #0x210]
	str r3, [r2, #0x10]
	ldr r0, [r0, #0x314]
	bl ov11_021367C0
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r4, pc}
	cmp r4, #1
	bne _021357D8
	ldr r0, _02135870 ; =OVERLAY11_BSS_02169CB4
	bl DWCi_BM_GetWiFiInfo
	arm_func_end ov11_02135768
_021357D8:
	ldr r0, _02135868 ; =OVERLAY11_BSS_02169CA8
	ldr r1, [r0, #8]
	add r0, r1, #0x1000
	add r2, r1, #0x1cc
	ldr r0, [r0, #0x314]
	add r1, r1, #0x1200
	add r2, r2, #0x1000
	bl ov11_02135FCC
	ldr r2, _02135868 ; =OVERLAY11_BSS_02169CA8
	ldr r1, [r2, #8]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r0, [r2, #8]
	add r0, r0, #0x1000
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r0, #4
	ldmneia sp!, {r4, pc}
	ldr r0, [r0, #0x314]
	bl ov11_021368DC
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r4, pc}
	ldr r0, _02135874 ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	ldr r1, _02135868 ; =OVERLAY11_BSS_02169CA8
	ldr r2, [r1, #8]
	sub r1, r0, #1
	add r0, r2, #0x1000
	ldr r0, [r0, #0x314]
	bl ov11_02136974
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02135860: .word ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
_02135864: .word s_https_nas_nintendowifi_net_ac_overlay_11_02166834
_02135868: .word OVERLAY11_BSS_02169CA8
_0213586C: .word ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
_02135870: .word OVERLAY11_BSS_02169CB4
_02135874: .word OSi_ThreadInfo

	arm_func_start ov11_02135878
ov11_02135878: ; 0x02135878
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, #0
	arm_func_end ov11_02135878
_02135880:
	ldr r0, _02135B1C ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x314]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _021358AC
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
_021358AC:
	ldr r2, _02135B1C ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r2, #8]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x314]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #8
	beq _02135948
	ldr r1, _02135B20 ; =0x00004E84
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x20]
	cmp r0, #7
	bne _021358FC
	mov r0, #0x14
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021358FC:
	cmp r8, #2
	ble _02135938
	cmp r0, #2
	bne _02135918
	mov r0, #9
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02135918:
	cmp r0, #3
	bne _0213592C
	mov r0, #0xb
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213592C:
	mov r0, #0xd
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02135938:
	mov r0, #1
	add r8, r8, #1
	str r0, [sp]
	b _021359B8
_02135948:
	bl ov11_02135B2C
	cmp r0, #0x10
	beq _02135970
	cmp r0, #0x11
	beq _02135994
	cmp r0, #0x15
	bne _0213599C
	mov r0, #0x15
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02135970:
	cmp r8, #2
	ble _02135984
	mov r0, #0x10
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02135984:
	mov r0, #0
	add r8, r8, #1
	str r0, [sp]
	b _021359B8
_02135994:
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213599C:
	cmp r8, #2
	blt _021359AC
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021359AC:
	mov r0, #1
	add r8, r8, #1
	str r0, [sp]
_021359B8:
	bl OS_GetTick
	mov sb, r0
	mov sl, r1
	bl OS_GetTick
	subs r2, r0, sb
	sbc r0, r1, sl
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	ldr r2, _02135B24 ; =0x000082EA
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	ldr r7, _02135B28 ; =0x00001388
	cmpeq r0, r7
	bhs _02135A98
	mov fp, #0
	ldr r6, _02135B24 ; =0x000082EA
	ldr r5, _02135B1C ; =OVERLAY11_BSS_02169CA8
	mov r4, fp
_02135A08:
	ldr r0, [r5, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r2, [r5, #8]
	add r0, r2, #0x1000
	ldr r1, [r0, #0x3f0]
	cmp r1, #1
	bne _02135A54
	ldr r2, _02135B20 ; =0x00004E84
	ldr r1, _02135B1C ; =OVERLAY11_BSS_02169CA8
	str r2, [r0, #8]
	ldr r0, [r1, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	mov r0, #0x14
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02135A54:
	add r0, r2, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	mov r0, r7
	bl OS_Sleep
	bl OS_GetTick
	subs r2, r0, sb
	sbc r0, r1, sl
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	mov r2, r6
	mov r3, fp
	bl _ll_udiv
	cmp r1, r4
	cmpeq r0, r7
	blo _02135A08
_02135A98:
	ldr r0, _02135B1C ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	bl ov11_02136F74
	ldr r0, _02135B1C ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r0, [sp]
	bl ov11_02135768
	ldr r2, _02135B1C ; =OVERLAY11_BSS_02169CA8
	ldr r1, [r2, #8]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r3, [r2, #8]
	add r0, r3, #0x1000
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02135B08
	ldr r1, _02135B20 ; =0x00004E84
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02135B08:
	add r0, r3, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	b _02135880
_02135B18:
	.byte 0xF8, 0x8F, 0xBD, 0xE8
_02135B1C: .word OVERLAY11_BSS_02169CA8
_02135B20: .word 0x00004E84
_02135B24: .word 0x000082EA
_02135B28: .word 0x00001388

	arm_func_start ov11_02135B2C
ov11_02135B2C: ; 0x02135B2C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r0, _02135CE4 ; =OVERLAY11_BSS_02169CA8
	mov r1, #0
	ldr r0, [r0, #8]
	add r2, r0, #0x1000
	ldr r0, [r2, #0x314]
	ldr r4, [r2, #0x20c]
	ldr r5, [r2, #0x210]
	bl ov11_0213774C
	cmp r0, #1
	beq _02135B74
	ldr r0, _02135CE4 ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135CE8 ; =0x00004E84
	ldr r1, [r0, #8]
	mov r0, #0xe
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02135B2C
_02135B74:
	bl ov11_02135D04
	cmp r0, #0
	movne r0, #0xe
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _02135CE4 ; =OVERLAY11_BSS_02169CA8
	ldr r1, _02135CE8 ; =0x00004E84
	ldr r0, [r0, #8]
	add r0, r0, #0x1000
	ldr r2, [r0, #8]
	cmp r2, r1
	bge _02135C34
	sub r0, r1, #0x62
	cmp r2, r0
	bne _02135C2C
	ldr r0, _02135CEC ; =s_ALLOC_bmwork_overlay_11_02166854
	ldr r1, _02135CF0 ; =0x0000071F
	blx r4
	movs r4, r0
	bne _02135BDC
	ldr r0, _02135CE4 ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135CE8 ; =0x00004E84
	ldr r1, [r0, #8]
	mov r0, #2
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_02135BDC:
	add r1, r4, #0x1f
	ldr r0, _02135CF4 ; =OVERLAY11_BSS_02169CB4
	bic r1, r1, #0x1f
	bl DWCi_AUTH_UpDateWiFiID
	cmp r0, #1
	mov r2, #0
	beq _02135C20
	ldr r0, _02135CF8 ; =s_FREE_bmwork_overlay_11_02166864
	mov r1, r4
	blx r5
	ldr r0, _02135CE4 ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135CE8 ; =0x00004E84
	ldr r1, [r0, #8]
	mov r0, #0xf
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_02135C20:
	ldr r0, _02135CF8 ; =s_FREE_bmwork_overlay_11_02166864
	mov r1, r4
	blx r5
_02135C2C:
	mov r0, #0x15
	ldmia sp!, {r3, r4, r5, pc}
_02135C34:
	add r0, r1, #4
	cmp r2, r0
	beq _02135C50
	add r0, r1, #8
	cmp r2, r0
	beq _02135C74
	b _02135CDC
_02135C50:
	ldr r0, _02135CF4 ; =OVERLAY11_BSS_02169CB4
	bl DWCi_AUTH_RemakeWiFiID
	ldr r0, _02135CE4 ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135CFC ; =0x00004E88
	ldr r1, [r0, #8]
	mov r0, #0x10
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_02135C74:
	ldr r0, _02135CEC ; =s_ALLOC_bmwork_overlay_11_02166854
	mov r1, #0x700
	blx r4
	movs r4, r0
	bne _02135CA4
	ldr r0, _02135CE4 ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135D00 ; =0x00004E8C
	ldr r1, [r0, #8]
	mov r0, #0x11
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_02135CA4:
	add r0, r4, #0x1f
	bic r0, r0, #0x1f
	bl DWCi_AUTH_MakeWiFiID
	ldr r0, _02135CF8 ; =s_FREE_bmwork_overlay_11_02166864
	mov r1, r4
	mov r2, #0
	blx r5
	ldr r0, _02135CE4 ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135D00 ; =0x00004E8C
	ldr r1, [r0, #8]
	mov r0, #0x11
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_02135CDC:
	mov r0, #0x12
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02135CE4: .word OVERLAY11_BSS_02169CA8
_02135CE8: .word 0x00004E84
_02135CEC: .word s_ALLOC_bmwork_overlay_11_02166854
_02135CF0: .word 0x0000071F
_02135CF4: .word OVERLAY11_BSS_02169CB4
_02135CF8: .word s_FREE_bmwork_overlay_11_02166864
_02135CFC: .word 0x00004E88
_02135D00: .word 0x00004E8C

	arm_func_start ov11_02135D04
ov11_02135D04: ; 0x02135D04
	stmdb sp!, {r3, r4, r5, lr}
	ldr r0, _02135F9C ; =OVERLAY11_BSS_02169CA8
	mov r1, #0
	ldr r0, [r0, #8]
	str r1, [sp]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	ldr r1, _02135FA0 ; =s_Date_overlay_11_02166870
	bl ov11_021379EC
	str r0, [sp]
	cmp r0, #0
	beq _02135D38
	bl ov11_02138DC8
	arm_func_end ov11_02135D04
_02135D38:
	ldr r0, _02135F9C ; =OVERLAY11_BSS_02169CA8
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02135FA4 ; =errno
	str r2, [sp]
	str r2, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x314]
	ldr r1, _02135FA8 ; =s_httpresult_overlay_11_02166878
	bl ov11_021379EC
	bl atol
	ldr r1, _02135FA4 ; =errno
	ldr r1, [r1]
	cmp r1, #0x22
	bne _02135D90
	ldr r0, _02135F9C ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135FAC ; =0x00004E85
	ldr r1, [r0, #8]
	mov r0, #0xc
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_02135D90:
	cmp r0, #0xc8
	beq _02135DB8
	ldr r1, _02135F9C ; =OVERLAY11_BSS_02169CA8
	add r0, r0, #0x1d8
	ldr r1, [r1, #8]
	add r2, r0, #0x5800
	add r0, r1, #0x1000
	str r2, [r0, #8]
	mov r0, #0x12
	ldmia sp!, {r3, r4, r5, pc}
_02135DB8:
	ldr r0, _02135F9C ; =OVERLAY11_BSS_02169CA8
	ldr r1, _02135FB0 ; =s_returncd_overlay_11_02166884
	ldr r2, [r0, #8]
	mov r3, #4
	add r0, r2, #0x1000
	add r2, r2, #0xc
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	bl ov11_02137A44
	cmp r0, #0
	bgt _02135E00
	ldr r0, _02135F9C ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135FAC ; =0x00004E85
	ldr r1, [r0, #8]
	mov r0, #0xe
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_02135E00:
	ldr r0, _02135F9C ; =OVERLAY11_BSS_02169CA8
	add r1, sp, #0
	ldr r0, [r0, #8]
	mov r2, #0xa
	add r0, r0, #0xc
	add r0, r0, #0x1000
	bl strtol
	ldr r1, _02135F9C ; =OVERLAY11_BSS_02169CA8
	mov r4, r0
	ldr r5, [r1, #8]
	add r0, r5, #0xc
	add r0, r0, #0x1000
	bl strlen
	add r1, r5, #0xc
	add r1, r1, #0x1000
	ldr r2, [sp]
	add r0, r1, r0
	cmp r2, r0
	beq _02135E60
	ldr r1, _02135FAC ; =0x00004E85
	add r0, r5, #0x1000
	str r1, [r0, #8]
	mov r0, #0xc
	ldmia sp!, {r3, r4, r5, pc}
_02135E60:
	add r0, r4, #0xe20
	add r1, r0, #0x4000
	add r0, r5, #0x1000
	str r1, [r0, #8]
	cmp r4, #0x64
	bge _02135F94
	ldr r5, _02135F9C ; =OVERLAY11_BSS_02169CA8
	mov r0, #0
	ldr r2, [r5, #8]
	ldr r1, _02135FB4 ; =s_token_overlay_11_02166890
	add r2, r2, #0x1000
	strb r0, [r2, #0x52]
	ldr r2, [r5, #8]
	ldr r3, _02135FB8 ; =0x0000012D
	add r2, r2, #0x1000
	strb r0, [r2, #0x1f]
	ldr r2, [r5, #8]
	add r2, r2, #0x1000
	strb r0, [r2, #0x17f]
	ldr r2, [r5, #8]
	add r2, r2, #0x1000
	strb r0, [r2, #0x10]
	ldr r2, [r5, #8]
	add r2, r2, #0x1000
	strb r0, [r2, #0x188]
	ldr r2, [r5, #8]
	add r0, r2, #0x1000
	add r2, r2, #0x52
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	bl ov11_02137A44
	mov r0, r5
	ldr r2, [r0, #8]
	ldr r1, _02135FBC ; =s_locator_overlay_11_02166898
	add r0, r2, #0x1000
	add r2, r2, #0x1f
	ldr r0, [r0, #0x314]
	mov r3, #0x33
	add r2, r2, #0x1000
	bl ov11_02137A44
	mov r0, r5
	ldr r2, [r0, #8]
	ldr r1, _02135FC0 ; =s_challenge_overlay_11_021668a0
	add r0, r2, #0x1000
	add r2, r2, #0x7f
	ldr r0, [r0, #0x314]
	mov r3, #9
	add r2, r2, #0x1100
	bl ov11_02137A44
	mov r0, r5
	ldr r2, [r0, #8]
	ldr r1, _02135FC4 ; =s_datetime_overlay_11_021668ac
	add r0, r2, #0x1000
	add r2, r2, #0x10
	ldr r0, [r0, #0x314]
	mov r3, #0xf
	add r2, r2, #0x1000
	bl ov11_02137A44
	mov r0, r5
	ldr r2, [r0, #8]
	ldr r1, _02135FC8 ; =s_Set_Cookie_overlay_11_021668b8
	add r0, r2, #0x1000
	add r2, r2, #0x188
	ldr r0, [r0, #0x314]
	mov r3, #0x41
	add r2, r2, #0x1000
	bl ov11_02137A98
	mov r1, r5
	ldr r0, [r1, #8]
	mov r2, #0
	add r0, r0, #0x1000
	cmp r4, #0x28
	strb r2, [r0, #0x1b3]
	movne r0, #1
	strne r0, [r1]
	moveq r0, #2
	streq r0, [r1]
_02135F94:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02135F9C: .word OVERLAY11_BSS_02169CA8
_02135FA0: .word s_Date_overlay_11_02166870
_02135FA4: .word errno
_02135FA8: .word s_httpresult_overlay_11_02166878
_02135FAC: .word 0x00004E85
_02135FB0: .word s_returncd_overlay_11_02166884
_02135FB4: .word s_token_overlay_11_02166890
_02135FB8: .word 0x0000012D
_02135FBC: .word s_locator_overlay_11_02166898
_02135FC0: .word s_challenge_overlay_11_021668a0
_02135FC4: .word s_datetime_overlay_11_021668ac
_02135FC8: .word s_Set_Cookie_overlay_11_021668b8

	arm_func_start ov11_02135FCC
ov11_02135FCC: ; 0x02135FCC
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x94
	ldr r3, _02136148 ; =OVERLAY11_BSS_02169CA8
	mov r4, r0
	ldr r0, [r3, #0x10]
	ldr r3, [r3, #0xc]
	cmp r0, #0
	mov r6, r1
	mov r5, r2
	cmpeq r3, #0
	bne _02136028
	ldr r0, _0213614C ; =s_acctcreate_overlay_11_021668c4
	bl strlen
	mov r3, r0
	ldr r1, _02136150 ; =s_action_overlay_11_021668d0
	ldr r2, _0213614C ; =s_acctcreate_overlay_11_021668c4
	mov r0, r4
	bl ov11_021371C4
	cmp r0, #0
	beq _02136080
	add sp, sp, #0x94
	mov r0, #8
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov11_02135FCC
_02136028:
	ldr r0, _02136154 ; =s_login_overlay_11_021668d8
	bl strlen
	mov r3, r0
	ldr r1, _02136150 ; =s_action_overlay_11_021668d0
	ldr r2, _02136154 ; =s_login_overlay_11_021668d8
	mov r0, r4
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmneia sp!, {r3, r4, r5, r6, pc}
	mov r0, r6
	bl strlen
	mov r3, r0
	ldr r1, _02136158 ; =s_gsbrcd_overlay_11_021668e0
	mov r0, r4
	mov r2, r6
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmneia sp!, {r3, r4, r5, r6, pc}
_02136080:
	ldr r1, _0213615C ; =OVERLAY11_BSS_02169CB4
	add r0, sp, #0
	bl ov11_021361DC
	cmp r0, #0
	addeq sp, sp, #0x94
	moveq r0, #5
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _02136160 ; =OVERLAY11_BSS_02169CD0
	add r1, sp, #0
	ldr r2, [r0]
	mov r0, r4
	bl ov11_0213647C
	cmp r0, #0
	addeq sp, sp, #0x94
	moveq r0, #8
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _02136148 ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021360FC
	ldr r0, _02136164 ; =s_Y_overlay_11_021668e8
	bl strlen
	mov r3, r0
	ldr r1, _02136168 ; =s_iswfc_overlay_11_021668ec
	ldr r2, _02136164 ; =s_Y_overlay_11_021668e8
	mov r0, r4
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmneia sp!, {r3, r4, r5, r6, pc}
_021360FC:
	mov r0, r5
	bl wcslen
	cmp r0, #0
	beq _0213613C
	mov r0, r5
	bl wcslen
	mov r3, r0
	ldr r1, _0213616C ; =s_ingamesn_overlay_11_021668f4
	mov r0, r4
	mov r2, r5
	mov r3, r3, lsl #1
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmneia sp!, {r3, r4, r5, r6, pc}
_0213613C:
	mov r0, #0
	add sp, sp, #0x94
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02136148: .word OVERLAY11_BSS_02169CA8
_0213614C: .word s_acctcreate_overlay_11_021668c4
_02136150: .word s_action_overlay_11_021668d0
_02136154: .word s_login_overlay_11_021668d8
_02136158: .word s_gsbrcd_overlay_11_021668e0
_0213615C: .word OVERLAY11_BSS_02169CB4
_02136160: .word OVERLAY11_BSS_02169CD0
_02136164: .word s_Y_overlay_11_021668e8
_02136168: .word s_iswfc_overlay_11_021668ec
_0213616C: .word s_ingamesn_overlay_11_021668f4

	arm_func_start ov11_02136170
ov11_02136170: ; 0x02136170
	stmdb sp!, {r4, lr}
	ldr r1, _021361B0 ; =OVERLAY11_BSS_02169CA8
	mov r4, r0
	ldr r0, [r1, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r1, _021361B0 ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r1, #8]
	add r0, r0, #0x1000
	str r4, [r0, #4]
	ldr r0, [r1, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldmia sp!, {r4, pc}
	.align 2, 0
_021361B0: .word OVERLAY11_BSS_02169CA8
	arm_func_end ov11_02136170

	arm_func_start ov11_021361B4
ov11_021361B4: ; 0x021361B4
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, sp, #0
	bl DWCi_BM_GetWiFiInfo
	add r1, sp, #0
	mov r0, r4
	bl ov11_021361DC
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov11_021361B4

	arm_func_start ov11_021361DC
ov11_021361DC: ; 0x021361DC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x8c
	mov r6, r1
	mov r1, #0
	mov r2, #0x94
	mov r4, r0
	bl MI_CpuFill8
	ldmia r6, {r3, r5}
	cmp r5, #0
	cmpeq r3, #0
	mov r1, #0xe
	beq _02136220
	ldr r2, _0213645C ; =s_013llu_overlay_11_02166900
	mov r0, r4
	str r5, [sp]
	bl OS_SNPrintf
	b _02136238
	arm_func_end ov11_021361DC
_02136220:
	ldr r3, [r6, #8]
	ldr r5, [r6, #0xc]
	ldr r2, _0213645C ; =s_013llu_overlay_11_02166900
	mov r0, r4
	str r5, [sp]
	bl OS_SNPrintf
_02136238:
	ldrh r3, [r6, #0x10]
	ldr r2, _02136460 ; =s_03u_overlay_11_02166908
	add r0, r4, #0xe
	mov r1, #7
	bl OS_SNPrintf
	ldr r0, _02136464 ; =0x027FFE0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02136260
	bl OS_Terminate
_02136260:
	ldr r0, _02136464 ; =0x027FFE0C
	add r1, r4, #0x15
	mov r2, #4
	bl MI_CpuCopy8
	ldr r0, _02136468 ; =0x027FFE10
	ldrb r0, [r0]
	cmp r0, #0
	bne _02136284
	bl OS_Terminate
_02136284:
	ldr r0, _02136468 ; =0x027FFE10
	add r1, r4, #0x1a
	mov r2, #2
	bl MI_CpuCopy8
	mov r1, #0x30
	add r0, sp, #0x16
	strb r1, [r4, #0x1d]
	bl OS_GetMacAddress
	ldr r5, _0213646C ; =s_02x_overlay_11_02166910
	add r7, sp, #0x16
	add r8, r4, #0x1f
	mov r6, #0
_021362B4:
	ldrb r2, [r7], #1
	mov r0, r8
	mov r1, r5
	bl OS_SPrintf
	add r6, r6, #1
	cmp r6, #6
	add r8, r8, #2
	blt _021362B4
	add r0, sp, #0x38
	bl OS_GetOwnerInfo
	ldrb r0, [sp, #0x38]
	ldr r2, _0213646C ; =s_02x_overlay_11_02166910
	mov r1, #3
	cmp r0, #8
	movhs r0, #1
	strcsb r0, [sp, #0x38]
	ldrb r3, [sp, #0x38]
	add r0, r4, #0x2c
	bl OS_SNPrintf
	add r0, sp, #0x3c
	add r1, r4, #0x7e
	mov r2, #0x14
	bl MI_CpuCopy8
	ldrb r1, [sp, #0x3b]
	ldr r2, _02136470 ; =s_02x_02x_overlay_11_02166918
	add r0, r4, #0x2f
	str r1, [sp]
	ldrb r3, [sp, #0x3a]
	mov r1, #5
	bl OS_SNPrintf
	add r0, sp, #0x28
	add r1, sp, #0x1c
	bl RTC_GetDateTime
	cmp r0, #0
	addne sp, sp, #0x8c
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sp, #0x2c]
	ldr r2, _02136474 ; =s_02d_02d_02d_02d_02d_02d_overlay_11_02166924
	str r0, [sp]
	ldr r1, [sp, #0x30]
	add r0, r4, #0x34
	str r1, [sp, #4]
	ldr r3, [sp, #0x1c]
	mov r1, #0xd
	str r3, [sp, #8]
	ldr r3, [sp, #0x20]
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x24]
	str r3, [sp, #0x10]
	ldr r3, [sp, #0x28]
	bl OS_SNPrintf
	bl OS_DisableInterrupts
	mov r6, r0
	bl WCM_GetApMacAddress
	mov r7, r0
	mov r1, #6
	bl DC_InvalidateRange
	cmp r7, #0
	bne _021363B8
	mov r0, r6
	bl OS_RestoreInterrupts
	add sp, sp, #0x8c
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021363B8:
	ldr r5, _0213646C ; =s_02x_overlay_11_02166910
	add r8, r4, #0x41
	mov sb, #0
_021363C4:
	ldrb r2, [r7, sb]
	mov r0, r8
	mov r1, r5
	bl OS_SPrintf
	add sb, sb, #1
	cmp sb, #6
	add r8, r8, #2
	blt _021363C4
	bl DWC_AC_GetApType
	mov r3, r0
	ldr r2, _02136478 ; =s_02d_0000000_00_overlay_11_02166940
	add r0, r4, #0x6f
	mov r1, #0xe
	bl OS_SNPrintf
	add r0, sp, #0x14
	bl WCM_GetApEssid
	mov r5, r0
	mov r1, #0x20
	bl DC_InvalidateRange
	cmp r5, #0
	bne _0213642C
	mov r0, r6
	bl OS_RestoreInterrupts
	add sp, sp, #0x8c
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_0213642C:
	mov r0, r5
	add r1, r4, #0x72
	bl DWCi_AC_GetPostalCode
	mov r0, r5
	add r1, r4, #0x4e
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, #1
	add sp, sp, #0x8c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0213645C: .word s_013llu_overlay_11_02166900
_02136460: .word s_03u_overlay_11_02166908
_02136464: .word 0x027FFE0C
_02136468: .word 0x027FFE10
_0213646C: .word s_02x_overlay_11_02166910
_02136470: .word s_02x_02x_overlay_11_02166918
_02136474: .word s_02d_02d_02d_02d_02d_02d_overlay_11_02166924
_02136478: .word s_02d_0000000_00_overlay_11_02166940

	arm_func_start ov11_0213647C
ov11_0213647C: ; 0x0213647C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x28
	mov r4, r2
	mov r6, r0
	mov r5, r1
	mov r3, #2
	ldr r2, _02136778 ; =s_03d_03d_overlay_11_02166950
	add r0, sp, #4
	mov r1, #0x21
	str r3, [sp]
	bl OS_SNPrintf
	add r0, sp, #4
	bl strlen
	mov r3, r0
	ldr r1, _0213677C ; =s_sdkver_overlay_11_0216695c
	mov r0, r6
	add r2, sp, #4
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl strlen
	mov r3, r0
	ldr r1, _02136780 ; =s_userid_overlay_11_02166964
	mov r0, r6
	mov r2, r5
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0xe
	bl strlen
	mov r3, r0
	ldr r1, _02136784 ; =s_passwd_overlay_11_0216696c
	mov r0, r6
	add r2, r5, #0xe
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x41
	bl strlen
	mov r3, r0
	ldr r1, _02136788 ; =s_bssid_overlay_11_02166974
	mov r0, r6
	add r2, r5, #0x41
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x6f
	bl strlen
	mov r3, r0
	ldr r1, _0213678C ; =s_apinfo_overlay_11_0216697c
	mov r0, r6
	add r2, r5, #0x6f
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x15
	bl strlen
	mov r3, r0
	ldr r1, _02136790 ; =s_gamecd_overlay_11_02166984
	mov r0, r6
	add r2, r5, #0x15
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1a
	bl strlen
	mov r3, r0
	ldr r1, _02136794 ; =s_makercd_overlay_11_0216698c
	mov r0, r6
	add r2, r5, #0x1a
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1d
	bl strlen
	mov r3, r0
	ldr r1, _02136798 ; =s_unitcd_overlay_11_02166994
	mov r0, r6
	add r2, r5, #0x1d
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1f
	bl strlen
	mov r3, r0
	ldr r1, _0213679C ; =s_macadr_overlay_11_0216699c
	mov r0, r6
	add r2, r5, #0x1f
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x2c
	bl strlen
	mov r3, r0
	ldr r1, _021367A0 ; =s_lang_overlay_11_021669a4
	mov r0, r6
	add r2, r5, #0x2c
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x2f
	bl strlen
	mov r3, r0
	ldr r1, _021367A4 ; =s_birth_overlay_11_021669ac
	mov r0, r6
	add r2, r5, #0x2f
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x34
	bl strlen
	mov r3, r0
	ldr r1, _021367A8 ; =s_devtime_overlay_11_021669b4
	mov r0, r6
	add r2, r5, #0x34
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x7e
	bl wcslen
	mov r3, r0
	ldr r1, _021367AC ; =s_devname_overlay_11_021669bc
	mov r0, r6
	add r2, r5, #0x7e
	mov r3, r3, lsl #1
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	cmp r4, #1
	bne _0213671C
	add r0, r5, #0x4e
	bl strlen
	mov r3, r0
	ldr r1, _021367B0 ; =s_ssid_overlay_11_021669c4
	mov r0, r6
	add r2, r5, #0x4e
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_0213647C
_0213671C:
	ldr r2, _021367B4 ; =s_Nitro_WiFi_SDK_d_d_overlay_11_021669cc
	mov r3, #2
	add r0, sp, #4
	mov r1, #0x21
	str r3, [sp]
	bl OS_SNPrintf
	ldr r1, _021367B8 ; =s_User_Agent_overlay_11_021669e4
	add r2, sp, #4
	mov r0, r6
	bl ov11_021370E8
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _021367BC ; =s_HTTP_X_GAMECD_overlay_11_021669f0
	mov r0, r6
	add r2, r5, #0x15
	bl ov11_021370E8
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02136778: .word s_03d_03d_overlay_11_02166950
_0213677C: .word s_sdkver_overlay_11_0216695c
_02136780: .word s_userid_overlay_11_02166964
_02136784: .word s_passwd_overlay_11_0216696c
_02136788: .word s_bssid_overlay_11_02166974
_0213678C: .word s_apinfo_overlay_11_0216697c
_02136790: .word s_gamecd_overlay_11_02166984
_02136794: .word s_makercd_overlay_11_0216698c
_02136798: .word s_unitcd_overlay_11_02166994
_0213679C: .word s_macadr_overlay_11_0216699c
_021367A0: .word s_lang_overlay_11_021669a4
_021367A4: .word s_birth_overlay_11_021669ac
_021367A8: .word s_devtime_overlay_11_021669b4
_021367AC: .word s_devname_overlay_11_021669bc
_021367B0: .word s_ssid_overlay_11_021669c4
_021367B4: .word s_Nitro_WiFi_SDK_d_d_overlay_11_021669cc
_021367B8: .word s_User_Agent_overlay_11_021669e4
_021367BC: .word s_HTTP_X_GAMECD_overlay_11_021669f0

	arm_func_start ov11_021367C0
ov11_021367C0: ; 0x021367C0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r2, _021368C8 ; =0x00001C14
	mov r6, r0
	ldr r4, [r5, #0xc]
	mov r1, #0
	bl MI_CpuFill8
	add r1, r6, #4
	add r0, r6, #0x1000
	mvn r2, #0
	str r2, [r0, #0xa30]
	mov lr, r5
	str r2, [r0, #0xa34]
	add ip, r1, #0x1000
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	ldr r0, _021368CC ; =s_ALLOC_http_lowrecvbuf_overlay_11_02166a30
	ldr r1, _021368D0 ; =0x00000B68
	blx r4
	add r1, r6, #0x1000
	str r0, [r1, #0x9cc]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r1, #0x20]
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _021368D4 ; =s_ALLOC_http_lowsendbuf_overlay_11_02166a48
	ldr r1, _021368D8 ; =0x000005EA
	blx r4
	add r2, r6, #0x1000
	str r0, [r2, #0x9d0]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r2, #0x20]
	ldmeqia sp!, {r4, r5, r6, pc}
	add r1, r6, #0x208
	ldr r2, [r2, #0xc]
	mov r0, r6
	add r1, r1, #0x1800
	bl ov11_02137364
	cmp r0, #0
	bne _0213687C
	add r1, r6, #0x1000
	mov r0, #1
	str r0, [r1, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_021367C0
_0213687C:
	ldr r1, [r5]
	mov r0, r6
	bl ov11_021374A4
	cmp r0, #0
	bne _021368A0
	add r1, r6, #0x1000
	mov r0, #1
	str r0, [r1, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
_021368A0:
	mov r0, r6
	bl ov11_02137028
	add r1, r6, #0x1000
	str r0, [r1, #0x20]
	cmp r0, #0
	moveq r0, #0xff
	streqb r0, [r1]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021368C8: .word 0x00001C14
_021368CC: .word s_ALLOC_http_lowrecvbuf_overlay_11_02166a30
_021368D0: .word 0x00000B68
_021368D4: .word s_ALLOC_http_lowsendbuf_overlay_11_02166a48
_021368D8: .word 0x000005EA

	arm_func_start ov11_021368DC
ov11_021368DC: ; 0x021368DC
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _02136960 ; =s_Connection_overlay_11_02166a60
	ldr r2, _02136964 ; =s_close_overlay_11_02166a6c
	mov r4, r0
	bl ov11_021370E8
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
	add r0, r4, #0x1000
	ldr r0, [r0, #0x9f8]
	ldr r1, _02136968 ; =s_overlay_11_02166a74
	bl strstr
	add r0, r0, #4
	bl strlen
	movs r3, r0
	beq _02136954
	ldr r2, _0213696C ; =s_d_overlay_11_02166a7c
	add r0, sp, #0
	mov r1, #7
	bl OS_SNPrintf
	ldr r1, _02136970 ; =s_Content_Length_overlay_11_02166a80
	add r2, sp, #0
	mov r0, r4
	bl ov11_021370E8
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
	arm_func_end ov11_021368DC
_02136954:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02136960: .word s_Connection_overlay_11_02166a60
_02136964: .word s_close_overlay_11_02166a6c
_02136968: .word s_overlay_11_02166a74
_0213696C: .word s_d_overlay_11_02166a7c
_02136970: .word s_Content_Length_overlay_11_02166a80

	arm_func_start ov11_02136974
ov11_02136974: ; 0x02136974
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	add r0, r5, #0x3f8
	add r2, r5, #0x1000
	mov r3, #0
	add r0, r0, #0x1800
	mov r4, r1
	str r3, [r2, #0xc10]
	bl OS_InitMutex
	add r0, r5, #0x218
	add r0, r0, #0x1800
	bl OS_InitMutex
	add r0, r5, #0x1000
	ldr r0, [r0, #0x18]
	cmp r0, #1
	ldreq r0, _02136A28 ; =OVERLAY11_BSS_02169CC8
	moveq r1, #1
	ldrne r0, _02136A28 ; =OVERLAY11_BSS_02169CC8
	movne r1, #0
	str r1, [r0]
	add r0, r5, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _021369F0
	add r0, r5, #0x338
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02136974
_021369F0:
	add r0, r5, #0x338
	mov r1, #0x1000
	str r1, [sp]
	ldr r1, _02136A2C ; =ov11_02136C58
	mov r2, r5
	add r0, r0, #0x1800
	add r3, r5, #0x1000
	str r4, [sp, #4]
	bl OS_CreateThread
	add r0, r5, #0x338
	add r0, r0, #0x1800
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02136A28: .word OVERLAY11_BSS_02169CC8
_02136A2C: .word ov11_02136C58

	arm_func_start ov11_02136A30
ov11_02136A30: ; 0x02136A30
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0]
	cmp r0, #0xff
	ldmneia sp!, {r4, pc}
	add r0, r4, #0x3f8
	add r0, r0, #0x1800
	bl OS_LockMutex
	add r0, r4, #0x3f8
	add r1, r4, #0x1000
	mov r2, #1
	add r0, r0, #0x1800
	str r2, [r1, #0xc10]
	bl OS_UnlockMutex
	add r0, r4, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02136A30

	arm_func_start ov11_02136A8C
ov11_02136A8C: ; 0x02136A8C
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x130]
	cmp r0, #1
	bne _02136AC0
	add r0, r4, #0x1d4
	add r0, r0, #0x1800
	bl OS_GetLowEntropyData
	add r0, r4, #0x1d4
	add r0, r0, #0x1800
	mov r1, #0x20
	bl CPS_SslAddRandomSeed
	arm_func_end ov11_02136A8C
_02136AC0:
	add r0, r4, #0x3f8
	add r0, r0, #0x1800
	bl OS_LockMutex
	add r0, r4, #0x1000
	ldr r0, [r0, #0xc10]
	cmp r0, #1
	add r0, r4, #0x3f8
	add r0, r0, #0x1800
	bne _02136AF0
	bl OS_UnlockMutex
	mov r0, #0
	ldmia sp!, {r4, pc}
_02136AF0:
	bl OS_UnlockMutex
	mov r0, #0xa
	bl OS_Sleep
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02136B04
ov11_02136B04: ; 0x02136B04
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x138
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x64
	bl MI_CpuFill8
	ldr r0, _02136B54 ; =0x00000B68
	add r1, r4, #0x1000
	str r0, [r1, #0x174]
	ldr r3, [r1, #0x9cc]
	add r0, r4, #0x138
	ldr r2, _02136B58 ; =0x000005EA
	str r3, [r1, #0x178]
	str r2, [r1, #0x180]
	ldr r2, [r1, #0x9d0]
	add r0, r0, #0x1000
	str r2, [r1, #0x184]
	bl CPS_SocRegister
	ldmia sp!, {r4, pc}
	.align 2, 0
_02136B54: .word 0x00000B68
_02136B58: .word 0x000005EA
	arm_func_end ov11_02136B04

	arm_func_start ov11_02136B5C
ov11_02136B5C: ; 0x02136B5C
	ldr ip, _02136B6C ; =FUN_0204E710
	add r0, r0, #0x1000
	ldr r0, [r0, #0x124]
	bx ip
	.align 2, 0
_02136B6C: .word CPS_Resolve
	arm_func_end ov11_02136B5C

	arm_func_start ov11_02136B70
ov11_02136B70: ; 0x02136B70
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r6, [r0, #0xa08]
	add r2, r5, #0x208
	ldr r1, _02136C4C ; =s_overlay_11_02166a74
	mov r0, r6
	add r4, r2, #0x1800
	bl strstr
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _02136C4C ; =s_overlay_11_02166a74
	mov r0, r6
	bl strstr
	add r1, r5, #0x218
	add r6, r0, #4
	add r0, r1, #0x1800
	bl OS_LockMutex
	ldr r0, [r4, #4]
	add r1, r5, #0x218
	sub r2, r0, r6
	add r0, r5, #0x1000
	str r2, [r0, #0xa34]
	add r0, r1, #0x1800
	bl OS_UnlockMutex
	ldr r0, [r4]
	ldr r1, _02136C50 ; =s_Content_Length_overlay_11_02166a90
	bl strstr
	movs r8, r0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _02136C50 ; =s_Content_Length_overlay_11_02166a90
	bl strlen
	mov r7, r0
	ldr r1, _02136C54 ; =s_overlay_11_02166aa4
	add r0, r8, r7
	bl strstr
	mov r6, r0
	add r0, r5, #0x218
	ldrsb r4, [r6]
	mov r1, #0
	add r0, r0, #0x1800
	strb r1, [r6]
	bl OS_LockMutex
	add r0, r8, r7
	bl atol
	add r1, r5, #0x1000
	add r2, r5, #0x218
	str r0, [r1, #0xa30]
	add r0, r2, #0x1800
	bl OS_UnlockMutex
	strb r4, [r6]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02136C4C: .word s_overlay_11_02166a74
_02136C50: .word s_Content_Length_overlay_11_02166a90
_02136C54: .word s_overlay_11_02166aa4
	arm_func_end ov11_02136B70

	arm_func_start ov11_02136C58
ov11_02136C58: ; 0x02136C58
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	add r0, sl, #0x1000
	ldr r8, [r0, #0x1c]
	add r0, sl, #0x138
	add r1, sl, #0x19c
	add r2, sl, #0x208
	add r4, r0, #0x1000
	cmp r8, #0
	mov r0, sl
	add r5, r1, #0x1000
	add r7, r2, #0x1800
	mov fp, #0
	ldrle r8, _02136F60 ; =0x0000EA60
	bl ov11_02136B04
	mov r0, sl
	bl ov11_02136B5C
	movs r6, r0
	add r0, sl, #0x1000
	moveq r1, #2
	streq r1, [r0, #0x20]
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str r6, [r0, #0x12c]
	bl CPS_SocUse
	add r0, sl, #0x1000
	ldr r0, [r0, #0x130]
	cmp r0, #1
	bne _02136D0C
	mov r0, r5
	mov r1, #0
	mov r2, #0x830
	bl MI_CpuFill8
	ldr r1, _02136F64 ; =ov11_02137358
	add r0, sl, #0x1000
	str r1, [r5, #0x810]
	ldr r1, [r0, #0x124]
	ldr r0, _02136F68 ; =PTR_ptr_null_overlay_11_02167838_overlay_11_02166a00
	str r1, [r5, #0x800]
	mov r1, #0xc
	str r5, [r4, #0xc]
	bl CPS_SetRootCa
	mov r0, #1
	bl CPS_SetSsl
	arm_func_end ov11_02136C58
_02136D0C:
	add r0, sl, #0x1100
	ldrh r1, [r0, #0x34]
	mov r2, r6
	mov r0, #0
	bl CPS_SocBind
	bl CPS_TcpConnect
	cmp r0, #0
	add r0, sl, #0x1000
	beq _02136D48
	mov r1, #3
	str r1, [r0, #0x20]
	bl CPS_SocRelease
	bl CPS_SocUnRegister
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02136D48:
	ldr r4, [r0, #0x9f8]
	mov r0, r4
	bl strlen
	mov r1, r0
	mov r0, r4
	bl CPS_SocWrite
	str r0, [sp, #0x10]
	cmp r0, #0
	bgt _02136D7C
	add r0, sl, #0x1000
	mov r1, #5
	str r1, [r0, #0x20]
	b _02136F48
_02136D7C:
	bl CPS_SocFlush
	mov r0, sl
	bl ov11_02136A8C
	cmp r0, #0
	bne _02136DA0
	add r0, sl, #0x1000
	mov r1, #7
	str r1, [r0, #0x20]
	b _02136F48
_02136DA0:
	ldr r0, [r7]
	str r0, [r7, #4]
	ldr r1, [r7]
	ldr r0, [r7, #0xc]
	add r0, r1, r0
	str r0, [r7, #8]
	bl OS_GetTick
	str r0, [sp, #8]
	add r0, sl, #0x234
	str r1, [sp, #4]
	add r5, sl, #0x218
	add r6, r0, #0x1800
	add r4, sl, #0x1000
_02136DD4:
	ldr r0, _02136F6C ; =CPSMyIp
	ldr r0, [r0]
	cmp r0, #0
	bne _02136DF4
	add r0, sl, #0x1000
	mov r1, #5
	str r1, [r0, #0x20]
	b _02136F48
_02136DF4:
	bl CPS_SocGetLength
	str r0, [sp, #0x10]
	cmp r0, #0
	blt _02136F24
	ble _02136EA8
	bl OS_GetTick
	str r0, [sp, #8]
	add r0, sp, #0x10
	str r1, [sp, #4]
	bl CPS_SocRead
	cmp r0, #0
	beq _02136F24
	ldmib r7, {r1, r2}
	sub r2, r2, #1
	ldr sb, [sp, #0x10]
	sub r2, r2, r1
	cmp sb, r2
	movge sb, r2
	mov r2, sb
	bl MI_CpuCopy8
	ldr r0, [r7, #4]
	cmp fp, #1
	add r1, r0, sb
	str r1, [r7, #4]
	mov r0, #0
	strb r0, [r1]
	bne _02136E80
	add r0, r5, #0x1800
	bl OS_LockMutex
	ldr r1, [r6]
	add r0, r5, #0x1800
	add r1, r1, sb
	str r1, [r6]
	bl OS_UnlockMutex
	b _02136E8C
_02136E80:
	mov r0, sl
	bl ov11_02136B70
	mov fp, r0
_02136E8C:
	ldr r0, [sp, #0x10]
	cmp r0, sb
	bls _02136EA0
	bl CPS_SocConsume
	b _02136F24
_02136EA0:
	mov r0, sb
	bl CPS_SocConsume
_02136EA8:
	ldr r1, [r4, #0xa30]
	cmp r1, #0
	ldrge r0, [r4, #0xa34]
	cmpge r0, r1
	bge _02136F24
	bl OS_GetTick
	ldr r2, [sp, #8]
	mov r3, #0
	subs r2, r0, r2
	ldr r0, [sp, #4]
	sbc r0, r1, r0
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	ldr r2, _02136F70 ; =0x000082EA
	bl _ll_udiv
	cmp r1, r8, asr #31
	cmpeq r0, r8
	bls _02136F04
	add r0, sl, #0x1000
	mov r1, #6
	str r1, [r0, #0x20]
	b _02136F48
_02136F04:
	mov r0, sl
	bl ov11_02136A8C
	cmp r0, #0
	bne _02136DD4
	add r0, sl, #0x1000
	mov r1, #7
	str r1, [r0, #0x20]
	b _02136F48
_02136F24:
	bl CPS_TcpShutdown
	bl CPS_TcpClose
	bl CPS_SocRelease
	bl CPS_SocUnRegister
	add r0, sl, #0x1000
	mov r1, #8
	str r1, [r0, #0x20]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02136F48:
	bl CPS_TcpShutdown
	bl CPS_TcpClose
	bl CPS_SocRelease
	bl CPS_SocUnRegister
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02136F60: .word 0x0000EA60
_02136F64: .word ov11_02137358
_02136F68: .word PTR_ptr_null_overlay_11_02167838_overlay_11_02166a00
_02136F6C: .word CPSMyIp
_02136F70: .word 0x000082EA

	arm_func_start ov11_02136F74
ov11_02136F74: ; 0x02136F74
	stmdb sp!, {r3, r4, r5, lr}
	movs r5, r0
	add r1, r5, #0x1000
	ldr r4, [r1, #0x14]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r1, r5, #0x238
	add r1, r1, #0x1800
	mov r2, #0x20
	bl ov11_02137AD8
	add r1, r5, #0x208
	mov r0, r5
	add r1, r1, #0x1800
	bl ov11_021373BC
	add r1, r5, #0x1f8
	mov r0, r5
	add r1, r1, #0x1800
	bl ov11_021373BC
	add r0, r5, #0x1000
	ldr r1, [r0, #0x9cc]
	cmp r1, #0
	beq _02136FE0
	ldr r0, _0213701C ; =s_FREE_http_lowrecvbuf_overlay_11_02166aa8
	mov r2, #0
	blx r4
	add r0, r5, #0x1000
	mov r1, #0
	str r1, [r0, #0x9cc]
	arm_func_end ov11_02136F74
_02136FE0:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x9d0]
	cmp r1, #0
	beq _02137008
	ldr r0, _02137020 ; =s_FREE_http_lowsendbuf_overlay_11_02166ac0
	mov r2, #0
	blx r4
	add r0, r5, #0x1000
	mov r1, #0
	str r1, [r0, #0x9d0]
_02137008:
	ldr r2, _02137024 ; =0x00001C14
	mov r0, r5
	mov r1, #0
	bl MI_CpuFill8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0213701C: .word s_FREE_http_lowrecvbuf_overlay_11_02166aa8
_02137020: .word s_FREE_http_lowsendbuf_overlay_11_02166ac0
_02137024: .word 0x00001C14

	arm_func_start ov11_02137028
ov11_02137028: ; 0x02137028
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	add r0, r7, #0x1000
	ldr r1, [r0, #8]
	add r0, r7, #0x1f8
	cmp r1, #0
	ldreq r6, _021370E0 ; =s_POST_s_HTTP_1_0_Content_type_a_overlay_11_02166ad8
	add r5, r0, #0x1800
	add r0, r7, #0x1000
	ldrne r6, _021370E4 ; =s_GET_s_HTTP_1_0_Host_s_overlay_11_02166b2c
	ldr r0, [r0, #0x124]
	bl strlen
	mov r4, r0
	mov r0, r6
	bl strlen
	add r1, r7, #0x1000
	mov r8, r0
	ldr r0, [r1, #0x128]
	bl strlen
	sub r1, r8, #4
	add r0, r1, r0
	add r2, r4, r0
	add r0, r7, #0x1f8
	add r1, r0, #0x1800
	add r2, r2, #0x400
	mov r0, r7
	bl ov11_02137364
	cmp r0, #1
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r3, r7, #0x1000
	ldr r0, [r3, #0x124]
	mov r2, r6
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	ldr r3, [r3, #0x128]
	bl OS_SNPrintf
	ldr r1, [r5, #4]
	add r0, r1, r0
	str r0, [r5, #4]
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021370E0: .word s_POST_s_HTTP_1_0_Content_type_a_overlay_11_02166ad8
_021370E4: .word s_GET_s_HTTP_1_0_Host_s_overlay_11_02166b2c
	arm_func_end ov11_02137028

	arm_func_start ov11_021370E8
ov11_021370E8: ; 0x021370E8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r6, r2
	add r2, r8, #0x1f8
	mov r0, r6
	mov r7, r1
	add r5, r2, #0x1800
	bl strlen
	mov r4, r0
	ldr r0, _021371BC ; =s_s_s_overlay_11_02166b4c
	bl strlen
	mov sb, r0
	mov r0, r7
	bl strlen
	sub r1, sb, #4
	add r0, r1, r0
	add r4, r4, r0
	ldmib r5, {r1, r2}
	add r0, r4, #1
	sub r1, r2, r1
	cmp r0, r1
	ble _02137160
	sub r2, r4, r1
	mov r0, r8
	mov r1, r5
	add r2, r2, #1
	bl ov11_021373FC
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov11_021370E8
_02137160:
	ldr r0, [r5]
	ldr r1, _021371C0 ; =s_overlay_11_02166a74
	bl strstr
	add sb, r0, #2
	ldrsb r8, [r0, #2]
	mov r0, sb
	bl strlen
	add r2, r0, #1
	add r0, sb, r4
	mov r1, sb
	bl memmove
	ldr r2, _021371BC ; =s_s_s_overlay_11_02166b4c
	str r6, [sp]
	mov r3, r7
	mov r0, sb
	add r1, r4, #1
	bl OS_SNPrintf
	strb r8, [sb, r0]
	ldr r1, [r5, #4]
	mov r0, #0
	add r1, r1, r4
	str r1, [r5, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021371BC: .word s_s_s_overlay_11_02166b4c
_021371C0: .word s_overlay_11_02166a74

	arm_func_start ov11_021371C4
ov11_021371C4: ; 0x021371C4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	add r0, sl, #0x1000
	ldr r4, [r0, #0x9f4]
	add r0, sl, #0x1f8
	cmp r4, #0
	ldreq r7, _021372C8 ; =s_s_overlay_11_02166b58
	mov r8, r2
	add r4, sl, #0x1000
	add r6, r0, #0x1800
	ldr r0, [r4, #0x9f4]
	mov fp, r3
	add r5, r0, #1
	mov r2, #0
	mov sb, r1
	ldrne r7, _021372CC ; =s_s_overlay_11_02166b5c
	mov r0, r8
	mov r1, fp
	mov r3, r2
	str r5, [r4, #0x9f4]
	bl DWC_Auth_Base64Encode
	mov r5, r0
	mov r0, r7
	bl strlen
	mov r4, r0
	mov r0, sb
	bl strlen
	sub r1, r4, #2
	add r2, r1, r0
	ldmib r6, {r0, r1}
	add r2, r5, r2
	sub r1, r1, r0
	cmp r2, r1
	ble _02137274
	sub r2, r2, r1
	mov r0, sl
	mov r1, r6
	add r2, r2, #1
	bl ov11_021373FC
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldmib r6, {r0, r1}
	sub r1, r1, r0
	arm_func_end ov11_021371C4
_02137274:
	mov r2, r7
	mov r3, sb
	bl OS_SNPrintf
	ldr r2, [r6, #4]
	mov r1, fp
	add r2, r2, r0
	str r2, [r6, #4]
	ldr r0, [r6, #8]
	sub r3, r0, r2
	mov r0, r8
	sub r3, r3, #1
	bl DWC_Auth_Base64Encode
	cmp r0, #0
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r6, #4]
	mov r0, #0
	add r1, r1, r5
	str r1, [r6, #4]
	strb r0, [r1]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021372C8: .word s_s_overlay_11_02166b58
_021372CC: .word s_s_overlay_11_02166b5c

	arm_func_start ov11_021372D0
ov11_021372D0: ; 0x021372D0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	add r1, r7, #0x1f8
	mov r0, r6
	add r5, r1, #0x1800
	bl strlen
	mov r4, r0
	ldmib r5, {r0, r1}
	sub r1, r1, r0
	cmp r4, r1
	ble _02137328
	sub r2, r4, r1
	mov r0, r7
	mov r1, r5
	add r2, r2, #1
	bl ov11_021373FC
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldmib r5, {r0, r1}
	sub r1, r1, r0
	arm_func_end ov11_021372D0
_02137328:
	ldr r2, _02137354 ; =s_s_overlay_11_02166b64
	mov r3, r6
	bl OS_SNPrintf
	cmp r0, r4
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r5, #4]
	add r0, r1, r0
	str r0, [r5, #4]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02137354: .word s_s_overlay_11_02166b64

	arm_func_start ov11_02137358
ov11_02137358: ; 0x02137358
	tst r0, #0x8000
	bicne r0, r0, #0x8000
	bx lr
	arm_func_end ov11_02137358

	arm_func_start ov11_02137364
ov11_02137364: ; 0x02137364
	stmdb sp!, {r3, r4, r5, lr}
	movs r4, r2
	add r0, r0, #0x1000
	ldr r2, [r0, #0x10]
	mov r5, r1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _021373B8 ; =s_ALLOC_buf_buffer_overlay_11_02166b68
	mov r1, r4
	blx r2
	str r0, [r5]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	str r0, [r5, #4]
	str r4, [r5, #0xc]
	ldr r0, [r5]
	add r0, r0, r4
	str r0, [r5, #8]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021373B8: .word s_ALLOC_buf_buffer_overlay_11_02166b68
	arm_func_end ov11_02137364

	arm_func_start ov11_021373BC
ov11_021373BC: ; 0x021373BC
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4]
	add r0, r0, #0x1000
	cmp r1, #0
	ldr r3, [r0, #0x14]
	beq _021373E4
	ldr r0, _021373F8 ; =s_FREE_buf_buffer_overlay_11_02166b7c
	mov r2, #0
	blx r3
	arm_func_end ov11_021373BC
_021373E4:
	mov r0, r4
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021373F8: .word s_FREE_buf_buffer_overlay_11_02166b7c

	arm_func_start ov11_021373FC
ov11_021373FC: ; 0x021373FC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	add r0, r0, #0x1000
	ldr r7, [r0, #0x14]
	mov r5, r2
	mov r6, r1
	cmp r5, #0
	ldr r2, [r0, #0x10]
	movle r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0xc]
	ldr r0, _0213749C ; =s_ALLOC_newptr_overlay_11_02166b90
	add r1, r1, r5
	blx r2
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6]
	ldr r2, [r6, #0xc]
	mov r1, r4
	bl MI_CpuCopy8
	ldr r1, [r6]
	ldr r0, _021374A0 ; =s_FREE_buf_buffer_overlay_11_02166b7c
	mov r2, #0
	blx r7
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldmia r6, {r0, r1}
	sub r0, r4, r0
	add r0, r1, r0
	str r0, [r6, #4]
	ldr r1, [r6, #0xc]
	mov r0, #1
	add r1, r1, r5
	str r1, [r6, #0xc]
	str r4, [r6]
	ldr r1, [r6, #0xc]
	add r1, r4, r1
	str r1, [r6, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0213749C: .word s_ALLOC_newptr_overlay_11_02166b90
_021374A0: .word s_FREE_buf_buffer_overlay_11_02166b7c
	arm_func_end ov11_021373FC

	arm_func_start ov11_021374A4
ov11_021374A4: ; 0x021374A4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r0
	mov r0, r6
	mov r4, #0
	bl strlen
	cmp r0, #0x100
	movhs r0, r4
	ldmhsia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x24
	mov r1, r6
	add r0, r0, #0x1000
	mov r2, #0x100
	bl strncpy
	mov r0, r6
	bl strlen
	add r1, r5, #0x24
	mov r6, r0
	add r0, r1, #0x1000
	bl strlen
	cmp r6, r0
	movne r0, r4
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x24
	ldr r1, _021375E8 ; =s_http_overlay_11_02166ba0
	add r0, r0, #0x1000
	bl strstr
	cmp r0, #0
	beq _02137540
	add r0, r5, #0x2b
	add r1, r0, #0x1000
	add r0, r5, #0x1000
	str r1, [r0, #0x124]
	mov r1, r4
	str r1, [r0, #0x130]
	add r0, r5, #0x1100
	mov r1, #0x50
	strh r1, [r0, #0x34]
	b _0213757C
	arm_func_end ov11_021374A4
_02137540:
	add r0, r5, #0x24
	ldr r1, _021375EC ; =s_https_overlay_11_02166ba8
	add r0, r0, #0x1000
	bl strstr
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, pc}
	add r2, r0, #8
	add r0, r5, #0x1000
	mov r1, #1
	str r2, [r0, #0x124]
	str r1, [r0, #0x130]
	rsb r1, r1, #0x1bc
	add r0, r5, #0x1100
	strh r1, [r0, #0x34]
_0213757C:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x124]
	ldr r1, _021375F0 ; =s_overlay_11_02166bb4
	bl strstr
	cmp r0, #0
	movne r1, #0
	strneb r1, [r0]
	addne r4, r0, #1
	add r0, r5, #0x1000
	ldr r0, [r0, #0x124]
	ldr r1, _021375F4 ; =s_overlay_11_02166bb8
	bl strstr
	cmp r0, #0
	mov r1, #0
	addeq r0, r5, #0x1000
	strneb r1, [r0]
	addne r1, r0, #1
	addne r0, r5, #0x1000
	str r1, [r0, #0x128]
	cmp r4, #0
	beq _021375E0
	mov r0, r4
	bl atol
	add r1, r5, #0x1100
	strh r0, [r1, #0x34]
_021375E0:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021375E8: .word s_http_overlay_11_02166ba0
_021375EC: .word s_https_overlay_11_02166ba8
_021375F0: .word s_overlay_11_02166bb4
_021375F4: .word s_overlay_11_02166bb8

	arm_func_start ov11_021375F8
ov11_021375F8: ; 0x021375F8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	add r0, r0, #0x1000
	ldmib r8, {r1, r4}
	cmp r4, r1
	ldr r4, [r0, #0x10]
	ldr r5, [r0, #0x14]
	mov r7, r2
	mov r6, r3
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl strlen
	mov r1, r0
	ldr r0, _0213773C ; =s_ALLOC_result_entry_i_label_overlay_11_02166bbc
	add r1, r1, #1
	blx r4
	ldr r2, [r8]
	ldr r1, [r8, #8]
	str r0, [r2, r1, lsl #3]
	ldr r1, [r8, #8]
	ldr r2, [r8]
	ldr r0, [r2, r1, lsl #3]
	cmp r0, #0
	beq _021376D4
	mov r0, r6
	bl strlen
	mov r1, r0
	ldr r0, _02137740 ; =s_ALLOC_result_entry_i_value_overlay_11_02166bdc
	add r1, r1, #1
	blx r4
	ldr r2, [r8]
	ldr r1, [r8, #8]
	add r1, r2, r1, lsl #3
	str r0, [r1, #4]
	ldr r1, [r8, #8]
	ldr r2, [r8]
	add r0, r2, r1, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021376D4
	ldr r0, [r2, r1, lsl #3]
	mov r1, r7
	bl strcpy
	ldr r2, [r8]
	ldr r0, [r8, #8]
	mov r1, r6
	add r0, r2, r0, lsl #3
	ldr r0, [r0, #4]
	bl strcpy
	ldr r1, [r8, #8]
	mov r0, #1
	add r1, r1, #1
	str r1, [r8, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov11_021375F8
_021376D4:
	ldr r1, [r2, r1, lsl #3]
	cmp r1, #0
	beq _021376FC
	ldr r0, _02137744 ; =s_FREE_result_entry_i_label_overlay_11_02166bfc
	mov r2, #0
	blx r5
	ldr r1, [r8]
	ldr r0, [r8, #8]
	mov r2, #0
	str r2, [r1, r0, lsl #3]
_021376FC:
	ldr r1, [r8]
	ldr r0, [r8, #8]
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02137734
	ldr r0, _02137748 ; =s_FREE_result_entry_i_value_overlay_11_02166c18
	mov r2, #0
	blx r5
	ldr r1, [r8]
	ldr r0, [r8, #8]
	mov r2, #0
	add r0, r1, r0, lsl #3
	str r2, [r0, #4]
_02137734:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0213773C: .word s_ALLOC_result_entry_i_label_overlay_11_02166bbc
_02137740: .word s_ALLOC_result_entry_i_value_overlay_11_02166bdc
_02137744: .word s_FREE_result_entry_i_label_overlay_11_02166bfc
_02137748: .word s_FREE_result_entry_i_value_overlay_11_02166c18

	arm_func_start ov11_0213774C
ov11_0213774C: ; 0x0213774C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov r4, r0
	add r0, r4, #0x238
	mov r6, r1
	add r0, r0, #0x1800
	mov r3, #0x20
	mov r1, #0
	mov r2, #0x100
	str r0, [sp, #4]
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	bl MI_CpuFill8
	add r0, r4, #0x1000
	ldr r5, [r0, #0xa08]
	ldr r1, _021379CC ; =s_overlay_11_02166a74
	mov r0, r5
	bl strstr
	str r0, [sp]
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r0, #4
	bl strlen
	ldr r1, [sp]
	add r1, r1, #4
	add fp, r1, r0
	ldr r1, _021379D0 ; =s_overlay_11_02166c34
	mov r0, r5
	bl strstr
	movs r7, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrsb sb, [r7, #4]
	ldr r2, _021379D4 ; =s_httpresult_overlay_11_02166c38
	mov r5, #0
	add r1, sp, #4
	mov r0, r4
	add r3, r7, #1
	strb r5, [r7, #4]
	bl ov11_021375F8
	cmp r0, #1
	addne sp, sp, #0x10
	strb sb, [r7, #4]
	movne r0, r5
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r6, #1
	beq _0213782C
	ldr r1, _021379D8 ; =s_200_overlay_11_02166c44
	add r0, r7, #1
	mov r2, #3
	bl strncmp
	cmp r0, #0
	beq _02137838
	arm_func_end ov11_0213774C
_0213782C:
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02137838:
	ldr r1, _021379DC ; =s_overlay_11_02166aa4
	add r0, r7, #5
	bl strstr
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, r5
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add sb, r0, #2
	b _021378EC
_0213785C:
	ldr r1, _021379E0 ; =s_overlay_11_02166c48
	mov r0, sb
	bl strstr
	movs r6, r0
	beq _02137900
	ldrsb r7, [r6]
	mov r1, #0
	add sl, r6, #2
	strb r1, [r6]
	ldr r1, _021379DC ; =s_overlay_11_02166aa4
	mov r0, sl
	bl strstr
	movs r5, r0
	streqb r7, [r6]
	beq _02137900
	ldrsb r8, [r5]
	mov r1, #0
	mov r2, sb
	strb r1, [r5]
	mov r0, r4
	add r1, sp, #4
	mov r3, sl
	bl ov11_021375F8
	cmp r0, #1
	beq _021378D4
	strb r7, [r6]
	add sp, sp, #0x10
	strb r8, [r5]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021378D4:
	mov r0, sl
	bl strlen
	strb r7, [r6]
	add r0, sl, r0
	strb r8, [r5]
	add sb, r0, #2
_021378EC:
	ldrsb r0, [sb]
	cmp r0, #0xd
	ldrnesb r0, [sb, #1]
	cmpne r0, #0xa
	bne _0213785C
_02137900:
	ldr r0, [sp]
	add r7, r0, #4
	cmp r7, fp
	bhs _021379C0
_02137910:
	ldr r1, _021379E4 ; =s_overlay_11_02166c4c
	mov r0, r7
	bl strstr
	movs r5, r0
	beq _021379C0
	ldrsb sb, [r5]
	mov r1, #0
	add r6, r5, #1
	strb r1, [r5]
	ldr r1, _021379E8 ; =s_overlay_11_02166c50
	mov r0, r6
	bl strstr
	movs sl, r0
	bne _02137958
	ldr r1, _021379DC ; =s_overlay_11_02166aa4
	mov r0, r6
	bl strstr
	mov sl, r0
_02137958:
	cmp sl, #0
	ldrnesb r8, [sl]
	movne r0, #0
	mov r2, r7
	strneb r0, [sl]
	mov r0, r4
	add r1, sp, #4
	mov r3, r6
	bl ov11_021375F8
	cmp r0, #1
	beq _0213799C
	strb sb, [r5]
	cmp sl, #0
	add sp, sp, #0x10
	strneb r8, [sl]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213799C:
	mov r0, r6
	bl strlen
	add r0, r6, r0
	strb sb, [r5]
	cmp sl, #0
	add r7, r0, #1
	strneb r8, [sl]
	cmp r7, fp
	blo _02137910
_021379C0:
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021379CC: .word s_overlay_11_02166a74
_021379D0: .word s_overlay_11_02166c34
_021379D4: .word s_httpresult_overlay_11_02166c38
_021379D8: .word s_200_overlay_11_02166c44
_021379DC: .word s_overlay_11_02166aa4
_021379E0: .word s_overlay_11_02166c48
_021379E4: .word s_overlay_11_02166c4c
_021379E8: .word s_overlay_11_02166c50

	arm_func_start ov11_021379EC
ov11_021379EC: ; 0x021379EC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
	arm_func_end ov11_021379EC
_021379FC:
	add r0, r6, r4, lsl #3
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa38]
	cmp r1, #0
	beq _02137A3C
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _02137A30
	add r0, r6, r4, lsl #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0xa3c]
	ldmia sp!, {r4, r5, r6, pc}
_02137A30:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021379FC
_02137A3C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_02137A44
ov11_02137A44: ; 0x02137A44
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r2
	mov r5, r3
	bl ov11_021379EC
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl strlen
	mov r1, r0
	mov r0, r4
	mov r2, r6
	mov r3, r5
	bl ov11_021397A8
	mvn r1, #0
	cmp r0, r1
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r0, r5
	ldmhsia sp!, {r4, r5, r6, pc}
	mov r1, #0
	strb r1, [r6, r0]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02137A44

	arm_func_start ov11_02137A98
ov11_02137A98: ; 0x02137A98
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r2
	mov r5, r3
	bl ov11_021379EC
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl strlen
	cmp r0, r5
	movge r0, #0
	ldmgeia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	bl strcpy
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02137A98

	arm_func_start ov11_02137AD8
ov11_02137AD8: ; 0x02137AD8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add r0, r0, #0x1000
	ldr r6, [r0, #0x14]
	mov sb, r2
	mov sl, r1
	mov r8, #0
	cmp sb, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr fp, _02137B58 ; =s_FREE_array_entry_i_label_overlay_11_02166c54
	ldr r7, _02137B5C ; =s_FREE_array_entry_i_value_overlay_11_02166c70
	mov r5, r8
	mov r4, r8
	arm_func_end ov11_02137AD8
_02137B08:
	ldr r1, [sl, r8, lsl #3]
	cmp r1, #0
	beq _02137B24
	mov r0, fp
	mov r2, #0
	blx r6
	str r5, [sl, r8, lsl #3]
_02137B24:
	add r0, sl, r8, lsl #3
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02137B48
	mov r0, r7
	mov r2, #0
	blx r6
	add r0, sl, r8, lsl #3
	str r4, [r0, #4]
_02137B48:
	add r8, r8, #1
	cmp r8, sb
	blt _02137B08
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02137B58: .word s_FREE_array_entry_i_label_overlay_11_02166c54
_02137B5C: .word s_FREE_array_entry_i_value_overlay_11_02166c70

	arm_func_start DWC_Netcheck_Create
DWC_Netcheck_Create: ; 0x02137B60
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02137C28 ; =OVERLAY11_BSS_02169CCC
	mov r5, r0
	ldr r0, [r1]
	ldr r4, [r5]
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _02137C2C ; =s_ALLOC_DWCnetcheck_overlay_11_02166cb4
	ldr r1, _02137C30 ; =0x000011F4
	blx r4
	ldr r1, _02137C28 ; =OVERLAY11_BSS_02169CCC
	cmp r0, #0
	str r0, [r1]
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, _02137C30 ; =0x000011F4
	mov r1, #0
	bl MI_CpuFill8
	ldr ip, _02137C28 ; =OVERLAY11_BSS_02169CCC
	ldr r1, _02137C34 ; =0xFFFE7961
	ldr r0, [ip]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	ldr r3, [ip]
	ldmia r5, {r0, r1, r2}
	add r3, r3, #0x108
	add r3, r3, #0x1000
	stmia r3, {r0, r1, r2}
	ldr r0, [ip, #0x14]
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _02137C38 ; =s_ALLOC_DWChttp_overlay_11_02166cc8
	ldr r1, _02137C3C ; =0x00001C14
	blx r4
	ldr r1, _02137C28 ; =OVERLAY11_BSS_02169CCC
	cmp r0, #0
	str r0, [r1, #0x14]
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	str r0, [r1, #4]
	ldr r0, [r1]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_InitMutex
	bl ov11_02137DF8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02137C28: .word OVERLAY11_BSS_02169CCC
_02137C2C: .word s_ALLOC_DWCnetcheck_overlay_11_02166cb4
_02137C30: .word 0x000011F4
_02137C34: .word 0xFFFE7961
_02137C38: .word s_ALLOC_DWChttp_overlay_11_02166cc8
_02137C3C: .word 0x00001C14
	arm_func_end DWC_Netcheck_Create

	arm_func_start DWC_Netcheck_Destroy
DWC_Netcheck_Destroy: ; 0x02137C40
	stmdb sp!, {r4, lr}
	ldr r0, _02137D24 ; =OVERLAY11_BSS_02169CCC
	ldr r1, [r0]
	ldr r0, [r0, #0x14]
	add r1, r1, #0x1000
	cmp r0, #0
	ldr r4, [r1, #0x10c]
	beq _02137C84
	bl ov11_02136F74
	ldr r1, _02137D24 ; =OVERLAY11_BSS_02169CCC
	ldr r0, _02137D28 ; =s_FREE_DWChttp_overlay_11_02166cd8
	ldr r1, [r1, #0x14]
	mov r2, #0
	blx r4
	ldr r0, _02137D24 ; =OVERLAY11_BSS_02169CCC
	mov r1, #0
	str r1, [r0, #0x14]
	arm_func_end DWC_Netcheck_Destroy
_02137C84:
	bl DWC_Auth_Destroy
	ldr r0, _02137D24 ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x1000
	ldr r1, [r0, #0x114]
	cmp r1, #0
	beq _02137CC8
	ldr r0, _02137D2C ; =s_FREE_DWCnetcheck_body_302_overlay_11_02166ce8
	mov r2, #0
	blx r4
	ldr r0, _02137D24 ; =OVERLAY11_BSS_02169CCC
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #0x114]
_02137CC8:
	ldr r0, _02137D24 ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x118]
	cmp r1, #0
	beq _02137D00
	ldr r0, _02137D30 ; =s_FREE_DWCnetcheck_body_wayport_overlay_11_02166d04
	mov r2, #0
	blx r4
	ldr r0, _02137D24 ; =OVERLAY11_BSS_02169CCC
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #0x118]
_02137D00:
	ldr r1, _02137D24 ; =OVERLAY11_BSS_02169CCC
	ldr r0, _02137D34 ; =s_FREE_DWCnetcheck_overlay_11_02166d24
	ldr r1, [r1]
	mov r2, #0
	blx r4
	ldr r0, _02137D24 ; =OVERLAY11_BSS_02169CCC
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02137D24: .word OVERLAY11_BSS_02169CCC
_02137D28: .word s_FREE_DWChttp_overlay_11_02166cd8
_02137D2C: .word s_FREE_DWCnetcheck_body_302_overlay_11_02166ce8
_02137D30: .word s_FREE_DWCnetcheck_body_wayport_overlay_11_02166d04
_02137D34: .word s_FREE_DWCnetcheck_overlay_11_02166d24

	arm_func_start DWC_Netcheck_Abort
DWC_Netcheck_Abort: ; 0x02137D38
	stmdb sp!, {r3, lr}
	ldr r0, _02137D9C ; =OVERLAY11_BSS_02169CCC
	ldr r1, [r0]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _02137D5C
	bl ov11_02136A30
	arm_func_end DWC_Netcheck_Abort
_02137D5C:
	bl ov11_02135578
	ldr r0, _02137D9C ; =OVERLAY11_BSS_02169CCC
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x188]
	cmp r0, #0
	beq _02137D84
	add r0, r1, #0x11c
	add r0, r0, #0x1000
	bl OS_JoinThread
_02137D84:
	ldr r0, _02137D9C ; =OVERLAY11_BSS_02169CCC
	mvn r1, #6
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02137D9C: .word OVERLAY11_BSS_02169CCC

	arm_func_start DWC_Netcheck_GetError
DWC_Netcheck_GetError: ; 0x02137DA0
	stmdb sp!, {r4, lr}
	ldr r0, _02137DDC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r0, _02137DDC ; =OVERLAY11_BSS_02169CCC
	ldr r1, [r0]
	add r0, r1, #0x1dc
	add r1, r1, #0x1000
	add r0, r0, #0x1000
	ldr r4, [r1]
	bl OS_UnlockMutex
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02137DDC: .word OVERLAY11_BSS_02169CCC
	arm_func_end DWC_Netcheck_GetError

	arm_func_start DWC_Netcheck_GetReturnCode
DWC_Netcheck_GetReturnCode: ; 0x02137DE0
	ldr r0, _02137DF4 ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_02137DF4: .word OVERLAY11_BSS_02169CCC
	arm_func_end DWC_Netcheck_GetReturnCode

	arm_func_start ov11_02137DF8
ov11_02137DF8: ; 0x02137DF8
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _02137E78 ; =OVERLAY11_BSS_02169CCC
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x188]
	cmp r0, #0
	beq _02137E30
	add r0, r1, #0x11c
	add r0, r0, #0x1000
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, pc}
	arm_func_end ov11_02137DF8
_02137E30:
	ldr r0, _02137E78 ; =OVERLAY11_BSS_02169CCC
	mov r3, #0x1000
	ldr r2, [r0]
	ldr r1, _02137E7C ; =ov11_02137E80
	add r0, r2, #0x11c
	str r3, [sp]
	mov ip, #0x10
	add r0, r0, #0x1000
	add r3, r2, #0x1000
	str ip, [sp, #4]
	bl OS_CreateThread
	ldr r0, _02137E78 ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0]
	add r0, r0, #0x11c
	add r0, r0, #0x1000
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_02137E78: .word OVERLAY11_BSS_02169CCC
_02137E7C: .word ov11_02137E80

	arm_func_start ov11_02137E80
ov11_02137E80: ; 0x02137E80
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x29c
	ldr r5, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mov sb, #0
	ldr r0, [r5]
	mov fp, sb
	add r0, r0, #0x1000
	ldr r7, [r0, #0x108]
	ldr r8, [r0, #0x10c]
	mvn r0, #2
	str r0, [sp, #0x20]
	sub r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	mov sl, sb
	sub r0, r0, #2
	str r0, [sp, #0x28]
	ldr r0, _02138D00 ; =0x00009C40
	mov r4, sb
	mov r0, r0, lsr #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	arm_func_end ov11_02137E80
_02137EE0:
	ldr r0, _02138D04 ; =ptr_s_http_conntest_nintendowifi_net_overlay_11_02166c90_overlay_11_02166c8c
	ldr r1, _02138D08 ; =OVERLAY11_BSS_02169CE4
	ldr r0, [r0]
	str r0, [r5, #0x18]
	mov r0, #1
	str r0, [r5, #0x1c]
	mov r0, #0x1000
	str r0, [r5, #0x20]
	str r7, [r5, #0x24]
	ldr r0, [sp, #0x18]
	str r8, [r5, #0x28]
	str r0, [r5, #0x30]
	ldr r0, [r5]
	add r2, r0, #0x1000
	ldr r0, [sp, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r5, #0x14]
	bl ov11_021367C0
	cmp r0, #0
	beq _02137F48
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #1
	bl ov11_02138D84
	b _02138CA8
_02137F48:
	ldr r0, [r5, #0x14]
	bl ov11_021368DC
	cmp r0, #0
	beq _02137F70
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #1
	bl ov11_02138D84
	b _02138CA8
_02137F70:
	ldr r0, _02138D0C ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r5, #0x14]
	bl ov11_02136974
	ldr r1, [r5, #0x14]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _02137FA8
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
_02137FA8:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _02137FC8
	cmp r1, #8
	beq _02137FF4
	b _02137FDC
_02137FC8:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_02137FDC:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #3
	bl ov11_02138D84
	b _02138CA8
_02137FF4:
	mov r1, #0
	bl ov11_0213774C
	cmp r0, #1
	beq _0213801C
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #2
	bl ov11_02138D84
	b _02138CA8
_0213801C:
	ldr r0, [r5, #0x14]
	ldr r1, _02138D10 ; =s_httpresult_overlay_11_02166da0
	bl ov11_021379EC
	bl atol
	mov r6, r0
	ldr r0, _02138D14 ; =errno
	ldr r0, [r0]
	cmp r0, #0x22
	bne _0213804C
	mov r0, #2
	bl ov11_02138D84
	b _02138CA8
_0213804C:
	cmp r6, #0xc8
	beq _02138064
	ldr r0, _02138D18 ; =0x0000012E
	cmp r6, r0
	beq _02138078
	b _0213835C
_02138064:
	ldr r0, [r5, #0x14]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x12c]
	str r0, [r5, #8]
	b _02138374
_02138078:
	mov r0, #1
	str r0, [r5, #4]
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x118]
	cmp r1, #0
	beq _021382C8
	ldr r1, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mvn r2, #5
	str r2, [r0, #4]
	ldr r0, [r1, #0x14]
	bl ov11_02136F74
	ldr r0, _02138D1C ; =ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	ldr r2, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0]
	mov r1, #0
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	mov r1, #0x200
	str r1, [r2, #0x20]
	str r7, [r2, #0x24]
	ldr r3, _02138D20 ; =0x00004E20
	str r8, [r2, #0x28]
	ldr r1, _02138D24 ; =s_https_nas_nintendowifi_net_ac_overlay_11_02166dac
	str r3, [r2, #0x30]
	bl strcmp
	cmp r0, #0
	ldrne r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	movne r1, #1
	strne r1, [r0, #0x2c]
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r1, _02138D08 ; =OVERLAY11_BSS_02169CE4
	ldr r0, [r0, #0x14]
	bl ov11_021367C0
	cmp r0, #0
	beq _02138120
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #1
	bl ov11_02138D84
	b _02138CA8
_02138120:
	add r0, sp, #0x44
	bl ov11_021361B4
	cmp r0, #0
	beq _0213814C
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	add r1, sp, #0x44
	ldr r0, [r0, #0x14]
	mov r2, #1
	bl ov11_0213647C
	cmp r0, #0
	bne _02138164
_0213814C:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #8
	bl ov11_02138D84
	b _02138CA8
_02138164:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r1, _02138D28 ; =s_action_overlay_11_02166dcc
	ldr r0, [r0, #0x14]
	ldr r2, _02138D2C ; =s_message_overlay_11_02166dd4
	mov r3, #7
	bl ov11_021371C4
	cmp r0, #0
	bne _021381BC
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r4, [r0, #0x118]
	mov r0, r4
	bl strlen
	ldr r1, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mov r3, r0
	ldr r0, [r1, #0x14]
	ldr r1, _02138D30 ; =s_HotSpotResponse_overlay_11_02166ddc
	mov r2, r4
	bl ov11_021371C4
	cmp r0, #0
	beq _021381D4
_021381BC:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #8
	bl ov11_02138D84
	b _02138CA8
_021381D4:
	ldr r1, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, _02138D34 ; =s_FREE_DWCnetcheck_body_wayport_overlay_11_02166d04
	ldr r1, [r1]
	mov r2, #0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x118]
	blx r8
	ldr r1, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mov r2, #0
	ldr r0, [r1]
	add r0, r0, #0x1000
	str r2, [r0, #0x118]
	ldr r0, [r1, #0x14]
	bl ov11_021368DC
	cmp r0, #0
	beq _0213822C
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #1
	bl ov11_02138D84
	b _02138CA8
_0213822C:
	ldr r0, _02138D0C ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	ldr r2, _02138CFC ; =OVERLAY11_BSS_02169CCC
	sub r1, r0, #1
	ldr r0, [r2, #0x14]
	bl ov11_02136974
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r1, [r0, #0x14]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _0213826C
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
_0213826C:
	ldr r2, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r2, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _02138290
	cmp r1, #8
	beq _021382B8
	b _021382A0
_02138290:
	ldr r0, [r2]
	mvn r1, #0
	add r0, r0, #0x1000
	str r1, [r0, #4]
_021382A0:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #3
	bl ov11_02138D84
	b _02138CA8
_021382B8:
	bl ov11_02136F74
	mov r0, #7
	bl ov11_02138D84
	b _02138CA8
_021382C8:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0xa08]
	str r1, [sp, #0x14]
	cmp r1, #0
	bne _021382F0
	bl ov11_02136F74
	mov r0, #2
	bl ov11_02138D84
	b _02138CA8
_021382F0:
	mov r0, r1
	bl strlen
	add r1, r0, #1
	ldr r0, _02138D38 ; =s_ALLOC_DWCnetcheck_body_302_overlay_11_02166d38
	blx r7
	ldr r1, [r5]
	add r1, r1, #0x1000
	str r0, [r1, #0x114]
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x114]
	str r0, [sp, #4]
	cmp r0, #0
	bne _02138340
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #4
	bl ov11_02138D84
	b _02138CA8
_02138340:
	ldr r0, [sp, #0x14]
	bl strlen
	mov r2, r0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	bl strncpy
	b _02138374
_0213835C:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #0xa
	bl ov11_02138D84
	b _02138CA8
_02138374:
	ldr r0, [r5, #0x14]
	bl ov11_02136F74
	add r0, sp, #0x30
	bl DWCi_BM_GetWiFiInfo
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
	mov r0, #0
	cmp r1, r0
	cmpeq r2, r4
	bne _021384A4
	ldr r1, [r5]
	ldr r0, _02138D3C ; =OVERLAY11_BSS_02169D00
	add r2, r1, #0x1000
	ldr r1, [sp, #0x20]
	str r1, [r2, #4]
	mov r1, #0
	strh r1, [r5, #0x34]
	strb r1, [r5, #0x68]
	ldr r1, [r5]
	add r1, r1, #0x1000
	ldr r2, [r1, #0x108]
	str r2, [r5, #0x74]
	ldr r1, [r1, #0x10c]
	str r1, [r5, #0x78]
	ldr r1, [r5, #0x14]
	bl DWC_Auth_Create
	cmp r0, #0
	beq _021383F0
	mov r0, #5
	bl ov11_02138D84
	b _02138CA8
_021383F0:
	bl ov11_0213565C
	bl DWC_Auth_GetError
	cmp r0, #0x15
	beq _021384A0
	bl DWC_Auth_GetError
	cmp r0, #9
	bne _02138424
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	b _02138490
_02138424:
	add r0, sp, #0xd8
	bl DWC_Auth_GetResult
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _0213847C
	ldr r1, [sp, #0xd8]
	ldr r0, _02138D40 ; =0xFFFFA4FA
	cmp r1, r0
	beq _02138458
	bl DWC_Auth_GetError
	cmp r0, #0xb
	bne _0213847C
_02138458:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	bl DWC_Auth_Destroy
	mov r0, #0xb
	bl ov11_02138D84
	b _02138CA8
_0213847C:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r1, [sp, #0xd8]
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_02138490:
	bl DWC_Auth_Destroy
	mov r0, #6
	bl ov11_02138D84
	b _02138CA8
_021384A0:
	bl DWC_Auth_Destroy
_021384A4:
	cmp r6, #0xc8
	bne _021384CC
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0xb
	add r1, r1, #0x1000
	str r2, [r1, #4]
	bl ov11_02138D84
	b _02138CA8
_021384CC:
	ldr r0, [r5]
	ldr r1, _02138D24 ; =s_https_nas_nintendowifi_net_ac_overlay_11_02166dac
	add r2, r0, #0x1000
	ldr r0, [sp, #0x24]
	str r0, [r2, #4]
	ldr r0, _02138D1C ; =ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	mov r2, #0
	ldr r0, [r0]
	str r0, [r5, #0x18]
	str r2, [r5, #0x1c]
	mov r2, #0x1000
	str r2, [r5, #0x20]
	str r7, [r5, #0x24]
	ldr r2, _02138D00 ; =0x00009C40
	str r8, [r5, #0x28]
	str r2, [r5, #0x30]
	bl strcmp
	cmp r0, #0
	movne r0, #1
	strne r0, [r5, #0x2c]
	ldr r0, [r5, #0x14]
	ldr r1, _02138D08 ; =OVERLAY11_BSS_02169CE4
	bl ov11_021367C0
	cmp r0, #0
	beq _02138548
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #1
	bl ov11_02138D84
	b _02138CA8
_02138548:
	add r0, sp, #0x44
	bl ov11_021361B4
	cmp r0, #0
	beq _02138570
	ldr r0, [r5, #0x14]
	add r1, sp, #0x44
	mov r2, #1
	bl ov11_0213647C
	cmp r0, #0
	bne _02138588
_02138570:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #8
	bl ov11_02138D84
	b _02138CA8
_02138588:
	ldr r0, [r5, #0x14]
	ldr r1, _02138D28 ; =s_action_overlay_11_02166dcc
	ldr r2, _02138D44 ; =s_parse_overlay_11_02166dec
	mov r3, #5
	bl ov11_021371C4
	cmp r0, #0
	bne _021385D4
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r6, [r0, #0x114]
	mov r0, r6
	bl strlen
	mov r3, r0
	ldr r0, [r5, #0x14]
	ldr r1, _02138D48 ; =s_HTML_overlay_11_02166df4
	mov r2, r6
	bl ov11_021371C4
	cmp r0, #0
	beq _021385EC
_021385D4:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #8
	bl ov11_02138D84
	b _02138CA8
_021385EC:
	ldr r1, [r5]
	ldr r0, _02138D4C ; =s_FREE_DWCnetcheck_body_302_overlay_11_02166ce8
	add r1, r1, #0x1000
	ldr r1, [r1, #0x114]
	mov r2, #0
	blx r8
	ldr r0, [r5]
	add r1, r0, #0x1000
	mov r0, #0
	str r0, [r1, #0x114]
	ldr r0, [r5, #0x14]
	bl ov11_021368DC
	cmp r0, #0
	beq _0213863C
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #1
	bl ov11_02138D84
	b _02138CA8
_0213863C:
	ldr r0, _02138D0C ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r5, #0x14]
	bl ov11_02136974
	ldr r1, [r5, #0x14]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _02138674
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
_02138674:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _021386D8
	cmp r1, #3
	beq _0213869C
	cmp r1, #8
	beq _02138704
	b _021386EC
_0213869C:
	bl ov11_02136F74
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r1, [r0, #0xc]
	cmp r1, #1
	bne _021386CC
	ldr r0, [r0]
	mov r2, #0
	add r1, r0, #0x1000
	mov r0, #0xb
	str r2, [r1, #4]
	bl ov11_02138D84
	b _02138CA8
_021386CC:
	mov r0, #3
	bl ov11_02138D84
	b _02138CA8
_021386D8:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_021386EC:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #3
	bl ov11_02138D84
	b _02138CA8
_02138704:
	mov r1, #0
	bl ov11_0213774C
	cmp r0, #1
	beq _0213872C
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #2
	bl ov11_02138D84
	b _02138CA8
_0213872C:
	ldr r0, [r5, #0x14]
	ldr r1, _02138D10 ; =s_httpresult_overlay_11_02166da0
	bl ov11_021379EC
	bl atol
	mov r6, r0
	ldr r0, _02138D14 ; =errno
	ldr r0, [r0]
	cmp r0, #0x22
	bne _02138768
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #2
	bl ov11_02138D84
	b _02138CA8
_02138768:
	cmp r6, #0xc8
	beq _021387BC
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	ldr r1, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r1, #0xc]
	cmp r0, #1
	ldreq r0, _02138D18 ; =0x0000012E
	cmpeq r6, r0
	bne _021387B0
	ldr r0, [r1]
	mov r2, #0
	add r1, r0, #0x1000
	mov r0, #0xb
	str r2, [r1, #4]
	bl ov11_02138D84
	b _02138CA8
_021387B0:
	mov r0, #2
	bl ov11_02138D84
	b _02138CA8
_021387BC:
	ldr r0, [r5, #0x14]
	ldr r1, _02138D50 ; =s_returncd_overlay_11_02166dfc
	add r2, sp, #0x2c
	mov r3, #4
	bl ov11_02137A44
	cmp r0, #0
	bgt _021387F0
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #9
	bl ov11_02138D84
	b _02138CA8
_021387F0:
	add r0, sp, #0x2c
	bl atol
	ldr r1, _02138D14 ; =errno
	ldr r1, [r1]
	cmp r1, #0x22
	bne _02138820
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #9
	bl ov11_02138D84
	b _02138CA8
_02138820:
	ldr r1, [r5, #0xc]
	cmp r1, #1
	cmpeq r0, #0x72
	bne _02138850
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0xb
	add r1, r1, #0x1000
	str r2, [r1, #4]
	bl ov11_02138D84
	b _02138CA8
_02138850:
	cmp r0, #0x64
	blt _02138870
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #6
	bl ov11_02138D84
	b _02138CA8
_02138870:
	mov r2, #0
	ldr r0, [r5, #0x14]
	ldr r1, _02138D54 ; =s_url_overlay_11_02166e08
	mov r3, r2
	bl ov11_02137A44
	str r0, [sp, #0x10]
	cmp r0, #0
	bgt _021388A8
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #9
	bl ov11_02138D84
	b _02138CA8
_021388A8:
	mov r2, #0
	ldr r0, [r5, #0x14]
	ldr r1, _02138D58 ; =s_data_overlay_11_02166e0c
	mov r3, r2
	bl ov11_02137A44
	str r0, [sp, #0xc]
	cmp r0, #0
	bgt _021388E0
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #9
	bl ov11_02138D84
	b _02138CA8
_021388E0:
	mov r2, #0
	ldr r0, [r5, #0x14]
	ldr r1, _02138D5C ; =s_wait_overlay_11_02166e14
	mov r3, r2
	bl ov11_02137A44
	ldr r1, [sp, #0x10]
	mov r6, r0
	ldr r0, _02138D60 ; =s_ALLOC_url_overlay_11_02166d54
	add r1, r1, #1
	blx r7
	movs sb, r0
	bne _02138928
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #4
	bl ov11_02138D84
	b _02138CA8
_02138928:
	ldr r1, [sp, #0xc]
	ldr r0, _02138D64 ; =s_ALLOC_data_len_overlay_11_02166d60
	add r1, r1, #1
	blx r7
	movs fp, r0
	bne _02138958
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #4
	bl ov11_02138D84
	b _02138CA8
_02138958:
	cmp r6, #0
	ble _0213898C
	ldr r0, _02138D68 ; =s_ALLOC_wait_len_overlay_11_02166d70
	add r1, r6, #1
	blx r7
	movs sl, r0
	bne _0213898C
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #4
	bl ov11_02138D84
	b _02138CA8
_0213898C:
	ldr r0, [sp, #0x10]
	ldr r1, _02138D54 ; =s_url_overlay_11_02166e08
	add r3, r0, #1
	ldr r0, [r5, #0x14]
	mov r2, sb
	bl ov11_02137A44
	cmp r0, #0
	bge _021389C4
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #9
	bl ov11_02138D84
	b _02138CA8
_021389C4:
	ldr r1, [sp, #0xc]
	mov r2, fp
	add r3, r1, #1
	mov r1, #0
	strb r1, [sb, r0]
	ldr r0, [r5, #0x14]
	ldr r1, _02138D58 ; =s_data_overlay_11_02166e0c
	bl ov11_02137A44
	cmp r0, #0
	bge _02138A04
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #9
	bl ov11_02138D84
	b _02138CA8
_02138A04:
	mov r1, #0
	strb r1, [fp, r0]
	mov r0, r1
	cmp r6, #0
	str r0, [sp, #8]
	ble _02138AA0
	ldr r0, [r5, #0x14]
	ldr r1, _02138D5C ; =s_wait_overlay_11_02166e14
	add r3, r6, #1
	mov r2, sl
	bl ov11_02137A44
	cmp r0, #0
	bge _02138A50
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #9
	bl ov11_02138D84
	b _02138CA8
_02138A50:
	mov r1, #0
	strb r1, [sl, r0]
	mov r0, sl
	bl atol
	ldr r1, _02138D14 ; =errno
	ldr r1, [r1]
	cmp r1, #0x22
	bne _02138A88
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #9
	bl ov11_02138D84
	b _02138CA8
_02138A88:
	mov r1, #0x3e8
	mul r1, r0, r1
	ldr r0, _02138D6C ; =0x0002BF20
	str r1, [sp, #8]
	cmp r1, r0
	strgt r0, [sp, #8]
_02138AA0:
	ldr r0, [r5, #0x14]
	bl ov11_02136F74
	ldr r0, [r5]
	ldr r1, _02138D08 ; =OVERLAY11_BSS_02169CE4
	add r2, r0, #0x1000
	ldr r0, [sp, #0x28]
	str r0, [r2, #4]
	str sb, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #0x1c]
	mov r0, #0x1000
	str r0, [r5, #0x20]
	str r7, [r5, #0x24]
	ldr r0, _02138D70 ; =0x0001D4C0
	str r8, [r5, #0x28]
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x14]
	bl ov11_021367C0
	cmp r0, #0
	beq _02138B08
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #1
	bl ov11_02138D84
	b _02138CA8
_02138B08:
	ldr r0, [r5, #0x14]
	mov r1, fp
	bl ov11_021372D0
	cmp r0, #0
	beq _02138B34
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #8
	bl ov11_02138D84
	b _02138CA8
_02138B34:
	ldr r0, [r5, #0x14]
	bl ov11_021368DC
	cmp r0, #0
	beq _02138B5C
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #1
	bl ov11_02138D84
	b _02138CA8
_02138B5C:
	ldr r0, _02138D0C ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r5, #0x14]
	bl ov11_02136974
	ldr r1, [r5, #0x14]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _02138B94
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
_02138B94:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _02138BB4
	cmp r1, #8
	beq _02138BE0
	b _02138BC8
_02138BB4:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_02138BC8:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #3
	bl ov11_02138D84
	b _02138CA8
_02138BE0:
	mov r1, #1
	bl ov11_0213774C
	cmp r0, #1
	beq _02138C08
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #2
	bl ov11_02138D84
	b _02138CA8
_02138C08:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r6, [r1, #0xa08]
	cmp r6, #0
	bne _02138C2C
	bl ov11_02136F74
	mov r0, #2
	bl ov11_02138D84
	b _02138CA8
_02138C2C:
	mov r0, r6
	bl strlen
	add r1, r0, #1
	ldr r0, _02138D74 ; =s_ALLOC_DWCnetcheck_body_wayport_overlay_11_02166d80
	blx r7
	ldr r1, [r5]
	add r1, r1, #0x1000
	str r0, [r1, #0x118]
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x118]
	str r0, [sp]
	cmp r0, #0
	bne _02138C7C
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #4
	bl ov11_02138D84
	b _02138CA8
_02138C7C:
	mov r0, r6
	bl strlen
	mov r2, r0
	ldr r0, [sp]
	mov r1, r6
	bl strncpy
	ldr r0, [r5, #0x14]
	bl ov11_02136F74
	ldr r0, [sp, #8]
	bl OS_Sleep
	b _02137EE0
_02138CA8:
	cmp sb, #0
	beq _02138CC0
	ldr r0, _02138D78 ; =s_FREE_url_overlay_11_02166e1c
	mov r1, sb
	mov r2, #0
	blx r8
_02138CC0:
	cmp fp, #0
	beq _02138CD8
	ldr r0, _02138D7C ; =s_FREE_data_overlay_11_02166e28
	mov r1, fp
	mov r2, #0
	blx r8
_02138CD8:
	cmp sl, #0
	addeq sp, sp, #0x29c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _02138D80 ; =s_FREE_wait_overlay_11_02166e34
	mov r1, sl
	mov r2, #0
	blx r8
	add sp, sp, #0x29c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02138CFC: .word OVERLAY11_BSS_02169CCC
_02138D00: .word 0x00009C40
_02138D04: .word ptr_s_http_conntest_nintendowifi_net_overlay_11_02166c90_overlay_11_02166c8c
_02138D08: .word OVERLAY11_BSS_02169CE4
_02138D0C: .word OSi_ThreadInfo
_02138D10: .word s_httpresult_overlay_11_02166da0
_02138D14: .word errno
_02138D18: .word 0x0000012E
_02138D1C: .word ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
_02138D20: .word 0x00004E20
_02138D24: .word s_https_nas_nintendowifi_net_ac_overlay_11_02166dac
_02138D28: .word s_action_overlay_11_02166dcc
_02138D2C: .word s_message_overlay_11_02166dd4
_02138D30: .word s_HotSpotResponse_overlay_11_02166ddc
_02138D34: .word s_FREE_DWCnetcheck_body_wayport_overlay_11_02166d04
_02138D38: .word s_ALLOC_DWCnetcheck_body_302_overlay_11_02166d38
_02138D3C: .word OVERLAY11_BSS_02169D00
_02138D40: .word 0xFFFFA4FA
_02138D44: .word s_parse_overlay_11_02166dec
_02138D48: .word s_HTML_overlay_11_02166df4
_02138D4C: .word s_FREE_DWCnetcheck_body_302_overlay_11_02166ce8
_02138D50: .word s_returncd_overlay_11_02166dfc
_02138D54: .word s_url_overlay_11_02166e08
_02138D58: .word s_data_overlay_11_02166e0c
_02138D5C: .word s_wait_overlay_11_02166e14
_02138D60: .word s_ALLOC_url_overlay_11_02166d54
_02138D64: .word s_ALLOC_data_len_overlay_11_02166d60
_02138D68: .word s_ALLOC_wait_len_overlay_11_02166d70
_02138D6C: .word 0x0002BF20
_02138D70: .word 0x0001D4C0
_02138D74: .word s_ALLOC_DWCnetcheck_body_wayport_overlay_11_02166d80
_02138D78: .word s_FREE_url_overlay_11_02166e1c
_02138D7C: .word s_FREE_data_overlay_11_02166e28
_02138D80: .word s_FREE_wait_overlay_11_02166e34

	arm_func_start ov11_02138D84
ov11_02138D84: ; 0x02138D84
	stmdb sp!, {r4, lr}
	ldr r1, _02138DC4 ; =OVERLAY11_BSS_02169CCC
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r1, _02138DC4 ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r1]
	add r0, r0, #0x1000
	str r4, [r0]
	ldr r0, [r1]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldmia sp!, {r4, pc}
	.align 2, 0
_02138DC4: .word OVERLAY11_BSS_02169CCC
	arm_func_end ov11_02138D84

	arm_func_start ov11_02138DC8
ov11_02138DC8: ; 0x02138DC8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x3c
	mov r6, r0
	bl strlen
	mov r4, r0
	ldr r0, _02138FD4 ; =s_Fri_03_Mar_2006_01_28_13_GMT_overlay_11_02166ea0
	bl strlen
	cmp r4, r0
	ldreqsb r0, [r6, #7]
	cmpeq r0, #0x20
	ldreqsb r0, [r6, #0xb]
	cmpeq r0, #0x20
	ldreqsb r0, [r6, #0x10]
	cmpeq r0, #0x20
	ldreqsb r0, [r6, #0x13]
	cmpeq r0, #0x3a
	ldreqsb r0, [r6, #0x16]
	cmpeq r0, #0x3a
	ldreqsb r0, [r6, #0x19]
	cmpeq r0, #0x20
	bne _02138FC8
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl RTC_GetDateTime
	cmp r0, #0
	bne _02138FC8
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl RTC_ConvertDateTimeToSecond
	mov r4, r0
	mov r5, r1
	mvn r0, #0
	cmp r5, r0
	cmpeq r4, r0
	beq _02138FC8
	add r0, sp, #0
	mov r1, r6
	bl strcpy
	mov r2, #0
	ldr r1, _02138FD8 ; =errno
	add r0, sp, #0xc
	strb r2, [sp, #7]
	strb r2, [sp, #0xb]
	strb r2, [sp, #0x10]
	strb r2, [sp, #0x13]
	strb r2, [sp, #0x16]
	strb r2, [sp, #0x19]
	str r2, [r1]
	bl atol
	ldr r1, _02138FD8 ; =errno
	str r0, [sp, #0x2c]
	ldr r1, [r1]
	cmp r1, #0x22
	beq _02138FC8
	sub r1, r0, #0x7d0
	mov r0, #0xd
	ldr r7, _02138FDC ; =ptr_s_Jan_overlay_11_02166e6c_overlay_11_02166e70
	str r1, [sp, #0x2c]
	str r0, [sp, #0x30]
	mov r8, #0
	add r6, sp, #8
	arm_func_end ov11_02138DC8
_02138EBC:
	ldr r0, [r7, r8, lsl #2]
	mov r1, r6
	bl strcmp
	cmp r0, #0
	addeq r0, r8, #1
	streq r0, [sp, #0x30]
	beq _02138EE4
	add r8, r8, #1
	cmp r8, #0xc
	blt _02138EBC
_02138EE4:
	ldr r0, [sp, #0x30]
	cmp r0, #0xc
	bhi _02138FC8
	ldr r1, _02138FD8 ; =errno
	mov r2, #0
	add r0, sp, #5
	str r2, [r1]
	bl atol
	ldr r1, _02138FD8 ; =errno
	str r0, [sp, #0x34]
	ldr r0, [r1]
	cmp r0, #0x22
	beq _02138FC8
	mov r2, #0
	add r0, sp, #0x11
	str r2, [r1]
	bl atol
	ldr r1, _02138FD8 ; =errno
	str r0, [sp, #0x20]
	ldr r0, [r1]
	cmp r0, #0x22
	beq _02138FC8
	mov r2, #0
	add r0, sp, #0x14
	str r2, [r1]
	bl atol
	ldr r1, _02138FD8 ; =errno
	str r0, [sp, #0x24]
	ldr r0, [r1]
	cmp r0, #0x22
	beq _02138FC8
	mov r2, #0
	add r0, sp, #0x17
	str r2, [r1]
	bl atol
	ldr r1, _02138FD8 ; =errno
	str r0, [sp, #0x28]
	ldr r0, [r1]
	cmp r0, #0x22
	beq _02138FC8
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl RTC_ConvertDateTimeToSecond
	mvn r2, #0
	cmp r1, r2
	cmpeq r0, r2
	beq _02138FC8
	ldr r2, _02138FE0 ; =OVERLAY11_BSS_02169D48
	subs r0, r4, r0
	str r0, [r2, #0xc]
	sbc r0, r5, r1
	str r0, [r2, #0x10]
	stmib r2, {r4, r5}
	mov r0, #1
	str r0, [r2]
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02138FC8:
	mov r0, #0
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02138FD4: .word s_Fri_03_Mar_2006_01_28_13_GMT_overlay_11_02166ea0
_02138FD8: .word errno
_02138FDC: .word ptr_s_Jan_overlay_11_02166e6c_overlay_11_02166e70
_02138FE0: .word OVERLAY11_BSS_02169D48

	arm_func_start DWC_Svl_Init
DWC_Svl_Init: ; 0x02138FE4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _0213906C ; =OVERLAY11_BSS_02169D5C
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	cmp r0, #0
	beq _02139014
	ldr r1, _02139070 ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end DWC_Svl_Init
_02139014:
	ldr r0, _02139074 ; =s_ALLOC_intwork_overlay_11_02166ec0
	ldr r1, _02139078 ; =0x00001C20
	blx r5
	ldr r1, _0213906C ; =OVERLAY11_BSS_02169D5C
	cmp r0, #0
	str r0, [r1]
	bne _02139044
	ldr r1, _02139070 ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02139044:
	ldr r2, _02139078 ; =0x00001C20
	mov r1, #0
	bl MI_CpuFill8
	ldr r1, _0213906C ; =OVERLAY11_BSS_02169D5C
	mov r0, #1
	ldr r2, [r1]
	str r5, [r2]
	ldr r1, [r1]
	str r4, [r1, #4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0213906C: .word OVERLAY11_BSS_02169D5C
_02139070: .word 0xFFFFA1DC
_02139074: .word s_ALLOC_intwork_overlay_11_02166ec0
_02139078: .word 0x00001C20

	arm_func_start DWC_Svl_Cleanup
DWC_Svl_Cleanup: ; 0x0213907C
	stmdb sp!, {r3, lr}
	ldr r0, _021390C0 ; =OVERLAY11_BSS_02169D5C
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r0, #8
	bl ov11_02136F74
	ldr r1, _021390C0 ; =OVERLAY11_BSS_02169D5C
	ldr r0, _021390C4 ; =s_FREE_intwork_overlay_11_02166ed0
	ldr r1, [r1]
	mov r2, #0
	ldr r3, [r1, #4]
	blx r3
	ldr r0, _021390C0 ; =OVERLAY11_BSS_02169D5C
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_021390C0: .word OVERLAY11_BSS_02169D5C
_021390C4: .word s_FREE_intwork_overlay_11_02166ed0
	arm_func_end DWC_Svl_Cleanup

	arm_func_start DWC_Svl_GetTokenAsync
DWC_Svl_GetTokenAsync: ; 0x021390C8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0xb0
	ldr r2, _0213930C ; =OVERLAY11_BSS_02169D5C
	mov r5, r0
	ldr r2, [r2]
	mov r0, r1
	add r2, r2, #0x1000
	str r1, [r2, #0xc1c]
	mov r1, #0
	mov r2, #0x174
	bl MI_CpuFill8
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbac]
	cmp r0, #0
	beq _02139120
	add r0, r1, #0x1b40
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _02139120
	bl OS_Terminate
	arm_func_end DWC_Svl_GetTokenAsync
_02139120:
	ldr r0, _02139310 ; =ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	ldr r1, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r0, [r0]
	mov r3, #0
	ldr r4, [r1]
	mov r2, #0x1000
	str r0, [sp]
	str r3, [sp, #4]
	str r2, [sp, #8]
	ldr r2, [r4]
	ldr r1, _02139314 ; =s_https_nas_nintendowifi_net_ac_overlay_11_02166ee0
	str r2, [sp, #0xc]
	ldr r2, [r4, #4]
	str r2, [sp, #0x10]
	bl strcmp
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x14]
	moveq r0, #0
	ldr r2, _02139318 ; =0x00004E20
	streq r0, [sp, #0x14]
	add r1, sp, #0
	add r0, r4, #8
	str r2, [sp, #0x18]
	bl ov11_021367C0
	cmp r0, #0
	beq _021391A4
	ldr r1, _0213931C ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0xb0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021391A4:
	add r0, sp, #0x1c
	bl ov11_021361B4
	cmp r0, #0
	beq _021391D4
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	add r1, sp, #0x1c
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #8
	bl ov11_0213647C
	cmp r0, #0
	bne _021391FC
_021391D4:
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r0, [r0]
	add r0, r0, #8
	bl ov11_02136F74
	ldr r1, _0213931C ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0xb0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021391FC:
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r1, _02139320 ; =s_action_overlay_11_02166f00
	ldr r0, [r0]
	ldr r2, _02139324 ; =s_SVCLOC_overlay_11_02166f08
	add r0, r0, #8
	mov r3, #6
	bl ov11_021371C4
	cmp r0, #0
	bne _02139244
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r1, _02139328 ; =s_svc_overlay_11_02166f10
	ldr r0, [r0]
	mov r2, r5
	add r0, r0, #8
	mov r3, #4
	bl ov11_021371C4
	cmp r0, #0
	beq _0213926C
_02139244:
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r0, [r0]
	add r0, r0, #8
	bl ov11_02136F74
	ldr r1, _0213931C ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0xb0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0213926C:
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r0, [r0]
	add r0, r0, #8
	bl ov11_021368DC
	cmp r0, #0
	beq _021392AC
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r0, [r0]
	add r0, r0, #8
	bl ov11_02136F74
	ldr r1, _0213931C ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0xb0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021392AC:
	ldr r0, _0213932C ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	ldr r1, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r2, [r1]
	sub r1, r0, #1
	add r0, r2, #8
	bl ov11_02136974
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbac]
	cmp r0, #0
	addne sp, sp, #0xb0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	add r0, r1, #8
	bl ov11_02136F74
	ldr r1, _0213931C ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	mov r0, #0
	add sp, sp, #0xb0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0213930C: .word OVERLAY11_BSS_02169D5C
_02139310: .word ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
_02139314: .word s_https_nas_nintendowifi_net_ac_overlay_11_02166ee0
_02139318: .word 0x00004E20
_0213931C: .word 0xFFFFA1DC
_02139320: .word s_action_overlay_11_02166f00
_02139324: .word s_SVCLOC_overlay_11_02166f08
_02139328: .word s_svc_overlay_11_02166f10
_0213932C: .word OSi_ThreadInfo

	arm_func_start DWC_Svl_Process
DWC_Svl_Process: ; 0x02139330
	stmdb sp!, {r3, lr}
	ldr r0, _021393FC ; =OVERLAY11_BSS_02169D5C
	ldr r1, [r0]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbac]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	add r0, r1, #0x1b40
	bl OS_IsThreadTerminated
	cmp r0, #1
	bne _021393F4
	ldr r0, _021393FC ; =OVERLAY11_BSS_02169D5C
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x28]
	cmp r0, #7
	beq _021393C8
	cmp r0, #8
	bne _021393D8
	bl ov11_02139404
	cmp r0, #0
	bne _021393B0
	ldr r0, _021393FC ; =OVERLAY11_BSS_02169D5C
	ldr r0, [r0]
	add r0, r0, #8
	bl ov11_02136F74
	mov r0, #4
	ldmia sp!, {r3, pc}
	arm_func_end DWC_Svl_Process
_021393B0:
	ldr r0, _021393FC ; =OVERLAY11_BSS_02169D5C
	ldr r0, [r0]
	add r0, r0, #8
	bl ov11_02136F74
	mov r0, #3
	ldmia sp!, {r3, pc}
_021393C8:
	add r0, r1, #8
	bl ov11_02136F74
	mov r0, #5
	ldmia sp!, {r3, pc}
_021393D8:
	add r0, r1, #8
	bl ov11_02136F74
	ldr r1, _02139400 ; =0xFFFFA1DB
	mov r0, #0x11
	bl DWCi_SetError
	mov r0, #4
	ldmia sp!, {r3, pc}
_021393F4:
	mov r0, #2
	ldmia sp!, {r3, pc}
	.align 2, 0
_021393FC: .word OVERLAY11_BSS_02169D5C
_02139400: .word 0xFFFFA1DB

	arm_func_start ov11_02139404
ov11_02139404: ; 0x02139404
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _021395F4 ; =OVERLAY11_BSS_02169D5C
	mov r1, #0
	ldr r4, [r0]
	add r0, r4, #8
	bl ov11_0213774C
	cmp r0, #0
	bne _02139440
	ldr r1, _021395F8 ; =0xFFFF9DF3
	mov r0, #0x10
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov11_02139404
_02139440:
	ldr r1, _021395FC ; =s_Date_overlay_11_02166f14
	add r0, r4, #8
	bl ov11_021379EC
	cmp r0, #0
	beq _02139458
	bl ov11_02138DC8
_02139458:
	ldr r1, _02139600 ; =s_httpresult_overlay_11_02166f1c
	add r0, r4, #8
	bl ov11_021379EC
	cmp r0, #0
	bne _02139484
	ldr r1, _021395F8 ; =0xFFFF9DF3
	mov r0, #0x10
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_02139484:
	bl atol
	ldr r1, _02139604 ; =errno
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0x22
	bne _021394B4
	ldr r1, _021395F8 ; =0xFFFF9DF3
	mov r0, #0x10
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_021394B4:
	cmp r2, #0xc8
	beq _021394D8
	ldr r1, _02139608 ; =0xFFFF9E58
	mov r0, #0x10
	sub r1, r1, r2
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_021394D8:
	ldr r1, _0213960C ; =s_returncd_overlay_11_02166f28
	add r2, sp, #0
	add r0, r4, #8
	mov r3, #4
	bl ov11_02137A44
	cmp r0, #0
	bgt _0213950C
	ldr r1, _021395F8 ; =0xFFFF9DF3
	mov r0, #0x10
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_0213950C:
	add r0, sp, #0
	bl atol
	ldr r1, _02139604 ; =errno
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0x22
	bne _02139540
	ldr r1, _021395F8 ; =0xFFFF9DF3
	mov r0, #0x10
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_02139540:
	cmp r2, #0x64
	blt _02139564
	ldr r1, _02139610 ; =0xFFFFA240
	mov r0, #0x10
	sub r1, r1, r2
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_02139564:
	ldr r0, _021395F4 ; =OVERLAY11_BSS_02169D5C
	ldr r1, _02139614 ; =s_svchost_overlay_11_02166f34
	ldr r2, [r0]
	add r0, r4, #8
	add r2, r2, #0x1000
	ldr r2, [r2, #0xc1c]
	mov r3, #0x40
	add r2, r2, #4
	bl ov11_02137A44
	ldr r0, _021395F4 ; =OVERLAY11_BSS_02169D5C
	ldr r1, _02139618 ; =s_servicetoken_overlay_11_02166f3c
	ldr r2, [r0]
	add r0, r4, #8
	add r2, r2, #0x1000
	ldr r2, [r2, #0xc1c]
	mov r3, #0x12c
	add r2, r2, #0x45
	bl ov11_02137A44
	ldr r1, _0213961C ; =s_statusdata_overlay_11_02166f4c
	add r2, sp, #0
	add r0, r4, #8
	mov r3, #1
	bl ov11_02137A44
	ldrsb r0, [sp]
	cmp r0, #0x59
	ldreq r0, _021395F4 ; =OVERLAY11_BSS_02169D5C
	moveq r1, #1
	ldrne r0, _021395F4 ; =OVERLAY11_BSS_02169D5C
	movne r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0xc1c]
	str r1, [r0]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_021395F4: .word OVERLAY11_BSS_02169D5C
_021395F8: .word 0xFFFF9DF3
_021395FC: .word s_Date_overlay_11_02166f14
_02139600: .word s_httpresult_overlay_11_02166f1c
_02139604: .word errno
_02139608: .word 0xFFFF9E58
_0213960C: .word s_returncd_overlay_11_02166f28
_02139610: .word 0xFFFFA240
_02139614: .word s_svchost_overlay_11_02166f34
_02139618: .word s_servicetoken_overlay_11_02166f3c
_0213961C: .word s_statusdata_overlay_11_02166f4c

	arm_func_start DWC_Auth_Base64Encode
DWC_Auth_Base64Encode: ; 0x02139620
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r4, _021397A0 ; =0xAAAAAAAB
	str r2, [sp]
	umull r4, r5, r1, r4
	mov r6, #3
	mov r5, r5, lsr #1
	umull r4, r5, r6, r5
	mov sl, r0
	subs r5, r1, r4
	movne r5, #4
	ldr r2, _021397A0 ; =0xAAAAAAAB
	ldr r0, [sp]
	moveq r5, #0
	cmp r0, #0
	umull r0, r4, r1, r2
	mov r4, r4, lsr #1
	addeq sp, sp, #8
	add r0, r5, r4, lsl #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r3, r0
	addlo sp, sp, #8
	mvnlo r0, #0
	ldmloia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r7, sl, r1
	ldr r8, [sp]
	cmp sl, r7
	beq _02139790
	sub fp, r2, #0x80000000
	ldr r5, _021397A4 ; =ptr_s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02166f5c_overlay_11_02166f58
	mov r4, fp
	arm_func_end DWC_Auth_Base64Encode
_0213969C:
	sub sb, r7, sl
	mov r0, sb, lsl #3
	smull r1, r2, r4, r0
	add r2, r2, r0, lsr #31
	mov r1, #6
	smull r2, r3, r1, r2
	subs r2, r0, r2
	smull r1, r2, fp, r0
	movne r3, #1
	moveq r3, #0
	add r2, r2, r0, lsr #31
	cmp sb, #3
	add r6, r2, r3
	movge sb, #3
	add r0, sp, #4
	mov r1, #0
	mov r2, #3
	bl MI_CpuFill8
	mov r0, sl
	add r1, sp, #4
	mov r2, sb
	bl MI_CpuCopy8
	ldrb r0, [sp, #4]
	ldr r1, [r5]
	cmp r6, #2
	mov r0, r0, asr #2
	ldrsb r0, [r1, r0]
	strb r0, [r8]
	movlt r0, #0x2a
	blt _02139730
	ldrb r2, [sp, #4]
	ldrb r1, [sp, #5]
	ldr r0, [r5]
	mov r2, r2, lsl #4
	and r2, r2, #0x3f
	orr r1, r2, r1, asr #4
	ldrsb r0, [r0, r1]
_02139730:
	strb r0, [r8, #1]
	cmp r6, #3
	movlt r0, #0x2a
	blt _0213975C
	ldrb r2, [sp, #5]
	ldrb r1, [sp, #6]
	ldr r0, [r5]
	mov r2, r2, lsl #2
	and r2, r2, #0x3f
	orr r1, r2, r1, asr #6
	ldrsb r0, [r0, r1]
_0213975C:
	strb r0, [r8, #2]
	cmp r6, #4
	movlt r0, #0x2a
	blt _0213977C
	ldrb r0, [sp, #6]
	ldr r1, [r5]
	and r0, r0, #0x3f
	ldrsb r0, [r1, r0]
_0213977C:
	add sl, sl, sb
	strb r0, [r8, #3]
	cmp sl, r7
	add r8, r8, #4
	bne _0213969C
_02139790:
	ldr r0, [sp]
	sub r0, r8, r0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021397A0: .word 0xAAAAAAAB
_021397A4: .word ptr_s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02166f5c_overlay_11_02166f58

	arm_func_start ov11_021397A8
ov11_021397A8: ; 0x021397A8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	tst r1, #3
	mvnne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	mov ip, r5
	cmp r1, #0
	bls _021397E0
	arm_func_end ov11_021397A8
_021397C8:
	ldrsb r4, [r0, ip]
	add ip, ip, #1
	cmp r4, #0x2a
	addne r5, r5, #6
	cmp ip, r1
	blo _021397C8
_021397E0:
	mov ip, r5, asr #2
	add ip, r5, ip, lsr #29
	mov ip, ip, asr #3
	cmp r2, #0
	moveq r0, ip
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r3, ip
	mvnlo r0, #0
	ldmloia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r2]
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r2
_02139818:
	mov r7, #0
	add r6, sp, #0
	mov r3, r7
	mov r4, #0x3f
	mov lr, #0x3e
_0213982C:
	ldrsb r5, [r0, r7]
	cmp r5, #0x41
	blt _02139848
	cmp r5, #0x5a
	suble r5, r5, #0x41
	strleb r5, [r6]
	ble _02139890
_02139848:
	cmp r5, #0x61
	blt _02139860
	cmp r5, #0x7a
	suble r5, r5, #0x47
	strleb r5, [r6]
	ble _02139890
_02139860:
	cmp r5, #0x30
	blt _02139878
	cmp r5, #0x39
	addle r5, r5, #4
	strleb r5, [r6]
	ble _02139890
_02139878:
	cmp r5, #0x2e
	streqb lr, [r6]
	beq _02139890
	cmp r5, #0x2d
	streqb r4, [r6]
	strneb r3, [r6]
_02139890:
	add r7, r7, #1
	cmp r7, #4
	add r6, r6, #1
	blt _0213982C
	ldrsb r4, [sp, #1]
	ldrsb lr, [sp]
	add r3, r1, #1
	mov r4, r4, asr #4
	orr r4, r4, lr, lsl #2
	sub r3, r3, r2
	strb r4, [r1]
	cmp r3, ip
	add r0, r0, #4
	bge _0213990C
	ldrsb lr, [sp, #2]
	ldrsb r4, [sp, #1]
	add r3, r1, #2
	mov lr, lr, asr #2
	orr r4, lr, r4, lsl #4
	sub r3, r3, r2
	strb r4, [r1, #1]
	cmp r3, ip
	bge _0213990C
	ldrsb lr, [sp, #2]
	ldrsb r3, [sp, #3]
	orr r3, r3, lr, lsl #6
	strb r3, [r1, #2]
	add r1, r1, #3
	sub r3, r1, r2
	cmp r3, ip
	blt _02139818
_0213990C:
	mov r0, r3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

    .data

    .global ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0: ; 0x021667D0
	.word s_https_nas_test_nintendowifi_ne_overlay_11_021667ec
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00

    .global DAT_overlay_11_021667dc
DAT_overlay_11_021667dc: ; 0x021667DC
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_11_021667e0
DAT_overlay_11_021667e0: ; 0x021667E0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x4E, 0x00, 0x00

    .global s_https_nas_test_nintendowifi_ne_overlay_11_021667ec
s_https_nas_test_nintendowifi_ne_overlay_11_021667ec: ; 0x021667EC
	.asciz "https://nas.test.nintendowifi.net/ac"

    .global DAT_overlay_11_02166811
DAT_overlay_11_02166811:
	.byte 0x00, 0x00, 0x00

    .global s_ALLOC_DWCauth_overlay_11_02166814
s_ALLOC_DWCauth_overlay_11_02166814: ; 0x02166814
	.asciz "ALLOC DWCauth"

    .global DAT_overlay_11_02166822
DAT_overlay_11_02166822:
	.byte 0x00, 0x00

    .global s_FREE_DWCauth_overlay_11_02166824
s_FREE_DWCauth_overlay_11_02166824: ; 0x02166824
	.asciz "FREE DWCauth"

    .global DAT_overlay_11_02166831
DAT_overlay_11_02166831:
	.byte 0x00, 0x00, 0x00

    .global s_https_nas_nintendowifi_net_ac_overlay_11_02166834
s_https_nas_nintendowifi_net_ac_overlay_11_02166834: ; 0x02166834
	.asciz "https://nas.nintendowifi.net/ac"

    .global s_ALLOC_bmwork_overlay_11_02166854
s_ALLOC_bmwork_overlay_11_02166854: ; 0x02166854
	.asciz "ALLOC bmwork"

    .global DAT_overlay_11_02166861
DAT_overlay_11_02166861:
	.byte 0x00, 0x00, 0x00

    .global s_FREE_bmwork_overlay_11_02166864
s_FREE_bmwork_overlay_11_02166864: ; 0x02166864
	.asciz "FREE bmwork"

    .global s_Date_overlay_11_02166870
s_Date_overlay_11_02166870: ; 0x02166870
	.asciz "Date"

    .global DAT_overlay_11_02166875
DAT_overlay_11_02166875:
	.byte 0x00, 0x00, 0x00

    .global s_httpresult_overlay_11_02166878
s_httpresult_overlay_11_02166878: ; 0x02166878
	.asciz "httpresult"

    .global DAT_overlay_11_02166883
DAT_overlay_11_02166883:
	.byte 0x00

    .global s_returncd_overlay_11_02166884
s_returncd_overlay_11_02166884: ; 0x02166884
	.asciz "returncd"

    .global DAT_overlay_11_0216688D
DAT_overlay_11_0216688D:
	.byte 0x00, 0x00, 0x00

    .global s_token_overlay_11_02166890
s_token_overlay_11_02166890: ; 0x02166890
	.asciz "token"

    .global DAT_overlay_11_02166896
DAT_overlay_11_02166896:
	.byte 0x00, 0x00

    .global s_locator_overlay_11_02166898
s_locator_overlay_11_02166898: ; 0x02166898
	.asciz "locator"

    .global s_challenge_overlay_11_021668a0
s_challenge_overlay_11_021668a0: ; 0x021668A0
	.asciz "challenge"

    .global DAT_overlay_11_021668AA
DAT_overlay_11_021668AA:
	.byte 0x00, 0x00

    .global s_datetime_overlay_11_021668ac
s_datetime_overlay_11_021668ac: ; 0x021668AC
	.asciz "datetime"

    .global DAT_overlay_11_021668B5
DAT_overlay_11_021668B5:
	.byte 0x00, 0x00, 0x00

    .global s_Set_Cookie_overlay_11_021668b8
s_Set_Cookie_overlay_11_021668b8: ; 0x021668B8
	.asciz "Set-Cookie"

    .global DAT_overlay_11_021668C3
DAT_overlay_11_021668C3:
	.byte 0x00

    .global s_acctcreate_overlay_11_021668c4
s_acctcreate_overlay_11_021668c4: ; 0x021668C4
	.asciz "acctcreate"

    .global DAT_overlay_11_021668CF
DAT_overlay_11_021668CF:
	.byte 0x00

    .global s_action_overlay_11_021668d0
s_action_overlay_11_021668d0: ; 0x021668D0
	.asciz "action"

    .global DAT_overlay_11_021668D7
DAT_overlay_11_021668D7:
	.byte 0x00

    .global s_login_overlay_11_021668d8
s_login_overlay_11_021668d8: ; 0x021668D8
	.asciz "login"

    .global DAT_overlay_11_021668DE
DAT_overlay_11_021668DE:
	.byte 0x00, 0x00

    .global s_gsbrcd_overlay_11_021668e0
s_gsbrcd_overlay_11_021668e0: ; 0x021668E0
	.asciz "gsbrcd"

    .global DAT_overlay_11_021668E7
DAT_overlay_11_021668E7:
	.byte 0x00

    .global s_Y_overlay_11_021668e8
s_Y_overlay_11_021668e8: ; 0x021668E8
	.asciz "Y"

    .global DAT_overlay_11_021668EA
DAT_overlay_11_021668EA:
	.byte 0x00, 0x00

    .global s_iswfc_overlay_11_021668ec
s_iswfc_overlay_11_021668ec: ; 0x021668EC
	.asciz "iswfc"

    .global DAT_overlay_11_021668F2
DAT_overlay_11_021668F2:
	.byte 0x00, 0x00

    .global s_ingamesn_overlay_11_021668f4
s_ingamesn_overlay_11_021668f4: ; 0x021668F4
	.asciz "ingamesn"

    .global DAT_overlay_11_021668FD
DAT_overlay_11_021668FD:
	.byte 0x00, 0x00, 0x00

    .global s_013llu_overlay_11_02166900
s_013llu_overlay_11_02166900: ; 0x02166900
	.asciz "%013llu"

    .global s_03u_overlay_11_02166908
s_03u_overlay_11_02166908: ; 0x02166908
	.asciz "%03u"

    .global DAT_overlay_11_0216690D
DAT_overlay_11_0216690D:
	.byte 0x00, 0x00, 0x00

    .global s_02x_overlay_11_02166910
s_02x_overlay_11_02166910: ; 0x02166910
	.asciz "%02x"

    .global DAT_overlay_11_02166915
DAT_overlay_11_02166915:
	.byte 0x00, 0x00, 0x00

    .global s_02x_02x_overlay_11_02166918
s_02x_02x_overlay_11_02166918: ; 0x02166918
	.asciz "%02x%02x"

    .global DAT_overlay_11_02166921
DAT_overlay_11_02166921:
	.byte 0x00, 0x00, 0x00

    .global s_02d_02d_02d_02d_02d_02d_overlay_11_02166924
s_02d_02d_02d_02d_02d_02d_overlay_11_02166924: ; 0x02166924
	.asciz "%02d%02d%02d%02d%02d%02d"

    .global DAT_overlay_11_0216693D
DAT_overlay_11_0216693D:
	.byte 0x00, 0x00, 0x00

    .global s_02d_0000000_00_overlay_11_02166940
s_02d_0000000_00_overlay_11_02166940: ; 0x02166940
	.asciz "%02d:0000000-00"

    .global s_03d_03d_overlay_11_02166950
s_03d_03d_overlay_11_02166950: ; 0x02166950
	.asciz "%03d%03d"

    .global DAT_overlay_11_02166959
DAT_overlay_11_02166959:
	.byte 0x00, 0x00, 0x00

    .global s_sdkver_overlay_11_0216695c
s_sdkver_overlay_11_0216695c: ; 0x0216695C
	.asciz "sdkver"

    .global DAT_overlay_11_02166963
DAT_overlay_11_02166963:
	.byte 0x00

    .global s_userid_overlay_11_02166964
s_userid_overlay_11_02166964: ; 0x02166964
	.asciz "userid"

    .global DAT_overlay_11_0216696B
DAT_overlay_11_0216696B:
	.byte 0x00

    .global s_passwd_overlay_11_0216696c
s_passwd_overlay_11_0216696c: ; 0x0216696C
	.asciz "passwd"

    .global DAT_overlay_11_02166973
DAT_overlay_11_02166973:
	.byte 0x00

    .global s_bssid_overlay_11_02166974
s_bssid_overlay_11_02166974: ; 0x02166974
	.asciz "bssid"

    .global DAT_overlay_11_0216697A
DAT_overlay_11_0216697A:
	.byte 0x00, 0x00

    .global s_apinfo_overlay_11_0216697c
s_apinfo_overlay_11_0216697c: ; 0x0216697C
	.asciz "apinfo"

    .global DAT_overlay_11_02166983
DAT_overlay_11_02166983:
	.byte 0x00

    .global s_gamecd_overlay_11_02166984
s_gamecd_overlay_11_02166984: ; 0x02166984
	.asciz "gamecd"

    .global DAT_overlay_11_0216698B
DAT_overlay_11_0216698B:
	.byte 0x00

    .global s_makercd_overlay_11_0216698c
s_makercd_overlay_11_0216698c: ; 0x0216698C
	.asciz "makercd"

    .global s_unitcd_overlay_11_02166994
s_unitcd_overlay_11_02166994: ; 0x02166994
	.asciz "unitcd"

    .global DAT_overlay_11_0216699B
DAT_overlay_11_0216699B:
	.byte 0x00

    .global s_macadr_overlay_11_0216699c
s_macadr_overlay_11_0216699c: ; 0x0216699C
	.asciz "macadr"

    .global DAT_overlay_11_021669A3
DAT_overlay_11_021669A3:
	.byte 0x00

    .global s_lang_overlay_11_021669a4
s_lang_overlay_11_021669a4: ; 0x021669A4
	.asciz "lang"

    .global DAT_overlay_11_021669A9
DAT_overlay_11_021669A9:
	.byte 0x00, 0x00, 0x00

    .global s_birth_overlay_11_021669ac
s_birth_overlay_11_021669ac: ; 0x021669AC
	.asciz "birth"

    .global DAT_overlay_11_021669B2
DAT_overlay_11_021669B2:
	.byte 0x00, 0x00

    .global s_devtime_overlay_11_021669b4
s_devtime_overlay_11_021669b4: ; 0x021669B4
	.asciz "devtime"

    .global s_devname_overlay_11_021669bc
s_devname_overlay_11_021669bc: ; 0x021669BC
	.asciz "devname"

    .global s_ssid_overlay_11_021669c4
s_ssid_overlay_11_021669c4: ; 0x021669C4
	.asciz "ssid"

    .global DAT_overlay_11_021669C9
DAT_overlay_11_021669C9:
	.byte 0x00, 0x00, 0x00

    .global s_Nitro_WiFi_SDK_d_d_overlay_11_021669cc
s_Nitro_WiFi_SDK_d_d_overlay_11_021669cc: ; 0x021669CC
	.asciz "Nitro WiFi SDK/%d.%d"

    .global DAT_overlay_11_021669E1
DAT_overlay_11_021669E1:
	.byte 0x00, 0x00, 0x00

    .global s_User_Agent_overlay_11_021669e4
s_User_Agent_overlay_11_021669e4: ; 0x021669E4
	.asciz "User-Agent"

    .global DAT_overlay_11_021669EF
DAT_overlay_11_021669EF:
	.byte 0x00

    .global s_HTTP_X_GAMECD_overlay_11_021669f0
s_HTTP_X_GAMECD_overlay_11_021669f0: ; 0x021669F0
	.asciz "HTTP_X_GAMECD"

    .global DAT_overlay_11_021669FE
DAT_overlay_11_021669FE:
	.byte 0x00, 0x00

    .global PTR_ptr_null_overlay_11_02167838_overlay_11_02166a00
PTR_ptr_null_overlay_11_02167838_overlay_11_02166a00: ; 0x02166A00
	.word ptr_null_overlay_11_02167838
	.word PTR_s_US_VeriSign_Inc_Class_3_Publ_overlay_11_021677a0_overlay_11_0216770c
	.word ptr_null_overlay_11_021679ec
	.word ptr_null_overlay_11_02167ac8
	.word ptr_null_overlay_11_02166fa4
	.word ptr_null_overlay_11_02167240
	.word ptr_null_overlay_11_02167328
	.word ptr_null_overlay_11_021670f0
	.word ptr_null_overlay_11_021675f4
	.word PTR_s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167568_overlay_11_021674d4

    .global ptr_FUN_overlay_0_02167ba4_overlay_11_02166a28
ptr_FUN_overlay_0_02167ba4_overlay_11_02166a28: ; 0x02166A28
	.word ptr_null_overlay_11_02167ba4
	.word ptr_null_overlay_11_021673ec

    .global s_ALLOC_http_lowrecvbuf_overlay_11_02166a30
s_ALLOC_http_lowrecvbuf_overlay_11_02166a30: ; 0x02166A30
	.asciz "ALLOC http->lowrecvbuf"

    .global DAT_overlay_11_02166A47
DAT_overlay_11_02166A47:
	.byte 0x00

    .global s_ALLOC_http_lowsendbuf_overlay_11_02166a48
s_ALLOC_http_lowsendbuf_overlay_11_02166a48: ; 0x02166A48
	.asciz "ALLOC http->lowsendbuf"

    .global DAT_overlay_11_02166A5F
DAT_overlay_11_02166A5F:
	.byte 0x00

    .global s_Connection_overlay_11_02166a60
s_Connection_overlay_11_02166a60: ; 0x02166A60
	.asciz "Connection"

    .global DAT_overlay_11_02166A6B
DAT_overlay_11_02166A6B:
	.byte 0x00

    .global s_close_overlay_11_02166a6c
s_close_overlay_11_02166a6c: ; 0x02166A6C
	.asciz "close"

    .global DAT_overlay_11_02166A72
DAT_overlay_11_02166A72:
	.byte 0x00, 0x00

    .global s_overlay_11_02166a74
s_overlay_11_02166a74: ; 0x02166A74
	.asciz "\r\n\r\n"

    .global DAT_overlay_11_02166A79
DAT_overlay_11_02166A79:
	.byte 0x00, 0x00, 0x00

    .global s_d_overlay_11_02166a7c
s_d_overlay_11_02166a7c: ; 0x02166A7C
	.asciz "%d"

    .global DAT_overlay_11_02166A7F
DAT_overlay_11_02166A7F:
	.byte 0x00

    .global s_Content_Length_overlay_11_02166a80
s_Content_Length_overlay_11_02166a80: ; 0x02166A80
	.asciz "Content-Length"

    .global DAT_overlay_11_02166A8F
DAT_overlay_11_02166A8F:
	.byte 0x00

    .global s_Content_Length_overlay_11_02166a90
s_Content_Length_overlay_11_02166a90: ; 0x02166A90
	.asciz "Content-Length: "

    .global DAT_overlay_11_02166AA1
DAT_overlay_11_02166AA1:
	.byte 0x00, 0x00, 0x00

    .global s_overlay_11_02166aa4
s_overlay_11_02166aa4: ; 0x02166AA4
	.asciz "\r\n"

    .global DAT_overlay_11_02166AA7
DAT_overlay_11_02166AA7:
	.byte 0x00

    .global s_FREE_http_lowrecvbuf_overlay_11_02166aa8
s_FREE_http_lowrecvbuf_overlay_11_02166aa8: ; 0x02166AA8
	.asciz "FREE http->lowrecvbuf"

    .global DAT_overlay_11_02166ABE
DAT_overlay_11_02166ABE:
	.byte 0x00, 0x00

    .global s_FREE_http_lowsendbuf_overlay_11_02166ac0
s_FREE_http_lowsendbuf_overlay_11_02166ac0: ; 0x02166AC0
	.asciz "FREE http->lowsendbuf"

    .global DAT_overlay_11_02166AD6
DAT_overlay_11_02166AD6:
	.byte 0x00, 0x00

    .global s_POST_s_HTTP_1_0_Content_type_a_overlay_11_02166ad8
s_POST_s_HTTP_1_0_Content_type_a_overlay_11_02166ad8: ; 0x02166AD8
	.asciz "POST /%s HTTP/1.0\r\nContent-type: application/x-www-form-urlencoded\r\nHost: %s\r\n\r\n"

    .global DAT_overlay_11_02166B29
DAT_overlay_11_02166B29:
	.byte 0x00, 0x00, 0x00

    .global s_GET_s_HTTP_1_0_Host_s_overlay_11_02166b2c
s_GET_s_HTTP_1_0_Host_s_overlay_11_02166b2c: ; 0x02166B2C
	.asciz "GET /%s HTTP/1.0\r\nHost: %s\r\n\r\n"

    .global DAT_overlay_11_02166B4B
DAT_overlay_11_02166B4B:
	.byte 0x00

    .global s_s_s_overlay_11_02166b4c
s_s_s_overlay_11_02166b4c: ; 0x02166B4C
	.asciz "%s: %s\r\n"

    .global DAT_overlay_11_02166B55
DAT_overlay_11_02166B55:
	.byte 0x00, 0x00, 0x00

    .global s_s_overlay_11_02166b58
s_s_overlay_11_02166b58: ; 0x02166B58
	.asciz "%s="

    .global s_s_overlay_11_02166b5c
s_s_overlay_11_02166b5c: ; 0x02166B5C
	.asciz "&%s="

    .global DAT_overlay_11_02166B61
DAT_overlay_11_02166B61:
	.byte 0x00, 0x00, 0x00

    .global s_s_overlay_11_02166b64
s_s_overlay_11_02166b64: ; 0x02166B64
	.asciz "%s"

    .global DAT_overlay_11_02166B67
DAT_overlay_11_02166B67:
	.byte 0x00

    .global s_ALLOC_buf_buffer_overlay_11_02166b68
s_ALLOC_buf_buffer_overlay_11_02166b68: ; 0x02166B68
	.asciz "ALLOC buf->buffer"

    .global DAT_overlay_11_02166B7A
DAT_overlay_11_02166B7A:
	.byte 0x00, 0x00

    .global s_FREE_buf_buffer_overlay_11_02166b7c
s_FREE_buf_buffer_overlay_11_02166b7c: ; 0x02166B7C
	.asciz "FREE buf->buffer"

    .global DAT_overlay_11_02166B8D
DAT_overlay_11_02166B8D:
	.byte 0x00, 0x00, 0x00

    .global s_ALLOC_newptr_overlay_11_02166b90
s_ALLOC_newptr_overlay_11_02166b90: ; 0x02166B90
	.asciz "ALLOC newptr"

    .global DAT_overlay_11_02166B9D
DAT_overlay_11_02166B9D:
	.byte 0x00, 0x00, 0x00

    .global s_http_overlay_11_02166ba0
s_http_overlay_11_02166ba0: ; 0x02166BA0
	.asciz "http://"

    .global s_https_overlay_11_02166ba8
s_https_overlay_11_02166ba8: ; 0x02166BA8
	.asciz "https://"

    .global DAT_overlay_11_02166BB1
DAT_overlay_11_02166BB1:
	.byte 0x00, 0x00, 0x00

    .global s_overlay_11_02166bb4
s_overlay_11_02166bb4: ; 0x02166BB4
	.asciz ":"

    .global DAT_overlay_11_02166BB6
DAT_overlay_11_02166BB6:
	.byte 0x00, 0x00

    .global s_overlay_11_02166bb8
s_overlay_11_02166bb8: ; 0x02166BB8
	.asciz "/"

    .global DAT_overlay_11_02166BBA
DAT_overlay_11_02166BBA:
	.byte 0x00, 0x00

    .global s_ALLOC_result_entry_i_label_overlay_11_02166bbc
s_ALLOC_result_entry_i_label_overlay_11_02166bbc: ; 0x02166BBC
	.asciz "ALLOC result->entry[i].label"

    .global DAT_overlay_11_02166BD9
DAT_overlay_11_02166BD9:
	.byte 0x00, 0x00, 0x00

    .global s_ALLOC_result_entry_i_value_overlay_11_02166bdc
s_ALLOC_result_entry_i_value_overlay_11_02166bdc: ; 0x02166BDC
	.asciz "ALLOC result->entry[i].value"

    .global DAT_overlay_11_02166BF9
DAT_overlay_11_02166BF9:
	.byte 0x00, 0x00, 0x00

    .global s_FREE_result_entry_i_label_overlay_11_02166bfc
s_FREE_result_entry_i_label_overlay_11_02166bfc: ; 0x02166BFC
	.asciz "FREE result->entry[i].label"

    .global s_FREE_result_entry_i_value_overlay_11_02166c18
s_FREE_result_entry_i_value_overlay_11_02166c18: ; 0x02166C18
	.asciz "FREE result->entry[i].value"

    .global s_overlay_11_02166c34
s_overlay_11_02166c34: ; 0x02166C34
	.asciz " "

    .global DAT_overlay_11_02166C36
DAT_overlay_11_02166C36:
	.byte 0x00, 0x00

    .global s_httpresult_overlay_11_02166c38
s_httpresult_overlay_11_02166c38: ; 0x02166C38
	.asciz "httpresult"

    .global DAT_overlay_11_02166C43
DAT_overlay_11_02166C43:
	.byte 0x00

    .global s_200_overlay_11_02166c44
s_200_overlay_11_02166c44: ; 0x02166C44
	.asciz "200"

    .global s_overlay_11_02166c48
s_overlay_11_02166c48: ; 0x02166C48
	.asciz ": "

    .global DAT_overlay_11_02166C4B
DAT_overlay_11_02166C4B:
	.byte 0x00

    .global s_overlay_11_02166c4c
s_overlay_11_02166c4c: ; 0x02166C4C
	.asciz "="

    .global DAT_overlay_11_02166C4E
DAT_overlay_11_02166C4E:
	.byte 0x00, 0x00

    .global s_overlay_11_02166c50
s_overlay_11_02166c50: ; 0x02166C50
	.asciz "&"

    .global DAT_overlay_11_02166C52
DAT_overlay_11_02166C52:
	.byte 0x00, 0x00

    .global s_FREE_array_entry_i_label_overlay_11_02166c54
s_FREE_array_entry_i_label_overlay_11_02166c54: ; 0x02166C54
	.asciz "FREE array_entry[i].label"

    .global DAT_overlay_11_02166C6E
DAT_overlay_11_02166C6E:
	.byte 0x00, 0x00

    .global s_FREE_array_entry_i_value_overlay_11_02166c70
s_FREE_array_entry_i_value_overlay_11_02166c70: ; 0x02166C70
	.asciz "FREE array_entry[i].value"

    .global DAT_overlay_11_02166C8A
DAT_overlay_11_02166C8A:
	.byte 0x00, 0x00

    .global ptr_s_http_conntest_nintendowifi_net_overlay_11_02166c90_overlay_11_02166c8c
ptr_s_http_conntest_nintendowifi_net_overlay_11_02166c90_overlay_11_02166c8c: ; 0x02166C8C
	.word s_http_conntest_nintendowifi_net_overlay_11_02166c90

    .global s_http_conntest_nintendowifi_net_overlay_11_02166c90
s_http_conntest_nintendowifi_net_overlay_11_02166c90: ; 0x02166C90
	.asciz "http://conntest.nintendowifi.net/"

    .global DAT_overlay_11_02166CB2
DAT_overlay_11_02166CB2:
	.byte 0x00, 0x00

    .global s_ALLOC_DWCnetcheck_overlay_11_02166cb4
s_ALLOC_DWCnetcheck_overlay_11_02166cb4: ; 0x02166CB4
	.asciz "ALLOC DWCnetcheck"

    .global DAT_overlay_11_02166CC6
DAT_overlay_11_02166CC6:
	.byte 0x00, 0x00

    .global s_ALLOC_DWChttp_overlay_11_02166cc8
s_ALLOC_DWChttp_overlay_11_02166cc8: ; 0x02166CC8
	.asciz "ALLOC DWChttp"

    .global DAT_overlay_11_02166CD6
DAT_overlay_11_02166CD6:
	.byte 0x00, 0x00

    .global s_FREE_DWChttp_overlay_11_02166cd8
s_FREE_DWChttp_overlay_11_02166cd8: ; 0x02166CD8
	.asciz "FREE DWChttp"

    .global DAT_overlay_11_02166CE5
DAT_overlay_11_02166CE5:
	.byte 0x00, 0x00, 0x00

    .global s_FREE_DWCnetcheck_body_302_overlay_11_02166ce8
s_FREE_DWCnetcheck_body_302_overlay_11_02166ce8: ; 0x02166CE8
	.asciz "FREE DWCnetcheck->body_302"

    .global DAT_overlay_11_02166D03
DAT_overlay_11_02166D03:
	.byte 0x00

    .global s_FREE_DWCnetcheck_body_wayport_overlay_11_02166d04
s_FREE_DWCnetcheck_body_wayport_overlay_11_02166d04: ; 0x02166D04
	.asciz "FREE DWCnetcheck->body_wayport"

    .global DAT_overlay_11_02166D23
DAT_overlay_11_02166D23:
	.byte 0x00

    .global s_FREE_DWCnetcheck_overlay_11_02166d24
s_FREE_DWCnetcheck_overlay_11_02166d24: ; 0x02166D24
	.asciz "FREE DWCnetcheck"

    .global DAT_overlay_11_02166D35
DAT_overlay_11_02166D35:
	.byte 0x00, 0x00, 0x00

    .global s_ALLOC_DWCnetcheck_body_302_overlay_11_02166d38
s_ALLOC_DWCnetcheck_body_302_overlay_11_02166d38: ; 0x02166D38
	.asciz "ALLOC DWCnetcheck->body_302"

    .global s_ALLOC_url_overlay_11_02166d54
s_ALLOC_url_overlay_11_02166d54: ; 0x02166D54
	.asciz "ALLOC url"

    .global DAT_overlay_11_02166D5E
DAT_overlay_11_02166D5E:
	.byte 0x00, 0x00

    .global s_ALLOC_data_len_overlay_11_02166d60
s_ALLOC_data_len_overlay_11_02166d60: ; 0x02166D60
	.asciz "ALLOC data_len"

    .global DAT_overlay_11_02166D6F
DAT_overlay_11_02166D6F:
	.byte 0x00

    .global s_ALLOC_wait_len_overlay_11_02166d70
s_ALLOC_wait_len_overlay_11_02166d70: ; 0x02166D70
	.asciz "ALLOC wait_len"

    .global DAT_overlay_11_02166D7F
DAT_overlay_11_02166D7F:
	.byte 0x00

    .global s_ALLOC_DWCnetcheck_body_wayport_overlay_11_02166d80
s_ALLOC_DWCnetcheck_body_wayport_overlay_11_02166d80: ; 0x02166D80
	.asciz "ALLOC DWCnetcheck->body_wayport"

    .global s_httpresult_overlay_11_02166da0
s_httpresult_overlay_11_02166da0: ; 0x02166DA0
	.asciz "httpresult"

    .global DAT_overlay_11_02166DAB
DAT_overlay_11_02166DAB:
	.byte 0x00

    .global s_https_nas_nintendowifi_net_ac_overlay_11_02166dac
s_https_nas_nintendowifi_net_ac_overlay_11_02166dac: ; 0x02166DAC
	.asciz "https://nas.nintendowifi.net/ac"

    .global s_action_overlay_11_02166dcc
s_action_overlay_11_02166dcc: ; 0x02166DCC
	.asciz "action"

    .global DAT_overlay_11_02166DD3
DAT_overlay_11_02166DD3:
	.byte 0x00

    .global s_message_overlay_11_02166dd4
s_message_overlay_11_02166dd4: ; 0x02166DD4
	.asciz "message"

    .global s_HotSpotResponse_overlay_11_02166ddc
s_HotSpotResponse_overlay_11_02166ddc: ; 0x02166DDC
	.asciz "HotSpotResponse"

    .global s_parse_overlay_11_02166dec
s_parse_overlay_11_02166dec: ; 0x02166DEC
	.asciz "parse"

    .global DAT_overlay_11_02166DF2
DAT_overlay_11_02166DF2:
	.byte 0x00, 0x00

    .global s_HTML_overlay_11_02166df4
s_HTML_overlay_11_02166df4: ; 0x02166DF4
	.asciz "HTML"

    .global DAT_overlay_11_02166DF9
DAT_overlay_11_02166DF9:
	.byte 0x00, 0x00, 0x00

    .global s_returncd_overlay_11_02166dfc
s_returncd_overlay_11_02166dfc: ; 0x02166DFC
	.asciz "returncd"

    .global DAT_overlay_11_02166E05
DAT_overlay_11_02166E05:
	.byte 0x00, 0x00, 0x00

    .global s_url_overlay_11_02166e08
s_url_overlay_11_02166e08: ; 0x02166E08
	.asciz "url"

    .global s_data_overlay_11_02166e0c
s_data_overlay_11_02166e0c: ; 0x02166E0C
	.asciz "data"

    .global DAT_overlay_11_02166E11
DAT_overlay_11_02166E11:
	.byte 0x00, 0x00, 0x00

    .global s_wait_overlay_11_02166e14
s_wait_overlay_11_02166e14: ; 0x02166E14
	.asciz "wait"

    .global DAT_overlay_11_02166E19
DAT_overlay_11_02166E19:
	.byte 0x00, 0x00, 0x00

    .global s_FREE_url_overlay_11_02166e1c
s_FREE_url_overlay_11_02166e1c: ; 0x02166E1C
	.asciz "FREE url"

    .global DAT_overlay_11_02166E25
DAT_overlay_11_02166E25:
	.byte 0x00, 0x00, 0x00

    .global s_FREE_data_overlay_11_02166e28
s_FREE_data_overlay_11_02166e28: ; 0x02166E28
	.asciz "FREE data"

    .global DAT_overlay_11_02166E32
DAT_overlay_11_02166E32:
	.byte 0x00, 0x00

    .global s_FREE_wait_overlay_11_02166e34
s_FREE_wait_overlay_11_02166e34: ; 0x02166E34
	.asciz "FREE wait"

    .global DAT_overlay_11_02166E3E
DAT_overlay_11_02166E3E:
	.byte 0x00, 0x00

    .global s_Jun_overlay_11_02166e40
s_Jun_overlay_11_02166e40: ; 0x02166E40
	.asciz "Jun"

    .global s_Jul_overlay_11_02166e44
s_Jul_overlay_11_02166e44: ; 0x02166E44
	.asciz "Jul"

    .global s_Dec_overlay_11_02166e48
s_Dec_overlay_11_02166e48: ; 0x02166E48
	.asciz "Dec"

    .global s_Sep_overlay_11_02166e4c
s_Sep_overlay_11_02166e4c: ; 0x02166E4C
	.asciz "Sep"

    .global s_Aug_overlay_11_02166e50
s_Aug_overlay_11_02166e50: ; 0x02166E50
	.asciz "Aug"

    .global s_Nov_overlay_11_02166e54
s_Nov_overlay_11_02166e54: ; 0x02166E54
	.asciz "Nov"

    .global s_Oct_overlay_11_02166e58
s_Oct_overlay_11_02166e58: ; 0x02166E58
	.asciz "Oct"

    .global s_May_overlay_11_02166e5c
s_May_overlay_11_02166e5c: ; 0x02166E5C
	.asciz "May"

    .global s_Apr_overlay_11_02166e60
s_Apr_overlay_11_02166e60: ; 0x02166E60
	.asciz "Apr"

    .global s_Mar_overlay_11_02166e64
s_Mar_overlay_11_02166e64: ; 0x02166E64
	.asciz "Mar"

    .global s_Feb_overlay_11_02166e68
s_Feb_overlay_11_02166e68: ; 0x02166E68
	.asciz "Feb"

    .global s_Jan_overlay_11_02166e6c
s_Jan_overlay_11_02166e6c: ; 0x02166E6C
	.asciz "Jan"

    .global ptr_s_Jan_overlay_11_02166e6c_overlay_11_02166e70
ptr_s_Jan_overlay_11_02166e6c_overlay_11_02166e70: ; 0x02166E70
	.word s_Jan_overlay_11_02166e6c

    .global ptr_s_Feb_overlay_11_02166e68_overlay_11_02166e74
ptr_s_Feb_overlay_11_02166e68_overlay_11_02166e74: ; 0x02166E74
	.word s_Feb_overlay_11_02166e68
	.word s_Mar_overlay_11_02166e64
	.word s_Apr_overlay_11_02166e60
	.word s_May_overlay_11_02166e5c
	.word s_Jun_overlay_11_02166e40
	.word s_Jul_overlay_11_02166e44
	.word s_Aug_overlay_11_02166e50
	.word s_Sep_overlay_11_02166e4c
	.word s_Oct_overlay_11_02166e58
	.word s_Nov_overlay_11_02166e54
	.word s_Dec_overlay_11_02166e48

    .global s_Fri_03_Mar_2006_01_28_13_GMT_overlay_11_02166ea0
s_Fri_03_Mar_2006_01_28_13_GMT_overlay_11_02166ea0: ; 0x02166EA0
	.asciz "Fri, 03 Mar 2006 01:28:13 GMT"

    .global DAT_overlay_11_02166EBE
DAT_overlay_11_02166EBE:
	.byte 0x00, 0x00

    .global s_ALLOC_intwork_overlay_11_02166ec0
s_ALLOC_intwork_overlay_11_02166ec0: ; 0x02166EC0
	.asciz "ALLOC intwork"

    .global DAT_overlay_11_02166ECE
DAT_overlay_11_02166ECE:
	.byte 0x00, 0x00

    .global s_FREE_intwork_overlay_11_02166ed0
s_FREE_intwork_overlay_11_02166ed0: ; 0x02166ED0
	.asciz "FREE intwork"

    .global DAT_overlay_11_02166EDD
DAT_overlay_11_02166EDD:
	.byte 0x00, 0x00, 0x00

    .global s_https_nas_nintendowifi_net_ac_overlay_11_02166ee0
s_https_nas_nintendowifi_net_ac_overlay_11_02166ee0: ; 0x02166EE0
	.asciz "https://nas.nintendowifi.net/ac"

    .global s_action_overlay_11_02166f00
s_action_overlay_11_02166f00: ; 0x02166F00
	.asciz "action"

    .global DAT_overlay_11_02166F07
DAT_overlay_11_02166F07:
	.byte 0x00

    .global s_SVCLOC_overlay_11_02166f08
s_SVCLOC_overlay_11_02166f08: ; 0x02166F08
	.asciz "SVCLOC"

    .global DAT_overlay_11_02166F0F
DAT_overlay_11_02166F0F:
	.byte 0x00

    .global s_svc_overlay_11_02166f10
s_svc_overlay_11_02166f10: ; 0x02166F10
	.asciz "svc"

    .global s_Date_overlay_11_02166f14
s_Date_overlay_11_02166f14: ; 0x02166F14
	.asciz "Date"

    .global DAT_overlay_11_02166F19
DAT_overlay_11_02166F19:
	.byte 0x00, 0x00, 0x00

    .global s_httpresult_overlay_11_02166f1c
s_httpresult_overlay_11_02166f1c: ; 0x02166F1C
	.asciz "httpresult"

    .global DAT_overlay_11_02166F27
DAT_overlay_11_02166F27:
	.byte 0x00

    .global s_returncd_overlay_11_02166f28
s_returncd_overlay_11_02166f28: ; 0x02166F28
	.asciz "returncd"

    .global DAT_overlay_11_02166F31
DAT_overlay_11_02166F31:
	.byte 0x00, 0x00, 0x00

    .global s_svchost_overlay_11_02166f34
s_svchost_overlay_11_02166f34: ; 0x02166F34
	.asciz "svchost"

    .global s_servicetoken_overlay_11_02166f3c
s_servicetoken_overlay_11_02166f3c: ; 0x02166F3C
	.asciz "servicetoken"

    .global DAT_overlay_11_02166F49
DAT_overlay_11_02166F49:
	.byte 0x00, 0x00, 0x00

    .global s_statusdata_overlay_11_02166f4c
s_statusdata_overlay_11_02166f4c: ; 0x02166F4C
	.asciz "statusdata"

    .global DAT_overlay_11_02166F57
DAT_overlay_11_02166F57:
	.byte 0x00

    .global ptr_s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02166f5c_overlay_11_02166f58
ptr_s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02166f5c_overlay_11_02166f58: ; 0x02166F58
	.word s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02166f5c

    .global s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02166f5c
s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02166f5c: ; 0x02166F5C
	.asciz "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.-"

    .global DAT_overlay_11_02166F9D
DAT_overlay_11_02166F9D:
	.byte 0x00, 0x00, 0x00

    .global DAT_overlay_11_02166fa0
DAT_overlay_11_02166fa0: ; 0x02166FA0
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_02166fa4
ptr_null_overlay_11_02166fa4: ; 0x02166FA4
	.word s_BE_GlobalSign_nv_sa_Root_CA_G_overlay_11_02166fb8
	.byte 0x00, 0x01, 0x00, 0x00
	.word DAT_overlay_11_02166fec
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02166fa0

    .global s_BE_GlobalSign_nv_sa_Root_CA_G_overlay_11_02166fb8
s_BE_GlobalSign_nv_sa_Root_CA_G_overlay_11_02166fb8: ; 0x02166FB8
	.asciz "BE, GlobalSign nv-sa, Root CA, GlobalSign Root CA"

    .global DAT_overlay_11_02166FEA
DAT_overlay_11_02166FEA:
	.byte 0x00, 0x00

    .global DAT_overlay_11_02166fec
DAT_overlay_11_02166fec: ; 0x02166FEC
	.byte 0xDA, 0x0E, 0xE6, 0x99
	.byte 0x8D, 0xCE, 0xA3, 0xE3, 0x4F, 0x8A, 0x7E, 0xFB, 0xF1, 0x8B, 0x83, 0x25, 0x6B, 0xEA, 0x48, 0x1F
	.byte 0xF1, 0x2A, 0xB0, 0xB9, 0x95, 0x11, 0x04, 0xBD, 0xF0, 0x63, 0xD1, 0xE2, 0x67, 0x66, 0xCF, 0x1C
	.byte 0xDD, 0xCF, 0x1B, 0x48, 0x2B, 0xEE, 0x8D, 0x89, 0x8E, 0x9A, 0xAF, 0x29, 0x80, 0x65, 0xAB, 0xE9
	.byte 0xC7, 0x2D, 0x12, 0xCB, 0xAB, 0x1C, 0x4C, 0x70, 0x07, 0xA1, 0x3D, 0x0A, 0x30, 0xCD, 0x15, 0x8D
	.byte 0x4F, 0xF8, 0xDD, 0xD4, 0x8C, 0x50, 0x15, 0x1C, 0xEF, 0x50, 0xEE, 0xC4, 0x2E, 0xF7, 0xFC, 0xE9
	.byte 0x52, 0xF2, 0x91, 0x7D, 0xE0, 0x6D, 0xD5, 0x35, 0x30, 0x8E, 0x5E, 0x43, 0x73, 0xF2, 0x41, 0xE9
	.byte 0xD5, 0x6A, 0xE3, 0xB2, 0x89, 0x3A, 0x56, 0x39, 0x38, 0x6F, 0x06, 0x3C, 0x88, 0x69, 0x5B, 0x2A
	.byte 0x4D, 0xC5, 0xA7, 0x54, 0xB8, 0x6C, 0x89, 0xCC, 0x9B, 0xF9, 0x3C, 0xCA, 0xE5, 0xFD, 0x89, 0xF5
	.byte 0x12, 0x3C, 0x92, 0x78, 0x96, 0xD6, 0xDC, 0x74, 0x6E, 0x93, 0x44, 0x61, 0xD1, 0x8D, 0xC7, 0x46
	.byte 0xB2, 0x75, 0x0E, 0x86, 0xE8, 0x19, 0x8A, 0xD5, 0x6D, 0x6C, 0xD5, 0x78, 0x16, 0x95, 0xA2, 0xE9
	.byte 0xC8, 0x0A, 0x38, 0xEB, 0xF2, 0x24, 0x13, 0x4F, 0x73, 0x54, 0x93, 0x13, 0x85, 0x3A, 0x1B, 0xBC
	.byte 0x1E, 0x34, 0xB5, 0x8B, 0x05, 0x8C, 0xB9, 0x77, 0x8B, 0xB1, 0xDB, 0x1F, 0x20, 0x91, 0xAB, 0x09
	.byte 0x53, 0x6E, 0x90, 0xCE, 0x7B, 0x37, 0x74, 0xB9, 0x70, 0x47, 0x91, 0x22, 0x51, 0x63, 0x16, 0x79
	.byte 0xAE, 0xB1, 0xAE, 0x41, 0x26, 0x08, 0xC8, 0x19, 0x2B, 0xD1, 0x46, 0xAA, 0x48, 0xD6, 0x64, 0x2A
	.byte 0xD7, 0x83, 0x34, 0xFF, 0x2C, 0x2A, 0xC1, 0x6C, 0x19, 0x43, 0x4A, 0x07, 0x85, 0xE7, 0xD3, 0x7C
	.byte 0xF6, 0x21, 0x68, 0xEF, 0xEA, 0xF2, 0x52, 0x9F, 0x7F, 0x93, 0x90, 0xCF

    .global DAT_overlay_11_021670ec
DAT_overlay_11_021670ec: ; 0x021670EC
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_021670f0
ptr_null_overlay_11_021670f0: ; 0x021670F0
	.word s_IE_Baltimore_CyberTrust_Balti_overlay_11_02167104
	.byte 0x00, 0x01, 0x00, 0x00
	.word DAT_overlay_11_0216713c
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_021670ec

    .global s_IE_Baltimore_CyberTrust_Balti_overlay_11_02167104
s_IE_Baltimore_CyberTrust_Balti_overlay_11_02167104: ; 0x02167104
	.asciz "IE, Baltimore, CyberTrust, Baltimore CyberTrust Root"

    .global DAT_overlay_11_02167139
DAT_overlay_11_02167139:
	.byte 0x00, 0x00, 0x00

    .global DAT_overlay_11_0216713c
DAT_overlay_11_0216713c: ; 0x0216713C
	.byte 0xA3, 0x04, 0xBB, 0x22
	.byte 0xAB, 0x98, 0x3D, 0x57, 0xE8, 0x26, 0x72, 0x9A, 0xB5, 0x79, 0xD4, 0x29, 0xE2, 0xE1, 0xE8, 0x95
	.byte 0x80, 0xB1, 0xB0, 0xE3, 0x5B, 0x8E, 0x2B, 0x29, 0x9A, 0x64, 0xDF, 0xA1, 0x5D, 0xED, 0xB0, 0x09
	.byte 0x05, 0x6D, 0xDB, 0x28, 0x2E, 0xCE, 0x62, 0xA2, 0x62, 0xFE, 0xB4, 0x88, 0xDA, 0x12, 0xEB, 0x38
	.byte 0xEB, 0x21, 0x9D, 0xC0, 0x41, 0x2B, 0x01, 0x52, 0x7B, 0x88, 0x77, 0xD3, 0x1C, 0x8F, 0xC7, 0xBA
	.byte 0xB9, 0x88, 0xB5, 0x6A, 0x09, 0xE7, 0x73, 0xE8, 0x11, 0x40, 0xA7, 0xD1, 0xCC, 0xCA, 0x62, 0x8D
	.byte 0x2D, 0xE5, 0x8F, 0x0B, 0xA6, 0x50, 0xD2, 0xA8, 0x50, 0xC3, 0x28, 0xEA, 0xF5, 0xAB, 0x25, 0x87
	.byte 0x8A, 0x9A, 0x96, 0x1C, 0xA9, 0x67, 0xB8, 0x3F, 0x0C, 0xD5, 0xF7, 0xF9, 0x52, 0x13, 0x2F, 0xC2
	.byte 0x1B, 0xD5, 0x70, 0x70, 0xF0, 0x8F, 0xC0, 0x12, 0xCA, 0x06, 0xCB, 0x9A, 0xE1, 0xD9, 0xCA, 0x33
	.byte 0x7A, 0x77, 0xD6, 0xF8, 0xEC, 0xB9, 0xF1, 0x68, 0x44, 0x42, 0x48, 0x13, 0xD2, 0xC0, 0xC2, 0xA4
	.byte 0xAE, 0x5E, 0x60, 0xFE, 0xB6, 0xA6, 0x05, 0xFC, 0xB4, 0xDD, 0x07, 0x59, 0x02, 0xD4, 0x59, 0x18
	.byte 0x98, 0x63, 0xF5, 0xA5, 0x63, 0xE0, 0x90, 0x0C, 0x7D, 0x5D, 0xB2, 0x06, 0x7A, 0xF3, 0x85, 0xEA
	.byte 0xEB, 0xD4, 0x03, 0xAE, 0x5E, 0x84, 0x3E, 0x5F, 0xFF, 0x15, 0xED, 0x69, 0xBC, 0xF9, 0x39, 0x36
	.byte 0x72, 0x75, 0xCF, 0x77, 0x52, 0x4D, 0xF3, 0xC9, 0x90, 0x2C, 0xB9, 0x3D, 0xE5, 0xC9, 0x23, 0x53
	.byte 0x3F, 0x1F, 0x24, 0x98, 0x21, 0x5C, 0x07, 0x99, 0x29, 0xBD, 0xC6, 0x3A, 0xEC, 0xE7, 0x6E, 0x86
	.byte 0x3A, 0x6B, 0x97, 0x74, 0x63, 0x33, 0xBD, 0x68, 0x18, 0x31, 0xF0, 0x78, 0x8D, 0x76, 0xBF, 0xFC
	.byte 0x9E, 0x8E, 0x5D, 0x2A, 0x86, 0xA7, 0x4D, 0x90, 0xDC, 0x27, 0x1A, 0x39

    .global DAT_overlay_11_0216723c
DAT_overlay_11_0216723c: ; 0x0216723C
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_02167240
ptr_null_overlay_11_02167240: ; 0x02167240
	.word s_US_GTE_Corporation_GTE_CyberTr_overlay_11_02167254
	.byte 0x80, 0x00, 0x00, 0x00
	.word DAT_overlay_11_021672a4
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_0216723c

    .global s_US_GTE_Corporation_GTE_CyberTr_overlay_11_02167254
s_US_GTE_Corporation_GTE_CyberTr_overlay_11_02167254: ; 0x02167254
	.asciz "US, GTE Corporation, GTE CyberTrust Solutions, Inc., GTE CyberTrust Global Root"

    .global DAT_overlay_11_021672a4
DAT_overlay_11_021672a4: ; 0x021672A4
	.byte 0x95, 0x0F, 0xA0, 0xB6, 0xF0, 0x50, 0x9C, 0xE8, 0x7A, 0xC7, 0x88, 0xCD
	.byte 0xDD, 0x17, 0x0E, 0x2E, 0xB0, 0x94, 0xD0, 0x1B, 0x3D, 0x0E, 0xF6, 0x94, 0xC0, 0x8A, 0x94, 0xC7
	.byte 0x06, 0xC8, 0x90, 0x97, 0xC8, 0xB8, 0x64, 0x1A, 0x7A, 0x7E, 0x6C, 0x3C, 0x53, 0xE1, 0x37, 0x28
	.byte 0x73, 0x60, 0x7F, 0xB2, 0x97, 0x53, 0x07, 0x9F, 0x53, 0xF9, 0x6D, 0x58, 0x94, 0xD2, 0xAF, 0x8D
	.byte 0x6D, 0x88, 0x67, 0x80, 0xE6, 0xED, 0xB2, 0x95, 0xCF, 0x72, 0x31, 0xCA, 0xA5, 0x1C, 0x72, 0xBA
	.byte 0x5C, 0x02, 0xE7, 0x64, 0x42, 0xE7, 0xF9, 0xA9, 0x2C, 0xD6, 0x3A, 0x0D, 0xAC, 0x8D, 0x42, 0xAA
	.byte 0x24, 0x01, 0x39, 0xE6, 0x9C, 0x3F, 0x01, 0x85, 0x57, 0x0D, 0x58, 0x87, 0x45, 0xF8, 0xD3, 0x85
	.byte 0xAA, 0x93, 0x69, 0x26, 0x85, 0x70, 0x48, 0x80, 0x3F, 0x12, 0x15, 0xC7, 0x79, 0xB4, 0x1F, 0x05
	.byte 0x2F, 0x3B, 0x62, 0x99

    .global DAT_overlay_11_02167324
DAT_overlay_11_02167324: ; 0x02167324
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_02167328
ptr_null_overlay_11_02167328: ; 0x02167328
	.word s_US_GTE_Corporation_GTE_CyberTr_overlay_11_0216733c
	.byte 0x80, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167368
	.byte 0x03, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_0_02167324_overlay_11_02167338
ptr_FUN_overlay_0_02167324_overlay_11_02167338: ; 0x02167338
	.word DAT_overlay_11_02167324

    .global s_US_GTE_Corporation_GTE_CyberTr_overlay_11_0216733c
s_US_GTE_Corporation_GTE_CyberTr_overlay_11_0216733c: ; 0x0216733C
	.asciz "US, GTE Corporation, GTE CyberTrust Root"

    .global DAT_overlay_11_02167365
DAT_overlay_11_02167365:
	.byte 0x00, 0x00, 0x00

    .global DAT_overlay_11_02167368
DAT_overlay_11_02167368: ; 0x02167368
	.byte 0xB8, 0xE6, 0x4F, 0xBA, 0xDB, 0x98, 0x7C, 0x71
	.byte 0x7C, 0xAF, 0x44, 0xB7, 0xD3, 0x0F, 0x46, 0xD9, 0x64, 0xE5, 0x93, 0xC1, 0x42, 0x8E, 0xC7, 0xBA
	.byte 0x49, 0x8D, 0x35, 0x2D, 0x7A, 0xE7, 0x8B, 0xBD, 0xE5, 0x05, 0x31, 0x59, 0xC6, 0xB1, 0x2F, 0x0A
	.byte 0x0C, 0xFB, 0x9F, 0xA7, 0x3F, 0xA2, 0x09, 0x66, 0x84, 0x56, 0x1E, 0x37, 0x29, 0x1B, 0x87, 0xE9
	.byte 0x7E, 0x0C, 0xCA, 0x9A, 0x9F, 0xA5, 0x7F, 0xF5, 0x15, 0x94, 0xA3, 0xD5, 0xA2, 0x46, 0x82, 0xD8
	.byte 0x68, 0x4C, 0xD1, 0x37, 0x15, 0x06, 0x68, 0xAF, 0xBD, 0xF8, 0xB0, 0xB3, 0xF0, 0x29, 0xF5, 0x95
	.byte 0x5A, 0x09, 0x16, 0x61, 0x77, 0x0A, 0x22, 0x25, 0xD4, 0x4F, 0x45, 0xAA, 0xC7, 0xBD, 0xE5, 0x96
	.byte 0xDF, 0xF9, 0xD4, 0xA8, 0x8E, 0x42, 0xCC, 0x24, 0xC0, 0x1E, 0x91, 0x27, 0x4A, 0xB5, 0x6D, 0x06
	.byte 0x80, 0x63, 0x39, 0xC4, 0xA2, 0x5E, 0x38, 0x03

    .global DAT_overlay_11_021673e8
DAT_overlay_11_021673e8: ; 0x021673E8
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_021673ec
ptr_null_overlay_11_021673ec: ; 0x021673EC
	.word s_US_Washington_Nintendo_of_Amer_overlay_11_02167400
	.byte 0x80, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167450
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_021673e8

    .global s_US_Washington_Nintendo_of_Amer_overlay_11_02167400
s_US_Washington_Nintendo_of_Amer_overlay_11_02167400: ; 0x02167400
	.asciz "US, Washington, Nintendo of America Inc, NOA, Nintendo CA, ca@noa.nintendo.com"

    .global DAT_overlay_11_0216744F
DAT_overlay_11_0216744F:
	.byte 0x00

    .global DAT_overlay_11_02167450
DAT_overlay_11_02167450: ; 0x02167450
	.byte 0xB3, 0xCD, 0x79, 0x97, 0x77, 0x5D, 0x8A, 0xAF, 0x86, 0xA8, 0xE8, 0xD7, 0x73, 0x1C, 0x77, 0xDF
	.byte 0x10, 0x90, 0x1F, 0x81, 0xF8, 0x41, 0x9E, 0x21, 0x55, 0xDF, 0xBC, 0xFC, 0x63, 0xFB, 0x19, 0x43
	.byte 0xF1, 0xF6, 0xC4, 0x72, 0x42, 0x49, 0xBD, 0xAD, 0x44, 0x68, 0x4E, 0xF3, 0xDA, 0x1D, 0xE6, 0x4D
	.byte 0xD8, 0xF9, 0x59, 0x88, 0xDC, 0xAE, 0x3E, 0x9B, 0x38, 0x09, 0xCA, 0x7F, 0xFF, 0xDC, 0x24, 0xA2
	.byte 0x44, 0x78, 0x78, 0x49, 0x93, 0xD4, 0x84, 0x40, 0x10, 0xB8, 0xEC, 0x3E, 0xDB, 0x2D, 0x93, 0xC8
	.byte 0x11, 0xC8, 0xFD, 0x78, 0x2D, 0x61, 0xAD, 0x31, 0xAE, 0x86, 0x26, 0xB0, 0xFD, 0x5A, 0x3F, 0xA1
	.byte 0x3D, 0xBF, 0xE2, 0x4B, 0x49, 0xEC, 0xCE, 0x66, 0x98, 0x58, 0x26, 0x12, 0xC0, 0xFB, 0xF4, 0x77
	.byte 0x65, 0x1B, 0xEA, 0xFB, 0xCB, 0x7F, 0xE0, 0x8C, 0xCB, 0x02, 0xA3, 0x4E, 0x5E, 0x8C, 0xEA, 0x9B

    .global DAT_overlay_11_021674d0
DAT_overlay_11_021674d0: ; 0x021674D0
	.byte 0x01, 0x00, 0x01, 0x00

    .global PTR_s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167568_overlay_11_021674d4
PTR_s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167568_overlay_11_021674d4: ; 0x021674D4
	.word s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167568
	.byte 0x80, 0x00, 0x00, 0x00
	.word DAT_overlay_11_021674e8
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_021674d0

    .global DAT_overlay_11_021674e8
DAT_overlay_11_021674e8: ; 0x021674E8
	.byte 0xD2, 0x36, 0x36, 0x6A, 0x8B, 0xD7, 0xC2, 0x5B
	.byte 0x9E, 0xDA, 0x81, 0x41, 0x62, 0x8F, 0x38, 0xEE, 0x49, 0x04, 0x55, 0xD6, 0xD0, 0xEF, 0x1C, 0x1B
	.byte 0x95, 0x16, 0x47, 0xEF, 0x18, 0x48, 0x35, 0x3A, 0x52, 0xF4, 0x2B, 0x6A, 0x06, 0x8F, 0x3B, 0x2F
	.byte 0xEA, 0x56, 0xE3, 0xAF, 0x86, 0x8D, 0x9E, 0x17, 0xF7, 0x9E, 0xB4, 0x65, 0x75, 0x02, 0x4D, 0xEF
	.byte 0xCB, 0x09, 0xA2, 0x21, 0x51, 0xD8, 0x9B, 0xD0, 0x67, 0xD0, 0xBA, 0x0D, 0x92, 0x06, 0x14, 0x73
	.byte 0xD4, 0x93, 0xCB, 0x97, 0x2A, 0x00, 0x9C, 0x5C, 0x4E, 0x0C, 0xBC, 0xFA, 0x15, 0x52, 0xFC, 0xF2
	.byte 0x44, 0x6E, 0xDA, 0x11, 0x4A, 0x6E, 0x08, 0x9F, 0x2F, 0x2D, 0xE3, 0xF9, 0xAA, 0x3A, 0x86, 0x73
	.byte 0xB6, 0x46, 0x53, 0x58, 0xC8, 0x89, 0x05, 0xBD, 0x83, 0x11, 0xB8, 0x73, 0x3F, 0xAA, 0x07, 0x8D
	.byte 0xF4, 0x42, 0x4D, 0xE7, 0x40, 0x9D, 0x1C, 0x37

    .global s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167568
s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167568: ; 0x02167568
	.byte 0x5A, 0x41, 0x2C, 0x20, 0x57, 0x65, 0x73, 0x74
	.byte 0x65, 0x72, 0x6E, 0x20, 0x43, 0x61, 0x70, 0x65, 0x2C, 0x20, 0x43, 0x61, 0x70, 0x65, 0x20, 0x54
	.byte 0x6F, 0x77, 0x6E, 0x2C, 0x20, 0x54, 0x68, 0x61, 0x77, 0x74, 0x65, 0x20, 0x43, 0x6F, 0x6E, 0x73
	.byte 0x75, 0x6C, 0x74, 0x69, 0x6E, 0x67, 0x20, 0x63, 0x63, 0x2C, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69
	.byte 0x66, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65
	.byte 0x73, 0x20, 0x44, 0x69, 0x76, 0x69, 0x73, 0x69, 0x6F, 0x6E, 0x2C, 0x20, 0x54, 0x68, 0x61, 0x77
	.byte 0x74, 0x65, 0x20, 0x50, 0x72, 0x65, 0x6D, 0x69, 0x75, 0x6D, 0x20, 0x53, 0x65, 0x72, 0x76, 0x65
	.byte 0x72, 0x20, 0x43, 0x41, 0x2C, 0x20, 0x70, 0x72, 0x65, 0x6D, 0x69, 0x75, 0x6D, 0x2D, 0x73, 0x65
	.byte 0x72, 0x76, 0x65, 0x72, 0x40, 0x74, 0x68, 0x61, 0x77, 0x74, 0x65, 0x2E, 0x63, 0x6F, 0x6D, 0x00

    .global DAT_overlay_11_021675f0
DAT_overlay_11_021675f0: ; 0x021675F0
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_021675f4
ptr_null_overlay_11_021675f4: ; 0x021675F4
	.word s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167608
	.byte 0x80, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167688
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_021675f0

    .global s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167608
s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167608: ; 0x02167608
	.asciz "ZA, Western Cape, Cape Town, Thawte Consulting cc, Certification Services Division, Thawte Server CA, server-certs@thawte.com"

    .global DAT_overlay_11_02167686
DAT_overlay_11_02167686:
	.byte 0x00, 0x00

    .global DAT_overlay_11_02167688
DAT_overlay_11_02167688: ; 0x02167688
	.byte 0xD3, 0xA4, 0x50, 0x6E, 0xC8, 0xFF, 0x56, 0x6B
	.byte 0xE6, 0xCF, 0x5D, 0xB6, 0xEA, 0x0C, 0x68, 0x75, 0x47, 0xA2, 0xAA, 0xC2, 0xDA, 0x84, 0x25, 0xFC
	.byte 0xA8, 0xF4, 0x47, 0x51, 0xDA, 0x85, 0xB5, 0x20, 0x74, 0x94, 0x86, 0x1E, 0x0F, 0x75, 0xC9, 0xE9
	.byte 0x08, 0x61, 0xF5, 0x06, 0x6D, 0x30, 0x6E, 0x15, 0x19, 0x02, 0xE9, 0x52, 0xC0, 0x62, 0xDB, 0x4D
	.byte 0x99, 0x9E, 0xE2, 0x6A, 0x0C, 0x44, 0x38, 0xCD, 0xFE, 0xBE, 0xE3, 0x64, 0x09, 0x70, 0xC5, 0xFE
	.byte 0xB1, 0x6B, 0x29, 0xB6, 0x2F, 0x49, 0xC8, 0x3B, 0xD4, 0x27, 0x04, 0x25, 0x10, 0x97, 0x2F, 0xE7
	.byte 0x90, 0x6D, 0xC0, 0x28, 0x42, 0x99, 0xD7, 0x4C, 0x43, 0xDE, 0xC3, 0xF5, 0x21, 0x6D, 0x54, 0x9F
	.byte 0x5D, 0xC3, 0x58, 0xE1, 0xC0, 0xE4, 0xD9, 0x5B, 0xB0, 0xB8, 0xDC, 0xB4, 0x7B, 0xDF, 0x36, 0x3A
	.byte 0xC2, 0xB5, 0x66, 0x22, 0x12, 0xD6, 0x87, 0x0D

    .global DAT_overlay_11_02167708
DAT_overlay_11_02167708: ; 0x02167708
	.byte 0x01, 0x00, 0x01, 0x00

    .global PTR_s_US_VeriSign_Inc_Class_3_Publ_overlay_11_021677a0_overlay_11_0216770c
PTR_s_US_VeriSign_Inc_Class_3_Publ_overlay_11_021677a0_overlay_11_0216770c: ; 0x0216770C
	.word s_US_VeriSign_Inc_Class_3_Publ_overlay_11_021677a0
	.byte 0x80, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167720
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167708

    .global DAT_overlay_11_02167720
DAT_overlay_11_02167720: ; 0x02167720
	.byte 0xCC, 0x5E, 0xD1, 0x11, 0x5D, 0x5C, 0x69, 0xD0, 0xAB, 0xD3, 0xB9, 0x6A, 0x4C, 0x99, 0x1F, 0x59
	.byte 0x98, 0x30, 0x8E, 0x16, 0x85, 0x20, 0x46, 0x6D, 0x47, 0x3F, 0xD4, 0x85, 0x20, 0x84, 0xE1, 0x6D
	.byte 0xB3, 0xF8, 0xA4, 0xED, 0x0C, 0xF1, 0x17, 0x0F, 0x3B, 0xF9, 0xA7, 0xF9, 0x25, 0xD7, 0xC1, 0xCF
	.byte 0x84, 0x63, 0xF2, 0x7C, 0x63, 0xCF, 0xA2, 0x47, 0xF2, 0xC6, 0x5B, 0x33, 0x8E, 0x64, 0x40, 0x04
	.byte 0x68, 0xC1, 0x80, 0xB9, 0x64, 0x1C, 0x45, 0x77, 0xC7, 0xD8, 0x6E, 0xF5, 0x95, 0x29, 0x3C, 0x50
	.byte 0xE8, 0x34, 0xD7, 0x78, 0x1F, 0xA8, 0xBA, 0x6D, 0x43, 0x91, 0x95, 0x8F, 0x45, 0x57, 0x5E, 0x7E
	.byte 0xC5, 0xFB, 0xCA, 0xA4, 0x04, 0xEB, 0xEA, 0x97, 0x37, 0x54, 0x30, 0x6F, 0xBB, 0x01, 0x47, 0x32
	.byte 0x33, 0xCD, 0xDC, 0x57, 0x9B, 0x64, 0x69, 0x61, 0xF8, 0x9B, 0x1D, 0x1C, 0x89, 0x4F, 0x5C, 0x67

    .global s_US_VeriSign_Inc_Class_3_Publ_overlay_11_021677a0
s_US_VeriSign_Inc_Class_3_Publ_overlay_11_021677a0: ; 0x021677A0
	.byte 0x55, 0x53, 0x2C, 0x20, 0x56, 0x65, 0x72, 0x69, 0x53, 0x69, 0x67, 0x6E, 0x2C, 0x20, 0x49, 0x6E
	.byte 0x63, 0x2E, 0x2C, 0x20, 0x43, 0x6C, 0x61, 0x73, 0x73, 0x20, 0x33, 0x20, 0x50, 0x75, 0x62, 0x6C
	.byte 0x69, 0x63, 0x20, 0x50, 0x72, 0x69, 0x6D, 0x61, 0x72, 0x79, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69
	.byte 0x66, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x41, 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69
	.byte 0x74, 0x79, 0x20, 0x2D, 0x20, 0x47, 0x32, 0x2C, 0x20, 0x28, 0x63, 0x29, 0x20, 0x31, 0x39, 0x39
	.byte 0x38, 0x20, 0x56, 0x65, 0x72, 0x69, 0x53, 0x69, 0x67, 0x6E, 0x2C, 0x20, 0x49, 0x6E, 0x63, 0x2E
	.byte 0x20, 0x2D, 0x20, 0x46, 0x6F, 0x72, 0x20, 0x61, 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69, 0x7A, 0x65
	.byte 0x64, 0x20, 0x75, 0x73, 0x65, 0x20, 0x6F, 0x6E, 0x6C, 0x79, 0x2C, 0x20, 0x56, 0x65, 0x72, 0x69
	.byte 0x53, 0x69, 0x67, 0x6E, 0x20, 0x54, 0x72, 0x75, 0x73, 0x74, 0x20, 0x4E, 0x65, 0x74, 0x77, 0x6F
	.byte 0x72, 0x6B, 0x00, 0x00

    .global DAT_overlay_11_02167834
DAT_overlay_11_02167834: ; 0x02167834
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_02167838
ptr_null_overlay_11_02167838: ; 0x02167838
	.word s_US_VeriSign_Inc_VeriSign_Tru_overlay_11_0216784c
	.byte 0x00, 0x01, 0x00, 0x00
	.word DAT_overlay_11_021678e8
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167834

    .global s_US_VeriSign_Inc_VeriSign_Tru_overlay_11_0216784c
s_US_VeriSign_Inc_VeriSign_Tru_overlay_11_0216784c: ; 0x0216784C
	.asciz "US, VeriSign, Inc., VeriSign Trust Network, (c) 1999 VeriSign, Inc. - For authorized use only, VeriSign Class 3 Public Primary Certification Authority - G3"

    .global DAT_overlay_11_021678e8
DAT_overlay_11_021678e8: ; 0x021678E8
	.byte 0xCB, 0xBA, 0x9C, 0x52, 0xFC, 0x78, 0x1F, 0x1A
	.byte 0x1E, 0x6F, 0x1B, 0x37, 0x73, 0xBD, 0xF8, 0xC9, 0x6B, 0x94, 0x12, 0x30, 0x4F, 0xF0, 0x36, 0x47
	.byte 0xF5, 0xD0, 0x91, 0x0A, 0xF5, 0x17, 0xC8, 0xA5, 0x61, 0xC1, 0x16, 0x40, 0x4D, 0xFB, 0x8A, 0x61
	.byte 0x90, 0xE5, 0x76, 0x20, 0xC1, 0x11, 0x06, 0x7D, 0xAB, 0x2C, 0x6E, 0xA6, 0xF5, 0x11, 0x41, 0x8E
	.byte 0xFA, 0x2D, 0xAD, 0x2A, 0x61, 0x59, 0xA4, 0x67, 0x26, 0x4C, 0xD0, 0xE8, 0xBC, 0x52, 0x5B, 0x70
	.byte 0x20, 0x04, 0x58, 0xD1, 0x7A, 0xC9, 0xA4, 0x69, 0xBC, 0x83, 0x17, 0x64, 0xAD, 0x05, 0x8B, 0xBC
	.byte 0xD0, 0x58, 0xCE, 0x8D, 0x8C, 0xF5, 0xEB, 0xF0, 0x42, 0x49, 0x0B, 0x9D, 0x97, 0x27, 0x67, 0x32
	.byte 0x6E, 0xE1, 0xAE, 0x93, 0x15, 0x1C, 0x70, 0xBC, 0x20, 0x4D, 0x2F, 0x18, 0xDE, 0x92, 0x88, 0xE8
	.byte 0x6C, 0x85, 0x57, 0x11, 0x1A, 0xE9, 0x7E, 0xE3, 0x26, 0x11, 0x54, 0xA2, 0x45, 0x96, 0x55, 0x83
	.byte 0xCA, 0x30, 0x89, 0xE8, 0xDC, 0xD8, 0xA3, 0xED, 0x2A, 0x80, 0x3F, 0x7F, 0x79, 0x65, 0x57, 0x3E
	.byte 0x15, 0x20, 0x66, 0x08, 0x2F, 0x95, 0x93, 0xBF, 0xAA, 0x47, 0x2F, 0xA8, 0x46, 0x97, 0xF0, 0x12
	.byte 0xE2, 0xFE, 0xC2, 0x0A, 0x2B, 0x51, 0xE6, 0x76, 0xE6, 0xB7, 0x46, 0xB7, 0xE2, 0x0D, 0xA6, 0xCC
	.byte 0xA8, 0xC3, 0x4C, 0x59, 0x55, 0x89, 0xE6, 0xE8, 0x53, 0x5C, 0x1C, 0xEA, 0x9D, 0xF0, 0x62, 0x16
	.byte 0x0B, 0xA7, 0xC9, 0x5F, 0x0C, 0xF0, 0xDE, 0xC2, 0x76, 0xCE, 0xAF, 0xF7, 0x6A, 0xF2, 0xFA, 0x41
	.byte 0xA6, 0xA2, 0x33, 0x14, 0xC9, 0xE5, 0x7A, 0x63, 0xD3, 0x9E, 0x62, 0x37, 0xD5, 0x85, 0x65, 0x9E
	.byte 0x0E, 0xE6, 0x53, 0x24, 0x74, 0x1B, 0x5E, 0x1D, 0x12, 0x53, 0x5B, 0xC7, 0x2C, 0xE7, 0x83, 0x49
	.byte 0x3B, 0x15, 0xAE, 0x8A, 0x68, 0xB9, 0x57, 0x97

    .global DAT_overlay_11_021679e8
DAT_overlay_11_021679e8: ; 0x021679E8
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_021679ec
ptr_null_overlay_11_021679ec: ; 0x021679EC
	.word s_US_VeriSign_Inc_Class_3_Publ_overlay_11_02167a00
	.byte 0x80, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167a44
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_021679e8

    .global s_US_VeriSign_Inc_Class_3_Publ_overlay_11_02167a00
s_US_VeriSign_Inc_Class_3_Publ_overlay_11_02167a00: ; 0x02167A00
	.asciz "US, VeriSign, Inc., Class 3 Public Primary Certification Authority"

    .global DAT_overlay_11_02167A43
DAT_overlay_11_02167A43:
	.byte 0x00

    .global DAT_overlay_11_02167a44
DAT_overlay_11_02167a44: ; 0x02167A44
	.byte 0xC9, 0x5C, 0x59, 0x9E, 0xF2, 0x1B, 0x8A, 0x01, 0x14, 0xB4, 0x10, 0xDF
	.byte 0x04, 0x40, 0xDB, 0xE3, 0x57, 0xAF, 0x6A, 0x45, 0x40, 0x8F, 0x84, 0x0C, 0x0B, 0xD1, 0x33, 0xD9
	.byte 0xD9, 0x11, 0xCF, 0xEE, 0x02, 0x58, 0x1F, 0x25, 0xF7, 0x2A, 0xA8, 0x44, 0x05, 0xAA, 0xEC, 0x03
	.byte 0x1F, 0x78, 0x7F, 0x9E, 0x93, 0xB9, 0x9A, 0x00, 0xAA, 0x23, 0x7D, 0xD6, 0xAC, 0x85, 0xA2, 0x63
	.byte 0x45, 0xC7, 0x72, 0x27, 0xCC, 0xF4, 0x4C, 0xC6, 0x75, 0x71, 0xD2, 0x39, 0xEF, 0x4F, 0x42, 0xF0
	.byte 0x75, 0xDF, 0x0A, 0x90, 0xC6, 0x8E, 0x20, 0x6F, 0x98, 0x0F, 0xF8, 0xAC, 0x23, 0x5F, 0x70, 0x29
	.byte 0x36, 0xA4, 0xC9, 0x86, 0xE7, 0xB1, 0x9A, 0x20, 0xCB, 0x53, 0xA5, 0x85, 0xE7, 0x3D, 0xBE, 0x7D
	.byte 0x9A, 0xFE, 0x24, 0x45, 0x33, 0xDC, 0x76, 0x15, 0xED, 0x0F, 0xA2, 0x71, 0x64, 0x4C, 0x65, 0x2E
	.byte 0x81, 0x68, 0x45, 0xA7

    .global DAT_overlay_11_02167ac4
DAT_overlay_11_02167ac4: ; 0x02167AC4
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_02167ac8
ptr_null_overlay_11_02167ac8: ; 0x02167AC8
	.word s_US_RSA_Data_Security_Inc_Sec_overlay_11_02167adc
	.byte 0x7D, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167b20
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167ac4

    .global s_US_RSA_Data_Security_Inc_Sec_overlay_11_02167adc
s_US_RSA_Data_Security_Inc_Sec_overlay_11_02167adc: ; 0x02167ADC
	.asciz "US, RSA Data Security, Inc., Secure Server Certification Authority"

    .global DAT_overlay_11_02167B1F
DAT_overlay_11_02167B1F:
	.byte 0x00

    .global DAT_overlay_11_02167b20
DAT_overlay_11_02167b20: ; 0x02167B20
	.byte 0x92, 0xCE, 0x7A, 0xC1, 0xAE, 0x83, 0x3E, 0x5A, 0xAA, 0x89, 0x83, 0x57, 0xAC, 0x25, 0x01, 0x76
	.byte 0x0C, 0xAD, 0xAE, 0x8E, 0x2C, 0x37, 0xCE, 0xEB, 0x35, 0x78, 0x64, 0x54, 0x03, 0xE5, 0x84, 0x40
	.byte 0x51, 0xC9, 0xBF, 0x8F, 0x08, 0xE2, 0x8A, 0x82, 0x08, 0xD2, 0x16, 0x86, 0x37, 0x55, 0xE9, 0xB1
	.byte 0x21, 0x02, 0xAD, 0x76, 0x68, 0x81, 0x9A, 0x05, 0xA2, 0x4B, 0xC9, 0x4B, 0x25, 0x66, 0x22, 0x56
	.byte 0x6C, 0x88, 0x07, 0x8F, 0xF7, 0x81, 0x59, 0x6D, 0x84, 0x07, 0x65, 0x70, 0x13, 0x71, 0x76, 0x3E
	.byte 0x9B, 0x77, 0x4C, 0xE3, 0x50, 0x89, 0x56, 0x98, 0x48, 0xB9, 0x1D, 0xA7, 0x29, 0x1A, 0x13, 0x2E
	.byte 0x4A, 0x11, 0x59, 0x9C, 0x1E, 0x15, 0xD5, 0x49, 0x54, 0x2C, 0x73, 0x3A, 0x69, 0x82, 0xB1, 0x97
	.byte 0x39, 0x9C, 0x6D, 0x70, 0x67, 0x48, 0xE5, 0xDD, 0x2D, 0xD6, 0xC8, 0x1E, 0x7B, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02167ba0
DAT_overlay_11_02167ba0: ; 0x02167BA0
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_02167ba4
ptr_null_overlay_11_02167ba4: ; 0x02167BA4
	.word s_GlobalSign_Root_CA_R2_GlobalS_overlay_11_02167bb8
	.byte 0x00, 0x01, 0x00, 0x00
	.word DAT_overlay_11_02167be8
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167ba0

    .global s_GlobalSign_Root_CA_R2_GlobalS_overlay_11_02167bb8
s_GlobalSign_Root_CA_R2_GlobalS_overlay_11_02167bb8: ; 0x02167BB8
	.asciz "GlobalSign Root CA - R2, GlobalSign, GlobalSign"

    .global DAT_overlay_11_02167be8
DAT_overlay_11_02167be8: ; 0x02167BE8
	.byte 0xA6, 0xCF, 0x24, 0x0E, 0xBE, 0x2E, 0x6F, 0x28
	.byte 0x99, 0x45, 0x42, 0xC4, 0xAB, 0x3E, 0x21, 0x54, 0x9B, 0x0B, 0xD3, 0x7F, 0x84, 0x70, 0xFA, 0x12
	.byte 0xB3, 0xCB, 0xBF, 0x87, 0x5F, 0xC6, 0x7F, 0x86, 0xD3, 0xB2, 0x30, 0x5C, 0xD6, 0xFD, 0xAD, 0xF1
	.byte 0x7B, 0xDC, 0xE5, 0xF8, 0x60, 0x96, 0x09, 0x92, 0x10, 0xF5, 0xD0, 0x53, 0xDE, 0xFB, 0x7B, 0x7E
	.byte 0x73, 0x88, 0xAC, 0x52, 0x88, 0x7B, 0x4A, 0xA6, 0xCA, 0x49, 0xA6, 0x5E, 0xA8, 0xA7, 0x8C, 0x5A
	.byte 0x11, 0xBC, 0x7A, 0x82, 0xEB, 0xBE, 0x8C, 0xE9, 0xB3, 0xAC, 0x96, 0x25, 0x07, 0x97, 0x4A, 0x99
	.byte 0x2A, 0x07, 0x2F, 0xB4, 0x1E, 0x77, 0xBF, 0x8A, 0x0F, 0xB5, 0x02, 0x7C, 0x1B, 0x96, 0xB8, 0xC5
	.byte 0xB9, 0x3A, 0x2C, 0xBC, 0xD6, 0x12, 0xB9, 0xEB, 0x59, 0x7D, 0xE2, 0xD0, 0x06, 0x86, 0x5F, 0x5E
	.byte 0x49, 0x6A, 0xB5, 0x39, 0x5E, 0x88, 0x34, 0xEC, 0xBC, 0x78, 0x0C, 0x08, 0x98, 0x84, 0x6C, 0xA8
	.byte 0xCD, 0x4B, 0xB4, 0xA0, 0x7D, 0x0C, 0x79, 0x4D, 0xF0, 0xB8, 0x2D, 0xCB, 0x21, 0xCA, 0xD5, 0x6C
	.byte 0x5B, 0x7D, 0xE1, 0xA0, 0x29, 0x84, 0xA1, 0xF9, 0xD3, 0x94, 0x49, 0xCB, 0x24, 0x62, 0x91, 0x20
	.byte 0xBC, 0xDD, 0x0B, 0xD5, 0xD9, 0xCC, 0xF9, 0xEA, 0x27, 0x0A, 0x2B, 0x73, 0x91, 0xC6, 0x9D, 0x1B
	.byte 0xAC, 0xC8, 0xCB, 0xE8, 0xE0, 0xA0, 0xF4, 0x2F, 0x90, 0x8B, 0x4D, 0xFB, 0xB0, 0x36, 0x1B, 0xF6
	.byte 0x19, 0x7A, 0x85, 0xE0, 0x6D, 0xF2, 0x61, 0x13, 0x88, 0x5C, 0x9F, 0xE0, 0x93, 0x0A, 0x51, 0x97
	.byte 0x8A, 0x5A, 0xCE, 0xAF, 0xAB, 0xD5, 0xF7, 0xAA, 0x09, 0xAA, 0x60, 0xBD, 0xDC, 0xD9, 0x5F, 0xDF
	.byte 0x72, 0xA9, 0x60, 0x13, 0x5E, 0x00, 0x01, 0xC9, 0x4A, 0xFA, 0x3F, 0xA4, 0xEA, 0x07, 0x03, 0x21
	.byte 0x02, 0x8E, 0x82, 0xCA, 0x03, 0xC2, 0x9B, 0x8F

    .bss

    .global OVERLAY11_BSS_02169CA8
OVERLAY11_BSS_02169CA8: ; 0x02169CA8
    .space 0x8

    .global OVERLAY11_BSS_02169CB0
OVERLAY11_BSS_02169CB0: ; 0x02169CB0
    .space 0x4

    .global OVERLAY11_BSS_02169CB4
OVERLAY11_BSS_02169CB4: ; 0x02169CB4
    .space 0x14

    .global OVERLAY11_BSS_02169CC8
OVERLAY11_BSS_02169CC8: ; 0x02169CC8
    .space 0x4

    .global OVERLAY11_BSS_02169CCC
OVERLAY11_BSS_02169CCC: ; 0x02169CCC
    .space 0x4

    .global OVERLAY11_BSS_02169CD0
OVERLAY11_BSS_02169CD0: ; 0x02169CD0
    .space 0x14

    .global OVERLAY11_BSS_02169CE4
OVERLAY11_BSS_02169CE4: ; 0x02169CE4
    .space 0x1C

    .global OVERLAY11_BSS_02169D00
OVERLAY11_BSS_02169D00: ; 0x02169D00
    .space 0x48

    .global OVERLAY11_BSS_02169D48
OVERLAY11_BSS_02169D48: ; 0x02169D48
    .space 0x14

    .global OVERLAY11_BSS_02169D5C
OVERLAY11_BSS_02169D5C: ; 0x02169D5C
    .space 0x4
