#ifndef POKERANGER2_SCENE_CAUTOSAVESCENE_HPP
#define POKERANGER2_SCENE_CAUTOSAVESCENE_HPP

#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov20
class CAutoSaveScene : public CScene {
public:
    CAutoSaveScene();
    virtual ~CAutoSaveScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 func8();

public:
    u8 unk_0004[0xC];
};

STATIC_SIZE_ASSERT(CAutoSaveScene, 0x10);

#endif // POKERANGER2_SCENE_CAUTOSAVESCENE_HPP
