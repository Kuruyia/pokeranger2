#ifndef POKERANGER2_SCENE_CCONFSCENE_HPP
#define POKERANGER2_SCENE_CCONFSCENE_HPP

#include "CGame.hpp"
#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov3
class CConfScene : public CScene {
public:
    CConfScene(CGame *game);
    virtual ~CConfScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 getSceneId();

public:
    u8 unk_0004[0x34];
};

STATIC_SIZE_ASSERT(CConfScene, 0x38);

#endif // POKERANGER2_SCENE_CCONFSCENE_HPP
