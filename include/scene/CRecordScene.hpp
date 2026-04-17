#ifndef POKERANGER2_SCENE_CRECORDSCENE_HPP
#define POKERANGER2_SCENE_CRECORDSCENE_HPP

#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov23
class CRecordScene : public CScene {
public:
    CRecordScene();
    virtual ~CRecordScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 getSceneId();

public:
    u8 unk_0004[0x64];
};

STATIC_SIZE_ASSERT(CRecordScene, 0x68);

#endif // POKERANGER2_SCENE_CRECORDSCENE_HPP
