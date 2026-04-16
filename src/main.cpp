#include <nitro.h>
#include <nnsys.h>

#include "CGame.hpp"
#include "CPowerManage.hpp"
#include "UnkClass_0208F300.hpp"
#include "constants/scene.hpp"
#include "heap.hpp"
#include "overlay_manager.hpp"
#include "sub_02001184.hpp"
#include "sub_02001248.hpp"
#include "sub_0202B80C.hpp"

extern "C" {
void sub_0200FA48(u32);
u32 sub_0200E310(u32);
u32 sub_0200E324(u32);
u32 sub_0200E91C(UnkClass_0200E330 *);
void sub_0200FA2C(u32);
void sub_0200FA0C(u32);
CScene *sub_020010F8(void);
void sub_020101B4(CGame *, char *);
void sub_020102E8(CGame *);
void sub_0201044C(CGame *);
void sub_02008D7C(u32 *);
void sub_0201028C(CGame *);
void _ZN5CGameC1Ev(CGame *);

extern UnkClass_0208F300 MAIN_BSS_0208F300;
extern u32 DAT_04000454;
extern u8 DAT_0208aaf8;
}

void NitroMain(void)
{
    UnkClass_CGame_14A4 *game_unk_14A4;
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
        MAIN_BSS_0208F300.game->unk_0018->func2();
        MAIN_BSS_0208F300.game->unk_001C->func2();

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

            v13 = v3->func8();
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
