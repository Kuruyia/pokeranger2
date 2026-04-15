#ifndef POKERANGER2_SCENE_CDOWNLOADMISSIONRESTARTSCENE_HPP
#define POKERANGER2_SCENE_CDOWNLOADMISSIONRESTARTSCENE_HPP

#include "CGame.hpp"
#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in arm9
class CDownloadMissionRestartScene : public CScene {
public:
    CDownloadMissionRestartScene(CGame *game)
        : game(game)
        , unk_000C(NULL)
    {
    }

    virtual ~CDownloadMissionRestartScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 func8();

public:
    CGame *game;
    u32 unk_0008;
    // TODO: unk_000C is UnkStruct_02028054 *?
    u8 *unk_000C;
    u32 unk_0010;
};

STATIC_SIZE_ASSERT(CDownloadMissionRestartScene, 0x14);

#endif // POKERANGER2_SCENE_CDOWNLOADMISSIONRESTARTSCENE_HPP
