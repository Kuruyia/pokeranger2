#ifndef POKERANGER2_SCENE_CBATTLESCENE_HPP
#define POKERANGER2_SCENE_CBATTLESCENE_HPP

#include "CGame.hpp"
#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov1
class CBattleScene : public CScene {
public:
    CBattleScene(CGame *game);
    virtual ~CBattleScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 getSceneId();

public:
    u8 unk_0004[0x12E4];
};

STATIC_SIZE_ASSERT(CBattleScene, 0x12E8);

#endif // POKERANGER2_SCENE_CBATTLESCENE_HPP
