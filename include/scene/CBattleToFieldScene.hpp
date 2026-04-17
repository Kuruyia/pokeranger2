#ifndef POKERANGER2_SCENE_CBATTLETOFIELDSCENE_HPP
#define POKERANGER2_SCENE_CBATTLETOFIELDSCENE_HPP

#include "CGame.hpp"
#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov2
class CBattleToFieldScene : public CScene {
public:
    CBattleToFieldScene(CGame *game)
        : game(game)
    {
    }

    virtual ~CBattleToFieldScene();

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

STATIC_SIZE_ASSERT(CBattleToFieldScene, 0x8);

#endif // POKERANGER2_SCENE_CBATTLETOFIELDSCENE_HPP
