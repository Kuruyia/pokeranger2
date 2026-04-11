#include "sub_02001248.hpp"

#include <nitro.h>

#include "UnkClass_0200E330.hpp"
#include "UnkClass_0208F300.hpp"
#include "heap.hpp"
#include "sub_0204436C.hpp"
#include "sub_02044440.hpp"
#include "sub_02046D40.hpp"

extern "C" {
void sub_0201002C(void);

extern UnkClass_0208F300 MAIN_BSS_0208F300;
}

static void VBlankIntr(void);
static void HBlankIntr(void);

void sub_02001248(void)
{
    OS_Init();
    FX_Init();
    OS_InitTick();
    FS_Init(2);
    GX_Init();
    G3X_Init();
    RTC_Init();
    Heap_Init(0xB0000);
    sub_0204436C();
    sub_02044440();
    sub_02046D40(Heap_Alloc, Heap_Free);
}

void SetupInterrupts(void)
{
    OS_SetIrqFunction(OS_IE_V_BLANK, VBlankIntr);
    OS_EnableIrqMask(OS_IE_V_BLANK);
    GX_VBlankIntr(TRUE);

    OS_SetIrqFunction(OS_IE_H_BLANK, HBlankIntr);
    OS_EnableIrqMask(OS_IE_H_BLANK);
    GX_HBlankIntr(TRUE);

    OS_EnableIrq();
}

void VBlankIntr(void)
{
    u16 wasIrqEnabled = OS_EnableIrq();

    if (MAIN_BSS_0208F300.game != NULL) {
        sub_0201002C();
    }

    if (wasIrqEnabled) {
        OS_EnableIrq();
    } else {
        OS_DisableIrq();
    }

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

void inline HBlankIntr_1(s32 vcount, UnkClass_0200E330 *arg1)
{
    if (arg1->func0()) {
        u32 idx = vcount + 1;
        u16 v13 = arg1->unk_0860[arg1->unk_001C][idx];

        if (GX_IsHBlank()) {
            *arg1->unk_0020 = v13;
        }
    }
}

void HBlankIntr(void)
{
    s32 vcount = GX_GetVCount();

    if (vcount < GX_LCD_SIZE_Y - 1 && MAIN_BSS_0208F300.game != NULL) {
        HBlankIntr_1(vcount, MAIN_BSS_0208F300.game->unk_14C4);
        HBlankIntr_1(vcount, MAIN_BSS_0208F300.game->unk_14C8);
    }

    OS_SetIrqCheckFlag(OS_IE_H_BLANK);
}
