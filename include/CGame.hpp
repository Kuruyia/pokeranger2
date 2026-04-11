#ifndef POKERANGER2_CGAME_HPP
#define POKERANGER2_CGAME_HPP

#include <nitro.h>

#include "UnkClass_02001C04.hpp"
#include "UnkClass_020023EC.hpp"
#include "UnkClass_0200E330.hpp"
#include "common.hpp"

extern "C" void *sub_020101A8(u32 size);

class UnkClass_CGame_0018 {
public:
    virtual void func0();
    virtual void func1();
    virtual void func2();
};

class UnkClass_CGame_14A4 {
public:
    u8 unk_0000[0x8B68];
    u32 unk_8B68;
    u32 unk_8B6C;
};

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

public:
    u32 unk_0000;
    u32 unk_0004;
    u32 unk_0008;
    u32 unk_000C;
    u32 unk_0010;
    UnkClass_02001C04 *unk_0014;
    UnkClass_CGame_0018 *unk_0018;
    UnkClass_CGame_0018 *unk_001C;
    u32 unk_0020;
    u8 unk_0024[0x400];
    u8 unk_0424[0x400];
    u8 unk_0824[0x400];
    UnkClass_020023EC *unk_0C24;
    UnkClass_020023EC *unk_0C28;
    u8 unk_0C2C[0x840];
    u32 unk_146C;
    u8 unk_1470[0x34];
    UnkClass_CGame_14A4 *unk_14A4;
    u8 unk_14A8[0x14];
    u32 unk_14BC;
    u32 unk_14C0;
    UnkClass_0200E330 *unk_14C4;
    UnkClass_0200E330 *unk_14C8;
    u8 unk_14CC[0x114];
    u32 unk_15E0;
};

STATIC_SIZE_ASSERT(CGame, 0x15E4);

#endif // POKERANGER2_CGAME_HPP
