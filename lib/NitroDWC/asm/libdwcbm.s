    .include "macros/function.inc"
    .include "include/libdwcbm.inc"

    .text

	arm_func_start DWCi_BM_GetApInfo
DWCi_BM_GetApInfo: ; 0x02139914
	stmdb sp!, {r3, lr}
	ldr r1, _0213993C ; =OVERLAY11_BSS_02169D60
	mov r2, r0
	ldr r0, [r1, #8]
	mov r1, #0x300
	bl ov11_0213A248
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0213993C: .word OVERLAY11_BSS_02169D60
	arm_func_end DWCi_BM_GetApInfo

	arm_func_start DWCi_BM_GetWiFiInfo
DWCi_BM_GetWiFiInfo: ; 0x02139940
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02139A00 ; =OVERLAY11_BSS_02169D6C
	mov r1, r4
	mov r2, #6
	bl MI_CpuCopy8
	ldr r1, _02139A04 ; =0x000007FF
	ldr r3, [r4]
	sub r0, r1, #0x800
	ldr r2, [r4, #4]
	and r0, r3, r0
	str r0, [r4]
	and r1, r2, r1
	str r1, [r4, #4]
	ldr r0, _02139A08 ; =OVERLAY11_BSS_02169D71
	add r1, r4, #8
	mov r2, #6
	bl MI_CpuCopy8
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mov r1, r1, lsr #3
	orr r1, r1, r0, lsl #29
	str r1, [r4, #8]
	mov r3, r0, lsr #3
	str r3, [r4, #0xc]
	ldr r1, _02139A04 ; =0x000007FF
	ldr r2, [r4, #8]
	sub r0, r1, #0x800
	and r0, r2, r0
	str r0, [r4, #8]
	and r1, r1, r3
	str r1, [r4, #0xc]
	ldr r0, _02139A0C ; =OVERLAY11_BSS_02169D76
	add r1, r4, #0x10
	mov r2, #2
	bl MI_CpuCopy8
	ldrh r1, [r4, #0x10]
	ldr r3, _02139A10 ; =0x000003FF
	ldr r0, _02139A14 ; =OVERLAY11_BSS_02169D78
	mov r1, r1, asr #6
	strh r1, [r4, #0x10]
	ldrh ip, [r4, #0x10]
	add r1, r4, #0x12
	mov r2, #2
	and r3, ip, r3
	strh r3, [r4, #0x10]
	bl MI_CpuCopy8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02139A00: .word OVERLAY11_BSS_02169D6C
_02139A04: .word 0x000007FF
_02139A08: .word OVERLAY11_BSS_02169D71
_02139A0C: .word OVERLAY11_BSS_02169D76
_02139A10: .word 0x000003FF
_02139A14: .word OVERLAY11_BSS_02169D78
	arm_func_end DWCi_BM_GetWiFiInfo

	arm_func_start ov11_02139A18
ov11_02139A18: ; 0x02139A18
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r2, _02139AE8 ; =OVERLAY11_BSS_02169D60
	mov sl, r1
	ldr sb, [r2, #8]
	bl DWCi_BACKUPlConvWifiInfo
	ldr r1, _02139AEC ; =0x0000A001
	add r0, sl, #0x200
	bl MATHi_CRC16InitTableRev
	mov r5, #0x100
	ldr r6, _02139AF0 ; =OVERLAY11_BSS_02169D6C
	mov r8, #0
	mov r4, r5
	mov fp, #0xe
	mov r7, r5
	arm_func_end ov11_02139A18
_02139A50:
	mov r0, sb
	mov r1, r7
	mov r2, sl
	bl ov11_0213A248
	cmp r0, #0
	bne _02139A74
	bl OS_Terminate
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02139A74:
	mov r0, r6
	mov r2, fp
	add r1, sl, #0xf0
	bl MI_CpuCopy8
	mov r1, sl
	mov r2, #0xfe
	add r0, sl, #0x200
	bl MATH_CalcCRC16
	strh r0, [sl, #0xfe]
_02139A98:
	mov r0, sb
	mov r1, r5
	mov r2, sl
	bl ov11_0213A2D8
	mov r0, sl
	mov r1, sb
	mov r2, r4
	add r3, sl, #0x100
	bl ov11_0213A354
	cmp r0, #0
	beq _02139A98
	add r8, r8, #1
	cmp r8, #2
	add sb, sb, #0x100
	blt _02139A50
	bl ov11_0213A3A0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02139AE8: .word OVERLAY11_BSS_02169D60
_02139AEC: .word 0x0000A001
_02139AF0: .word OVERLAY11_BSS_02169D6C

	arm_func_start ov11_02139AF4
ov11_02139AF4: ; 0x02139AF4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x20
	mov r1, r0
	mov r2, r4
	bl ov11_0213A248
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrh r2, [r4]
	ldr r1, _02139B34 ; =OVERLAY11_BSS_02169D60
	mov r0, #1
	mov r2, r2, lsl #3
	sub r2, r2, #0x400
	str r2, [r1, #8]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02139B34: .word OVERLAY11_BSS_02169D60
	arm_func_end ov11_02139AF4

	arm_func_start DWCi_BACKUPlRead
DWCi_BACKUPlRead: ; 0x02139B38
	stmdb sp!, {r3, lr}
	ldr r1, _02139B60 ; =OVERLAY11_BSS_02169D60
	mov r2, r0
	ldr r0, [r1, #8]
	mov r1, #0x400
	bl ov11_0213A248
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02139B60: .word OVERLAY11_BSS_02169D60
	arm_func_end DWCi_BACKUPlRead

	arm_func_start DWCi_BACKUPlWritePage
DWCi_BACKUPlWritePage: ; 0x02139B64
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r3, _02139BE8 ; =OVERLAY11_BSS_02169D60
	mov sl, #0x100
	ldr r5, [r3, #8]
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r4, #0
	mov sb, sl
	arm_func_end DWCi_BACKUPlWritePage
_02139B88:
	ldr r0, [r7, r4, lsl #2]
	cmp r0, #0
	beq _02139BC0
_02139B94:
	mov r0, r5
	mov r1, sl
	mov r2, r8
	bl ov11_0213A2D8
	mov r0, r8
	mov r1, r5
	mov r2, sb
	mov r3, r6
	bl ov11_0213A354
	cmp r0, #0
	beq _02139B94
_02139BC0:
	add r4, r4, #1
	cmp r4, #4
	add r8, r8, #0x100
	add r5, r5, #0x100
	blt _02139B88
	bl ov11_0213A3A0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02139BE8: .word OVERLAY11_BSS_02169D60

	arm_func_start ov11_02139BEC
ov11_02139BEC: ; 0x02139BEC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r1, _02139C7C ; =OVERLAY11_BSS_02169D60
	mov r8, r0
	mov sl, #0x100
	ldr r6, [r1, #8]
	mov r7, r8
	mov r5, #0
	mov sb, sl
	mov r4, #0xfe
	arm_func_end ov11_02139BEC
_02139C10:
	mov r1, r7
	mov r2, r4
	add r0, r8, #0x500
	bl MATH_CalcCRC16
	add r1, r8, r5, lsl #8
	strh r0, [r1, #0xfe]
_02139C28:
	mov r0, r6
	mov r1, sl
	mov r2, r7
	bl ov11_0213A2D8
	mov r0, r7
	mov r1, r6
	mov r2, sb
	add r3, r8, #0x400
	bl ov11_0213A354
	cmp r0, #0
	beq _02139C28
	add r5, r5, #1
	cmp r5, #4
	add r7, r7, #0x100
	add r6, r6, #0x100
	blt _02139C10
	bl ov11_0213A3A0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02139C7C: .word OVERLAY11_BSS_02169D60

	arm_func_start ov11_02139C80
ov11_02139C80: ; 0x02139C80
	ldr ip, _02139C90 ; =MI_CpuCopy8
	ldr r1, _02139C94 ; =OVERLAY11_BSS_02169D6C
	mov r2, #0xe
	bx ip
	.align 2, 0
_02139C90: .word MI_CpuCopy8
_02139C94: .word OVERLAY11_BSS_02169D6C
	arm_func_end ov11_02139C80

	arm_func_start DWCi_BACKUPlConvMaskCidr
DWCi_BACKUPlConvMaskCidr: ; 0x02139C98
	stmdb sp!, {r4, lr}
	mov ip, #0
	mov r3, ip
	mov r2, ip
	arm_func_end DWCi_BACKUPlConvMaskCidr
_02139CA8:
	ldrb r4, [r0, ip]
	mov lr, r2
_02139CB0:
	mov r1, r4, asr lr
	tst r1, #1
	add lr, lr, #1
	addne r3, r3, #1
	cmp lr, #8
	blt _02139CB0
	add ip, ip, #1
	cmp ip, #4
	blt _02139CA8
	and r0, r3, #0xff
	ldmia sp!, {r4, pc}

	arm_func_start DWCi_BACKUPlConvMaskAddr
DWCi_BACKUPlConvMaskAddr: ; 0x02139CDC
	mvn r2, #0
	mov r3, #0
	eor r2, r2, r2, lsr r0
	mov ip, r3
	arm_func_end DWCi_BACKUPlConvMaskAddr
_02139CEC:
	rsb r0, ip, #0x18
	mov r0, r2, lsr r0
	strb r0, [r1, r3]
	add r3, r3, #1
	cmp r3, #4
	add ip, ip, #8
	blt _02139CEC
	bx lr

	arm_func_start ov11_02139D0C
ov11_02139D0C: ; 0x02139D0C
	mov r2, #0
	arm_func_end ov11_02139D0C
_02139D10:
	ldrb r1, [r0, r2]
	cmp r1, #0
	movne r0, #1
	bxne lr
	add r2, r2, #1
	cmp r2, #0x20
	blt _02139D10
	mov r0, #0
	bx lr

	arm_func_start DWC_BACKUPlCheckIp
DWC_BACKUPlCheckIp: ; 0x02139D34
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	add r1, sp, #4
	mov r0, r5
	mov r2, #4
	bl MI_CpuCopy8
	add r1, sp, #0
	mov r0, r4
	mov r2, #4
	bl MI_CpuCopy8
	ldr r3, [sp]
	ldr r2, [sp, #4]
	mvn r0, #1
	orr r1, r2, r3
	cmp r1, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mvn r0, r3
	tst r2, r0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end DWC_BACKUPlCheckIp

	arm_func_start DWC_BACKUPlCheckAddress
DWC_BACKUPlCheckAddress: ; 0x02139DB0
	ldrb r0, [r0]
	cmp r0, #0x7f
	moveq r0, #0
	bxeq lr
	cmp r0, #1
	movlo r0, #0
	bxlo lr
	cmp r0, #0xdf
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end DWC_BACKUPlCheckAddress

	arm_func_start ov11_02139DDC
ov11_02139DDC: ; 0x02139DDC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x3c
	ldr sl, _0213A230 ; =OVERLAY11_BSS_02169D80
	mov r8, r1, lsr #0x10
	mov r4, sl, lsl #8
	mov sb, r4
	and r4, r4, #0xff00
	mov r1, r1, lsl #0x10
	orr r4, r4, #0x20000
	mov r5, r3, lsr #0x10
	mov r7, r0
	ldr ip, _0213A234 ; =0x01020000
	mov r1, r1, lsr #0x10
	str r4, [sp, #0x30]
	orr r4, r1, #0x10000
	mov r3, r3, lsl #0x10
	add r1, ip, #0x30000
	orr r1, r1, r3, lsr #16
	str r1, [sp, #0x10]
	mov r1, r3, lsr #0x10
	orr r1, r1, #0x1040000
	ldr r0, _0213A238 ; =0x02002200
	str r1, [sp, #0x24]
	orr r1, r0, sl, lsr #24
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x30]
	mov sb, sb, lsr #0x10
	orr r1, r1, #0x1000000
	str r1, [sp, #0x30]
	add r1, r0, #0x300
	and r8, r8, #0xff
	add r0, r0, #0x100
	orr r0, r8, r0
	orr r1, r8, r1
	str r0, [sp]
	orr r0, r2, #0x20000
	str r0, [sp, #0x1c]
	orr r0, r5, #0x30000
	str r0, [sp, #0x20]
	orr r0, r5, #0x40000
	str r0, [sp, #0xc]
	ldr r0, _0213A23C ; =0x03002100
	mov r6, #0
	sub r0, r0, #0x100
	str r0, [sp, #0x14]
	mov r0, r2, lsr #0x10
	orr r0, r0, #0x20000
	str r0, [sp, #4]
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	orr sb, sb, #0x10000
	orr r0, r0, #0x30000
	str sb, [sp, #0x2c]
	str r1, [sp, #0x18]
	str r0, [sp, #8]
	mov r5, r6
	mov r8, #0xfa0
_02139EC0:
	cmp r6, #0
	bne _0213A100
	ldr r0, _0213A240 ; =OVERLAY11_BSS_02169D60
	cmp r7, #7
	str r5, [r0, #4]
	addls pc, pc, r7, lsl #2
	b _02139EC0
_02139EDC: ; jump table
	b _02139EC0 ; case 0
	b _02139EFC ; case 1
	b _02139FA8 ; case 2
	b _02139FC8 ; case 3
	b _0213A064 ; case 4
	b _0213A064 ; case 5
	b _0213A0BC ; case 6
	b _0213A0E0 ; case 7
	arm_func_end ov11_02139DDC
_02139EFC:
	ldr r1, [sp]
	mov r0, #4
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _02139EC0
	mov r0, #4
	mov r1, r4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _02139EC0
	ldr r1, [sp, #4]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _02139EC0
	ldr r1, [sp, #8]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _02139EC0
	ldr r1, [sp, #0xc]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _02139EC0
	ldr r1, [sp, #0x10]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _02139EC0
_02139FA8:
	ldr r1, [sp, #0x14]
	mov r0, #4
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _02139EC0
_02139FC8:
	ldr r1, [sp, #0x18]
	mov r0, #4
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _0213A054
	mov r0, #4
	mov r1, r4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _0213A054
	ldr r1, [sp, #0x1c]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _0213A054
	ldr r1, [sp, #0x20]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _0213A054
	ldr r1, [sp, #0x24]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
_0213A054:
	bl OS_GetTick
	str r0, [sp, #0x34]
	mov fp, r1
	b _02139EC0
_0213A064:
	ldr r1, [sp, #0x28]
	mov r0, #4
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _02139EC0
	ldr r1, [sp, #0x2c]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _02139EC0
	ldr r1, [sp, #0x30]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _02139EC0
_0213A0BC:
	ldr r1, _0213A23C ; =0x03002100
	mov r0, #4
	add r1, r1, #0xc00
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _02139EC0
_0213A0E0:
	ldr r1, _0213A23C ; =0x03002100
	mov r0, #4
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _02139EC0
_0213A100:
	ldr r0, _0213A240 ; =OVERLAY11_BSS_02169D60
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _02139EC0
	ldr r0, _0213A240 ; =OVERLAY11_BSS_02169D60
	mov r6, #0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0213A224
	cmp r7, #7
	addls pc, pc, r7, lsl #2
	b _02139EC0
_0213A130: ; jump table
	b _02139EC0 ; case 0
	b _0213A150 ; case 1
	b _0213A15C ; case 2
	b _0213A164 ; case 3
	b _0213A16C ; case 4
	b _0213A16C ; case 5
	b _0213A20C ; case 6
	b _0213A218 ; case 7
_0213A150:
	add sp, sp, #0x3c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213A15C:
	mov r7, #4
	b _02139EC0
_0213A164:
	mov r7, #5
	b _02139EC0
_0213A16C:
	mov r0, sl
	mov r1, #1
	bl DC_InvalidateRange
	cmp r7, #4
	ldrb r0, [sl]
	bne _0213A19C
	tst r0, #2
	movne r7, #3
	bne _02139EC0
	add sp, sp, #0x3c
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213A19C:
	tst r0, #1
	addeq sp, sp, #0x3c
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	tst r0, #0x20
	bne _0213A1F8
	bl OS_GetTick
	ldr r2, [sp, #0x34]
	mov ip, r6
	subs sb, r0, r2
	mov r0, #0x40
	sbc lr, r1, fp
	umull r0, r1, sb, r0
	mla r1, sb, ip, r1
	mov sb, #0x40
	mla r1, lr, sb, r1
	ldr r2, _0213A244 ; =0x000082EA
	mov r3, r6
	bl _ll_udiv
	mov r2, r6
	cmp r1, r2
	cmpeq r0, r8
	bls _0213A200
_0213A1F8:
	mov r7, #6
	b _02139EC0
_0213A200:
	mov r0, #0x4000
	blx SVC_WaitByLoop
	b _02139EC0
_0213A20C:
	add sp, sp, #0x3c
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213A218:
	add sp, sp, #0x3c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213A224:
	mov r0, r6
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0213A230: .word OVERLAY11_BSS_02169D80
_0213A234: .word 0x01020000
_0213A238: .word 0x02002200
_0213A23C: .word 0x03002100
_0213A240: .word OVERLAY11_BSS_02169D60
_0213A244: .word 0x000082EA

	arm_func_start ov11_0213A248
ov11_0213A248: ; 0x0213A248
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r2
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl DC_InvalidateRange
	mov r8, #4
	mov r7, #1
	arm_func_end ov11_0213A248
_0213A268:
	mov r0, r8
	mov r1, r7
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _0213A268
	ldr r1, _0213A2D4 ; =ov11_0213A40C
	mov r0, #4
	bl PXI_SetFifoRecvCallback
	mov r0, r5, lsl #0x10
	mov r8, r0, lsr #0x10
	mov r7, #0x40000
	mov sb, #1
_0213A298:
	mov r0, sb
	mov r1, r6
	mov r2, r8
	mov r3, r4
	bl ov11_02139DDC
	cmp r0, #1
	beq _0213A2C0
	mov r0, r7
	blx SVC_WaitByLoop
	b _0213A298
_0213A2C0:
	mov r0, r4
	mov r1, r5
	bl DC_InvalidateRange
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0213A2D4: .word ov11_0213A40C

	arm_func_start ov11_0213A2D8
ov11_0213A2D8: ; 0x0213A2D8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #4
	mov r4, #1
	arm_func_end ov11_0213A2D8
_0213A2F0:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _0213A2F0
	ldr r1, _0213A350 ; =ov11_0213A40C
	mov r0, #4
	bl PXI_SetFifoRecvCallback
	mov r0, r6
	mov r1, r7
	bl DC_StoreRange
	mov r4, #0x40000
	mov r5, #2
_0213A324:
	mov r0, r5
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl ov11_02139DDC
	cmp r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	blx SVC_WaitByLoop
	b _0213A324
_0213A34C:
	.byte 0xF0, 0x81, 0xBD, 0xE8
_0213A350: .word ov11_0213A40C

	arm_func_start ov11_0213A354
ov11_0213A354: ; 0x0213A354
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r4, r3
	mov r6, r0
	mov r0, r1
	mov r1, r5
	mov r2, r4
	bl ov11_0213A248
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_0213A354

	arm_func_start ov11_0213A3A0
ov11_0213A3A0: ; 0x0213A3A0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, #4
	mov r4, #1
	arm_func_end ov11_0213A3A0
_0213A3AC:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _0213A3AC
	ldr r1, _0213A408 ; =ov11_0213A40C
	mov r0, #4
	bl PXI_SetFifoRecvCallback
	mov r4, #0x40000
	mov r6, #7
	mov r5, #0
_0213A3D8:
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r5
	bl ov11_02139DDC
	cmp r0, #1
	beq _0213A400
	mov r0, r4
	blx SVC_WaitByLoop
	b _0213A3D8
_0213A400:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0213A408: .word ov11_0213A40C

	arm_func_start ov11_0213A40C
ov11_0213A40C: ; 0x0213A40C
	ldr r0, _0213A438 ; =OVERLAY11_BSS_02169D60
	and r1, r1, #0xff
	strh r1, [r0]
	mov r1, #1
	str r1, [r0, #4]
	cmp r2, #0
	movne r1, #0xff
	strneh r1, [r0]
	ldr r0, _0213A438 ; =OVERLAY11_BSS_02169D60
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_0213A438: .word OVERLAY11_BSS_02169D60
	arm_func_end ov11_0213A40C

	arm_func_start DWCi_BACKUPlConvWifiInfo
DWCi_BACKUPlConvWifiInfo: ; 0x0213A43C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r3, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r1, _0213A4F0 ; =OVERLAY11_BSS_02169D6C
	str r2, [sp, #4]
	str r3, [sp]
	mov r2, #5
	bl MI_CpuCopy8
	ldr r2, [sp]
	ldr r1, [sp, #4]
	mov ip, r2, lsr #5
	ldr lr, [r4, #4]
	mov r3, r1, lsr #5
	orr ip, ip, r1, lsl #27
	mov r0, #7
	and r1, r0, lr, lsr #8
	and r0, r2, #0x1f
	orr lr, r1, r0, lsl #3
	ldr r2, _0213A4F0 ; =OVERLAY11_BSS_02169D6C
	ldr r1, _0213A4F4 ; =OVERLAY11_BSS_02169D72
	strb lr, [r2, #5]
	add r0, sp, #0
	str ip, [sp]
	str r3, [sp, #4]
	mov r2, #4
	bl MI_CpuCopy8
	ldrh r0, [r4, #0x10]
	ldr r1, [sp, #4]
	ldr r3, _0213A4F0 ; =OVERLAY11_BSS_02169D6C
	and r1, r1, #0x3f
	mov r0, r0, lsl #0x1e
	orr r0, r1, r0, lsr #24
	strb r0, [r3, #0xa]
	ldrh r2, [r4, #0x10]
	add r0, r4, #0x12
	ldr r1, _0213A4F8 ; =OVERLAY11_BSS_02169D78
	mov r4, r2, asr #2
	mov r2, #2
	strb r4, [r3, #0xb]
	bl MI_CpuCopy8
	ldr r0, _0213A4F0 ; =OVERLAY11_BSS_02169D6C
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213A4F0: .word OVERLAY11_BSS_02169D6C
_0213A4F4: .word OVERLAY11_BSS_02169D72
_0213A4F8: .word OVERLAY11_BSS_02169D78
	arm_func_end DWCi_BACKUPlConvWifiInfo

	arm_func_start DWCi_BACKUPlGetWifi
DWCi_BACKUPlGetWifi: ; 0x0213A4FC
	ldr r0, _0213A504 ; =OVERLAY11_BSS_02169D6C
	bx lr
	.align 2, 0
_0213A504: .word OVERLAY11_BSS_02169D6C
	arm_func_end DWCi_BACKUPlGetWifi

	arm_func_start DWC_BM_Init
DWC_BM_Init: ; 0x0213A508
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov r8, r0
	mov r1, #0
	mov r2, #0x700
	bl MI_CpuFill8
	mov r0, r8
	bl ov11_02139AF4
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _0213A7FC ; =0xFFFFD8EF
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _0213A800 ; =0x0000A001
	add r0, r8, #0x500
	bl MATHi_CRC16InitTableRev
	mov r0, r8
	bl DWCi_BACKUPlRead
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _0213A7FC ; =0xFFFFD8EF
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	mov r6, r8
	mov r7, r8
	mov r5, #0
	mov sl, #1
	add sb, sp, #0
	mov r4, #0xfe
	arm_func_end DWC_BM_Init
_0213A584:
	mov r1, r6
	mov r2, r4
	add r0, r8, #0x500
	bl MATH_CalcCRC16
	add r1, r8, r5, lsl #8
	ldrh r1, [r1, #0xfe]
	cmp r0, r1
	bne _0213A5B4
	mov r0, r7
	bl ov11_0213A810
	cmp r0, #0
	strne sl, [sb, r5, lsl #2]
_0213A5B4:
	add r5, r5, #1
	cmp r5, #3
	add r6, r6, #0x100
	add r7, r7, #0x100
	blt _0213A584
	add r0, r8, #0x500
	add r1, r8, #0x300
	mov r2, #0xfe
	bl MATH_CalcCRC16
	add r1, r8, #0x300
	ldrh r1, [r1, #0xfe]
	cmp r0, r1
	moveq r0, #1
	ldr r1, [sp]
	streq r0, [sp, #0xc]
	cmp r1, #0
	ldrne r0, [sp, #4]
	cmpne r0, #0
	ldrne r0, [sp, #8]
	cmpne r0, #0
	ldrne r0, [sp, #0xc]
	cmpne r0, #0
	beq _0213A624
	add r0, r8, #0xf0
	bl ov11_02139C80
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0213A624:
	cmp r1, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	ldreq r0, [sp, #0xc]
	cmpeq r0, #0
	bne _0213A668
	mov r0, r8
	bl ov11_0213A910
	mov r0, r8
	bl ov11_02139BEC
	cmp r0, #0
	movne r0, #0
	add sp, sp, #0x10
	ldreq r0, _0213A804 ; =0xFFFFD8F0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0213A668:
	cmp r1, #0
	ldrne r0, [sp, #4]
	cmpne r0, #0
	bne _0213A6B0
	ldr r0, [sp, #8]
	cmp r0, #0
	ldrne r0, [sp, #0xc]
	cmpne r0, #0
	bne _0213A6B0
	mov r0, r8
	bl ov11_0213A910
	mov r0, r8
	bl ov11_02139BEC
	cmp r0, #0
	movne r0, #0
	add sp, sp, #0x10
	ldreq r0, _0213A804 ; =0xFFFFD8F0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0213A6B0:
	cmp r1, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	bne _0213A6E4
	mov r0, r8
	bl ov11_0213A910
	mov r0, r8
	bl ov11_02139BEC
	cmp r0, #0
	ldrne r0, _0213A808 ; =0xFFFFD8ED
	add sp, sp, #0x10
	ldreq r0, _0213A804 ; =0xFFFFD8F0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0213A6E4:
	cmp r1, #0
	bne _0213A714
	mov r0, r8
	mov r1, #0
	bl ov11_0213A990
	add r0, r8, #0x1f0
	add r1, r8, #0xf0
	mov r2, #0xe
	bl MI_CpuCopy8
	ldrb r0, [r8, #0x1ef]
	strb r0, [r8, #0xef]
	b _0213A744
_0213A714:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0213A744
	mov r0, r8
	mov r1, #1
	bl ov11_0213A990
	add r0, r8, #0xf0
	add r1, r8, #0x1f0
	mov r2, #0xe
	bl MI_CpuCopy8
	ldrb r0, [r8, #0xef]
	strb r0, [r8, #0x1ef]
_0213A744:
	add r0, r8, #0xf0
	bl ov11_02139C80
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0213A764
	mov r0, r8
	mov r1, #2
	bl ov11_0213A990
_0213A764:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0213A780
	add r1, r8, #0x300
	mov r0, #0
	mov r2, #0x100
	bl MIi_CpuClear16
_0213A780:
	mov r4, #0
	mov r5, r4
	mov r2, #1
	add r3, sp, #0
_0213A790:
	ldr r0, [r3, r5, lsl #2]
	cmp r0, #0
	bne _0213A7C4
	ldrb r0, [r8, #0xef]
	tst r0, r2, lsl r5
	beq _0213A7C4
	mov r1, r0
	mvn r0, r2, lsl r5
	and r0, r1, r0
	strb r0, [r8, #0xef]
	and r0, r0, #0xff
	mov r4, r2
	strb r0, [r8, #0x1ef]
_0213A7C4:
	add r5, r5, #1
	cmp r5, #3
	blt _0213A790
	mov r0, r8
	bl ov11_02139BEC
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _0213A804 ; =0xFFFFD8F0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r4, #0
	ldrne r0, _0213A80C ; =0xFFFFD8EE
	moveq r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0213A7FC: .word 0xFFFFD8EF
_0213A800: .word 0x0000A001
_0213A804: .word 0xFFFFD8F0
_0213A808: .word 0xFFFFD8ED
_0213A80C: .word 0xFFFFD8EE

	arm_func_start ov11_0213A810
ov11_0213A810: ; 0x0213A810
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrb r0, [r4, #0xe7]
	cmp r0, #0xff
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r3, r4, pc}
	cmp r0, #2
	addhi sp, sp, #4
	movhi r0, #0
	ldmhiia sp!, {r3, r4, pc}
	add r0, r4, #0x40
	bl ov11_02139D0C
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldr r1, _0213A90C ; =DAT_overlay_11_02162bfc
	add r0, r4, #0xc0
	mov r2, #4
	bl memcmp
	cmp r0, #0
	beq _0213A8C0
	add r0, r4, #0xc4
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldrb r0, [r4, #0xd0]
	cmp r0, #0x20
	addhi sp, sp, #4
	movhi r0, #0
	ldmhiia sp!, {r3, r4, pc}
	add r1, sp, #0
	bl DWCi_BACKUPlConvMaskAddr
	add r1, sp, #0
	add r0, r4, #0xc0
	bl DWC_BACKUPlCheckIp
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	arm_func_end ov11_0213A810
_0213A8C0:
	ldr r1, _0213A90C ; =DAT_overlay_11_02162bfc
	add r0, r4, #0xc8
	mov r2, #4
	bl memcmp
	cmp r0, #0
	beq _0213A900
	add r0, r4, #0xc8
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	bne _0213A900
	add r0, r4, #0xcc
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
_0213A900:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0213A90C: .word DAT_overlay_11_02162bfc

	arm_func_start ov11_0213A910
ov11_0213A910: ; 0x0213A910
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r7, r0
	mov r1, r7
	mov r0, #0
	mov r2, #0x400
	bl MIi_CpuClear16
	mov r2, #0
	mov r1, #0xff
	arm_func_end ov11_0213A910
_0213A934:
	add r0, r7, r2, lsl #8
	add r2, r2, #1
	strb r1, [r0, #0xe7]
	cmp r2, #3
	blt _0213A934
	add r0, sp, #0
	bl DWCi_AUTH_GetNewWiFiInfo
	add r0, sp, #0
	bl DWCi_BACKUPlConvWifiInfo
	mov r5, r0
	mov r6, #0
	mov r4, #0xe
_0213A964:
	mov r0, r5
	mov r2, r4
	add r1, r7, #0xf0
	bl MI_CpuCopy8
	add r6, r6, #1
	cmp r6, #2
	add r7, r7, #0x100
	blt _0213A964
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start ov11_0213A990
ov11_0213A990: ; 0x0213A990
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r1, r5, r4, lsl #8
	mov r0, #0
	mov r2, #0x100
	bl MIi_CpuClear16
	add r0, r5, r4, lsl #8
	mov r1, #0xff
	strb r1, [r0, #0xe7]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_0213A990

	arm_func_start ov11_0213A9BC
ov11_0213A9BC: ; 0x0213A9BC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r4, _0213AB34 ; =0x0000FFFF
	mov lr, #0
	and ip, lr, #0
	add r5, r4, #0xff0000
	and r2, r2, #1
	mov r6, ip, lsl #2
	and r3, r3, #3
	and r5, r1, r5
	orr r1, r3, r2, lsl #2
	orr r6, r6, r2, lsr #30
	mov r7, ip, lsl #3
	and r2, r0, r4
	orr r0, r1, r5, lsl #3
	orr r1, r0, r2, lsl #27
	mov r3, ip, lsl #0x1b
	orr r3, r3, r2, lsr #5
	orr r7, r7, r5, lsr #29
	orr r0, ip, r6
	orr r0, r7, r0
	orr r0, r3, r0
	add r2, sp, #8
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	arm_func_end ov11_0213A9BC
_0213AA20:
	ldrb r0, [r2]
	add lr, lr, #1
	cmp lr, #6
	eor r0, r0, #0xd6
	strb r0, [r2], #1
	blt _0213AA20
	ldr r2, _0213AB38 ; =DAT_overlay_11_02162c08
	add r4, sp, #8
	mov r5, #0
_0213AA44:
	ldrb r3, [r4]
	add r5, r5, #1
	cmp r5, #5
	mov r0, r3, asr #4
	and r1, r0, #0xf
	and r0, r3, #0xf
	ldrb r1, [r2, r1]
	ldrb r0, [r2, r0]
	orr r0, r0, r1, lsl #4
	strb r0, [r4], #1
	blt _0213AA44
	add r0, sp, #8
	add r1, sp, #0
	mov r2, #8
	bl MI_CpuCopy8
	ldr r4, _0213AB3C ; =DAT_overlay_11_02162c00
	add r3, sp, #0
	mov r5, #0
	add r0, sp, #8
_0213AA90:
	ldrb r2, [r3], #1
	ldrb r1, [r4], #1
	add r5, r5, #1
	cmp r5, #5
	strb r2, [r0, r1]
	blt _0213AA90
	ldrb r2, [sp, #0xd]
	mov r1, #0
	ldr r3, [sp, #8]
	and r2, r2, #7
	strb r1, [sp, #0xf]
	strb r1, [sp, #0xe]
	strb r2, [sp, #0xd]
	ldr r2, [sp, #0xc]
	mov r4, r3, lsl #1
	mov r2, r2, lsl #1
	orr r2, r2, r3, lsr #31
	str r2, [sp, #0xc]
	ldrb r2, [sp, #0xd]
	str r4, [sp, #8]
	ldrb r3, [sp, #8]
	mov r2, r2, asr #3
	and r2, r2, #1
	orr r2, r3, r2
	strb r2, [sp, #8]
_0213AAF4:
	ldrb r2, [r0]
	add r1, r1, #1
	cmp r1, #6
	eor r2, r2, #0x67
	strb r2, [r0], #1
	blt _0213AAF4
	ldrb r0, [sp, #0xd]
	mov r1, #0
	strb r1, [sp, #0xf]
	and r0, r0, #7
	strb r1, [sp, #0xe]
	strb r0, [sp, #0xd]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0213AB34: .word 0x0000FFFF
_0213AB38: .word DAT_overlay_11_02162c08
_0213AB3C: .word DAT_overlay_11_02162c00

	arm_func_start DWCi_AUTH_GetNewWiFiInfo
DWCi_AUTH_GetNewWiFiInfo: ; 0x0213AB40
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov sl, r0
	bl DWCi_BM_GetWiFiInfo
	bl RTC_Init
	add r0, sp, #0x14
	bl RTC_GetDate
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #8
	bl RTC_GetTime
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #0x14
	add r1, sp, #8
	bl RTC_ConvertDateTimeToSecond
	mov r4, r0
	mov r0, #0
	subs r2, r4, r0
	sbcs r2, r1, r0
	addlt sp, sp, #0x24
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl OS_IsTickAvailable
	cmp r0, #0
	beq _0213ABBC
	ldr r0, _0213AD0C ; =FUN_020668E8
	adds r4, r4, r0
	arm_func_end DWCi_AUTH_GetNewWiFiInfo
_0213ABBC:
	add r0, sp, #0
	bl OS_GetMacAddress
	ldrb r0, [sp, #1]
	ldr r5, _0213AD10 ; =0x5D588B65
	ldr r6, _0213AD14 ; =0x00269EC3
	ldrb r1, [sp]
	mla sb, r4, r5, r6
	mov r0, r0, lsl #8
	orr r1, r0, r1, lsl #16
	ldrb r2, [sp, #2]
	ldr r0, _0213AD18 ; =0x000009BF
	ldrb r7, [sp, #4]
	orr r1, r2, r1
	cmp r1, r0
	mov r2, sb, lsr #0x10
	mov r0, #0x3e8
	mul r3, r2, r0
	mov r2, r3, lsr #0x10
	movne r1, #1
	ldrb r0, [sp, #5]
	ldrb r4, [sp, #3]
	mov r3, r7, lsl #8
	moveq r1, #0
	orr r4, r3, r4, lsl #16
	strh r2, [sl, #0x10]
	mov r3, #0
	str r3, [sl]
	str r3, [sl, #4]
	ldrh r2, [sl, #0x12]
	and r7, r1, #0xff
	orr r8, r0, r4
	str r3, [sl, #8]
	cmp r2, #0
	str r3, [sl, #0xc]
	bne _0213ACAC
	ldr r0, [sl, #8]
	cmp r3, r3
	cmpeq r0, r3
	bne _0213AD00
	mov fp, r3
	mov r4, r3
_0213AC60:
	mul r0, sb, r5
	adds sb, r0, r6
	bne _0213AC78
_0213AC6C:
	mul r0, sb, r5
	adds sb, r0, r6
	beq _0213AC6C
_0213AC78:
	strh sb, [sl, #0x12]
	ldrh r0, [sl, #0x12]
	mov r1, r8
	mov r2, r7
	mov r3, #0
	bl ov11_0213A9BC
	str r0, [sl, #8]
	str r1, [sl, #0xc]
	ldr r0, [sl, #8]
	cmp r1, fp
	cmpeq r0, r4
	beq _0213AC60
	b _0213AD00
_0213ACAC:
	ldr r0, [sl, #8]
	cmp r3, r3
	cmpeq r0, r3
	bne _0213AD00
	mov r6, r3
	mov r5, r3
	mov r4, r3
_0213ACC8:
	ldrh r0, [sl, #0x12]
	mov r1, r8
	mov r2, r7
	add r0, r0, #1
	strh r0, [sl, #0x12]
	ldrh r0, [sl, #0x12]
	mov r3, r6
	bl ov11_0213A9BC
	str r0, [sl, #8]
	str r1, [sl, #0xc]
	ldr r0, [sl, #8]
	cmp r1, r5
	cmpeq r0, r4
	beq _0213ACC8
_0213AD00:
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0213AD0C: .word OS_GetTick
_0213AD10: .word 0x5D588B65
_0213AD14: .word 0x00269EC3
_0213AD18: .word 0x000009BF

	arm_func_start DWCi_AUTH_MakeWiFiID
DWCi_AUTH_MakeWiFiID: ; 0x0213AD1C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, sp, #0
	bl DWCi_AUTH_GetNewWiFiInfo
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	add r0, sp, #0
	mov r1, r4
	bl ov11_02139A18
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end DWCi_AUTH_MakeWiFiID

	arm_func_start DWCi_AUTH_UpDateWiFiID
DWCi_AUTH_UpDateWiFiID: ; 0x0213AD60
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r0, sp, #0
	mov r4, r1
	bl DWCi_BM_GetWiFiInfo
	add ip, r5, #8
	ldmia ip, {r2, r3}
	stmia r5, {r2, r3}
	add r1, sp, #8
	ldmia r1, {r2, r3}
	mov r0, r5
	mov r1, r4
	stmia ip, {r2, r3}
	bl ov11_02139A18
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	arm_func_end DWCi_AUTH_UpDateWiFiID

	arm_func_start DWCi_AUTH_RemakeWiFiID
DWCi_AUTH_RemakeWiFiID: ; 0x0213ADB0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	add r2, sp, #0
	mov r1, #0
	mov sl, r0
	strb r1, [r2]
	strb r1, [r2, #1]
	strb r1, [r2, #2]
	strb r1, [r2, #3]
	strb r1, [r2, #4]
	strb r1, [r2, #5]
	bl DWCi_BM_GetWiFiInfo
	bl RTC_Init
	add r0, sp, #0x14
	bl RTC_GetDate
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #8
	bl RTC_GetTime
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #0x14
	add r1, sp, #8
	bl RTC_ConvertDateTimeToSecond
	mov r4, r0
	mov r0, #0
	subs r2, r4, r0
	sbcs r2, r1, r0
	addlt sp, sp, #0x24
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl OS_IsTickAvailable
	cmp r0, #0
	beq _0213AE4C
	ldr r0, _0213AF40 ; =FUN_020668E8
	adds r4, r4, r0
	arm_func_end DWCi_AUTH_RemakeWiFiID
_0213AE4C:
	add r0, sp, #0
	bl OS_GetMacAddress
	ldrb r0, [sp, #1]
	ldr r5, _0213AF44 ; =0x5D588B65
	ldr r6, _0213AF48 ; =0x00269EC3
	ldrb r1, [sp]
	mov r0, r0, lsl #8
	mla sb, r4, r5, r6
	orr r1, r0, r1, lsl #16
	ldrb r2, [sp, #2]
	ldr r0, _0213AF4C ; =0x000009BF
	ldrb r7, [sp, #4]
	orr r1, r2, r1
	cmp r1, r0
	movne r1, #1
	mov r2, sb, lsr #0x10
	mov r0, #0x3e8
	mul r4, r2, r0
	mov r2, r4, lsr #0x10
	ldrb r0, [sp, #5]
	ldrb r8, [sp, #3]
	mov r4, r7, lsl #8
	moveq r1, #0
	mov r3, #0
	strh r2, [sl, #0x10]
	str r3, [sl, #8]
	str r3, [sl, #0xc]
	orr r4, r4, r8, lsl #16
	ldr r2, [sl, #8]
	cmp r3, #0
	cmpeq r2, #0
	and r7, r1, #0xff
	orr r8, r0, r4
	bne _0213AF34
	mov fp, r3
	mov r4, r3
_0213AEDC:
	mla sb, r5, sb, r6
	b _0213AEE8
_0213AEE4:
	mla sb, r5, sb, r6
_0213AEE8:
	cmp sb, #0
	beq _0213AEE4
	ldrh r2, [sl, #0x12]
	mov r0, sb, lsl #0x10
	mov r1, r0, lsr #0x10
	cmp r2, r0, lsr #16
	beq _0213AEE4
	strh r1, [sl, #0x12]
	ldrh r0, [sl, #0x12]
	mov r1, r8
	mov r2, r7
	mov r3, #0
	bl ov11_0213A9BC
	str r0, [sl, #8]
	str r1, [sl, #0xc]
	ldr r0, [sl, #8]
	cmp r1, fp
	cmpeq r0, r4
	beq _0213AEDC
_0213AF34:
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0213AF40: .word OS_GetTick
_0213AF44: .word 0x5D588B65
_0213AF48: .word 0x00269EC3
_0213AF4C: .word 0x000009BF

	arm_func_start DWC_Auth_CheckWiFiIDNeedCreate
DWC_Auth_CheckWiFiIDNeedCreate: ; 0x0213AF50
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	add r0, sp, #0
	bl DWCi_BM_GetWiFiInfo
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	cmp r0, #0
	cmpeq r1, #0
	mov r0, #0
	bne _0213AF94
	ldr r1, [sp, #4]
	ldr r2, [sp]
	cmp r1, r0
	cmpeq r2, r0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqia sp!, {pc}
	arm_func_end DWC_Auth_CheckWiFiIDNeedCreate
_0213AF94:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {pc}

    .rodata

    .global DAT_overlay_11_02162bfc
DAT_overlay_11_02162bfc: ; 0x02162BFC
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02162c00
DAT_overlay_11_02162c00: ; 0x02162C00
	.byte 0x01

    .global DAT_overlay_11_02162c01
DAT_overlay_11_02162c01: ; 0x02162C01
	.byte 0x02, 0x00, 0x04, 0x03, 0x05, 0x06, 0x07

    .global DAT_overlay_11_02162c08
DAT_overlay_11_02162c08: ; 0x02162C08
	.byte 0x05, 0x09, 0x01, 0x0E, 0x0C, 0x02, 0x0A, 0x00
	.byte 0x0B, 0x0D, 0x03, 0x04, 0x08, 0x06, 0x0F, 0x07

    .bss

    .global OVERLAY11_BSS_02169D60
OVERLAY11_BSS_02169D60: ; 0x02169D60
    .space 0xC

    .global OVERLAY11_BSS_02169D6C
OVERLAY11_BSS_02169D6C: ; 0x02169D6C
    .space 0x5

    .global OVERLAY11_BSS_02169D71
OVERLAY11_BSS_02169D71: ; 0x02169D71
    .space 0x1

    .global OVERLAY11_BSS_02169D72
OVERLAY11_BSS_02169D72: ; 0x02169D72
    .space 0x4

    .global OVERLAY11_BSS_02169D76
OVERLAY11_BSS_02169D76: ; 0x02169D76
    .space 0x2

    .global OVERLAY11_BSS_02169D78
OVERLAY11_BSS_02169D78: ; 0x02169D78
    .space 0x8

    .global OVERLAY11_BSS_02169D80
OVERLAY11_BSS_02169D80: ; 0x02169D80
    .space 0x20
