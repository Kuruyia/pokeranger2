    .include "macros.inc"
    .include "include/arm9_0200FA0C.inc"

    .text

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

	arm_func_start sub_0200FA58
sub_0200FA58: ; 0x0200FA58
	bx lr
	arm_func_end sub_0200FA58

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

	arm_func_start _ZN5CGame12sub_0200FB28Ev
_ZN5CGame12sub_0200FB28Ev: ; 0x0200FB28
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
	arm_func_end _ZN5CGame12sub_0200FB28Ev

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
	bl _ZN17UnkClass_020091E8C1Ev
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

	arm_func_start _ZN5CGame12sub_020100E4EPFvvEm
_ZN5CGame12sub_020100E4EPFvvEm: ; 0x020100E4
	stmdb sp!, {r3, lr}
	mov lr, #0
	arm_func_end _ZN5CGame12sub_020100E4EPFvvEm
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
	bl _ZN17UnkClass_020091E812sub_0200A118Ev
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
