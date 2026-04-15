#ifndef POKERANGER2_SCENE_CCONTINUESCENE_HPP
#define POKERANGER2_SCENE_CCONTINUESCENE_HPP

#include "CGame.hpp"
#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov3
class CContinueScene : public CScene {
public:
    CContinueScene(CGame *game);
    virtual ~CContinueScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 func8();

public:
    u8 unk_0004[0x38];
};

STATIC_SIZE_ASSERT(CContinueScene, 0x3C);

#endif // POKERANGER2_SCENE_CCONTINUESCENE_HPP
