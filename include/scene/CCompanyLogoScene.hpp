#ifndef POKERANGER2_SCENE_CCOMPANYLOGOSCENE_HPP
#define POKERANGER2_SCENE_CCOMPANYLOGOSCENE_HPP

#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov11
class CCompanyLogoScene : public CScene {
public:
    CCompanyLogoScene();
    virtual ~CCompanyLogoScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 getSceneId();

public:
    u8 unk_0004[0x24];
};

STATIC_SIZE_ASSERT(CCompanyLogoScene, 0x28);

#endif // POKERANGER2_SCENE_CCOMPANYLOGOSCENE_HPP
