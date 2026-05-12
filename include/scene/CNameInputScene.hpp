#ifndef POKERANGER2_SCENE_CNAMEINPUTSCENE_HPP
#define POKERANGER2_SCENE_CNAMEINPUTSCENE_HPP

#include "CGame.hpp"
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
    virtual u32 getSceneId();

public:
    u8 unk_0004;
    u8 unk_0005;
    u8 unk_0006;
    u8 unk_0007;
    u8 unk_0008;
    u8 unk_0009[3]; // padding?
    u32 unk_000C;
    u32 unk_0010;
    u8 unk_0014[0x54];
    u8 unk_0068[22];
    u8 unk_007E[0x2]; // padding?
    CGame *m_game;
    void *m_audioEngine;
    u8 unk_0088[0x34];
    u32 unk_00BC[4];
    u8 unk_00CC[0x114];
};

STATIC_SIZE_ASSERT(CNameInputScene, 0x1E0);

#endif // POKERANGER2_SCENE_CNAMEINPUTSCENE_HPP
