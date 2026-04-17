#ifndef POKERANGER2_SCENE_CQUESTLISTSCENE_HPP
#define POKERANGER2_SCENE_CQUESTLISTSCENE_HPP

#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov27
class CQuestListScene : public CScene {
public:
    CQuestListScene();
    virtual ~CQuestListScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func3();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 getSceneId();

public:
    u8 unk_0004[0x1660];
};

STATIC_SIZE_ASSERT(CQuestListScene, 0x1664);

#endif // POKERANGER2_SCENE_CQUESTLISTSCENE_HPP
