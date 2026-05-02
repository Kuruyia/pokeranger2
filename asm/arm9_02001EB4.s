    .include "macros.inc"
    .include "include/arm9_02001EB4.inc"

    .text

	arm_func_start CTouchPanel_complete_obj_dtor
CTouchPanel_complete_obj_dtor: ; 0x02001EB4
	bx lr
	arm_func_end CTouchPanel_complete_obj_dtor

	arm_func_start CTouchPanel_deleting_obj_dtor
CTouchPanel_deleting_obj_dtor: ; 0x02001EB8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl thunk_FUN_0200235c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end CTouchPanel_deleting_obj_dtor

	arm_func_start CTouchPanel_other_obj_dtor
CTouchPanel_other_obj_dtor: ; 0x02001ECC
	bx lr
	arm_func_end CTouchPanel_other_obj_dtor

	arm_func_start sub_02001ED0
sub_02001ED0: ; 0x02001ED0
	stmdb sp!, {r4, lr}
	mov r4, r0
	arm_func_end sub_02001ED0
_02001ED8:
	bl TP_RequestSamplingAsync
	add r0, r4, #0x16
	bl TP_WaitRawResult
	cmp r0, #0
	bne _02001ED8
	add r0, r4, #0xa
	add r1, r4, #0x16
	bl TP_GetCalibratedPoint
	bl PM_GetLCDPower
	cmp r0, #0
	bne _02001F18
	mov r0, #0
	strh r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	strh r0, [r4, #0xe]
	strh r0, [r4, #0x10]
_02001F18:
	ldrh r1, [r4, #0xe]
	ldrb r3, [r4, #5]
	mov r0, #0
	and r1, r1, #0xff
	eor r2, r1, r3
	strb r1, [r4, #5]
	and r1, r1, r2
	strb r1, [r4, #4]
	and r1, r3, r2
	strb r1, [r4, #6]
	strb r0, [r4, #7]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _02001F64
	mov r0, #0x18
	strh r0, [r4, #8]
	ldrh r0, [r4, #0xe]
	strb r0, [r4, #7]
	b _02001F98
_02001F64:
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _02001F98
	ldrh r0, [r4, #8]
	sub r0, r0, #1
	strh r0, [r4, #8]
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _02001F98
	mov r0, #4
	strh r0, [r4, #8]
	ldrh r0, [r4, #0xe]
	strb r0, [r4, #7]
_02001F98:
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq _02002028
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	bne _02001FC4
	ldrh r0, [r4, #0xa]
	strh r0, [r4, #0x1e]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x20]
	ldmia sp!, {r4, pc}
_02001FC4:
	cmp r0, #1
	beq _02001FE0
	cmp r0, #2
	beq _02001FEC
	cmp r0, #3
	beq _02001FF8
	b _02002008
_02001FE0:
	ldrh r0, [r4, #0x1e]
	strh r0, [r4, #0xa]
	b _02002008
_02001FEC:
	ldrh r0, [r4, #0x20]
	strh r0, [r4, #0xc]
	b _02002008
_02001FF8:
	ldrh r0, [r4, #0x1e]
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x20]
	strh r0, [r4, #0xc]
_02002008:
	ldrb r0, [r4, #4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #7]
	ldmia sp!, {r4, pc}
_02002028:
	ldrh r0, [r4, #0x1e]
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x20]
	strh r0, [r4, #0xc]
	ldmia sp!, {r4, pc}

	arm_func_start sub_0200203C
sub_0200203C: ; 0x0200203C
	ldr ip, _02002044 ; =_Z19Heap_AllocSecondarym
	bx ip
	.align 2, 0
_02002044: .word _Z19Heap_AllocSecondarym
	arm_func_end sub_0200203C

	arm_func_start thunk_FUN_0200235c
thunk_FUN_0200235c: ; 0x02002048
	ldr ip, _02002050 ; =_Z18Heap_FreeSecondaryPv
	bx ip
	.align 2, 0
_02002050: .word _Z18Heap_FreeSecondaryPv
	arm_func_end thunk_FUN_0200235c

	arm_func_start CTPEmulator_ctor
CTPEmulator_ctor: ; 0x02002054
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN11CTouchPanelC2Ev
	ldr r1, _02002070 ; =PTR_LAB_0208a40c
	mov r0, r4
	str r1, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02002070: .word PTR_LAB_0208a40c
	arm_func_end CTPEmulator_ctor

	arm_func_start CTPEmulator_complete_obj_dtor
CTPEmulator_complete_obj_dtor: ; 0x02002074
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl CTouchPanel_other_obj_dtor
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end CTPEmulator_complete_obj_dtor

	arm_func_start CTPEmulator_deleting_obj_dtor
CTPEmulator_deleting_obj_dtor: ; 0x02002088
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl CTouchPanel_other_obj_dtor
	mov r0, r4
	bl thunk_FUN_0200235c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end CTPEmulator_deleting_obj_dtor

	arm_func_start sub_020020A4
sub_020020A4: ; 0x020020A4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	cmpne r0, #1
	beq _02002114
	cmp r0, #2
	bne _02002114
	ldrh r0, [r4, #0x40]
	add r0, r0, #1
	strh r0, [r4, #0x40]
	ldrh r2, [r4, #0x40]
	ldrh r3, [r4, #0x42]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	bl sub_02007068
	str r0, [r4, #0x38]
	ldrh r2, [r4, #0x40]
	ldrh r3, [r4, #0x42]
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x50]
	bl sub_02007068
	str r0, [r4, #0x3c]
	ldrh r1, [r4, #0x40]
	ldrh r0, [r4, #0x42]
	cmp r1, r0
	movhs r0, #1
	strhs r0, [r4, #0x30]
	arm_func_end sub_020020A4
_02002114:
	ldr r1, [r4, #0x38]
	mov r0, #0
	mov r1, r1, asr #0xc
	add r1, r1, #0x80
	strh r1, [r4, #0xa]
	ldr r1, [r4, #0x3c]
	mov r1, r1, asr #0xc
	add r1, r1, #0x60
	strh r1, [r4, #0xc]
	ldrb r1, [r4, #0x34]
	strb r1, [r4, #4]
	ldrb r1, [r4, #0x35]
	strb r1, [r4, #5]
	ldrb r1, [r4, #0x36]
	strb r1, [r4, #6]
	strb r0, [r4, #0x34]
	strb r0, [r4, #0x36]
	ldmia sp!, {r4, pc}

	arm_func_start sub_0200215C
sub_0200215C: ; 0x0200215C
	str r1, [r0, #0x38]
	str r2, [r0, #0x3c]
	mov r1, #1
	strb r1, [r0, #0x34]
	strb r1, [r0, #0x35]
	str r1, [r0, #0x30]
	bx lr
	arm_func_end sub_0200215C

	arm_func_start sub_02002178
sub_02002178: ; 0x02002178
	mov r2, #0
	strb r2, [r0, #0x34]
	strb r2, [r0, #0x35]
	strb r2, [r0, #0x37]
	mov r1, #1
	strb r1, [r0, #0x36]
	str r2, [r0, #0x30]
	bx lr
	arm_func_end sub_02002178

	arm_func_start sub_02002198
sub_02002198: ; 0x02002198
	mov ip, #0
	strh ip, [r0, #0x40]
	strh r3, [r0, #0x42]
	ldr ip, [r0, #0x38]
	mov r3, #2
	str ip, [r0, #0x44]
	ldr ip, [r0, #0x3c]
	str ip, [r0, #0x48]
	str r1, [r0, #0x4c]
	str r2, [r0, #0x50]
	str r3, [r0, #0x30]
	bx lr
	arm_func_end sub_02002198
