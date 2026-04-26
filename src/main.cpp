#include "main.hpp"

#include <nitro.h>
#include <nnsys.h>

#include "CGame.hpp"
#include "CPowerManage.hpp"
#include "UnkClass_0208F300.hpp"
#include "constants/scene.hpp"
#include "heap.hpp"
#include "overlay_manager.hpp"
#include "sub_02010448.hpp"
#include "sub_0202B80C.hpp"
#include "sub_0204436C.hpp"
#include "sub_02044440.hpp"
#include "sub_02046D40.hpp"

extern "C" {
void sub_02008D7C(u32 *);
void sub_0200FA48(u32);
u32 sub_0200E310(u32);
u32 sub_0200E324(u32);
u32 sub_0200E91C(UnkClass_0200E330 *);
void sub_0200FA2C(u32);
void sub_0200FA0C(u32);
void sub_0201002C(void);
void sub_020101B4(CGame *, char *);
void sub_020102E8(CGame *);
void sub_0201044C(CGame *);
void sub_0201028C(CGame *);

extern UnkClass_0208F300 MAIN_BSS_0208F300;
extern u32 DAT_04000454;
extern u8 DAT_0208aaf8;
}

static CScene *sub_020010F8(void);
static void sub_02001184(void);
static void sub_0200120C(u64 arg0);
static void sub_02001248(void);
static void VBlankIntr(void);
static void HBlankIntr_1(s32 vcount, UnkClass_0200E330 *arg1);
static void HBlankIntr(void);

void NitroMain(void)
{
    UnkClass_020B26A0 *game_unk_14A4;
    NNSFndHeapHandle *handle;
    CScene *v3;
    u32 v6;
    u32 v4;
    u32 v7;
    u32 v8;
    UnkClass_0200E330 *v9;
    UnkClass_0200E330 *v10;
    u32 v11;
    u32 v12;
    u32 v13;
    OSTick v14;

    sub_02001248();
    SetupInterrupts();

    MAIN_BSS_0208F300.game = new CGame();
    sub_0202B80C();

    game_unk_14A4 = MAIN_BSS_0208F300.game->unk_14A4;
    game_unk_14A4->unk_8B68 = 1;
    game_unk_14A4->unk_8B6C = 0;

    handle = Heap_GetMainHandle();
    NNS_FndGetTotalFreeSizeForExpHeap(*handle);

    handle = Heap_GetMainHandle();
    NNS_FndGetAllocatableSizeForExpHeapEx(*handle, 4);

    sub_02001184();
    v3 = Scene_LoadByID(SCENE_RANGER_NET_AGB, MAIN_BSS_0208F300.game);
    v4 = SCENE_NONE;
    CPowerManage::sub_0200F9E0();
    sub_0200FA48(0);

    v6 = v4;
    v7 = MAIN_BSS_0208F300.game->unk_14BC;
    v8 = MAIN_BSS_0208F300.game->unk_14C0;
    v9 = MAIN_BSS_0208F300.game->unk_14C4;
    v10 = MAIN_BSS_0208F300.game->unk_14C8;

    while (1) {
        if (
            (sub_0200E310(v7) != 0)
            || (sub_0200E324(v7) == 2)
            || (sub_0200E324(v7) == 4)
            || (sub_0200E310(v8) != 0)
            || (sub_0200E324(v8) == 2)
            || (sub_0200E324(v8) == 4)
            || (v9->func0() != FALSE)
            || (sub_0200E91C(v9) != 0)
            || (v10->func0() != FALSE)
            || (sub_0200E91C(v10) != 0)) {
            sub_0200FA2C(1);
        } else {
            sub_0200FA0C(1);
        }

        CPowerManage::sub_0200F9F8();
        MAIN_BSS_0208F300.game->unk_0014->sub_02001C20();
        MAIN_BSS_0208F300.game->touchPanel->func0();
        MAIN_BSS_0208F300.game->touchPanelEmulator->func0();

        MAIN_BSS_0208F300.game->func0();

        MAIN_BSS_0208F300.game->unk_0C24->sub_02002A78(0, 0, 0x20, 0x18);
        MAIN_BSS_0208F300.game->unk_0C28->sub_02002A78(0, 0, 0x20, 0x18);
        G3X_Reset();

        G3_Identity();

        if (MAIN_BSS_0208F300.unk_00 != 0) {
            v3 = sub_020010F8();
            MAIN_BSS_0208F300.unk_00 = 0;
        }

        if (v4 != v6) {
            OS_GetTick();
            OS_DisableIrqMask(1);
            sub_020101B4(MAIN_BSS_0208F300.game, "Delete Scene");

            DAT_0208aaf8 = 0;

            v13 = v3->getSceneId();
            MAIN_BSS_0208F300.game->unk_0008 = v13;
            MAIN_BSS_0208F300.game->unk_0010 = v4;

            v3->func7();
            delete v3;

            MAIN_BSS_0208F300.game->unk_0010 = v6;
            sub_020102E8(MAIN_BSS_0208F300.game);
            sub_0201044C(MAIN_BSS_0208F300.game);

            handle = Heap_GetMainHandle();
            NNS_FndGetTotalFreeSizeForExpHeap(*handle);

            handle = Heap_GetMainHandle();
            NNS_FndGetAllocatableSizeForExpHeapEx(*handle, 4);

            sub_020101B4(MAIN_BSS_0208F300.game, "Create Scene");
            sub_02001184();

            v3 = Scene_LoadByID(v4, MAIN_BSS_0208F300.game);
            OS_GetTick();
            sub_020101B4(MAIN_BSS_0208F300.game, "Scene Create Finished");

            OS_EnableIrqMask(1);
        }

        MAIN_BSS_0208F300.unk_08 = OS_GetTick();
        MAIN_BSS_0208F300.game->unk_15E0 = 0;
        v4 = v3->func0();
        v3->func1();
        MAIN_BSS_0208F300.game->unk_15E0 = 1;

        v14 = OS_GetTick();
        MAIN_BSS_0208F300.unk_08 = v14 - MAIN_BSS_0208F300.unk_08;

        v14 = OS_GetTick();
        DAT_0208aaf8 = 1;

        MAIN_BSS_0208F300.game->unk_15E0 = 0;
        v3->func4();
        MAIN_BSS_0208F300.game->unk_15E0 = 1;
        G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);

        OS_GetTick();
        OS_GetTick();

        sub_02008D7C(&MAIN_BSS_0208F300.game->unk_146C);

        OS_GetTick();
        OS_GetTick();

        v3->func2();

        OS_GetTick();
        ++MAIN_BSS_0208F300.game->unk_0000;

        OS_GetTick();
        v3->func3();

        sub_0201028C(MAIN_BSS_0208F300.game);
        OS_GetTick();
    }
}

void sub_020010E4(void)
{
    MAIN_BSS_0208F300.unk_00 = 1;
}

CScene *sub_020010F8(void)
{
    CScene *currentScene = MAIN_BSS_0208F300.game->currentScene;
    if (currentScene != NULL) {
        currentScene->func7();
        delete currentScene;
    }

    MAIN_BSS_0208F300.game->sub_0200FB28();

    UnkClass_020B26A0 *game_unk_14A4 = MAIN_BSS_0208F300.game->unk_14A4;
    game_unk_14A4->unk_8B68 = 1;
    game_unk_14A4->unk_8B6C = 0;

    sub_02001184();
    Scene_LoadByID(SCENE_RANGER_NET_AGB, MAIN_BSS_0208F300.game);
}

void sub_02001184(void)
{
    GX_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);
    GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);

    GX_SetVisiblePlane(GX_GetVisiblePlane() | GX_PLANEMASK_OBJ);
    GXS_SetVisiblePlane(GXS_GetVisiblePlane() | GX_PLANEMASK_OBJ);

    sub_02010448(MAIN_BSS_0208F300.game);
}

void sub_0200120C(u64 arg0)
{
}

void sub_02001210(void)
{
    sub_0200120C(OS_TicksToMicroSeconds(MAIN_BSS_0208F300.unk_08));
}

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
