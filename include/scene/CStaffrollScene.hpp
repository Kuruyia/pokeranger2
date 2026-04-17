#ifndef POKERANGER2_SCENE_CSTAFFROLLSCENE_HPP
#define POKERANGER2_SCENE_CSTAFFROLLSCENE_HPP

#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov25
class CStaffrollScene : public CScene {
public:
    CStaffrollScene();
    virtual ~CStaffrollScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func3();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 getSceneId();

public:
    u8 unk_0004[0x30];
};

STATIC_SIZE_ASSERT(CStaffrollScene, 0x34);

#endif // POKERANGER2_SCENE_CSTAFFROLLSCENE_HPP
