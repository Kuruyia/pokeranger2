    .include "macros.inc"
    .include "include/arm9.inc"
    .include "include/arm9_02001488.inc"

    .text

	arm_func_start Scene_LoadByID
Scene_LoadByID: ; 0x02001568
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl _Z19Heap_DestroyOverlayv
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
	bl _Z16Overlay_LoadByIDmi
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
