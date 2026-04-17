#ifndef POKERANGER2_SCENE_CLETTERSCENE_HPP
#define POKERANGER2_SCENE_CLETTERSCENE_HPP

#include "CGame.hpp"
#include "common.hpp"
#include "scene/CScene.hpp"

// Defined in ov4
class CLetterScene : public CScene {
public:
    CLetterScene(CGame *game);
    virtual ~CLetterScene();

    virtual u32 func0();
    virtual void func1();
    virtual void func5();
    virtual void func6();
    virtual void func7();
    virtual u32 getSceneId();

public:
    u8 unk_0004[0x2B];
};

STATIC_SIZE_ASSERT(CLetterScene, 0x30);

#endif // POKERANGER2_SCENE_CLETTERSCENE_HPP
