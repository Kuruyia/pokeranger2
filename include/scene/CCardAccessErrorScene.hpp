#ifndef POKERANGER2_SCENE_CCARDACCESSERRORSCENE_HPP
#define POKERANGER2_SCENE_CCARDACCESSERRORSCENE_HPP

#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov29
class CCardAccessErrorScene : public CScene {
public:
    CCardAccessErrorScene()
    {
    }
    virtual ~CCardAccessErrorScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 getSceneId();
};

STATIC_SIZE_ASSERT(CCardAccessErrorScene, 0x4);

#endif // POKERANGER2_SCENE_CCARDACCESSERRORSCENE_HPP
