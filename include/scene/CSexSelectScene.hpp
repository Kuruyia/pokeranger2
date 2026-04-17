#ifndef POKERANGER2_SCENE_CSEXSELECTSCENE_HPP
#define POKERANGER2_SCENE_CSEXSELECTSCENE_HPP

#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov19
class CSexSelectScene : public CScene {
public:
    CSexSelectScene();
    virtual ~CSexSelectScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 getSceneId();

public:
    u8 unk_0004[0x78];
};

STATIC_SIZE_ASSERT(CSexSelectScene, 0x7C);

#endif // POKERANGER2_SCENE_CSEXSELECTSCENE_HPP
