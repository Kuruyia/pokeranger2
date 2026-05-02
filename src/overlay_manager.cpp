#include "overlay_manager.hpp"

#include <nitro.h>

#include "CGame.hpp"
#include "constants/scene.hpp"
#include "heap.hpp"
#include "scene/CAutoSaveScene.hpp"
#include "scene/CBattleScene.hpp"
#include "scene/CBattleToFieldScene.hpp"
#include "scene/CBrowserScene.hpp"
#include "scene/CCardAccessErrorScene.hpp"
#include "scene/CCompanyLogoScene.hpp"
#include "scene/CConfScene.hpp"
#include "scene/CContinueScene.hpp"
#include "scene/CDownloadMissionEndScene.hpp"
#include "scene/CDownloadMissionRestartScene.hpp"
#include "scene/CDownloadMissionStartScene.hpp"
#include "scene/CEncyclopediaScene.hpp"
#include "scene/CFieldScene.hpp"
#include "scene/CFieldToMenuScene.hpp"
#include "scene/CFlyingScene.hpp"
#include "scene/CLetterScene.hpp"
#include "scene/CMapDispScene.hpp"
#include "scene/CMissionQuestScene.hpp"
#include "scene/CNameInputScene.hpp"
#include "scene/COpeningDemoScene.hpp"
#include "scene/COptionScene.hpp"
#include "scene/CQuestListScene.hpp"
#include "scene/CRangerNetAGBScene.hpp"
#include "scene/CRangerNetScene.hpp"
#include "scene/CRecordScene.hpp"
#include "scene/CReleaseScene.hpp"
#include "scene/CRetryScene.hpp"
#include "scene/CScene.hpp"
#include "scene/CSexSelectScene.hpp"
#include "scene/CStaffrollScene.hpp"
#include "scene/CStylerScene.hpp"
#include "scene/CSuitePictureScene.hpp"
#include "scene/CTitleScene.hpp"

#define ALIGN_MASK(a)    ((a) - 1)
#define ALIGN_BYTE(n, a) (((u32)(n) + ALIGN_MASK(a)) & ~ALIGN_MASK(a))

extern "C" {
void ov0_02124BD4(void);

extern void SDK_MAIN_ARENA_LO(void);

FS_EXTERN_OVERLAY(overlay0);
FS_EXTERN_OVERLAY(overlay1);
FS_EXTERN_OVERLAY(overlay2);
FS_EXTERN_OVERLAY(overlay3);
FS_EXTERN_OVERLAY(overlay4);
FS_EXTERN_OVERLAY(overlay5);
FS_EXTERN_OVERLAY(overlay6);
FS_EXTERN_OVERLAY(overlay7);
FS_EXTERN_OVERLAY(overlay8);
FS_EXTERN_OVERLAY(overlay9);
FS_EXTERN_OVERLAY(overlay10);
FS_EXTERN_OVERLAY(overlay11);
FS_EXTERN_OVERLAY(overlay19);
FS_EXTERN_OVERLAY(overlay20);
FS_EXTERN_OVERLAY(overlay21);
FS_EXTERN_OVERLAY(overlay22);
FS_EXTERN_OVERLAY(overlay23);
FS_EXTERN_OVERLAY(overlay24);
FS_EXTERN_OVERLAY(overlay25);
FS_EXTERN_OVERLAY(overlay26);
FS_EXTERN_OVERLAY(overlay27);
FS_EXTERN_OVERLAY(overlay28);
FS_EXTERN_OVERLAY(overlay29);
}

static void Overlay_LoadByID(FSOverlayID id, BOOL initHeap);

static u32 s_currentOverlayID = -1;

void Overlay_LoadByID(FSOverlayID id, BOOL initHeap)
{
    BOOL res = TRUE;

    if (id != s_currentOverlayID) {
        if (s_currentOverlayID != -1) {
            FS_UnloadOverlay(MI_PROCESSOR_ARM9, s_currentOverlayID);
            s_currentOverlayID = -1;
        }

        FS_SetDefaultDMA(FS_DMA_NOT_USE);
        res = FS_LoadOverlay(MI_PROCESSOR_ARM9, id);

        if (res) {
            s_currentOverlayID = id;
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

    if (!initHeap) {
        return;
    }

    s32 v1 = ((u32)SDK_MAIN_ARENA_LO - (u32)v0) & ~0x7F;

    if (v1 <= 0) {
        return;
    }

    Heap_InitOverlay(v0, v1);
}

CScene *Scene_LoadByID(u32 id, CGame *game)
{
    CScene *scene;
    Heap_DestroyOverlay();

    switch (id) {
    case SCENE_BATTLE:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay1), TRUE);
        scene = (CScene *)new CBattleScene(game);
        break;

    case SCENE_FIELD:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay0), FALSE);
        ov0_02124BD4();
        scene = (CScene *)new CFieldScene(game);
        break;

    case SCENE_LETTER:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay4), TRUE);
        scene = (CScene *)new CLetterScene(game);
        break;

    case SCENE_RELEASE:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay7), TRUE);
        scene = (CScene *)new CReleaseScene(game);
        break;

    case SCENE_MISSION_QUEST:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay8), TRUE);
        scene = (CScene *)new CMissionQuestScene(game);
        break;

    case SCENE_FLYING:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay9), TRUE);
        scene = (CScene *)new CFlyingScene(game);
        break;

    case SCENE_TITLE:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay3), TRUE);
        scene = (CScene *)new CTitleScene(game);
        break;

    case SCENE_CONTINUE:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay3), TRUE);
        scene = (CScene *)new CContinueScene(game);
        break;

    case SCENE_CONF:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay3), TRUE);
        scene = (CScene *)new CConfScene(game);
        break;

    case SCENE_RANGER_NET_1:
    case SCENE_RANGER_NET_2:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay11), TRUE);
        scene = (CScene *)new CRangerNetScene(game);
        break;

    case SCENE_RANGER_NET_AGB:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay11), TRUE);
        scene = (CScene *)new CRangerNetAGBScene(game);
        break;

    case SCENE_STYLER:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay5), TRUE);
        scene = (CScene *)new CStylerScene(game);
        break;

    case SCENE_OPTION:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay6), TRUE);
        scene = (CScene *)new COptionScene(game);
        break;

    case SCENE_BATTLE_TO_FIELD:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay2), TRUE);
        scene = (CScene *)new CBattleToFieldScene(game);
        break;

    case SCENE_FIELD_TO_MENU:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay10), TRUE);
        scene = (CScene *)new CFieldToMenuScene(game);
        break;

    case SCENE_COMPANY_LOGO:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay11), TRUE);
        scene = (CScene *)new CCompanyLogoScene();
        break;

    case SCENE_OPENING_DEMO:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay3), FALSE);
        scene = (CScene *)new COpeningDemoScene();
        break;

    case SCENE_SEX_SELECT:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay19), TRUE);
        scene = (CScene *)new CSexSelectScene();
        break;

    case SCENE_NAME_INPUT:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay3), TRUE);
        scene = (CScene *)new CNameInputScene();
        break;

    case SCENE_AUTO_SAVE:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay20), TRUE);
        scene = (CScene *)new CAutoSaveScene();
        break;

    case SCENE_BROWSER:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay21), TRUE);
        scene = (CScene *)new CBrowserScene();
        break;

    case SCENE_ENCYCLOPEDIA:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay22), TRUE);
        scene = (CScene *)new CEncyclopediaScene();
        break;

    case SCENE_RECORD:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay23), TRUE);
        scene = (CScene *)new CRecordScene();
        break;

    case SCENE_RETRY:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay24), TRUE);
        scene = (CScene *)new CRetryScene();
        break;

    case SCENE_STAFFROLL:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay25), TRUE);
        scene = (CScene *)new CStaffrollScene();
        break;

    case SCENE_SUITE_PICTURE:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay26), TRUE);
        scene = (CScene *)new CSuitePictureScene();
        break;

    case SCENE_DOWNLOAD_MISSION_START:
        scene = (CScene *)new CDownloadMissionStartScene(game);
        break;

    case SCENE_DOWNLOAD_MISSION_END:
        scene = (CScene *)new CDownloadMissionEndScene(game);
        break;

    case SCENE_DOWNLOAD_MISSION_RESTART:
        scene = (CScene *)new CDownloadMissionRestartScene(game);
        break;

    case SCENE_QUEST_LIST:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay27), TRUE);
        scene = (CScene *)new CQuestListScene();
        break;

    case SCENE_MAP_DISP:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay28), TRUE);
        scene = (CScene *)new CMapDispScene(game);
        break;

    case SCENE_CARD_ACCESS_ERROR:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay29), TRUE);
        scene = (CScene *)new CCardAccessErrorScene();
        break;

    case SCENE_UNUSED:
    default:
        scene = NULL;
        break;
    }

    game->currentScene = scene;
    scene->func5();
    scene->func6();

    return scene;
}
