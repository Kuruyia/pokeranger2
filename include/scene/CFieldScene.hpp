#ifndef POKERANGER2_SCENE_CFIELDSCENE_HPP
#define POKERANGER2_SCENE_CFIELDSCENE_HPP

#include "CGame.hpp"
#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov0
class CFieldScene : public CScene {
public:
    CFieldScene(CGame *game);
    virtual ~CFieldScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func3();
    virtual void func4();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 func8();

public:
    u8 unk_0004[0x150];
};

STATIC_SIZE_ASSERT(CFieldScene, 0x154);

#endif // POKERANGER2_SCENE_CFIELDSCENE_HPP
