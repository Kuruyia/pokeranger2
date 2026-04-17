#ifndef POKERANGER2_SCENE_COPTIONSCENE_HPP
#define POKERANGER2_SCENE_COPTIONSCENE_HPP

#include "CGame.hpp"
#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov6
class COptionScene : public CScene {
public:
    COptionScene(CGame *game);
    virtual ~COptionScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func3();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 getSceneId();

public:
    u8 unk_0004[0x88];
};

STATIC_SIZE_ASSERT(COptionScene, 0x8C);

#endif // POKERANGER2_SCENE_COPTIONSCENE_HPP
