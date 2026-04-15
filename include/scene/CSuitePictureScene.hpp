#ifndef POKERANGER2_SCENE_CSUITEPICTURESCENE_HPP
#define POKERANGER2_SCENE_CSUITEPICTURESCENE_HPP

#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov26
class CSuitePictureScene : public CScene {
public:
    CSuitePictureScene();
    virtual ~CSuitePictureScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func2();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 func8();

public:
    u8 unk_0004[0x20];
};

STATIC_SIZE_ASSERT(CSuitePictureScene, 0x24);

#endif // POKERANGER2_SCENE_CSUITEPICTURESCENE_HPP
