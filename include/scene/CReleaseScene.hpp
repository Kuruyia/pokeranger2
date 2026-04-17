#ifndef POKERANGER2_SCENE_CRELEASESCENE_HPP
#define POKERANGER2_SCENE_CRELEASESCENE_HPP

#include "CGame.hpp"
#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov7
class CReleaseScene : public CScene {
public:
    CReleaseScene(CGame *game);
    virtual ~CReleaseScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func3();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 getSceneId();

public:
    u8 unk_0004[0x8];
};

STATIC_SIZE_ASSERT(CReleaseScene, 0xC);

#endif // POKERANGER2_SCENE_CRELEASESCENE_HPP
