#ifndef POKERANGER2_SCENE_CTITLESCENE_HPP
#define POKERANGER2_SCENE_CTITLESCENE_HPP

#include "CGame.hpp"
#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov3
class CTitleScene : public CScene {
public:
    CTitleScene(CGame *game);
    virtual ~CTitleScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func3();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 func8();

public:
    u8 unk_0004[0xFC];
};

STATIC_SIZE_ASSERT(CTitleScene, 0x100);

#endif // POKERANGER2_SCENE_CTITLESCENE_HPP
