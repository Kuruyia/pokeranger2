#ifndef POKERANGER2_CGAME_HPP
#define POKERANGER2_CGAME_HPP

#include <nitro.h>

#include "CTPEmulator.hpp"
#include "CTouchPanel.hpp"
#include "UnkClass_02001C04.hpp"
#include "UnkClass_020023EC.hpp"
#include "UnkClass_020091E8.hpp"
#include "UnkClass_0200E330.hpp"
#include "UnkClass_020B26A0.hpp"
#include "common.hpp"
#include "scene/CScene.hpp"

extern "C" void *sub_020101A8(u32 size);

typedef void (*CGame_020100E4_arg0)();

class CGame {
public:
    CGame();

    void *operator new(size_t size)
    {
        return sub_020101A8(size);
    }

    inline void func0()
    {
        MI_DmaCopy32(3, unk_0824, unk_0024, 0x400);
        MI_DmaCopy32(3, unk_0824, unk_0424, 0x400);
    }

    void sub_0200FB28();
    BOOL sub_020100E4(CGame_020100E4_arg0 arg0, u32 arg1);
    void sub_020101B4(char *arg0);
    void sub_0201028C();
    void sub_020102E8();
    void sub_02010448();
    void sub_0201044C();

public:
    u32 unk_0000;
    u32 unk_0004;
    u32 unk_0008;
    CScene *currentScene;
    u32 unk_0010;
    UnkClass_02001C04 *unk_0014;
    CTouchPanel *touchPanel;
    CTPEmulator *touchPanelEmulator;
    CTouchPanel *activeTouchPanel;
    u8 unk_0024[0x400];
    u8 unk_0424[0x400];
    u8 unk_0824[0x400];
    UnkClass_020023EC *unk_0C24;
    UnkClass_020023EC *unk_0C28;
    u8 unk_0C2C[0x840];
    u32 unk_146C;
    u8 unk_1470[0x20];
    UnkClass_020091E8 *unk_1490;
    u8 unk_1494[0x10];
    UnkClass_020B26A0 *unk_14A4;
    u8 unk_14A8[0x14];
    u32 unk_14BC;
    u32 unk_14C0;
    UnkClass_0200E330 *unk_14C4;
    UnkClass_0200E330 *unk_14C8;
    u8 unk_14CC[0x114];
    u32 unk_15E0;
};

STATIC_SIZE_ASSERT(CGame, 0x15E4);

extern CGame *s_game;

#endif // POKERANGER2_CGAME_HPP
