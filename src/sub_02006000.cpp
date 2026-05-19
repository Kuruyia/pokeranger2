#include "sub_02006000.hpp"

#include <nitro.h>

#include "fx_utils.hpp"
#include "sub_02006B60.hpp"
#include "sub_02007254.hpp"

BOOL sub_02006000(Point2D arg0, Point2D arg1, UnkStruct_02006000 arg2)
{
    fx32 v0 = arg2.unk_00 >> 1;
    fx32 v1 = arg2.unk_04 >> 1;

    switch (arg2.unk_08) {
    case 2:
        if (arg1.x - v0 <= arg0.x && arg0.x < arg1.x + v0 && arg1.y - v1 <= arg0.y && arg0.y < arg1.y + v1) {
            return TRUE;
        }

        break;

    case 1:
        if (arg1.x - v0 <= arg0.x && arg0.x <= arg1.x + v0 && arg1.y - v1 <= arg0.y && arg0.y <= arg1.y + v1) {
            return TRUE;
        }

        break;

    default:
    case 0:
        if (arg1.x - v0 < arg0.x && arg0.x < arg1.x + v0 && arg1.y - v1 < arg0.y && arg0.y < arg1.y + v1) {
            return TRUE;
        }

        break;
    }

    return FALSE;
}

BOOL sub_02006100(Point2D arg0, Point2D arg1, UnkStruct_02006100 arg2)
{
    fx64 v0 = arg0.x - arg1.x;
    fx64 v1 = arg0.y - arg1.y;

    return FX32_POW2(v0) + FX32_POW2(v1) <= FX32_POW2(arg2.unk_00);
}

BOOL sub_02006164(UnkStruct_02006164 arg0, UnkStruct_02006164 arg1, Point2D *arg2)
{
    fx32 v0 = arg1.unk_00 - arg0.unk_00;
    fx32 v1 = arg1.unk_04 - arg0.unk_04;

    if (sub_02007254(v0, v1) <= arg0.unk_08 + arg1.unk_08) {
        if (arg2 != NULL) {
            arg2->x = arg0.unk_00 + FX32_DIV(FX32_MUL(v0, arg0.unk_08), arg0.unk_08 + arg1.unk_08);
            arg2->y = arg0.unk_04 + FX32_DIV(FX32_MUL(v1, arg0.unk_08), arg0.unk_08 + arg1.unk_08);
        }

        return TRUE;
    }

    return FALSE;
}

BOOL sub_02006238(UnkStruct_02006164 arg0, UnkStruct_02006238 arg1)
{
    UnkStruct_02006164 v0 = {
        .unk_00 = arg1.unk_00,
        .unk_04 = arg1.unk_04,
        .unk_08 = arg1.unk_08,
    };

    if (sub_02006164(arg0, v0, NULL)) {
        s32 v1 = FX_Atan2Idx(arg0.unk_04 - v0.unk_04, arg0.unk_00 - v0.unk_00);

        s32 v2 = arg1.unk_10 + (arg1.unk_10 >> 0x1F);
        s32 v3 = arg1.unk_0C + (v2 >> 1);
        s32 v4 = arg1.unk_0C - (v2 >> 1);

        v4 = (u16)v4;
        v3 = (u16)v3;
        v1 = (u16)v1;

        if (v3 > v4) {
            if (v4 <= v1 && v1 <= v3) {
                return TRUE;
            }
        } else if (v3 < v4) {
            if (v4 <= v1 || v1 <= v3) {
                return TRUE;
            }
        } else if (v3 == v1) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL sub_02006350(PointPair2D arg0, PointPair2D arg1, Point2D *arg2, BOOL arg3)
{
    if (!arg3) {
        s8 v0 = sub_02006AE0(arg0, arg1.p1) * sub_02006AE0(arg0, arg1.p2);

        if (v0 >= 0) {
            return FALSE;
        }

        s8 v1 = sub_02006AE0(arg1, arg0.p1) * sub_02006AE0(arg1, arg0.p2);

        if (v1 >= 0) {
            return FALSE;
        }
    } else {
        s8 v2 = sub_02006AE0(arg0, arg1.p1) * sub_02006AE0(arg0, arg1.p2);

        if (v2 > 0) {
            return FALSE;
        }

        s8 v3 = sub_02006AE0(arg1, arg0.p1) * sub_02006AE0(arg1, arg0.p2);

        if (v3 > 0) {
            return FALSE;
        }
    }

    if (arg2 != NULL) {
        fx32 v4 = arg0.p1.x - arg0.p2.x;
        fx32 v5 = arg0.p2.y - arg0.p1.y;
        fx32 v8 = -(FX32_MUL(v5, arg0.p1.x) + FX32_MUL(v4, arg0.p1.y));

        fx32 v6 = arg1.p1.x - arg1.p2.x;
        fx32 v7 = arg1.p2.y - arg1.p1.y;
        fx32 v10 = -(FX32_MUL(v7, arg1.p1.x) + FX32_MUL(v6, arg1.p1.y));

        fx32 v11 = FX32_MUL(v8, v6) - FX32_MUL(v10, v4);
        fx32 v12 = FX32_MUL(v5, v10) - FX32_MUL(v7, v8);

        fx32 v9 = FX32_MUL(v4, v7) - FX32_MUL(v6, v5);
        arg2->x = FX32_DIV(v11, v9);
        arg2->y = FX32_DIV(v12, v9);
    }

    return TRUE;
}

BOOL sub_02006610(PointPair2D arg0, PointPair2D arg1, Point2D *arg2)
{
    if (arg0.p1.x >= arg0.p2.x) {
        if ((arg0.p1.x < arg1.p1.x && arg0.p1.x < arg1.p2.x) || (arg0.p2.x > arg1.p1.x && arg0.p2.x > arg1.p2.x)) {
            return FALSE;
        }
    } else {
        if ((arg0.p2.x < arg1.p1.x && arg0.p2.x < arg1.p2.x) || (arg0.p1.x > arg1.p1.x && arg0.p1.x > arg1.p2.x)) {
            return FALSE;
        }
    }

    if (arg0.p1.y >= arg0.p2.y) {
        if ((arg0.p1.y < arg1.p1.y && arg0.p1.y < arg1.p2.y) || (arg0.p2.y > arg1.p1.y && arg0.p2.y > arg1.p2.y)) {
            return FALSE;
        }
    } else {
        if ((arg0.p2.y < arg1.p1.y && arg0.p2.y < arg1.p2.y) || (arg0.p1.y > arg1.p1.y && arg0.p1.y > arg1.p2.y)) {
            return FALSE;
        }
    }

    return sub_02006350(arg0, arg1, arg2, FALSE);
}
