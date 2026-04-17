#ifndef POKERANGER2_SCENE_CFIELDTOMENUSCENE_HPP
#define POKERANGER2_SCENE_CFIELDTOMENUSCENE_HPP

#include "CGame.hpp"
#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov10
class CFieldToMenuScene : public CScene {
public:
    CFieldToMenuScene(CGame *game)
        : game(game)
    {
    }

    virtual ~CFieldToMenuScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func3();
    virtual void func4();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 getSceneId();

public:
    CGame *game;
};

STATIC_SIZE_ASSERT(CFieldToMenuScene, 0x8);

#endif // POKERANGER2_SCENE_CFIELDTOMENUSCENE_HPP
