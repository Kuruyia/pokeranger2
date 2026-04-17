#ifndef POKERANGER2_SCENE_COPENINGDEMOSCENE_HPP
#define POKERANGER2_SCENE_COPENINGDEMOSCENE_HPP

#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov3
class COpeningDemoScene : public CScene {
public:
    COpeningDemoScene();
    virtual ~COpeningDemoScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func3();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 getSceneId();

public:
    u8 unk_0004[0x14D0];
};

STATIC_SIZE_ASSERT(COpeningDemoScene, 0x14D4);

#endif // POKERANGER2_SCENE_COPENINGDEMOSCENE_HPP
