    .include "macros.inc"
    .include "include/arm9.inc"
    .include "include/arm9_02001294.inc"

    .text

	arm_func_start InitBlankInterrupts
InitBlankInterrupts: ; 0x02001294
	stmdb sp!, {r3, lr}
	ldr r1, _020012E4 ; =VBlankIntr
	mov r0, #1
	bl OS_SetIrqFunction
	mov r0, #1
	bl OS_EnableIrqMask
	mov r0, #1
	bl GX_VBlankIntr
	ldr r1, _020012E8 ; =HBlankIntr
	mov r0, #2
	bl OS_SetIrqFunction
	mov r0, #2
	bl OS_EnableIrqMask
	mov r0, #1
	bl GX_HBlankIntr
	ldr r2, _020012EC ; =0x04000208
	mov r0, #1
	ldrh r1, [r2]
	strh r0, [r2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_020012E4: .word VBlankIntr
_020012E8: .word HBlankIntr
_020012EC: .word 0x04000208
	arm_func_end InitBlankInterrupts

	arm_func_start VBlankIntr
VBlankIntr: ; 0x020012F0
	stmdb sp!, {r4, lr}
	ldr r2, _02001354 ; =0x04000208
	mov r1, #1
	ldrh r4, [r2]
	ldr r0, _02001358 ; =MAIN_BSS_0208F300
	strh r1, [r2]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02001318
	bl sub_0201002C
	arm_func_end VBlankIntr
_02001318:
	ldr r2, _02001354 ; =0x04000208
	cmp r4, #0
	ldreqh r1, [r2]
	moveq r0, #0
	streqh r0, [r2]
	beq _0200133C
	ldrh r1, [r2]
	mov r0, #1
	strh r0, [r2]
_0200133C:
	ldr r0, _0200135C ; =OS_IRQTable
	add r0, r0, #0x3000
	ldr r1, [r0, #0xff8]
	orr r1, r1, #1
	str r1, [r0, #0xff8]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02001354: .word 0x04000208
_02001358: .word MAIN_BSS_0208F300
_0200135C: .word OS_IRQTable

	arm_func_start HBlankIntr
HBlankIntr: ; 0x02001360
	stmdb sp!, {r3, lr}
	ldr r0, _02001444 ; =0x04000006
	ldrh r0, [r0]
	cmp r0, #0xbf
	bge _0200142C
	ldr r1, _02001448 ; =MAIN_BSS_0208F300
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _0200142C
	add r1, r1, #0x1000
	ldr lr, [r1, #0x4c4]
	ldrh r1, [lr]
	tst r1, #8
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _020013D4
	ldrb ip, [lr, #0x1c]
	ldr r1, _0200144C ; =0x0000020E
	ldr r2, _02001450 ; =0x04000004
	mla r3, ip, r1, lr
	add r1, r0, #1
	ldrh r2, [r2]
	add r1, r3, r1, lsl #1
	add r1, r1, #0x800
	tst r2, #2
	ldrh r2, [r1, #0x60]
	ldrne r1, [lr, #0x20]
	strneh r2, [r1]
	arm_func_end HBlankIntr
_020013D4:
	ldr r1, _02001448 ; =MAIN_BSS_0208F300
	ldr r1, [r1, #4]
	add r1, r1, #0x1000
	ldr lr, [r1, #0x4c8]
	ldrh r1, [lr]
	tst r1, #8
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _0200142C
	ldrb ip, [lr, #0x1c]
	ldr r1, _0200144C ; =0x0000020E
	ldr r2, _02001450 ; =0x04000004
	mla r3, ip, r1, lr
	add r0, r0, #1
	ldrh r1, [r2]
	add r0, r3, r0, lsl #1
	add r0, r0, #0x800
	tst r1, #2
	ldrh r1, [r0, #0x60]
	ldrne r0, [lr, #0x20]
	strneh r1, [r0]
_0200142C:
	ldr r0, _02001454 ; =OS_IRQTable
	add r0, r0, #0x3000
	ldr r1, [r0, #0xff8]
	orr r1, r1, #2
	str r1, [r0, #0xff8]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02001444: .word 0x04000006
_02001448: .word MAIN_BSS_0208F300
_0200144C: .word 0x0000020E
_02001450: .word 0x04000004
_02001454: .word OS_IRQTable

	arm_func_start _Znwm
_Znwm: ; 0x02001458
	ldr ip, _02001460 ; =_Z10Heap_Allocm
	bx ip
	.align 2, 0
_02001460: .word _Z10Heap_Allocm
	arm_func_end _Znwm

	arm_func_start _Znam
_Znam: ; 0x02001464
	ldr ip, _0200146C ; =_Z10Heap_Allocm
	bx ip
	.align 2, 0
_0200146C: .word _Z10Heap_Allocm
	arm_func_end _Znam

	arm_func_start _ZdlPv
_ZdlPv: ; 0x02001470
	ldr ip, _02001478 ; =_Z9Heap_FreePv
	bx ip
	.align 2, 0
_02001478: .word _Z9Heap_FreePv
	arm_func_end _ZdlPv

	arm_func_start _ZdaPv
_ZdaPv: ; 0x0200147C
	ldr ip, _02001484 ; =_Z9Heap_FreePv
	bx ip
	.align 2, 0
_02001484: .word _Z9Heap_FreePv
	arm_func_end _ZdaPv

	arm_func_start Overlay_LoadByID
Overlay_LoadByID: ; 0x02001488
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x2c
	ldr r2, _02001560 ; =currentOverlayID
	mov r4, r1
	ldr r1, [r2]
	mov r5, r0
	cmp r5, r1
	mov r0, #1
	beq _020014EC
	sub r0, r0, #2
	cmp r1, r0
	beq _020014CC
	mov r0, #0
	bl FS_UnloadOverlay
	ldr r0, _02001560 ; =currentOverlayID
	mvn r1, #0
	str r1, [r0]
	arm_func_end Overlay_LoadByID
_020014CC:
	mvn r0, #0
	bl FS_SetDefaultDMA
	mov r1, r5
	mov r0, #0
	bl FS_LoadOverlay
	cmp r0, #0
	ldrne r1, _02001560 ; =currentOverlayID
	strne r5, [r1]
_020014EC:
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, pc}
	add r0, sp, #0
	mov r2, r5
	mov r1, #0
	bl FS_LoadOverlayInfo
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #4]
	add r0, r1, r0
	add r0, r2, r0
	add r0, r0, #0xf
	cmp r4, #0
	addeq sp, sp, #0x2c
	bic r0, r0, #0xf
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, _02001564 ; =0x0217B3A0
	sub r1, r1, r0
	bic r1, r1, #0x7f
	cmp r1, #0
	addle sp, sp, #0x2c
	ldmleia sp!, {r4, r5, pc}
	bl _Z18Heap_InitTemporaryPvm
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02001560: .word currentOverlayID
_02001564: .word 0x0217B3A0

	arm_func_start Scene_LoadByID
Scene_LoadByID: ; 0x02001568
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl _Z21Heap_DestroyTemporaryv
	cmp r4, #0x21
	addls pc, pc, r4, lsl #2
	b _02001B54
_02001584: ; jump table
	b _0200160C ; case 0
	b _02001638 ; case 1
	b _02001668 ; case 2
	b _020017F4 ; case 3
	b _02001820 ; case 4
	b _0200184C ; case 5
	b _02001878 ; case 6
	b _02001694 ; case 7
	b _0200179C ; case 8
	b _020017C8 ; case 9
	b _020016C0 ; case 10
	b _020016EC ; case 11
	b _02001B54 ; case 12
	b _0200179C ; case 13
	b _02001718 ; case 14
	b _02001744 ; case 15
	b _02001770 ; case 16
	b _020018A4 ; case 17
	b _020018CC ; case 18
	b _020018F4 ; case 19
	b _0200191C ; case 20
	b _02001944 ; case 21
	b _0200196C ; case 22
	b _02001994 ; case 23
	b _020019BC ; case 24
	b _020019E4 ; case 25
	b _02001A0C ; case 26
	b _02001A34 ; case 27
	b _02001A5C ; case 28
	b _02001A84 ; case 29
	b _02001AAC ; case 30
	b _02001AD4 ; case 31
	b _02001AFC ; case 32
	b _02001B28 ; case 33
	arm_func_end Scene_LoadByID
_0200160C:
	ldr r0, _02001B84 ; =0x00000001
	mov r1, #1
	bl Overlay_LoadByID
	ldr r0, _02001B88 ; =0x000012E8
	bl _Znwm
	movs r4, r0
	beq _02001B58
	mov r1, r5
	bl ov1_0211C9E0
	mov r4, r0
	b _02001B58
_02001638:
	ldr r0, _02001B8C ; =0x00000000
	mov r1, #0
	bl Overlay_LoadByID
	bl ov0_02124BD4
	mov r0, #0x154
	bl _Znwm
	movs r4, r0
	beq _02001B58
	mov r1, r5
	bl CFieldScene_ctor
	mov r4, r0
	b _02001B58
_02001668:
	ldr r0, _02001B90 ; =0x00000004
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0x30
	bl _Znwm
	movs r4, r0
	beq _02001B58
	mov r1, r5
	bl ov4_0211C9E0
	mov r4, r0
	b _02001B58
_02001694:
	ldr r0, _02001B94 ; =0x00000007
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0xc
	bl _Znwm
	movs r4, r0
	beq _02001B58
	mov r1, r5
	bl ov7_0211C9E0
	mov r4, r0
	b _02001B58
_020016C0:
	ldr r0, _02001B98 ; =0x00000008
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0xc
	bl _Znwm
	movs r4, r0
	beq _02001B58
	mov r1, r5
	bl ov8_0211C9E0
	mov r4, r0
	b _02001B58
_020016EC:
	ldr r0, _02001B9C ; =0x00000009
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0xc
	bl _Znwm
	movs r4, r0
	beq _02001B58
	mov r1, r5
	bl ov9_0211C9E0
	mov r4, r0
	b _02001B58
_02001718:
	ldr r0, _02001BA0 ; =0x00000003
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0x100
	bl _Znwm
	movs r4, r0
	beq _02001B58
	mov r1, r5
	bl ov3_0211C9E0
	mov r4, r0
	b _02001B58
_02001744:
	ldr r0, _02001BA0 ; =0x00000003
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0x3c
	bl _Znwm
	movs r4, r0
	beq _02001B58
	mov r1, r5
	bl ov3_02120ACC
	mov r4, r0
	b _02001B58
_02001770:
	ldr r0, _02001BA0 ; =0x00000003
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0x38
	bl _Znwm
	movs r4, r0
	beq _02001B58
	mov r1, r5
	bl ov3_0212144C
	mov r4, r0
	b _02001B58
_0200179C:
	ldr r0, _02001BA4 ; =0x0000000B
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0xc
	bl _Znwm
	movs r4, r0
	beq _02001B58
	mov r1, r5
	bl ov11_0211C9E0
	mov r4, r0
	b _02001B58
_020017C8:
	ldr r0, _02001BA4 ; =0x0000000B
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0xc
	bl _Znwm
	movs r4, r0
	beq _02001B58
	mov r1, r5
	bl ov11_0211DEF8
	mov r4, r0
	b _02001B58
_020017F4:
	ldr r0, _02001BA8 ; =0x00000005
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0x24
	bl _Znwm
	movs r4, r0
	beq _02001B58
	mov r1, r5
	bl ov5_0211C9E0
	mov r4, r0
	b _02001B58
_02001820:
	ldr r0, _02001BAC ; =0x00000006
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0x8c
	bl _Znwm
	movs r4, r0
	beq _02001B58
	mov r1, r5
	bl ov6_0211C9E0
	mov r4, r0
	b _02001B58
_0200184C:
	ldr r0, _02001BB0 ; =0x00000002
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #8
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl sub_02007C98
	ldr r0, CBattleToFieldScene_vtable_ptr ; =CBattleToFieldScene_vtable
	stmia r4, {r0, r5}
	b _02001B58
_02001878:
	ldr r0, _02001BB8 ; =0x0000000A
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #8
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl sub_02007C98
	ldr r0, CFieldToMenuScene_vtable_ptr ; =CFieldToMenuScene_vtable
	stmia r4, {r0, r5}
	b _02001B58
_020018A4:
	ldr r0, _02001BA4 ; =0x0000000B
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0x28
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl ov11_021319EC
	mov r4, r0
	b _02001B58
_020018CC:
	ldr r0, _02001BA0 ; =0x00000003
	mov r1, #0
	bl Overlay_LoadByID
	ldr r0, _02001BC0 ; =0x000014D4
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl ov3_0212404C
	mov r4, r0
	b _02001B58
_020018F4:
	ldr r0, _02001BC4 ; =0x00000013
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0x7c
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl ov19_0211C9E0
	mov r4, r0
	b _02001B58
_0200191C:
	ldr r0, _02001BA0 ; =0x00000003
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0x1e0
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl ov3_02121D28
	mov r4, r0
	b _02001B58
_02001944:
	ldr r0, _02001BC8 ; =0x00000014
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0x10
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl ov20_0211C9E0
	mov r4, r0
	b _02001B58
_0200196C:
	ldr r0, _02001BCC ; =0x00000015
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0x20
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl ov21_0211CA50
	mov r4, r0
	b _02001B58
_02001994:
	ldr r0, _02001BD0 ; =0x00000016
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0x3b0
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl ov22_0211C9E0
	mov r4, r0
	b _02001B58
_020019BC:
	ldr r0, _02001BD4 ; =0x00000017
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0x68
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl ov23_0211C9E0
	mov r4, r0
	b _02001B58
_020019E4:
	ldr r0, _02001BD8 ; =0x00000018
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0x14
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl ov24_0211C9E0
	mov r4, r0
	b _02001B58
_02001A0C:
	ldr r0, _02001BDC ; =0x00000019
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0x34
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl ov25_0211C9E0
	mov r4, r0
	b _02001B58
_02001A34:
	ldr r0, _02001BE0 ; =0x0000001A
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0x24
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl ov26_0211C9E0
	mov r4, r0
	b _02001B58
_02001A5C:
	mov r0, #0x14
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl sub_02007C98
	ldr r1, _02001BE4 ; =ptr_FUN_02043134_0208e154
	mov r0, #0
	stmia r4, {r1, r5}
	str r0, [r4, #0xc]
	b _02001B58
_02001A84:
	mov r0, #0x390
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl sub_02007C98
	ldr r1, _02001BE8 ; =ptr_FUN_020439d4_0208e1b0
	mov r0, #0
	stmia r4, {r1, r5}
	str r0, [r4, #0xc]
	b _02001B58
_02001AAC:
	mov r0, #0x14
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl sub_02007C98
	ldr r1, _02001BEC ; =ptr_FUN_02044154_0208e210
	mov r0, #0
	stmia r4, {r1, r5}
	str r0, [r4, #0xc]
	b _02001B58
_02001AD4:
	ldr r0, _02001BF0 ; =0x0000001B
	mov r1, #1
	bl Overlay_LoadByID
	ldr r0, _02001BF4 ; =0x00001664
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl ov27_0211C9E0
	mov r4, r0
	b _02001B58
_02001AFC:
	ldr r0, _02001BF8 ; =0x0000001C
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #0xc
	bl _Znwm
	movs r4, r0
	beq _02001B58
	mov r1, r5
	bl ov28_0211C9E0
	mov r4, r0
	b _02001B58
_02001B28:
	ldr r0, _02001BFC ; =0x0000001D
	mov r1, #1
	bl Overlay_LoadByID
	mov r0, #4
	bl _Znwm
	movs r4, r0
	beq _02001B58
	bl sub_02007C98
	ldr r0, CCardAccessErrorScene_vtable_ptr ; =CCardAccessErrorScene_vtable
	str r0, [r4]
	b _02001B58
_02001B54:
	mov r4, #0
_02001B58:
	mov r0, r4
	str r4, [r5, #0xc]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02001B84: .word 0x00000001
_02001B88: .word 0x000012E8
_02001B8C: .word 0x00000000
_02001B90: .word 0x00000004
_02001B94: .word 0x00000007
_02001B98: .word 0x00000008
_02001B9C: .word 0x00000009
_02001BA0: .word 0x00000003
_02001BA4: .word 0x0000000B
_02001BA8: .word 0x00000005
_02001BAC: .word 0x00000006
_02001BB0: .word 0x00000002
CBattleToFieldScene_vtable_ptr: .word CBattleToFieldScene_vtable
_02001BB8: .word 0x0000000A
CFieldToMenuScene_vtable_ptr: .word CFieldToMenuScene_vtable
_02001BC0: .word 0x000014D4
_02001BC4: .word 0x00000013
_02001BC8: .word 0x00000014
_02001BCC: .word 0x00000015
_02001BD0: .word 0x00000016
_02001BD4: .word 0x00000017
_02001BD8: .word 0x00000018
_02001BDC: .word 0x00000019
_02001BE0: .word 0x0000001A
_02001BE4: .word ptr_FUN_02043134_0208e154
_02001BE8: .word ptr_FUN_020439d4_0208e1b0
_02001BEC: .word ptr_FUN_02044154_0208e210
_02001BF0: .word 0x0000001B
_02001BF4: .word 0x00001664
_02001BF8: .word 0x0000001C
_02001BFC: .word 0x0000001D
CCardAccessErrorScene_vtable_ptr: .word CCardAccessErrorScene_vtable

	arm_func_start sub_02001C04
sub_02001C04: ; 0x02001C04
	mov r1, #0x18
	strb r1, [r0, #8]
	mov r1, #4
	strb r1, [r0, #9]
	mov r1, #0
	strb r1, [r0, #0x2a]
	bx lr
	arm_func_end sub_02001C04
