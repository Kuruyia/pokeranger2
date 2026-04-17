#ifndef POKERANGER2_SCENE_CFLYINGSCENE_HPP
#define POKERANGER2_SCENE_CFLYINGSCENE_HPP

#include "CGame.hpp"
#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov9
class CFlyingScene : public CScene {
public:
    CFlyingScene(CGame *game);
    virtual ~CFlyingScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 getSceneId();

public:
    u8 unk_0004[0x8];
};

STATIC_SIZE_ASSERT(CFlyingScene, 0xC);

#endif // POKERANGER2_SCENE_CFLYINGSCENE_HPP
