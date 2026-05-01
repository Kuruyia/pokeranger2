#ifndef POKERANGER2_UNKCLASS_0200BBC0_HPP
#define POKERANGER2_UNKCLASS_0200BBC0_HPP

#include <nitro.h>

#include "CGame_0024.hpp"
#include "common.hpp"

class UnkClass_0200BBC0 {
public:
    UnkClass_0200BBC0();
    ~UnkClass_0200BBC0();

    void sub_0200B714(CGame_0024 *arg0);
    void sub_0200B744();
    void sub_0200B818(u32 arg0, u32 arg1, u32 arg2, u32 arg3, s32 arg4, u32 arg5, u32 arg6);

public:
    CGame_0024 *unk_00;
    s32 unk_04;
    u32 unk_08;
    s32 unk_0C;
    u32 unk_10;
    u32 unk_14;
    u32 unk_18;
    u32 unk_1C;
    s32 unk_20;
    u32 unk_24;
    u32 unk_28;
};

STATIC_SIZE_ASSERT(UnkClass_0200BBC0, 0x2C);

#endif // POKERANGER2_UNKCLASS_0200BBC0_HPP
