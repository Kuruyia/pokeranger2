    .include "macros.inc"
    .include "include/arm9_02004A04.inc"

    .text

	arm_func_start _ZN16CPrimitiveSPHERE6RenderEP21CPrimitive_Render_arg
_ZN16CPrimitiveSPHERE6RenderEP21CPrimitive_Render_arg: ; 0x02004A04
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
	arm_func_end _ZN16CPrimitiveSPHERE6RenderEP21CPrimitive_Render_arg
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
