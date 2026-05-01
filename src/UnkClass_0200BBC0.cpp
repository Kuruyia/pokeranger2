#include "UnkClass_0200BBC0.hpp"

#include <string.h>

extern "C" {
extern u32 DAT_020843d0[4];
}

void UnkClass_0200BBC0::sub_0200B714(CGame_0024 *arg0)
{
    unk_00 = arg0;
    unk_04 = 0;
    unk_08 = 0;
    unk_0C = 0;
    unk_10 = 0;
    unk_14 = 0;
    unk_18 = 0;
    unk_20 = 0;
    unk_24 = 0;
    unk_28 = 0;
}

void UnkClass_0200BBC0::sub_0200B744()
{
    s32 v0 = unk_0C;

    if (unk_04 <= 1) {
        ++unk_20;

        if (unk_20 == 0x28) {
            unk_20 = 0;
        }

        u32 v1[4];
        memcpy(v1, DAT_020843d0, sizeof(v1));
        v0 += v1[unk_20 / 10];
    }

    if (unk_04 >= 0xF) {
        if (unk_24 != 0) {
            unk_28 = 1;
            v0 = unk_0C;
        } else {
            v0 = unk_0C;
        }
    }

    u32 v2 = unk_1C;
    v2 = ((unk_08 << 0x17) >> 7) | (v2 | ((u8)v0 | (unk_28 << 0x19)));

    unk_00->func0(v2 | 0x100, (unk_18 << 0xC) | unk_14);
}

void UnkClass_0200BBC0::sub_0200B818(u32 arg0, u32 arg1, u32 arg2, u32 arg3, s32 arg4, u32 arg5, u32 arg6)
{
    unk_04 = arg0;
    unk_08 = arg1;
    unk_0C = arg2;
    unk_10 = arg3;

    u32 v0 = 0;

    switch (arg4) {
    case 0x200010:
        v0 = 2;
        break;

    case 0x300010:
        v0 = 3;
        break;

    case 0x10:
    case 0:
        v0 = 0;
        break;

    case 0x100010:
        v0 = 1;
        break;
    }

    switch (unk_04) {
    case 0:
        unk_14 = ((arg5 >> 5) + 0x34) >> v0;
        unk_18 = (arg6 >> 5) + 3;
        unk_1C = 0x40000000;

        break;

    case 1:
        unk_14 = ((arg5 >> 5) + 0x38) >> v0;
        unk_18 = (arg6 >> 5) + 3;
        unk_1C = 0x40000000;

        break;

    case 2:
        unk_14 = (arg5 >> 5) >> v0;
        unk_18 = (arg6 >> 5) + 2;
        unk_1C = 0x40000000;

        break;

    case 3:
        unk_14 = ((arg5 >> 5) + 0x4) >> v0;
        unk_18 = (arg6 >> 5) + 2;
        unk_1C = 0x40000000;

        break;

    case 4:
        unk_14 = ((arg5 >> 5) + 0x8) >> v0;
        unk_18 = (arg6 >> 5) + 2;
        unk_1C = 0x40000000;

        break;

    case 5:
        unk_14 = ((arg5 >> 5) + 0xC) >> v0;
        unk_18 = (arg6 >> 5) + 2;
        unk_1C = 0x40000000;

        break;

    case 6:
        unk_14 = ((arg5 >> 5) + 0x10) >> v0;
        unk_18 = (arg6 >> 5) + 2;
        unk_1C = 0x40000000;

        break;

    case 7:
        unk_14 = ((arg5 >> 5) + 0x14) >> v0;
        unk_18 = (arg6 >> 5) + 4;
        unk_1C = 0x40000000;

        break;

    case 8:
        unk_14 = ((arg5 >> 5) + 0x18) >> v0;
        unk_18 = (arg6 >> 5) + 4;
        unk_1C = 0x40000000;

        break;

    case 9:
        unk_14 = ((arg5 >> 5) + 0x1C) >> v0;
        unk_18 = (arg6 >> 5) + 4;
        unk_1C = 0x40000000;

        break;

    case 10:
        unk_14 = ((arg5 >> 5) + 0x20) >> v0;
        unk_18 = (arg6 >> 5) + 4;
        unk_1C = 0x40000000;

        break;

    case 11:
        unk_14 = ((arg5 >> 5) + 0x24) >> v0;
        unk_18 = (arg6 >> 5) + 4;
        unk_1C = 0x40000000;

        break;

    case 12:
        unk_14 = ((arg5 >> 5) + 0x28) >> v0;
        unk_18 = (arg6 >> 5) + 4;
        unk_1C = 0x40000000;

        break;

    case 13:
        unk_14 = ((arg5 >> 5) + 0x2C) >> v0;
        unk_18 = (arg6 >> 5) + 4;
        unk_1C = 0x40000000;

        break;

    case 14:
        unk_14 = ((arg5 >> 5) + 0x30) >> v0;
        unk_18 = (arg6 >> 5) + 4;
        unk_1C = 0x40000000;

        break;

    case 15:
        unk_14 = ((arg5 >> 5) + 0x44) >> v0;
        unk_18 = (arg6 >> 5) + 1;
        unk_1C = 0xC0000000;

        break;

    case 16:
        unk_14 = ((arg5 >> 5) + 0x84) >> v0;
        unk_18 = arg6 >> 5;
        unk_1C = 0xC0000000;

        break;

    default:
        unk_14 = (((arg5 >> 5) + 0x104) >> v0);
        unk_18 = (arg6 >> 5) + 1;
        unk_1C = 0x40004000;

        break;
    }
}

UnkClass_0200BBC0::UnkClass_0200BBC0()
{
}

UnkClass_0200BBC0::~UnkClass_0200BBC0()
{
}
