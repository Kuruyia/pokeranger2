#include "sub_02001248.hpp"

#include <nitro.h>

#include "UnkClass_0200E330.hpp"
#include "UnkClass_0208F300.hpp"
#include "heap.hpp"
#include "sub_0204436C.hpp"
#include "sub_02044440.hpp"
#include "sub_02046D40.hpp"

#define ALIGN_MASK(a)    ((a) - 1)
#define ALIGN_BYTE(n, a) (((u32)(n) + ALIGN_MASK(a)) & ~ALIGN_MASK(a))

extern "C" {
void sub_0201002C(void);

extern void SDK_MAIN_ARENA_LO(void);
extern u32 currentOverlayID;

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

void *operator new(size_t size)
{
    return Heap_Alloc(size);
}

void *operator new[](size_t size)
{
    return Heap_Alloc(size);
}

void operator delete(void *ptr)
{
    Heap_Free(ptr);
}

void operator delete[](void *ptr)
{
    Heap_Free(ptr);
}

void Overlay_LoadByID(u32 id, BOOL arg1)
{
    BOOL res = TRUE;

    if (id != currentOverlayID) {
        if (currentOverlayID != -1) {
            FS_UnloadOverlay(MI_PROCESSOR_ARM9, currentOverlayID);
            currentOverlayID = -1;
        }

        FS_SetDefaultDMA(FS_DMA_NOT_USE);
        res = FS_LoadOverlay(MI_PROCESSOR_ARM9, id);

        if (res) {
            currentOverlayID = id;
        }
    }

    if (!res) {
        return;
    }

    FSOverlayInfo overlayInfo;
    res = FS_LoadOverlayInfo(&overlayInfo, MI_PROCESSOR_ARM9, id);

    if (!res) {
        return;
    }

    u8 *v0 = (u8 *)ALIGN_BYTE((u32)FS_GetOverlayAddress(&overlayInfo) + FS_GetOverlayTotalSize(&overlayInfo), 16);

    if (!arg1) {
        return;
    }

    s32 v1 = ((u32)SDK_MAIN_ARENA_LO - (u32)v0) & ~0x7F;

    if (v1 <= 0) {
        return;
    }

    Heap_InitOverlay(v0, v1);
}
