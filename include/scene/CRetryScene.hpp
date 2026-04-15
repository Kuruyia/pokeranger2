#ifndef POKERANGER2_SCENE_CRETRYSCENE_HPP
#define POKERANGER2_SCENE_CRETRYSCENE_HPP

#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov24
class CRetryScene : public CScene {
public:
    CRetryScene();
    virtual ~CRetryScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 func8();

public:
    u8 unk_0004[0x10];
};

STATIC_SIZE_ASSERT(CRetryScene, 0x14);

#endif // POKERANGER2_SCENE_CRETRYSCENE_HPP
