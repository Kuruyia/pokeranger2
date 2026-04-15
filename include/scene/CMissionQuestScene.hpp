#ifndef POKERANGER2_SCENE_CMISSIONQUESTSCENE_HPP
#define POKERANGER2_SCENE_CMISSIONQUESTSCENE_HPP

#include "CGame.hpp"
#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov8
class CMissionQuestScene : public CScene {
public:
    CMissionQuestScene(CGame *game);
    virtual ~CMissionQuestScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 func8();

public:
    u8 unk_0004[0x8];
};

STATIC_SIZE_ASSERT(CMissionQuestScene, 0xC);

#endif // POKERANGER2_SCENE_CMISSIONQUESTSCENE_HPP
