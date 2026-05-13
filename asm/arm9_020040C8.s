    .include "macros.inc"
    .include "include/arm9_020040C8.inc"

    .text

	arm_func_start sub_020040C8
sub_020040C8: ; 0x020040C8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN10CPrimitiveC2Ev
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
	bl _ZN10CPrimitiveC2Ev
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
	bl _ZN10CPrimitiveD2Ev
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02004160

	arm_func_start sub_02004174
sub_02004174: ; 0x02004174
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN10CPrimitiveD2Ev
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02004174

	arm_func_start sub_02004190
sub_02004190: ; 0x02004190
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN10CPrimitiveD2Ev
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
	bl _ZN10CPrimitiveC2Ev
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
	bl _ZN10CPrimitiveD2Ev
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020049D4

	arm_func_start sub_020049E8
sub_020049E8: ; 0x020049E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN10CPrimitiveD2Ev
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
	bl _ZN10CPrimitiveC2Ev
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
	bl _ZN10CPrimitiveD2Ev
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02004D00

	arm_func_start sub_02004D14
sub_02004D14: ; 0x02004D14
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN10CPrimitiveD2Ev
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
	bl _ZN10CPrimitiveC2Ev
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
	bl _ZN10CPrimitiveD2Ev
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020051C8

	arm_func_start sub_020051DC
sub_020051DC: ; 0x020051DC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN10CPrimitiveD2Ev
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
