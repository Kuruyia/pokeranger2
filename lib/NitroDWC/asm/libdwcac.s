    .include "macros/function.inc"
    .include "include/libdwcac.inc"

    .text

    arm_func_start DWC_AC_Create
DWC_AC_Create: ; 0x02132564
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4]
	mov r0, #1
	mov r1, #0x18
	blx r2
	mov r1, r0
	ldr r3, _02132704 ; =OVERLAY11_BSS_02169C94
	mov r0, #0
	mov r2, #0x18
	str r1, [r3, #0x10]
	bl MIi_CpuClear32
	ldr r0, _02132704 ; =OVERLAY11_BSS_02169C94
	ldr r1, [r4]
	ldr r3, [r0, #0x10]
	mov r2, #1
	str r1, [r3]
	ldr r0, [r4, #4]
	ldr r1, _02132708 ; =0x00000D18
	str r0, [r3, #4]
	strb r2, [r3, #9]
	strb r2, [r3, #0x16]
	mov r0, #0x10
	strb r2, [r3, #8]
	bl ov11_02132984
	ldr r2, _02132704 ; =OVERLAY11_BSS_02169C94
	mov r1, #0x2300
	str r0, [r2]
	mov r0, #2
	bl ov11_02132984
	ldr r2, _02132704 ; =OVERLAY11_BSS_02169C94
	mov r1, #0x58
	str r0, [r2, #4]
	mov r0, #4
	bl ov11_02132984
	ldr r2, _02132704 ; =OVERLAY11_BSS_02169C94
	mov r1, #0xc
	str r0, [r2, #8]
	mov r0, #8
	bl ov11_02132984
	ldr r1, _02132704 ; =OVERLAY11_BSS_02169C94
	ldr r2, _02132708 ; =0x00000D18
	str r0, [r1, #0xc]
	ldr r1, [r1]
	mov r0, #0
	bl MIi_CpuClear32
	mov r0, #0
	ldr r1, _02132704 ; =OVERLAY11_BSS_02169C94
	mov r2, #0x2300
	ldr r1, [r1, #4]
	bl MIi_CpuClear32
	mov r0, #0
	ldr r1, _02132704 ; =OVERLAY11_BSS_02169C94
	mov r2, #0x58
	ldr r1, [r1, #8]
	bl MIi_CpuClear32
	mov r0, #0
	ldr r1, _02132704 ; =OVERLAY11_BSS_02169C94
	mov r2, #0xc
	ldr r1, [r1, #0xc]
	bl MIi_CpuClear32
	ldr r1, _02132704 ; =OVERLAY11_BSS_02169C94
	ldrb r2, [r4, #8]
	ldr r0, [r1]
	strb r2, [r0, #0xd0a]
	ldrb r3, [r0, #0xd0b]
	ldrb r2, [r4, #9]
	bic r3, r3, #3
	and r2, r2, #3
	orr r2, r3, r2
	strb r2, [r0, #0xd0b]
	ldr r3, [r1, #0xc]
	ldr r2, [r4]
	mov r1, #0
	str r2, [r3]
	ldr r2, [r4, #4]
	str r2, [r3, #4]
	str r1, [r3, #8]
	ldrb r2, [r0, #0xd0c]
	ldrb r1, [r4, #0xa]
	bic r2, r2, #0xf
	and r1, r1, #0xf
	orr r2, r2, r1
	strb r2, [r0, #0xd0c]
	ldrb r1, [r4, #0xb]
	and r2, r2, #0xff
	bic r2, r2, #0x30
	mov r1, r1, lsl #0x1e
	orr r1, r2, r1, lsr #26
	strb r1, [r0, #0xd0c]
	bl ov11_02139914
	ldr r0, _02132704 ; =OVERLAY11_BSS_02169C94
	mov r1, #0x2300
	ldr r0, [r0, #4]
	bl WCM_Init
	cmp r0, #1
	beq _021326F0
	cmp r0, #4
	blt _021326FC
	arm_func_end DWC_AC_Create
_021326F0:
	bl ov11_02132A0C
	mov r0, #0
	ldmia sp!, {r4, pc}
_021326FC:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02132704: .word OVERLAY11_BSS_02169C94
_02132708: .word 0x00000D18

	arm_func_start DWC_AC_Process
DWC_AC_Process: ; 0x0213270C
	stmdb sp!, {r3, r4, r5, lr}
	bl ov11_02132BD4
	mov r5, r0
	cmp r5, #1
	bne _0213272C
	bl ov11_02134898
	mov r5, r0
	b _021327A0
	arm_func_end DWC_AC_Process
_0213272C:
	cmp r5, #7
	bhs _02132754
	bl OS_DisableInterrupts
	mov r4, r0
	bl ov11_021340C8
	mov r5, r0
	bl ov11_02132B74
	mov r0, r4
	bl OS_RestoreInterrupts
	b _021327A0
_02132754:
	cmp r5, #9
	bhs _02132768
	bl ov11_0213332C
	mov r5, r0
	b _021327A0
_02132768:
	cmp r5, #0xa
	bhs _0213277C
	bl ov11_02133FEC
	mov r5, r0
	b _021327A0
_0213277C:
	cmp r5, #0x10
	bhs _02132790
	bl ov11_02134920
	mov r5, r0
	b _021327A0
_02132790:
	cmp r5, #0x11
	bne _021327A0
	bl ov11_021339B4
	mov r5, r0
_021327A0:
	mov r0, r5
	bl ov11_02132B74
	cmp r5, #0x10
	bne _021327C4
	bl ov11_02132C84
	mov r4, r0
	bl ov11_02132C4C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
_021327C4:
	cmp r5, #0x12
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl ov11_02132C4C
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start DWC_AC_GetStatus
DWC_AC_GetStatus: ; 0x021327DC
	stmdb sp!, {r3, lr}
	bl ov11_02132BD4
	cmp r0, #1
	movls r0, #0
	ldmlsia sp!, {r3, pc}
	cmp r0, #7
	movlo r0, #1
	ldmloia sp!, {r3, pc}
	cmp r0, #9
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	cmp r0, #0xa
	movlo r0, #2
	ldmloia sp!, {r3, pc}
	cmp r0, #0xb
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	cmp r0, #0x10
	movlo r0, #3
	ldmloia sp!, {r3, pc}
	moveq r0, #5
	ldmeqia sp!, {r3, pc}
	cmp r0, #0x11
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	bl ov11_021339D8
	ldmia sp!, {r3, pc}
	arm_func_end DWC_AC_GetStatus

	arm_func_start DWC_AC_GetApType
DWC_AC_GetApType: ; 0x02132848
	stmdb sp!, {r4, lr}
	ldr r0, _02132888 ; =OVERLAY11_BSS_02169C94
	mov r4, #0xff
	ldr r0, [r0, #0x10]
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r4, pc}
	bl ov11_02132BD4
	cmp r0, #0xa
	blo _02132880
	cmp r0, #0x10
	ldrls r0, _02132888 ; =OVERLAY11_BSS_02169C94
	ldrls r0, [r0, #0x10]
	ldrlsb r4, [r0, #0x17]
	arm_func_end DWC_AC_GetApType
_02132880:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02132888: .word OVERLAY11_BSS_02169C94

	arm_func_start DWC_AC_GetApSpotInfo
DWC_AC_GetApSpotInfo: ; 0x0213288C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl ov11_02132B1C
	mov r5, r0
	bl ov11_02132BD4
	cmp r0, #0xa
	blo _02132914
	cmp r0, #0x10
	bhi _02132914
	bl WCM_GetApMacAddress
	mov r4, r0
	mov r1, #6
	bl DC_InvalidateRange
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r6
	mov r2, #6
	bl MI_CpuCopy8
	ldrb r0, [r5, #0x17]
	cmp r0, #4
	bne _0213290C
	mov r0, #0
	bl WCM_GetApEssid
	mov r4, r0
	mov r1, #0x20
	bl DC_InvalidateRange
	mov r0, r4
	add r1, r6, #6
	bl ov11_02134E3C
	arm_func_end DWC_AC_GetApSpotInfo
_0213290C:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02132914:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start DWC_AC_Destroy
DWC_AC_Destroy: ; 0x0213291C
	stmdb sp!, {r3, lr}
	bl ov11_02132BD4
	strb r0, [sp]
	ands r0, r0, #0xff
	cmpne r0, #0x12
	bne _02132940
	bl ov11_02132A0C
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end DWC_AC_Destroy
_02132940:
	add r0, sp, #0
	bl ov11_0213386C
	ldrb r0, [sp]
	bl ov11_02132B74
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02132958
ov11_02132958: ; 0x02132958
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	mov r4, r1
	bl ov11_02132B1C
	mov r1, r0
	mov r0, r4
	add r1, r1, r5, lsl #8
	mov r2, #0xf0
	bl MIi_CpuCopy32
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02132958

	arm_func_start ov11_02132984
ov11_02132984: ; 0x02132984
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	mov r4, r1
	bl ov11_02132B1C
	ldrb r1, [r0, #8]
	tst r1, r5
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	orr r1, r1, r5
	strb r1, [r0, #8]
	ldr r2, [r0]
	mov r0, r5
	mov r1, r4
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02132984

	arm_func_start ov11_021329C4
ov11_021329C4: ; 0x021329C4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	mov r5, r1
	mov r4, r2
	bl ov11_02132B1C
	ldrb r2, [r0, #8]
	tst r2, r6
	ldmeqia sp!, {r4, r5, r6, pc}
	mvn r1, r6
	and r1, r2, r1
	strb r1, [r0, #8]
	ldr r3, [r0, #4]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	blx r3
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_021329C4

	arm_func_start ov11_02132A0C
ov11_02132A0C: ; 0x02132A0C
	stmdb sp!, {r4, lr}
	mov r0, #1
	bl ov11_02132B1C
	mov r4, r0
	ldrb r0, [r4, #8]
	tst r0, #0x10
	beq _02132A50
	mov r0, #0x10
	bl ov11_02132B1C
	ldrb r3, [r4, #8]
	mov r1, r0
	ldr r2, _02132B18 ; =0x00000D18
	bic r0, r3, #0x10
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r0, #0x10
	blx r3
	arm_func_end ov11_02132A0C
_02132A50:
	ldrb r0, [r4, #8]
	tst r0, #8
	beq _02132A84
	mov r0, #8
	bl ov11_02132B1C
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #8
	bic r2, r2, #8
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0xc
	blx r3
_02132A84:
	ldrb r0, [r4, #8]
	tst r0, #4
	beq _02132AB8
	mov r0, #4
	bl ov11_02132B1C
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #4
	bic r2, r2, #4
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x58
	blx r3
_02132AB8:
	ldrb r0, [r4, #8]
	tst r0, #2
	beq _02132AEC
	mov r0, #2
	bl ov11_02132B1C
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #2
	bic r2, r2, #2
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x2300
	blx r3
_02132AEC:
	ldrb r0, [r4, #8]
	tst r0, #1
	ldmeqia sp!, {r4, pc}
	bic r0, r0, #1
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r1, r4
	mov r0, #1
	mov r2, #0x18
	blx r3
	ldmia sp!, {r4, pc}
	.align 2, 0
_02132B18: .word 0x00000D18

	arm_func_start ov11_02132B1C
ov11_02132B1C: ; 0x02132B1C
	tst r0, #1
	ldrne r0, _02132B70 ; =OVERLAY11_BSS_02169C94
	ldrne r0, [r0, #0x10]
	bxne lr
	tst r0, #2
	ldrne r0, _02132B70 ; =OVERLAY11_BSS_02169C94
	ldrne r0, [r0, #4]
	bxne lr
	tst r0, #4
	ldrne r0, _02132B70 ; =OVERLAY11_BSS_02169C94
	ldrne r0, [r0, #8]
	bxne lr
	tst r0, #8
	ldrne r0, _02132B70 ; =OVERLAY11_BSS_02169C94
	ldrne r0, [r0, #0xc]
	bxne lr
	tst r0, #0x10
	ldrne r0, _02132B70 ; =OVERLAY11_BSS_02169C94
	ldrne r0, [r0]
	moveq r0, #0
	bx lr
	.align 2, 0
_02132B70: .word OVERLAY11_BSS_02169C94
	arm_func_end ov11_02132B1C

	arm_func_start ov11_02132B74
ov11_02132B74: ; 0x02132B74
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl ov11_02132B1C
	mov r5, r0
	mov r0, #0x10
	bl ov11_02132B1C
	mov r4, r0
	strb r6, [r5, #9]
	cmp r6, #0x10
	ldmhsia sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x16]
	cmp r6, r0
	strhib r6, [r5, #0x16]
	cmphi r6, #7
	ldmlsia sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0xd0d]
	bl ov11_02132C3C
	strb r0, [r5, #0x15]
	ldrb r0, [r4, #0xd13]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x444]
	strb r0, [r5, #0x14]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02132B74

	arm_func_start ov11_02132BD4
ov11_02132BD4: ; 0x02132BD4
	ldr r0, _02132BE4 ; =OVERLAY11_BSS_02169C94
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, #9]
	bx lr
	.align 2, 0
_02132BE4: .word OVERLAY11_BSS_02169C94
	arm_func_end ov11_02132BD4

	arm_func_start ov11_02132BE8
ov11_02132BE8: ; 0x02132BE8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	bl ov11_02132B1C
	mov r4, r0
	str r5, [r4, #0xc]
	bl ov11_02132BD4
	strb r0, [r4, #0xa]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02132BE8

	arm_func_start ov11_02132C0C
ov11_02132C0C: ; 0x02132C0C
	ldr r0, _02132C1C ; =OVERLAY11_BSS_02169C94
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #0xc]
	bx lr
	.align 2, 0
_02132C1C: .word OVERLAY11_BSS_02169C94
	arm_func_end ov11_02132C0C

	arm_func_start ov11_02132C20
ov11_02132C20: ; 0x02132C20
	stmdb sp!, {r3, lr}
	bl ov11_02132C3C
	ldr r1, _02132C38 ; =OVERLAY11_BSS_02169C94
	ldr r1, [r1, #0x10]
	strb r0, [r1, #0x17]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02132C38: .word OVERLAY11_BSS_02169C94
	arm_func_end ov11_02132C20

	arm_func_start ov11_02132C3C
ov11_02132C3C: ; 0x02132C3C
	cmp r0, #2
	subhi r0, r0, #3
	andhi r0, r0, #0xff
	bx lr
	arm_func_end ov11_02132C3C

	arm_func_start ov11_02132C4C
ov11_02132C4C: ; 0x02132C4C
	stmdb sp!, {r3, lr}
	ldr r1, _02132C7C ; =OVERLAY11_BSS_02169C94
	mov r0, #8
	ldr r1, [r1, #0xc]
	mov r2, #0xc
	bl ov11_021329C4
	ldr r0, _02132C7C ; =OVERLAY11_BSS_02169C94
	ldr r2, _02132C80 ; =0x00000D18
	ldr r1, [r0]
	mov r0, #0x10
	bl ov11_021329C4
	ldmia sp!, {r3, pc}
	.align 2, 0
_02132C7C: .word OVERLAY11_BSS_02169C94
_02132C80: .word 0x00000D18
	arm_func_end ov11_02132C4C

	arm_func_start ov11_02132C84
ov11_02132C84: ; 0x02132C84
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _02132D20 ; =OVERLAY11_BSS_02169C94
	mov r1, #0xc0
	ldr r8, [r0]
	ldrb r7, [r8, #0xd13]
	ldrb r2, [r8, #0xd0d]
	add r0, r8, #0x74
	smulbb r4, r7, r1
	add r5, r0, #0x400
	cmp r2, #6
	movhs r0, #1
	ldmhsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrb sb, [r8, #0xd12]
	mov r6, #0
	cmp sb, #0
	bls _02132D18
	mov sl, r1
	arm_func_end ov11_02132C84
_02132CC8:
	cmp r6, r7
	beq _02132D08
	add r0, r8, r6, lsl #2
	ldrb r0, [r0, #0x445]
	cmp r0, #6
	bhs _02132D08
	mul r1, r6, sl
	add r0, r8, r1
	add r0, r0, #0x400
	ldrh r2, [r0, #0x7a]
	add r0, r5, r4
	add r1, r5, r1
	bl strncmp
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02132D08:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, sb
	blo _02132CC8
_02132D18:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02132D20: .word OVERLAY11_BSS_02169C94

	arm_func_start ov11_02132D24
ov11_02132D24: ; 0x02132D24
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0x10
	mvn r4, #0
	bl ov11_02132B1C
	mov r6, r0
	mov r0, #1
	bl ov11_02132B1C
	mov r1, #1
	strb r1, [r0, #0xb]
	bl ov11_02132BD4
	cmp r0, #3
	beq _02132D6C
	cmp r0, #4
	beq _02132DD4
	cmp r0, #5
	beq _02132E20
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov11_02132D24
_02132D6C:
	ldrh r1, [r7, #0xa]
	ldrb r5, [r6, #0xd11]
	cmp r1, #0
	ldrneb r0, [r7, #0xc]
	cmpne r0, #0
	bne _02132D90
	ldrh r0, [r7, #0x36]
	bl ov11_0213418C
	b _02132E68
_02132D90:
	cmp r1, #1
	cmpne r0, #0x20
	bne _02132DBC
	ldrh r0, [r7, #0x36]
	bl ov11_0213418C
	ldrb r1, [r6, #0xd10]
	mov r0, r7
	add r2, r6, #0x300
	bl ov11_02132F24
	mov r4, r0
	b _02132E68
_02132DBC:
	ldrb r1, [r6, #0xd10]
	mov r0, r7
	add r2, r6, #0x300
	bl ov11_02132F24
	mov r4, r0
	b _02132E68
_02132DD4:
	ldrb r2, [r6, #0xd0f]
	mov r1, #0xc0
	mov r0, r7
	mla r1, r2, r1, r6
	add r1, r1, #0x400
	ldrh r2, [r1, #0xa6]
	mov r1, r6
	sub r2, r2, #1
	and r5, r2, #0xff
	bl ov11_02132FA0
	movs r4, r0
	bmi _02132E68
	ldrb r1, [r6, #0xd0f]
	add r0, r6, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	b _02132E68
_02132E20:
	ldrb r1, [r6, #0xd0f]
	add r2, r6, #0x300
	mov r0, #0x24
	mla r2, r1, r0, r2
	mov r0, r7
	mov r1, #1
	ldrb r5, [r6, #0xd11]
	bl ov11_02132F24
	movs r4, r0
	bmi _02132E68
	ldrb r1, [r6, #0xd0f]
	mov r0, #0x24
	add r2, r6, #0x300
	smulbb r1, r1, r0
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	orr r0, r0, #1
	strb r0, [r2, r1]
_02132E68:
	cmp r4, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, r7
	mov r2, r5
	mov r3, r6
	bl ov11_02133030
	mov r1, r6
	bl ov11_021331B0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov11_02132E90
ov11_02132E90: ; 0x02132E90
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl ov11_02132B1C
	mov r4, r0
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #4
	bne _02132EE0
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _02132EE0
	add r0, r5, #0xc
	bl ov11_02134E88
	cmp r0, #1
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02132E90
_02132EE0:
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #5
	bne _02132F1C
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _02132F1C
	add r0, r5, #0xc
	bl ov11_02134DDC
	cmp r0, #1
	moveq r0, #7
	ldmeqia sp!, {r3, r4, r5, pc}
_02132F1C:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02132F24
ov11_02132F24: ; 0x02132F24
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, r0
	ldrh r3, [r6, #0xa]
	mov r5, r1
	mov r4, r2
	cmp r3, #0x20
	bne _02132F4C
	bl ov11_02132E90
	cmp r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov11_02132F24
_02132F4C:
	cmp r5, #0
	mov r8, #0
	ble _02132F98
	ldrh sb, [r6, #0xa]
	and r7, sb, #0xff
_02132F60:
	ldrb r0, [r4, #3]
	cmp r7, r0
	bne _02132F88
	mov r2, sb
	add r0, r6, #0xc
	add r1, r4, #4
	bl strncmp
	cmp r0, #0
	ldreqb r0, [r4, #1]
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02132F88:
	add r8, r8, #1
	cmp r8, r5
	add r4, r4, #0x24
	blt _02132F60
_02132F98:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start ov11_02132FA0
ov11_02132FA0: ; 0x02132FA0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	ldrh r2, [sl, #0xa]
	mov sb, r1
	cmp r2, #0x20
	bne _02132FC4
	bl ov11_02132E90
	cmp r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov11_02132FA0
_02132FC4:
	ldrb r8, [sb, #0xd12]
	mov r4, #0
	cmp r8, #0
	ble _02133028
	ldrh r7, [sl, #0xa]
	add r0, sb, #0x7c
	mov r5, sb
	add r6, r0, #0x400
_02132FE4:
	add r0, r5, #0x400
	ldrh r0, [r0, #0x7a]
	cmp r7, r0
	bne _02133014
	mov r1, r6
	mov r2, r7
	add r0, sl, #0xc
	bl strncmp
	cmp r0, #0
	addeq r0, sb, r4, lsl #2
	ldreqb r0, [r0, #0x445]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02133014:
	add r4, r4, #1
	cmp r4, r8
	add r5, r5, #0xc0
	add r6, r6, #0xc0
	blt _02132FE4
_02133028:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start ov11_02133030
ov11_02133030: ; 0x02133030
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r3
	ldrb r5, [r6, #0xd12]
	mvn r4, #0
	mov r3, #0
	cmp r5, #0
	ble _021330B4
	ldrb lr, [r1, #4]
	add ip, r6, #0x74
	add ip, ip, #0x400
	arm_func_end ov11_02133030
_02133058:
	ldrb r7, [ip]
	cmp lr, r7
	ldreqb r8, [r1, #5]
	ldreqb r7, [ip, #1]
	cmpeq r8, r7
	ldreqb r8, [r1, #6]
	ldreqb r7, [ip, #2]
	cmpeq r8, r7
	ldreqb r8, [r1, #7]
	ldreqb r7, [ip, #3]
	cmpeq r8, r7
	ldreqb r8, [r1, #8]
	ldreqb r7, [ip, #4]
	cmpeq r8, r7
	ldreqb r8, [r1, #9]
	ldreqb r7, [ip, #5]
	cmpeq r8, r7
	moveq r4, r3
	beq _021330B4
	add r3, r3, #1
	cmp r3, r5
	add ip, ip, #0xc0
	blt _02133058
_021330B4:
	mvn r3, #0
	cmp r4, r3
	bne _021330E4
	mov r3, r6
	and r0, r0, #0xff
	bl ov11_021330F8
	ldrb r0, [r6, #0xd12]
	mov r4, #0xa
	cmp r0, #0xa
	addlo r0, r0, #1
	strlob r0, [r6, #0xd12]
	b _021330F0
_021330E4:
	mov r0, r4
	mov r3, r6
	bl ov11_02133144
_021330F0:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov11_021330F8
ov11_021330F8: ; 0x021330F8
	stmdb sp!, {r3, lr}
	add ip, r3, #0x6c
	strb r0, [ip, #0x401]
	ldrh r0, [r1, #2]
	and r2, r2, #0x7f
	tst r0, #2
	mov r0, r0, asr #2
	addeq r0, r0, #0x19
	and r0, r0, #0xff
	strb r0, [ip, #0x402]
	ldrb lr, [ip, #0x403]
	mov r0, r1
	bic r1, lr, #0x7f
	orr lr, r1, r2
	add r1, r3, #0xbf0
	mov r2, #0xc0
	strb lr, [ip, #0x403]
	bl MIi_CpuCopy32
	ldmia sp!, {r3, pc}
	arm_func_end ov11_021330F8

	arm_func_start ov11_02133144
ov11_02133144: ; 0x02133144
	stmdb sp!, {r3, r4, r5, lr}
	ldrh r4, [r1, #2]
	add ip, r3, #0x44
	mov lr, #0xc0
	add r5, ip, #0x400
	mul ip, r0, lr
	tst r4, #2
	add r0, r5, r0, lsl #2
	mov r4, r4, asr #2
	addeq r4, r4, #0x19
	and r4, r4, #0xff
	ldrb lr, [r0, #2]
	and r4, r4, #0xff
	add r3, r3, #0x470
	cmp r4, lr
	bls _0213319C
	strb r4, [r0, #2]
	ldrb lr, [r0, #3]
	and r2, r2, #0x7f
	bic lr, lr, #0x7f
	orr r2, lr, r2
	strb r2, [r0, #3]
	arm_func_end ov11_02133144
_0213319C:
	mov r0, r1
	add r1, r3, ip
	mov r2, #0xc0
	bl MIi_CpuCopy32
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_021331B0
ov11_021331B0: ; 0x021331B0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc4
	mov r4, r0
	add r0, r1, #0x44
	add r7, r0, #0x400
	add r8, r1, #0x470
	subs r6, r4, #1
	bmi _02133278
	mov r0, #0xc0
	mla sl, r6, r0, r8
	add sb, r7, r6, lsl #2
	add fp, sp, #0
	arm_func_end ov11_021331B0
_021331E0:
	add r0, r7, r4, lsl #2
	ldrb r1, [r0, #2]
	add r0, r7, r6, lsl #2
	ldrb r0, [r0, #2]
	cmp r1, r0
	blo _02133278
	mov r0, sb
	mov r1, fp
	mov r2, #4
	bl MIi_CpuCopy32
	add r5, r7, r4, lsl #2
	mov r0, r5
	mov r1, sb
	mov r2, #4
	bl MIi_CpuCopy32
	mov r1, r5
	mov r0, fp
	mov r2, #4
	bl MIi_CpuCopy32
	mov r0, sl
	add r1, sp, #4
	mov r2, #0xc0
	bl MIi_CpuCopy32
	mov r0, #0xc0
	mul r5, r4, r0
	add r0, r8, r5
	mov r1, sl
	mov r2, #0xc0
	bl MIi_CpuCopy32
	add r1, r8, r5
	add r0, sp, #4
	mov r2, #0xc0
	bl MIi_CpuCopy32
	mov r4, r6
	sub sb, sb, #4
	sub sl, sl, #0xc0
	subs r6, r6, #1
	bpl _021331E0
_02133278:
	add r1, r7, #0x28
	mov r0, #0
	mov r2, #4
	bl MIi_CpuClear32
	add r1, r8, #0x780
	mov r0, #0
	mov r2, #0xc0
	bl MIi_CpuClear32
	add sp, sp, #0xc4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov11_021332A0
ov11_021332A0: ; 0x021332A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl ov11_02132B1C
	ldrsh r1, [r4]
	cmp r1, #5
	bne _02133318
	ldrsh r1, [r4, #2]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #8]
	cmp r1, #0xd
	beq _021332E8
	cmp r1, #0xf
	beq _021332F4
	cmp r1, #0x11
	beq _02133300
	b _0213330C
	arm_func_end ov11_021332A0
_021332E8:
	mov r1, #1
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_021332F4:
	mov r1, #2
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_02133300:
	mov r1, #3
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_0213330C:
	mov r1, #4
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_02133318:
	cmp r1, #7
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #4]
	bl ov11_02132D24
	ldmia sp!, {r4, pc}

	arm_func_start ov11_0213332C
ov11_0213332C: ; 0x0213332C
	stmdb sp!, {r4, lr}
	bl ov11_02132BD4
	mov r4, r0
	mov r0, #0x10
	bl ov11_02132B1C
	cmp r4, #7
	beq _02133354
	cmp r4, #8
	beq _02133360
	b _02133368
	arm_func_end ov11_0213332C
_02133354:
	bl ov11_02133370
	mov r4, r0
	b _02133368
_02133360:
	bl ov11_02133468
	mov r4, r0
_02133368:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02133370
ov11_02133370: ; 0x02133370
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #0xd13]
	add r3, r5, #0x470
	mov r1, #0xc0
	mla r4, r2, r1, r3
	bl ov11_021335A4
	add r1, r5, #0xb8
	strb r0, [r5, #0xd0d]
	add r0, r1, #0xc00
	mov r1, #0
	mov r2, #0x52
	bl MI_CpuFill8
	add r2, r5, #0xb8
	ldrb r1, [r5, #0xd0d]
	mov r0, r5
	add r2, r2, #0xc00
	bl ov11_02133778
	cmp r0, #0
	ldrb r0, [r5, #0xd0b]
	bic r0, r0, #0xc
	beq _02133424
	orr r0, r0, #4
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	mov r0, r0, asr #4
	tst r0, #1
	bne _021333F8
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02133370
_021333F8:
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	ldreqb r0, [r4, #0x15]
	cmpeq r0, #0
	bne _02133454
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, pc}
_02133424:
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _02133454
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, pc}
_02133454:
	mov r0, #0
	strb r0, [r5, #0xd15]
	strb r0, [r5, #0xd14]
	mov r0, #8
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02133468
ov11_02133468: ; 0x02133468
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl WCM_GetPhase
	ldrb r2, [r7, #0xd13]
	mov r1, #0xc0
	cmp r0, #3
	add r5, r7, #0x470
	smulbb r4, r2, r1
	bne _02133578
	mov r0, r7
	bl ov11_02133740
	ldrb r1, [r7, #0xd15]
	mov r6, r0
	add r0, r1, #1
	and r1, r0, #0xff
	strb r0, [r7, #0xd15]
	cmp r1, #3
	bls _021334D0
	mov r0, #0
	strb r0, [r7, #0xd15]
	ldrb r1, [r7, #0xd13]
	mov r2, #1
	mov r0, #9
	add r1, r7, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov11_02133468
_021334D0:
	cmp r1, #1
	beq _02133554
	ldrb r0, [r7, #0xd14]
	cmp r0, #1
	bne _021334F4
	ldrb r0, [r7, #0xd0b]
	bic r0, r0, #0xc
	strb r0, [r7, #0xd0b]
	b _02133554
_021334F4:
	cmp r0, #2
	bne _0213351C
	mov r0, #0
	strb r0, [r7, #0xd15]
	ldrb r1, [r7, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r7, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0213351C:
	cmp r0, #3
	bne _02133544
	mov r0, #0
	strb r0, [r7, #0xd15]
	ldrb r1, [r7, #0xd13]
	mov r2, #4
	mov r0, #9
	add r1, r7, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02133544:
	cmp r1, #3
	ldreqb r0, [r7, #0xd0b]
	biceq r0, r0, #0xc
	streqb r0, [r7, #0xd0b]
_02133554:
	mov r0, r7
	bl ov11_0213375C
	mov r2, r0
	add r1, r7, #0xb8
	add r0, r5, r4
	add r1, r1, #0xc00
	orr r2, r6, r2
	bl WCM_ConnectAsync
	b _0213359C
_02133578:
	cmp r0, #9
	bne _0213359C
	mov r0, #0
	strb r0, [r7, #0xd15]
	bl OS_GetTick
	str r0, [r7, #0xcb0]
	str r1, [r7, #0xcb4]
	mov r0, #0xa
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0213359C:
	mov r0, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov11_021335A4
ov11_021335A4: ; 0x021335A4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldrb r2, [sl, #0xd13]
	ldrb r1, [sl, #0xd0c]
	add r3, sl, #0x470
	mov r0, #0xc0
	mla r4, r2, r0, r3
	mov r0, r1, lsl #0x18
	movs r0, r0, lsr #0x1e
	mov r0, #0
	str r0, [sp]
	bne _021336C0
	ldrh r0, [r4, #0xa]
	ldr r6, [sp]
	cmp r0, #0x20
	bne _02133604
	mov r0, r4
	bl ov11_02132E90
	cmp r0, #0
	str r0, [sp]
	movle r0, #0
	addgt r6, r6, #1
	strle r0, [sp]
	b _02133628
	arm_func_end ov11_021335A4
_02133604:
	cmp r0, #8
	bne _02133628
	mov r0, r4
	bl ov11_02133C78
	cmp r0, #0
	str r0, [sp]
	moveq r0, #0
	addne r6, r6, #1
	streq r0, [sp]
_02133628:
	ldrb r0, [sl, #0xd10]
	mov r5, #0
	cmp r0, #0
	ble _02133734
	mov r7, sl
	add r8, sl, #0x304
	add sb, sl, #0x300
	add fp, sl, #0x10c
_02133648:
	ldrh r2, [r4, #0xa]
	ldrb r0, [r7, #0x303]
	cmp r2, r0
	bne _021336A0
	mov r1, r8
	add r0, r4, #0xc
	bl strncmp
	cmp r0, #0
	bne _021336A0
	cmp r6, #0
	ldreqb r0, [r7, #0x301]
	streq r0, [sp]
	beq _0213369C
	ldrb r0, [sb]
	bic r0, r0, #0xf0
	orr r0, r0, #0x10
	strb r0, [sb]
	ldrb r0, [fp, #0xc00]
	bic r0, r0, #0xc0
	orr r0, r0, #0x40
	strb r0, [fp, #0xc00]
_0213369C:
	add r6, r6, #1
_021336A0:
	ldrb r0, [sl, #0xd10]
	add r5, r5, #1
	add r7, r7, #0x24
	cmp r5, r0
	add r8, r8, #0x24
	add sb, sb, #0x24
	blt _02133648
	b _02133734
_021336C0:
	ldrb r0, [sl, #0xd10]
	ldr r5, [sp]
	mov r4, r5
	cmp r0, #0
	ble _02133724
	mov r3, sl
	add r2, sl, #0x300
_021336DC:
	ldrb r0, [r2]
	mov r1, r0, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	bne _0213370C
	cmp r4, #0
	bne _02133708
	bic r0, r0, #0xf0
	strb r0, [r2]
	ldrb r0, [r3, #0x301]
	str r0, [sp]
_02133708:
	add r4, r4, #1
_0213370C:
	ldrb r0, [sl, #0xd10]
	add r5, r5, #1
	add r2, r2, #0x24
	cmp r5, r0
	add r3, r3, #0x24
	blt _021336DC
_02133724:
	cmp r4, #1
	ldreqb r0, [sl, #0xd0c]
	biceq r0, r0, #0xc0
	streqb r0, [sl, #0xd0c]
_02133734:
	ldr r0, [sp]
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov11_02133740
ov11_02133740: ; 0x02133740
	ldrb r0, [r0, #0xd0b]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0x30000
	movne r0, #0x20000
	bx lr
	arm_func_end ov11_02133740

	arm_func_start ov11_0213375C
ov11_0213375C: ; 0x0213375C
	ldrb r0, [r0, #0xd0b]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0xc0000
	movne r0, #0x80000
	bx lr
	arm_func_end ov11_0213375C

	arm_func_start ov11_02133778
ov11_02133778: ; 0x02133778
	stmdb sp!, {r4, lr}
	mov r4, r2
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _02133858
_0213378C: ; jump table
	b _021337BC ; case 0
	b _021337B8 ; case 1
	b _021337B4 ; case 2
	b _021337E8 ; case 3
	b _021337E4 ; case 4
	b _021337E0 ; case 5
	b _0213380C ; case 6
	b _02133834 ; case 7
	b _02133858 ; case 8
	b _02133858 ; case 9
	arm_func_end ov11_02133778
_021337B4:
	add r0, r0, #0x100
_021337B8:
	add r0, r0, #0x100
_021337BC:
	ldrb r2, [r0, #0xe6]
	add r0, r0, #0x80
	add r1, r4, #2
	mov r2, r2, lsl #0x1e
	mov r3, r2, lsr #0x1e
	mov r2, #0x50
	strb r3, [r4]
	bl MI_CpuCopy8
	b _02133858
_021337E0:
	add r0, r0, #0x100
_021337E4:
	add r0, r0, #0x100
_021337E8:
	mov r3, #1
	add r0, r0, #0xd1
	add r1, r4, #2
	mov r2, #0x14
	strb r3, [r4]
	bl MI_CpuCopy8
	mov r0, #0
	strb r0, [r4, #0x16]
	b _02133858
_0213380C:
	mov r1, #2
	strb r1, [r4]
	ldrb r1, [r0, #0xd13]
	add r0, r0, #0x7c
	add r2, r0, #0x400
	mov r0, #0xc0
	mla r0, r1, r0, r2
	add r1, r4, #2
	bl ov11_02134EAC
	b _02133858
_02133834:
	mov r1, #2
	strb r1, [r4]
	ldrb r1, [r0, #0xd13]
	add r0, r0, #0x7c
	add r2, r0, #0x400
	mov r0, #0xc0
	mla r0, r1, r0, r2
	add r1, r4, #2
	bl ov11_02134E14
_02133858:
	ldrb r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov11_0213386C
ov11_0213386C: ; 0x0213386C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #0xa
	bhi _021338B8
	bl ov11_021338F4
	cmp r0, #1
	bne _0213389C
	mov r0, #0
	strb r0, [r4]
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0213386C
_0213389C:
	mvn r1, #0
	cmp r0, r1
	bne _021338EC
	mov r0, #0x12
	strb r0, [r4]
	mov r0, #1
	ldmia sp!, {r4, pc}
_021338B8:
	cmp r0, #0xe
	bne _021338D4
	bl ov11_02137D38
	bl ov11_02137C40
	mov r0, #0xc
	strb r0, [r4]
	b _021338EC
_021338D4:
	cmp r0, #0x12
	bhs _021338EC
	bl ov11_02133984
	cmp r0, #1
	moveq r0, #0xa
	streqb r0, [r4]
_021338EC:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov11_021338F4
ov11_021338F4: ; 0x021338F4
	stmdb sp!, {r3, lr}
	bl WCM_GetPhase
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _0213397C
_02133908: ; jump table
	b _0213393C ; case 0
	b _02133944 ; case 1
	b _0213397C ; case 2
	b _0213394C ; case 3
	b _0213397C ; case 4
	b _0213397C ; case 5
	b _02133954 ; case 6
	b _0213397C ; case 7
	b _0213397C ; case 8
	b _0213395C ; case 9
	b _0213397C ; case 10
	b _0213396C ; case 11
	b _02133964 ; case 12
	arm_func_end ov11_021338F4
_0213393C:
	mov r0, #1
	ldmia sp!, {r3, pc}
_02133944:
	bl WCM_Finish
	b _0213397C
_0213394C:
	bl WCM_CleanupAsync
	b _0213397C
_02133954:
	bl WCM_EndSearchAsync
	b _0213397C
_0213395C:
	bl WCM_DisconnectAsync
	b _0213397C
_02133964:
	bl WCM_TerminateAsync
	b _0213397C
_0213396C:
	mov r0, #0
	bl ov11_02132BE8
	mvn r0, #0
	ldmia sp!, {r3, pc}
_0213397C:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02133984
ov11_02133984: ; 0x02133984
	stmdb sp!, {r3, lr}
	bl SOCL_CalmDown
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl SOC_Cleanup
	cmp r0, #0
	mvnne r1, #0x26
	cmpne r0, r1
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02133984

	arm_func_start ov11_021339B4
ov11_021339B4: ; 0x021339B4
	stmdb sp!, {r3, lr}
	mov r0, #1
	bl ov11_02132B1C
	add r0, r0, #0xa
	bl ov11_0213386C
	cmp r0, #1
	moveq r0, #0x12
	movne r0, #0x11
	ldmia sp!, {r3, pc}
	arm_func_end ov11_021339B4

	arm_func_start ov11_021339D8
ov11_021339D8: ; 0x021339D8
	stmdb sp!, {r4, lr}
	mov r0, #1
	bl ov11_02132B1C
	mov r4, r0
	bl ov11_02132C0C
	cmp r0, #4
	bge _021339FC
	bl ov11_02133A28
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021339D8
_021339FC:
	cmp r0, #5
	bge _02133A0C
	bl ov11_02133A6C
	ldmia sp!, {r4, pc}
_02133A0C:
	cmp r0, #5
	mov r0, r4
	bne _02133A20
	bl ov11_02133A74
	ldmia sp!, {r4, pc}
_02133A20:
	bl ov11_02133A90
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02133A28
ov11_02133A28: ; 0x02133A28
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02133A64
_02133A34: ; jump table
	b _02133A4C ; case 0
	b _02133A44 ; case 1
	b _02133A54 ; case 2
	b _02133A5C ; case 3
	arm_func_end ov11_02133A28
_02133A44:
	mvn r0, #8
	bx lr
_02133A4C:
	mvn r0, #9
	bx lr
_02133A54:
	mvn r0, #7
	bx lr
_02133A5C:
	mvn r0, #6
	bx lr
_02133A64:
	mov r0, #0
	bx lr

	arm_func_start ov11_02133A6C
ov11_02133A6C: ; 0x02133A6C
	mvn r0, #5
	bx lr
	arm_func_end ov11_02133A6C

	arm_func_start ov11_02133A74
ov11_02133A74: ; 0x02133A74
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	ldreq r0, _02133A88 ; =0xFFFF3C4D
	ldrne r0, _02133A8C ; =0xFFFF3865
	bx lr
	.align 2, 0
_02133A88: .word 0xFFFF3C4D
_02133A8C: .word 0xFFFF3865
	arm_func_end ov11_02133A74

	arm_func_start ov11_02133A90
ov11_02133A90: ; 0x02133A90
	ldrb r1, [r0, #0x16]
	cmp r1, #0xa
	bhs _02133ADC
	ldrb r1, [r0, #0x14]
	cmp r1, #3
	bne _02133AB8
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BBC ; =0xFFFF3864
	sub r3, r0, r1
	b _02133BB4
	arm_func_end ov11_02133A90
_02133AB8:
	cmp r1, #4
	ldrb r1, [r0, #0x15]
	ldrne r0, _02133BC0 ; =0xFFFF379C
	subne r3, r0, r1
	bne _02133BB4
	mov r0, #0xc800
	rsb r0, r0, #0
	sub r3, r0, r1
	b _02133BB4
_02133ADC:
	cmp r1, #0xd
	bhs _02133AF4
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BC4 ; =0xFFFF34E0
	sub r3, r0, r1
	b _02133BB4
_02133AF4:
	ldr r3, [r0, #0x10]
	cmp r3, #0
	bne _02133B10
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BC8 ; =0xFFFF3CB0
	sub r3, r0, r1
	b _02133BB4
_02133B10:
	mvn r2, #0
	cmp r3, r2
	bne _02133B2C
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BCC ; =0xFFFF347C
	sub r3, r0, r1
	b _02133BB4
_02133B2C:
	sub r1, r2, #1
	cmp r3, r1
	bne _02133B48
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BD0 ; =0xFFFF3418
	sub r3, r0, r1
	b _02133BB4
_02133B48:
	sub r1, r2, #2
	cmp r3, r1
	bne _02133B64
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BD4 ; =0xFFFF33B4
	sub r3, r0, r1
	b _02133BB4
_02133B64:
	sub r1, r2, #3
	cmp r3, r1
	bne _02133B80
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BD8 ; =0xFFFF30F8
	sub r3, r0, r1
	b _02133BB4
_02133B80:
	sub r1, r2, #4
	cmp r3, r1
	bne _02133B9C
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BDC ; =0xFFFF3094
	sub r3, r0, r1
	b _02133BB4
_02133B9C:
	sub r1, r2, #5
	cmp r3, r1
	bne _02133BB4
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BE0 ; =0xFFFF3030
	sub r3, r0, r1
_02133BB4:
	mov r0, r3
	bx lr
	.align 2, 0
_02133BBC: .word 0xFFFF3864
_02133BC0: .word 0xFFFF379C
_02133BC4: .word 0xFFFF34E0
_02133BC8: .word 0xFFFF3CB0
_02133BCC: .word 0xFFFF347C
_02133BD0: .word 0xFFFF3418
_02133BD4: .word 0xFFFF33B4
_02133BD8: .word 0xFFFF30F8
_02133BDC: .word 0xFFFF3094
_02133BE0: .word 0xFFFF3030

	arm_func_start ov11_02133BE4
ov11_02133BE4: ; 0x02133BE4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl ov11_02132B1C
	mov r4, r0
	cmp r5, #0
	beq _02133C14
	cmp r5, #1
	beq _02133C34
	cmp r5, #2
	beq _02133C4C
	b _02133C70
	arm_func_end ov11_02133BE4
_02133C14:
	add r1, r4, #0x300
	mov r0, #0
	mov r2, #0x144
	bl MIi_CpuClear32
	mov r0, r4
	bl ov11_02133CC4
	strb r0, [r4, #0xd10]
	b _02133C70
_02133C34:
	bl ov11_02133F18
	strb r0, [r4, #0xd10]
	mov r0, r4
	bl ov11_02133FA8
	strb r0, [r4, #0xd0f]
	b _02133C70
_02133C4C:
	add r1, r4, #0x300
	mov r0, #0
	mov r2, #0x144
	bl MIi_CpuClear32
	mov r1, #0
	mov r0, r4
	strb r1, [r4, #0xd0f]
	bl ov11_02133D24
	strb r0, [r4, #0xd10]
_02133C70:
	ldrb r0, [r4, #0xd10]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02133C78
ov11_02133C78: ; 0x02133C78
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl ov11_02132B1C
	ldrb r0, [r0, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #6
	bne _02133CB8
	ldr r1, _02133CC0 ; =0x02162B20
	add r0, r4, #0xc
	mov r2, #8
	bl strncmp
	cmp r0, #0
	moveq r0, #8
	ldmeqia sp!, {r4, pc}
	arm_func_end ov11_02133C78
_02133CB8:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02133CC0: .word s_FREESPOT_overlay_11_02162b20

	arm_func_start ov11_02133CC4
ov11_02133CC4: ; 0x02133CC4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r4, r5, #0x300
	bl ov11_02133E10
	ldrb r1, [r5, #0xd0c]
	mov r5, r0
	mov r0, #0x24
	mla r4, r5, r0, r4
	mov r1, r1, lsl #0x1c
	movs r0, r1, lsr #0x1c
	cmpne r0, #6
	bne _02133D18
	ldr r0, _02133D20 ; =0x02162B20
	add r1, r4, #4
	mov r2, #8
	bl MI_CpuCopy8
	mov r1, #8
	strb r1, [r4, #3]
	add r0, r5, #1
	strb r1, [r4, #1]
	and r5, r0, #0xff
	arm_func_end ov11_02133CC4
_02133D18:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02133D20: .word s_FREESPOT_overlay_11_02162b20

	arm_func_start ov11_02133D24
ov11_02133D24: ; 0x02133D24
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r5, r6, #0x300
	bl ov11_02133E10
	ldrb r1, [r6, #0xd0c]
	mov r4, r0
	mov r0, #0x24
	mla r5, r4, r0, r5
	mov r1, r1, lsl #0x1c
	movs r0, r1, lsr #0x1c
	cmpne r0, #4
	bne _02133D80
	ldr r0, _02133E04 ; =s_NWCUSBAP_overlay_11_02166738
	add r1, r5, #4
	mov r2, #8
	bl MI_CpuCopy8
	mov r1, #8
	add r0, r4, #1
	strb r1, [r5, #3]
	mov r1, #6
	strb r1, [r5, #1]
	and r4, r0, #0xff
	add r5, r5, #0x24
	arm_func_end ov11_02133D24
_02133D80:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #7
	bne _02133DC0
	ldr r0, _02133E08 ; =s_Wayport2FREESPOTNINTENDOWFC_overlay_11_02162b18
	add r1, r5, #4
	mov r2, #8
	bl MI_CpuCopy8
	mov r1, #8
	add r0, r4, #1
	strb r1, [r5, #3]
	mov r1, #9
	strb r1, [r5, #1]
	and r4, r0, #0xff
	add r5, r5, #0x24
_02133DC0:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #8
	bne _02133DFC
	ldr r0, _02133E0C ; =0x02162B28
	add r1, r5, #4
	mov r2, #0xb
	bl MI_CpuCopy8
	mov r1, #0xb
	add r0, r4, #1
	strb r1, [r5, #3]
	mov r1, #0xa
	strb r1, [r5, #1]
	and r4, r0, #0xff
_02133DFC:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02133E04: .word s_NWCUSBAP_overlay_11_02166738
_02133E08: .word s_Wayport2_overlay_11_02162b18
_02133E0C: .word s_NINTENDOWFC_overlay_11_02162b28

	arm_func_start ov11_02133E10
ov11_02133E10: ; 0x02133E10
	stmdb sp!, {r4, r5, r6, lr}
	mov r2, #0
	mov r3, r0
	mov r1, r2
	add ip, r0, #0x300
	arm_func_end ov11_02133E10
_02133E24:
	ldrb r4, [r0, #0xd0c]
	mov r4, r4, lsl #0x1c
	movs r5, r4, lsr #0x1c
	addne r4, r1, #1
	cmpne r5, r4
	bne _02133F00
	ldrb r4, [r3, #0xe7]
	cmp r4, #0xff
	beq _02133F00
	mov r6, #0
_02133E4C:
	add r4, r3, r6
	ldrb lr, [r4, #0x40]
	cmp lr, #0
	beq _02133E74
	add r4, r6, #1
	add r5, ip, r6
	and r6, r4, #0xff
	strb lr, [r5, #4]
	cmp r6, #0x20
	blo _02133E4C
_02133E74:
	cmp r6, #0
	moveq r4, #0
	beq _02133E8C
	strb r6, [ip, #3]
	strb r1, [ip, #1]
	mov r4, #1
_02133E8C:
	cmp r4, #0
	ldrb r4, [r3, #0xe7]
	addne r2, r2, #1
	andne r2, r2, #0xff
	addne ip, ip, #0x24
	cmp r4, #1
	bne _02133F00
	mov r6, #0
_02133EAC:
	add r4, r3, r6
	ldrb r5, [r4, #0x60]
	cmp r5, #0
	beq _02133ED4
	add lr, r6, #1
	add r4, ip, r6
	and r6, lr, #0xff
	strb r5, [r4, #4]
	cmp r6, #0x20
	blo _02133EAC
_02133ED4:
	cmp r6, #0
	moveq r4, #0
	beq _02133EF0
	strb r6, [ip, #3]
	add lr, r1, #3
	strb lr, [ip, #1]
	mov r4, #1
_02133EF0:
	cmp r4, #0
	addne r2, r2, #1
	andne r2, r2, #0xff
	addne ip, ip, #0x24
_02133F00:
	add r1, r1, #1
	cmp r1, #3
	add r3, r3, #0x100
	blt _02133E24
	mov r0, r2
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_02133F18
ov11_02133F18: ; 0x02133F18
	stmdb sp!, {r3, r4, r5, lr}
	ldrb r3, [r0, #0xd12]
	mov r2, #0
	mov r1, r2
	cmp r3, #0
	ble _02133FA0
	add r3, r0, #0x47
	mov ip, r0
	add r3, r3, #0x400
	arm_func_end ov11_02133F18
_02133F3C:
	add r4, r0, r1, lsl #2
	ldrb r4, [r4, #0x444]
	cmp r4, #0
	bne _02133F7C
	add lr, ip, #0x400
	ldrh r4, [lr, #0xa6]
	ldrb lr, [r3]
	sub r5, r4, #1
	mov r4, lr, lsl #0x19
	cmp r5, r4, lsr #25
	beq _02133F7C
	bic lr, lr, #0x80
	add r2, r2, #1
	strb lr, [r3]
	and r2, r2, #0xff
	b _02133F88
_02133F7C:
	ldrb lr, [r3]
	orr lr, lr, #0x80
	strb lr, [r3]
_02133F88:
	ldrb lr, [r0, #0xd12]
	add r1, r1, #1
	add r3, r3, #4
	cmp r1, lr
	add ip, ip, #0xc0
	blt _02133F3C
_02133FA0:
	mov r0, r2
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02133FA8
ov11_02133FA8: ; 0x02133FA8
	ldrb ip, [r0, #0xd12]
	mov r3, #0
	mov r2, r3
	cmp ip, #0
	bls _02133FE4
	arm_func_end ov11_02133FA8
_02133FBC:
	add r1, r0, r2, lsl #2
	ldrb r1, [r1, #0x447]
	mov r1, r1, lsl #0x18
	movs r1, r1, lsr #0x1f
	moveq r3, r2
	beq _02133FE4
	add r1, r2, #1
	and r2, r1, #0xff
	cmp r2, ip
	blo _02133FBC
_02133FE4:
	mov r0, r3
	bx lr

	arm_func_start ov11_02133FEC
ov11_02133FEC: ; 0x02133FEC
	stmdb sp!, {r3, r4, r5, lr}
	mov r0, #0x10
	bl ov11_02132B1C
	mov r4, r0
	mov r5, #9
	bl WCM_GetPhase
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _021340C0
_02134010: ; jump table
	b _021340C0 ; case 0
	b _021340C0 ; case 1
	b _021340C0 ; case 2
	b _02134044 ; case 3
	b _021340C0 ; case 4
	b _021340C0 ; case 5
	b _02134090 ; case 6
	b _021340C0 ; case 7
	b _021340C0 ; case 8
	b _02134098 ; case 9
	b _021340C0 ; case 10
	b _021340B4 ; case 11
	b _021340A0 ; case 12
	arm_func_end ov11_02133FEC
_02134044:
	ldrb r0, [r4, #0xd0c]
	ldrb r5, [r4, #0xd0e]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	bne _02134074
	ldrb r0, [r4, #0xd13]
	mov r1, #0
	mov r5, #7
	add r0, r4, r0, lsl #2
	strb r1, [r0, #0x444]
	b _021340C0
_02134074:
	cmp r5, #3
	blo _021340C0
	cmp r5, #5
	bhi _021340C0
	mov r0, r5
	bl ov11_02134228
	b _021340C0
_02134090:
	bl WCM_EndSearchAsync
	b _021340C0
_02134098:
	bl WCM_DisconnectAsync
	b _021340C0
_021340A0:
	bl WCM_TerminateAsync
	mov r0, #4
	bl ov11_02132BE8
	mov r5, #0x11
	b _021340C0
_021340B4:
	mov r0, #0
	bl ov11_02132BE8
	mov r5, #0x11
_021340C0:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_021340C8
ov11_021340C8: ; 0x021340C8
	stmdb sp!, {r3, r4, r5, lr}
	mov r0, #0x10
	bl ov11_02132B1C
	mov r4, r0
	bl ov11_02132BD4
	mov r5, r0
	bl WCM_GetPhase
	cmp r5, #2
	cmpeq r0, #3
	bne _02134100
	mov r0, r4
	bl ov11_02134308
	mov r5, r0
	b _02134184
	arm_func_end ov11_021340C8
_02134100:
	cmp r5, #6
	bne _0213411C
	mov r0, r4
	mov r1, r5
	bl ov11_02134750
	mov r5, r0
	b _02134184
_0213411C:
	cmp r0, #3
	cmpne r0, #6
	bne _02134184
	mov r0, r4
	mov r1, r5
	bl ov11_02134750
	mov r5, r0
	cmp r5, #7
	beq _02134184
	cmp r5, #3
	bne _02134158
	mov r0, r4
	bl ov11_02134358
	mov r5, r0
	b _02134184
_02134158:
	cmp r5, #4
	bne _02134170
	mov r0, r4
	bl ov11_02134444
	mov r5, r0
	b _02134184
_02134170:
	cmp r5, #5
	bne _02134184
	mov r0, r4
	bl ov11_0213456C
	mov r5, r0
_02134184:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_0213418C
ov11_0213418C: ; 0x0213418C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl ov11_02132B1C
	add r0, r0, #0xd00
	cmp r4, #0xd
	movhi r4, #0xd
	ldrh r3, [r0, #0x16]
	sub r1, r4, #1
	mov r2, #1
	orr r1, r3, r2, lsl r1
	strh r1, [r0, #0x16]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0213418C

	arm_func_start ov11_021341C0
ov11_021341C0: ; 0x021341C0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl ov11_02132B1C
	add r0, r0, #0xd00
	ldrh ip, [r0, #0x16]
	cmp ip, #0
	mvneq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0
	mov r3, r2
	mov r1, #1
	arm_func_end ov11_021341C0
_021341F0:
	tst ip, r1, lsl r2
	beq _02134210
	cmp r3, r4
	moveq r0, r2, lsl #0x18
	moveq r0, r0, asr #0x18
	ldmeqia sp!, {r4, pc}
	add r0, r3, #1
	and r3, r0, #0xff
_02134210:
	add r0, r2, #1
	and r2, r0, #0xff
	cmp r2, #0xd
	blo _021341F0
	mvn r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02134228
ov11_02134228: ; 0x02134228
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl ov11_02132B1C
	mov r4, r0
	cmp r5, #3
	beq _02134258
	cmp r5, #4
	beq _02134280
	cmp r5, #5
	beq _021342CC
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02134228
_02134258:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _02134300 ; =WCM_Bssid_Any
	ldr r1, _02134304 ; =WCM_Essid_Any
	mov r3, #0x200000
	bl ov11_02134874
	ldmia sp!, {r3, r4, r5, pc}
_02134280:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r2, [r4, #0xd0f]
	mov r0, #0xc0
	add r1, r4, #0x74
	smulbb ip, r2, r0
	add r0, r4, ip
	add r0, r0, #0x400
	ldrh r2, [r0, #0xa6]
	add r0, r4, #0x7c
	add r3, r1, #0x400
	add r1, r0, #0x400
	add r0, r3, ip
	add r1, r1, ip
	sub r2, r2, #1
	mov r3, #0x300000
	bl ov11_02134874
	ldmia sp!, {r3, r4, r5, pc}
_021342CC:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r3, [r4, #0xd0f]
	add r1, r4, #0x304
	mov r0, #0x24
	add r2, r4, #0xd00
	mla r1, r3, r0, r1
	ldrsb r2, [r2, #0x11]
	ldr r0, _02134300 ; =WCM_Bssid_Any
	mov r3, #0x300000
	bl ov11_02134874
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02134300: .word WCM_Bssid_Any
_02134304: .word WCM_Essid_Any

	arm_func_start ov11_02134308
ov11_02134308: ; 0x02134308
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	mov r0, #0
	strb r0, [r4, #0xd11]
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _02134350 ; =WCM_Bssid_Any
	ldr r1, _02134354 ; =WCM_Essid_Any
	mov r3, #0x200000
	bl ov11_02134874
	mov r0, #3
	ldmia sp!, {r4, pc}
	.align 2, 0
_02134350: .word WCM_Bssid_Any
_02134354: .word WCM_Essid_Any
	arm_func_end ov11_02134308

	arm_func_start ov11_02134358
ov11_02134358: ; 0x02134358
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021343F0 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0x12c
	blo _021343E8
	add r0, r4, #0xd00
	ldrsb r1, [r0, #0x11]
	add r1, r1, #2
	strb r1, [r4, #0xd11]
	ldrsb r0, [r0, #0x11]
	cmp r0, #0xd
	blt _021343C4
	mov r0, r4
	mov r1, #3
	bl ov11_0213468C
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02134358
_021343C4:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _021343F4 ; =WCM_Bssid_Any
	ldr r1, _021343F8 ; =WCM_Essid_Any
	mov r3, #0x200000
	bl ov11_02134874
_021343E8:
	mov r0, #3
	ldmia sp!, {r4, pc}
	.align 2, 0
_021343F0: .word 0x000082EA
_021343F4: .word WCM_Bssid_Any
_021343F8: .word WCM_Essid_Any

	arm_func_start ov11_021343FC
ov11_021343FC: ; 0x021343FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	strb r0, [r4, #0xd15]
	ldrb r2, [r4, #0xd0b]
	mov r1, r2, lsl #0x18
	mov r1, r1, lsr #0x1c
	add r1, r1, #1
	and r1, r1, #0xff
	bic r2, r2, #0xf0
	mov r1, r1, lsl #0x1c
	orr r1, r2, r1, lsr #24
	strb r1, [r4, #0xd0b]
	bl ov11_02133BE4
	mov r0, #1
	strb r0, [r4, #0xd11]
	mov r0, #3
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021343FC

	arm_func_start ov11_02134444
ov11_02134444: ; 0x02134444
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _02134568 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0x96
	bhs _021344A0
	ldrb r0, [r4, #0xd0f]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x447]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _02134560
	arm_func_end ov11_02134444
_021344A0:
	ldrb r1, [r4, #0xd0f]
	add r0, r4, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	ldrb r2, [r4, #0xd12]
	ldrb r1, [r4, #0xd0f]
	cmp r1, r2
	bhs _021344F8
_021344C8:
	add r0, r4, r1, lsl #2
	ldrb r0, [r0, #0x447]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	beq _021344F8
	ldrb r0, [r4, #0xd0f]
	add r0, r0, #1
	strb r0, [r4, #0xd0f]
	ldrb r2, [r4, #0xd12]
	and r1, r0, #0xff
	cmp r1, r2
	blo _021344C8
_021344F8:
	cmp r2, r1
	bhi _02134518
	mov r2, #0
	mov r0, r4
	mov r1, #4
	strb r2, [r4, #0xd0f]
	bl ov11_0213468C
	ldmia sp!, {r4, pc}
_02134518:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r2, [r4, #0xd0f]
	mov r0, #0xc0
	add r1, r4, #0x74
	smulbb ip, r2, r0
	add r0, r4, ip
	add r0, r0, #0x400
	ldrh r2, [r0, #0xa6]
	add r0, r4, #0x7c
	add r3, r1, #0x400
	add r1, r0, #0x400
	add r0, r3, ip
	add r1, r1, ip
	sub r2, r2, #1
	mov r3, #0x300000
	bl ov11_02134874
_02134560:
	mov r0, #4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02134568: .word 0x000082EA

	arm_func_start ov11_0213456C
ov11_0213456C: ; 0x0213456C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _02134684 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0x96
	bhs _021345CC
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	mla r0, r1, r0, r4
	ldrb r0, [r0, #0x300]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	bne _0213467C
	arm_func_end ov11_0213456C
_021345CC:
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	add r2, r4, #0x300
	smulbb r1, r1, r0
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	strb r0, [r2, r1]
	ldrb r0, [r4, #0xd0f]
	add r0, r0, #1
	strb r0, [r4, #0xd0f]
	ldrb r1, [r4, #0xd10]
	and r0, r0, #0xff
	cmp r1, r0
	bhi _02134624
	ldrb r1, [r4, #0xd15]
	mov r0, #0
	add r1, r1, #1
	strb r1, [r4, #0xd15]
	strb r0, [r4, #0xd0f]
	ldrb r0, [r4, #0xd15]
	bl ov11_021341C0
	strb r0, [r4, #0xd11]
_02134624:
	add r0, r4, #0xd00
	ldrsb r0, [r0, #0x11]
	cmp r0, #0
	bge _0213464C
	mov r2, #0
	mov r0, r4
	mov r1, #5
	strb r2, [r4, #0xd15]
	bl ov11_0213468C
	ldmia sp!, {r4, pc}
_0213464C:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r3, [r4, #0xd0f]
	add r1, r4, #0x304
	mov r0, #0x24
	add r2, r4, #0xd00
	mla r1, r3, r0, r1
	ldrsb r2, [r2, #0x11]
	ldr r0, _02134688 ; =WCM_Bssid_Any
	mov r3, #0x300000
	bl ov11_02134874
_0213467C:
	mov r0, #5
	ldmia sp!, {r4, pc}
	.align 2, 0
_02134684: .word 0x000082EA
_02134688: .word WCM_Bssid_Any

	arm_func_start ov11_0213468C
ov11_0213468C: ; 0x0213468C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #3
	beq _021346B4
	cmp r4, #4
	beq _02134714
	cmp r4, #5
	beq _02134720
	b _02134740
	arm_func_end ov11_0213468C
_021346B4:
	ldrb r1, [r5, #0xd12]
	cmp r1, #0
	addeq r1, r5, #0xd00
	ldreqh r1, [r1, #0x16]
	cmpeq r1, #0
	beq _021346F0
	mov r0, #1
	bl ov11_02133BE4
	cmp r0, #0
	movne r4, #4
	bne _02134740
	mov r0, r5
	bl ov11_02134814
	mov r4, r0
	b _02134740
_021346F0:
	ldrb r1, [r5, #0xd0b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _02134740
	bl ov11_021343FC
	mov r4, r0
	b _02134740
_02134714:
	bl ov11_02134814
	mov r4, r0
	b _02134740
_02134720:
	ldrb r1, [r5, #0xd0b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _02134740
	bl ov11_021343FC
	mov r4, r0
_02134740:
	mov r0, r4
	bl ov11_02134228
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02134750
ov11_02134750: ; 0x02134750
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0x11
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r2, [r5, #0xd12]
	mov r1, #0
	cmp r2, #0
	bls _02134798
	arm_func_end ov11_02134750
_02134778:
	add r0, r5, r1, lsl #2
	ldrb r0, [r0, #0x444]
	cmp r0, #0
	beq _02134798
	add r0, r1, #1
	and r1, r0, #0xff
	cmp r1, r2
	blo _02134778
_02134798:
	cmp r4, #6
	bne _021347CC
	cmp r2, r1
	bne _021347F8
	cmp r1, #0
	bne _021347BC
	mov r0, #5
	bl ov11_02132BE8
	b _021347C4
_021347BC:
	mov r0, #6
	bl ov11_02132BE8
_021347C4:
	mov r0, #0x11
	ldmia sp!, {r3, r4, r5, pc}
_021347CC:
	cmp r2, #0
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r2, r1
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r5, r1, lsl #2
	ldrb r0, [r0, #0x446]
	cmp r0, #0x14
	movlo r0, r4
	ldmloia sp!, {r3, r4, r5, pc}
_021347F8:
	strb r1, [r5, #0xd13]
	bl WCM_EndSearchAsync
	cmp r0, #1
	strneb r4, [r5, #0xd0e]
	movne r4, #7
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02134814
ov11_02134814: ; 0x02134814
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xd00
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _02134850
	mov r0, #2
	bl ov11_02133BE4
	cmp r0, #0
	beq _02134850
	mov r0, #0
	bl ov11_021341C0
	strb r0, [r4, #0xd11]
	mov r0, #5
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02134814
_02134850:
	ldrb r0, [r4, #0xd0b]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	movhs r0, #6
	ldmhsia sp!, {r4, pc}
	mov r0, r4
	bl ov11_021343FC
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02134874
ov11_02134874: ; 0x02134874
	stmdb sp!, {r3, lr}
	ldr ip, _02134894 ; =DAT_overlay_11_02162b34
	cmp r2, #0xc
	movgt r2, #0xc
	ldr r2, [ip, r2, lsl #2]
	orr r2, r3, r2
	bl WCM_SearchAsync
	ldmia sp!, {r3, pc}
	.align 2, 0
_02134894: .word DAT_overlay_11_02162b34
	arm_func_end ov11_02134874

	arm_func_start ov11_02134898
ov11_02134898: ; 0x02134898
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	bl WCM_GetPhase
	mov r4, r0
	mov r0, #0x10
	bl ov11_02132B1C
	cmp r4, #1
	bne _02134904
	ldrb r1, [r0, #0xd0a]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	bl ov11_02133BE4
	ldr r1, _0213491C ; =ov11_021332A0
	add r0, sp, #0
	bl WCM_StartupAsync
	cmp r0, #1
	beq _021348F0
	cmp r0, #4
	blt _02134910
	arm_func_end ov11_02134898
_021348F0:
	mov r0, #1
	bl ov11_02132BE8
	add sp, sp, #0x10
	mov r0, #0x11
	ldmia sp!, {r4, pc}
_02134904:
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, pc}
_02134910:
	mov r0, #2
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213491C: .word ov11_021332A0

	arm_func_start ov11_02134920
ov11_02134920: ; 0x02134920
	stmdb sp!, {r3, r4, r5, lr}
	bl ov11_02132BD4
	mov r4, r0
	mov r0, #0x10
	bl ov11_02132B1C
	mov r5, r0
	bl WCM_GetPhase
	cmp r0, #9
	bne _021349C4
	sub r0, r4, #0xa
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02134A14
_02134954: ; jump table
	b _0213496C ; case 0
	b _021349B8 ; case 1
	b _0213497C ; case 2
	b _0213498C ; case 3
	b _02134998 ; case 4
	b _021349A8 ; case 5
	arm_func_end ov11_02134920
_0213496C:
	mov r0, r5
	bl ov11_02134A1C
	mov r4, r0
	b _02134A14
_0213497C:
	mov r0, r5
	bl ov11_02134A80
	mov r4, r0
	b _02134A14
_0213498C:
	bl ov11_02134B10
	mov r4, r0
	b _02134A14
_02134998:
	mov r0, r5
	bl ov11_02134B3C
	mov r4, r0
	b _02134A14
_021349A8:
	mov r0, r5
	bl ov11_02134BA8
	mov r4, r0
	b _02134A14
_021349B8:
	bl ov11_02134BBC
	mov r4, r0
	b _02134A14
_021349C4:
	cmp r4, #0xb
	beq _021349EC
	cmp r4, #0xe
	beq _021349F8
	cmp r4, #0xf
	bne _02134A00
	mov r0, r5
	bl ov11_02134BA8
	mov r4, r0
	b _02134A14
_021349EC:
	bl ov11_02134BBC
	mov r4, r0
	b _02134A14
_021349F8:
	bl ov11_02137D38
	bl ov11_02137C40
_02134A00:
	ldrb r0, [r5, #0xd13]
	mov r1, #2
	mov r4, #0xb
	add r0, r5, r0, lsl #2
	strb r1, [r0, #0x444]
_02134A14:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02134A1C
ov11_02134A1C: ; 0x02134A1C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl ov11_02132B1C
	mov r5, r0
	mov r0, #4
	bl ov11_02132B1C
	mov r4, r0
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl ov11_02134BEC
	ldr r1, _02134A7C ; =SOCLiYieldWait
	mov r2, #4
	mov r0, r4
	str r2, [r1]
	bl SOC_Startup
	cmp r0, #0
	moveq r0, #0xc
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #2
	bl ov11_02132BE8
	mov r0, #0x11
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02134A7C: .word SOCLiYieldWait
	arm_func_end ov11_02134A1C

	arm_func_start ov11_02134A80
ov11_02134A80: ; 0x02134A80
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl SOC_GetHostID
	cmp r0, #0
	beq _02134AB8
	mov r0, r4
	bl ov11_02134D54
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0xf
	movne r0, #0xd
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02134A80
_02134AB8:
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _02134B0C ; =0x01FF6210
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0xa
	movlo r0, #0xc
	ldmloia sp!, {r4, pc}
	ldrb r1, [r4, #0xd13]
	mov r2, #1
	mov r0, #0xb
	add r1, r4, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02134B0C: .word 0x01FF6210

	arm_func_start ov11_02134B10
ov11_02134B10: ; 0x02134B10
	stmdb sp!, {r3, lr}
	mov r0, #8
	bl ov11_02132B1C
	bl ov11_02137B60
	cmp r0, #0
	moveq r0, #0xe
	ldmeqia sp!, {r3, pc}
	mov r0, #3
	bl ov11_02132BE8
	mov r0, #0x11
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02134B10

	arm_func_start ov11_02134B3C
ov11_02134B3C: ; 0x02134B3C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl ov11_02132B1C
	mov r4, r0
	bl ov11_02137DA0
	movs r5, r0
	beq _02134BA0
	ldrb r0, [r6, #0xd0d]
	bl ov11_02132C3C
	ldrb r1, [r4, #0x15]
	cmp r1, r0
	bne _02134B78
	bl ov11_02137DE0
	str r0, [r4, #0x10]
	arm_func_end ov11_02134B3C
_02134B78:
	bl ov11_02137C40
	cmp r5, #0xb
	moveq r0, #0xf
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r1, [r6, #0xd13]
	mov r2, #1
	mov r0, #0xb
	add r1, r6, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r4, r5, r6, pc}
_02134BA0:
	mov r0, #0xe
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_02134BA8
ov11_02134BA8: ; 0x02134BA8
	stmdb sp!, {r3, lr}
	ldrb r0, [r0, #0xd0d]
	bl ov11_02132C20
	mov r0, #0x10
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02134BA8

	arm_func_start ov11_02134BBC
ov11_02134BBC: ; 0x02134BBC
	stmdb sp!, {r3, lr}
	bl SOCL_CalmDown
	cmp r0, #0
	movne r0, #0xb
	ldmneia sp!, {r3, pc}
	bl SOC_Cleanup
	cmp r0, #0
	mvnne r1, #0x26
	cmpne r0, r1
	moveq r0, #9
	movne r0, #0xb
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02134BBC

	arm_func_start ov11_02134BEC
ov11_02134BEC: ; 0x02134BEC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	mov r5, r1
	ldr r0, _02134CA8 ; =DAT_overlay_11_02162b68
	mov r1, r4
	mov r2, #0x58
	bl MI_CpuCopy8
	ldr r0, [r6]
	str r0, [r4, #4]
	ldr r0, [r6, #4]
	str r0, [r4, #8]
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	ldmhsia sp!, {r4, r5, r6, pc}
	bl ov11_02132C3C
	add r5, r5, r0, lsl #8
	ldrb r0, [r5, #0xc0]
	cmp r0, #0
	beq _02134C84
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r5, #0xc0
	bl ov11_02134CAC
	str r0, [r4, #0x10]
	ldrb r0, [r5, #0xd0]
	bl ov11_02134D00
	str r0, [r4, #0x14]
	add r0, r5, #0xc4
	bl ov11_02134CAC
	str r0, [r4, #0x18]
	add r0, r5, #0xc8
	bl ov11_02134CAC
	str r0, [r4, #0x1c]
	add r0, r5, #0xcc
	bl ov11_02134CAC
	str r0, [r4, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02134BEC
_02134C84:
	mov r0, #1
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02134CA8: .word DAT_overlay_11_02162b68

	arm_func_start ov11_02134CAC
ov11_02134CAC: ; 0x02134CAC
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	mov r3, #0
	orr r3, r3, r1, lsl #24
	ldrb r1, [r0, #2]
	orr r2, r3, r2, lsl #16
	ldrb r0, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r3, r1, r0
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr
	arm_func_end ov11_02134CAC

	arm_func_start ov11_02134D00
ov11_02134D00: ; 0x02134D00
	rsb r1, r0, #0x20
	cmp r1, #0
	mvn r3, #0
	mov r0, #0
	ble _02134D24
	arm_func_end ov11_02134D00
_02134D14:
	add r0, r0, #1
	cmp r0, r1
	mov r3, r3, lsl #1
	blt _02134D14
_02134D24:
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr

	arm_func_start ov11_02134D54
ov11_02134D54: ; 0x02134D54
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrb r0, [r4, #0xd0d]
	cmp r0, #6
	addhs sp, sp, #8
	ldmhsia sp!, {r4, pc}
	bl ov11_02132C3C
	add r4, r4, r0, lsl #8
	ldrb r0, [r4, #0xc0]
	ldrb r2, [r4, #0xc8]
	ldrb r1, [r4, #0xc9]
	cmp r0, #0
	ldrb r3, [r4, #0xca]
	add r1, r2, r1
	ldrb r2, [r4, #0xcb]
	add r1, r3, r1
	addne sp, sp, #8
	add r0, r2, r1
	ldmneia sp!, {r4, pc}
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0xc8
	bl ov11_02134CAC
	str r0, [sp, #4]
	add r0, r4, #0xcc
	bl ov11_02134CAC
	str r0, [sp]
	add r0, sp, #4
	add r1, sp, #0
	bl SOC_SetResolver
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02134D54

	arm_func_start ov11_02134DDC
ov11_02134DDC: ; 0x02134DDC
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x18
	add r1, sp, #0
	bl ov11_02134EBC
	ldr r1, _02134E10 ; =s_NDWCSHAP_overlay_11_021667b8
	add r0, sp, #0
	mov r2, #8
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	.align 2, 0
_02134E10: .word s_NDWCSHAP_overlay_11_021667b8
	arm_func_end ov11_02134DDC

	arm_func_start ov11_02134E14
ov11_02134E14: ; 0x02134E14
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r1
	add r1, sp, #0
	bl ov11_02134EBC
	add r0, sp, #0
	mov r1, r4
	bl ov11_02134FC0
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02134E14

	arm_func_start ov11_02134E3C
ov11_02134E3C: ; 0x02134E3C
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r1
	add r1, sp, #0
	bl ov11_02134EBC
	ldr r1, _02134E84 ; =s_NDWCSHAP_overlay_11_021667b8
	add r0, sp, #0
	mov r2, #8
	bl memcmp
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, pc}
	add r0, sp, #8
	mov r1, r4
	mov r2, #0xa
	bl MI_CpuCopy8
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_02134E84: .word s_NDWCSHAP_overlay_11_021667b8
	arm_func_end ov11_02134E3C

	arm_func_start ov11_02134E88
ov11_02134E88: ; 0x02134E88
	stmdb sp!, {r3, lr}
	ldr r1, _02134EA8 ; =s_NWCUSBAP_overlay_11_021667c4
	mov r2, #8
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02134EA8: .word s_NWCUSBAP_overlay_11_021667c4
	arm_func_end ov11_02134E88

	arm_func_start ov11_02134EAC
ov11_02134EAC: ; 0x02134EAC
	ldr ip, _02134EB8 ; =ov11_0213500C
	add r0, r0, #0xc
	bx ip
	.align 2, 0
_02134EB8: .word ov11_0213500C
	arm_func_end ov11_02134EAC

	arm_func_start ov11_02134EBC
ov11_02134EBC: ; 0x02134EBC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	ldr lr, _02134FB8 ; =DAT_overlay_11_02162bc3
	add ip, sp, #0
	mov r4, r1
	mov r3, #0xc
	arm_func_end ov11_02134EBC
_02134ED4:
	ldrb r2, [lr]
	ldrb r1, [lr, #1]
	add lr, lr, #2
	strb r2, [ip]
	strb r1, [ip, #1]
	add ip, ip, #2
	subs r3, r3, #1
	bne _02134ED4
	mov r1, r4
	mov r2, #0x20
	mov r3, #0x18
	bl ov11_02135228
	ldr r0, _02134FBC ; =PTR_DAT_overlay_11_0216679c_overlay_11_02166750
	mov r3, #0
_02134F0C:
	ldr r1, [r0, #8]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _02134F0C
	mov r7, #0
	add ip, sp, #0
	mov r1, #0xff
_02134F38:
	and lr, r7, #0xff
	ldrb r0, [ip, lr]
	mov r5, lr
	ldrb r6, [r4, r7]
	cmp r0, #0xff
	beq _02134F7C
_02134F50:
	add r3, ip, r5
	ldrb r5, [ip, r5]
	ldrb r0, [ip, lr]
	ldrb r2, [r4, r5]
	mov lr, r5
	strb r6, [r4, r0]
	strb r1, [r3]
	ldrb r0, [ip, r5]
	mov r6, r2
	cmp r0, #0xff
	bne _02134F50
_02134F7C:
	add r7, r7, #1
	cmp r7, #0x18
	blt _02134F38
	ldr r0, _02134FBC ; =PTR_DAT_overlay_11_0216679c_overlay_11_02166750
	mov r3, #0
_02134F90:
	ldr r1, [r0]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _02134F90
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02134FB8: .word DAT_overlay_11_02162bc3
_02134FBC: .word PTR_DAT_overlay_11_0216679c_overlay_11_02166750

	arm_func_start ov11_02134FC0
ov11_02134FC0: ; 0x02134FC0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x6c
	mov r5, r0
	add r0, sp, #0x14
	mov r4, r1
	bl DGT_Hash1Reset
	add r0, sp, #0x14
	mov r1, r5
	mov r2, #0x18
	bl DGT_Hash1SetSource
	add r0, sp, #0
	add r1, sp, #0x14
	bl DGT_Hash1GetDigest_R
	add r0, sp, #3
	mov r1, r4
	mov r2, #0xd
	bl MI_CpuCopy8
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, pc}
	arm_func_end ov11_02134FC0

	arm_func_start ov11_0213500C
ov11_0213500C: ; 0x0213500C
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr lr, _021351A8 ; =0x92492493
	mov r4, r1
	mov r1, #0
	mov ip, #7
	arm_func_end ov11_0213500C
_02135024:
	smull r2, r3, lr, r1
	add r3, r1, r3
	mov r2, r1, lsr #0x1f
	add r3, r2, r3, asr #2
	smull r2, r3, ip, r3
	sub r3, r1, r2
	add r2, r0, r3
	ldrb r3, [r0, r1]
	ldrb r2, [r2, #0xd]
	eor r2, r3, r2
	strb r2, [r4, r1]
	add r1, r1, #1
	cmp r1, #0xd
	blt _02135024
	mov ip, #0
_02135060:
	add r3, r4, ip
	add r1, r0, ip
	ldrb r2, [r3, #3]
	ldrb r1, [r1, #0xd]
	add ip, ip, #1
	cmp ip, #7
	eor r1, r2, r1
	strb r1, [r3, #3]
	blt _02135060
	ldr r0, _021351AC ; =PTR_DAT_overlay_11_0216679c_overlay_11_02166750
	mov r3, #0
_0213508C:
	ldr r1, [r0, #4]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _0213508C
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl MI_CpuCopy8
	ldr r3, _021351B0 ; =DAT_overlay_11_02162bdc
	add r2, sp, #0
	mov ip, #0
_021350C8:
	ldrb r1, [r2], #1
	ldrb r0, [r3], #1
	add ip, ip, #1
	cmp ip, #0xd
	strb r1, [r4, r0]
	blt _021350C8
	ldr r0, _021351AC ; =PTR_DAT_overlay_11_0216679c_overlay_11_02166750
	mov r3, #0
_021350E8:
	ldr r1, [r0, #0xc]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _021350E8
	ldr r2, _021351B4 ; =DAT_overlay_11_02162bec
	mov ip, #0
_02135110:
	ldrb r3, [r4, ip]
	mov r0, r3, asr #4
	and r1, r0, #0xf
	and r0, r3, #0xf
	ldrb r1, [r2, r1]
	ldrb r0, [r2, r0]
	orr r0, r0, r1, lsl #4
	strb r0, [r4, ip]
	add ip, ip, #1
	cmp ip, #0xd
	blt _02135110
	mov r1, #0
_02135140:
	add r0, r4, r1
	ldrb r3, [r4, r1]
	ldrb r2, [r0, #6]
	eor r2, r3, r2
	strb r2, [r4, r1]
	ldrb r3, [r0, #3]
	ldrb r2, [r0, #9]
	eor r2, r3, r2
	strb r2, [r0, #3]
	ldrb r3, [r0, #6]
	and r2, r2, #0xff
	eor r2, r3, r2
	strb r2, [r0, #6]
	ldrb r3, [r0, #9]
	ldrb r2, [r4, r1]
	eor r2, r3, r2
	strb r2, [r0, #9]
	ldrb r0, [r4, r1]
	ldrb r2, [r4, #0xc]
	add r1, r1, #1
	cmp r1, #3
	eor r0, r2, r0
	strb r0, [r4, #0xc]
	blt _02135140
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_021351A8: .word 0x92492493
_021351AC: .word PTR_DAT_overlay_11_0216679c_overlay_11_02166750
_021351B0: .word DAT_overlay_11_02162bdc
_021351B4: .word DAT_overlay_11_02162bec

	arm_func_start ov11_021351B8
ov11_021351B8: ; 0x021351B8
	cmp r0, #0x41
	blo _021351CC
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
	arm_func_end ov11_021351B8
_021351CC:
	cmp r0, #0x61
	blo _021351E4
	cmp r0, #0x7a
	subls r0, r0, #0x61
	addls r0, r0, #0x1a
	bxls lr
_021351E4:
	cmp r0, #0x30
	blo _021351FC
	cmp r0, #0x39
	subls r0, r0, #0x30
	addls r0, r0, #0x34
	bxls lr
_021351FC:
	cmp r0, #0x2b
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2f
	moveq r0, #0x3f
	bxeq lr
	cmp r0, #0x3d
	movne r0, #1
	moveq r0, #0
	rsb r0, r0, #0
	bx lr

	arm_func_start ov11_02135228
ov11_02135228: ; 0x02135228
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	add r4, r2, r2, lsl #1
	str r0, [sp]
	mov r0, r4, lsr #2
	str r1, [sp, #4]
	cmp r3, r4, lsr #2
	str r0, [sp, #8]
	blo _0213525C
	and fp, r2, #3
	sub r0, r2, fp
	str r0, [sp, #0xc]
	b _02135268
	arm_func_end ov11_02135228
_0213525C:
	add sp, sp, #0x18
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02135268:
	cmp r0, #0
	mov r7, #0
	ble _021352F0
	mov sb, r7
	add r5, sp, #0x14
	mov r4, #6
_02135280:
	ldr r0, [sp]
	mov r6, #0
	mov r8, r6
	add sl, r0, r7
_02135290:
	ldrb r0, [sl], #1
	bl ov11_021351B8
	rsb r1, r8, #3
	mul r2, r1, r4
	orr r6, r6, r0, lsl r2
	add r8, r8, #1
	cmp r8, #4
	blt _02135290
	ldr r0, [sp, #4]
	add r1, sb, sb, lsl #1
	mov r2, #0
	str r6, [sp, #0x14]
	add r1, r0, r1
_021352C4:
	rsb r0, r2, #2
	ldrb r0, [r5, r0]
	add r2, r2, #1
	cmp r2, #3
	strb r0, [r1], #1
	blt _021352C4
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	cmp r7, r0
	add sb, sb, #1
	blt _02135280
_021352F0:
	cmp fp, #0
	beq _02135384
	mov r5, #0
	mov r6, r5
	str r5, [sp, #0x10]
	ble _02135344
	ldr r1, [sp]
	ldr r0, [sp, #0xc]
	mov r8, r5
	add r4, r1, r0
	mov r7, #6
_0213531C:
	ldrb r0, [r4], #1
	bl ov11_021351B8
	rsb r1, r6, #3
	mul r2, r1, r7
	orr r5, r5, r0, lsl r2
	add r6, r6, #1
	cmp r6, fp
	orr r8, r8, r5
	blt _0213531C
	str r8, [sp, #0x10]
_02135344:
	cmp fp, #0
	mov r3, #0
	ble _02135384
	ldr r0, [sp, #0xc]
	add r1, r0, r0, lsl #1
	mov r0, r1, asr #1
	add r1, r1, r0, lsr #30
	ldr r0, [sp, #4]
	add r2, r0, r1, asr #2
	add r1, sp, #0x10
_0213536C:
	rsb r0, r3, #2
	ldrb r0, [r1, r0]
	add r3, r3, #1
	cmp r3, fp
	strb r0, [r2], #1
	blt _0213536C
_02135384:
	ldr r0, [sp, #8]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

    .rodata

    .global s_Wayport2_overlay_11_02162b18
s_Wayport2_overlay_11_02162b18: ; 0x02162B18
	.ascii "Wayport2"

    .global s_FREESPOT_overlay_11_02162b20
s_FREESPOT_overlay_11_02162b20: ; 0x02162B20
    .ascii "FREESPOT"

    .global s_NINTENDOWFC_overlay_11_02162b28
s_NINTENDOWFC_overlay_11_02162b28: ; 0x02162B28
    .asciz "NINTENDOWFC"

    .global DAT_overlay_11_02162b34
DAT_overlay_11_02162b34: ; 0x02162B34
	.byte 0x02, 0x80, 0x00, 0x00, 0x04, 0x80, 0x00, 0x00, 0x08, 0x80, 0x00, 0x00
	.byte 0x10, 0x80, 0x00, 0x00, 0x20, 0x80, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x80, 0x80, 0x00, 0x00
	.byte 0x00, 0x81, 0x00, 0x00, 0x00, 0x82, 0x00, 0x00, 0x00, 0x84, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00
	.byte 0x00, 0x90, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00

    .global DAT_overlay_11_02162b68
DAT_overlay_11_02162b68: ; 0x02162B68
	.byte 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word s_NINTENDO_DS_overlay_11_02166744
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x61, 0x61, 0x61

    .global DAT_overlay_11_02162bc3
DAT_overlay_11_02162bc3: ; 0x02162BC3
	.byte 0x17

    .global DAT_overlay_11_02162bc4
DAT_overlay_11_02162bc4: ; 0x02162BC4
	.byte 0x14

    .global DAT_overlay_11_02162bc5
DAT_overlay_11_02162bc5: ; 0x02162BC5
	.byte 0x11

    .global DAT_overlay_11_02162bc6
DAT_overlay_11_02162bc6: ; 0x02162BC6
	.byte 0x0D, 0x0B, 0x06, 0x0F, 0x0E, 0x09, 0x15, 0x0C, 0x04, 0x02
	.byte 0x01, 0x12, 0x10, 0x05, 0x03, 0x13, 0x0A, 0x07, 0x08, 0x00, 0x16, 0x00

    .global DAT_overlay_11_02162bdc
DAT_overlay_11_02162bdc: ; 0x02162BDC
	.byte 0x05

    .global DAT_overlay_11_02162bdd
DAT_overlay_11_02162bdd: ; 0x02162BDD
	.byte 0x01, 0x0C, 0x04
	.byte 0x02, 0x03, 0x0A, 0x00, 0x0B, 0x07, 0x09, 0x08, 0x06, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02162bec
DAT_overlay_11_02162bec: ; 0x02162BEC
	.byte 0x0A, 0x0D, 0x0E, 0x08
	.byte 0x09, 0x03, 0x06, 0x00, 0x0C, 0x05, 0x02, 0x07, 0x0B, 0x01, 0x0F, 0x04

    .data

    .global s_NWCUSBAP_overlay_11_02166738
s_NWCUSBAP_overlay_11_02166738: ; 0x02166738
	.asciz "NWCUSBAP"

    .global DAT_overlay_11_02166741
DAT_overlay_11_02166741:
	.byte 0x00, 0x00, 0x00

    .global s_NINTENDO_DS_overlay_11_02166744
s_NINTENDO_DS_overlay_11_02166744: ; 0x02166744
	.asciz "NINTENDO-DS"

    .global PTR_DAT_overlay_11_0216679c_overlay_11_02166750
PTR_DAT_overlay_11_0216679c_overlay_11_02166750: ; 0x02166750
	.word DAT_overlay_11_0216679c

    .global PTR_DAT_overlay_11_02166760_overlay_11_02166754
PTR_DAT_overlay_11_02166760_overlay_11_02166754: ; 0x02166754
	.word DAT_overlay_11_02166760

    .global ptr_FUN_overlay_0_02166780_overlay_11_02166758
ptr_FUN_overlay_0_02166780_overlay_11_02166758: ; 0x02166758
	.word DAT_overlay_11_02166780

    .global PTR_DAT_overlay_11_02166770_overlay_11_0216675c
PTR_DAT_overlay_11_02166770_overlay_11_0216675c: ; 0x0216675C
	.word DAT_overlay_11_02166770

    .global DAT_overlay_11_02166760
DAT_overlay_11_02166760: ; 0x02166760
	.byte 0x67

    .global s_wi_6_fs_0Nf_overlay_11_02166761
s_wi_6_fs_0Nf_overlay_11_02166761: ; 0x02166761
	.asciz "wi'6&fs=0Nf~"

    .global DAT_overlay_11_0216676E
DAT_overlay_11_0216676E:
	.byte 0x00, 0x00

    .global DAT_overlay_11_02166770
DAT_overlay_11_02166770: ; 0x02166770
	.byte 0x25

    .global s_egEr_ag_s_m_overlay_11_02166771
s_egEr_ag_s_m_overlay_11_02166771: ; 0x02166771
	.asciz "(egEr)ag(s&m"

    .global DAT_overlay_11_0216677E
DAT_overlay_11_0216677E:
	.byte 0x00, 0x00

    .global DAT_overlay_11_02166780
DAT_overlay_11_02166780: ; 0x02166780
	.byte 0x39

    .global s_52uybjnpmu903bia_bk5m_overlay_11_02166781
s_52uybjnpmu903bia_bk5m_overlay_11_02166781: ; 0x02166781
	.asciz "52uybjnpmu903bia@bk5m[-"

    .global DAT_overlay_11_02166799
DAT_overlay_11_02166799:
	.byte 0x00, 0x00, 0x00

    .global DAT_overlay_11_0216679c
DAT_overlay_11_0216679c: ; 0x0216679C
	.byte 0x33

    .global s_8g6zxjk20gvmv_6_j_vY1_overlay_11_0216679d
s_8g6zxjk20gvmv_6_j_vY1_overlay_11_0216679d: ; 0x0216679D
	.asciz "8g6zxjk20gvmv]6^=j&%vY1"

    .global DAT_overlay_11_021667B5
DAT_overlay_11_021667B5:
	.byte 0x00, 0x00, 0x00

    .global s_NDWCSHAP_overlay_11_021667b8
s_NDWCSHAP_overlay_11_021667b8: ; 0x021667B8
	.asciz "NDWCSHAP"

    .global DAT_overlay_11_021667C1
DAT_overlay_11_021667C1:
	.byte 0x00, 0x00, 0x00

    .global s_NWCUSBAP_overlay_11_021667c4
s_NWCUSBAP_overlay_11_021667c4: ; 0x021667C4
	.asciz "NWCUSBAP"

    .global DAT_overlay_11_021667CD
DAT_overlay_11_021667CD:
	.byte 0x00, 0x00, 0x00

    .bss

    .global OVERLAY11_BSS_02169C94
OVERLAY11_BSS_02169C94: ; 0x02169C94
    .space 0x14
