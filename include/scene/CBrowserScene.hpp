#ifndef POKERANGER2_SCENE_CBROWSERSCENE_HPP
#define POKERANGER2_SCENE_CBROWSERSCENE_HPP

#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov21
class CBrowserScene : public CScene {
public:
    CBrowserScene();
    virtual ~CBrowserScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func3();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 getSceneId();

public:
    u8 unk_0004[0x1C];
};

STATIC_SIZE_ASSERT(CBrowserScene, 0x20);

#endif // POKERANGER2_SCENE_CBROWSERSCENE_HPP
