#ifndef POKERANGER2_UNKCLASS_020023EC_HPP
#define POKERANGER2_UNKCLASS_020023EC_HPP

#include <nitro.h>
#include <nnsys.h>

#include "common.hpp"

class UnkClass_020023EC {
public:
    UnkClass_020023EC();

    void sub_02002434(u32 arg0, u32 arg1, u32 arg2, u32 arg3);
    void sub_020027E8();
    int sub_020028A4(s32 arg0, u32 arg1, char *arg2, ...);
    void sub_0200296C(s32 arg0, u32 arg1, char arg2);
    u16 sub_02002998(s32 arg0);
    void sub_020029E4();
    void sub_02002A04(u32 arg0, u32 arg1, int arg2, int arg3, u32 arg4);
    void sub_02002A78(u32 arg0, u32 arg1, u32 arg2, s32 arg3);
    NNS_GFD_DST_TYPE sub_02002AD4(u32 arg0, u32 arg1);

public:
    s32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u16 unk_0C;
    u8 unk_0E[0x2];
    fx32 unk_10[4];
    u16 *unk_20;
    u32 unk_24;
    char unk_28[33];
};

STATIC_SIZE_ASSERT(UnkClass_020023EC, 0x4C);

#endif // POKERANGER2_UNKCLASS_020023EC_HPP
