#ifndef POKERANGER2_SCENE_CENCYCLOPEDIASCENE_HPP
#define POKERANGER2_SCENE_CENCYCLOPEDIASCENE_HPP

#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov22
// TODO: Also inherits from IEncycPushButtonListener
class CEncyclopediaScene : public CScene {
public:
    CEncyclopediaScene();
    virtual ~CEncyclopediaScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func3();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 func8();

public:
    u8 unk_0004[0x3AC];
};

STATIC_SIZE_ASSERT(CEncyclopediaScene, 0x3B0);

#endif // POKERANGER2_SCENE_CENCYCLOPEDIASCENE_HPP
