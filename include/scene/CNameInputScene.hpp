#ifndef POKERANGER2_SCENE_CNAMEINPUTSCENE_HPP
#define POKERANGER2_SCENE_CNAMEINPUTSCENE_HPP

#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov3
class CNameInputScene : public CScene {
public:
    CNameInputScene();
    virtual ~CNameInputScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 func8();

public:
    u8 unk_0004[0x1DC];
};

STATIC_SIZE_ASSERT(CNameInputScene, 0x1E0);

#endif // POKERANGER2_SCENE_CNAMEINPUTSCENE_HPP
