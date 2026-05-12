#include "scene/CNameInputScene.hpp"

extern "C" {
CGame *sub_0201001C(void);
void sub_020345D4(void *audioEngine);
void sub_0203499C(void *audioEngine, u32);
}

CNameInputScene::CNameInputScene()
{
    m_game = sub_0201001C();
    m_audioEngine = sub_0201001C()->m_audioEngine;
    sub_020345D4(m_audioEngine);
    sub_0203499C(m_audioEngine, 3);
    unk_000C = 0;
    unk_0010 = 0;
    unk_0004 = 0;
    unk_0005 = 0;
    unk_0007 = 0;
    unk_0008 = 0;

    for (int i = 0; i < 4; i++) {
        unk_00BC[i] = 0;
    }

    for (int i = 0; i < 22; i++) {
        unk_0068[i] = 0;
    }
}
