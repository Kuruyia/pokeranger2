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
    void sub_0200B818(u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5, u32 arg6);

public:
    u8 unk_00[0x4];
    s32 unk_04;
    u8 unk_08[0x4];
    u32 unk_0C;
    u32 unk_10;
    u8 unk_14[0x10];
    u32 unk_24;
    u8 unk_28[0x4];
};

STATIC_SIZE_ASSERT(UnkClass_0200BBC0, 0x2C);

#endif // POKERANGER2_UNKCLASS_0200BBC0_HPP
