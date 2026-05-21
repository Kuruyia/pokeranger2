#include "sub_02006000.hpp"

#include <nitro.h>

#include "fx_utils.hpp"
#include "sub_02007254.hpp"

BOOL sub_02006000(Point2D arg0, Rectangle arg1, u32 arg2)
{
    fx32 v0 = arg1.size.x >> 1;
    fx32 v1 = arg1.size.y >> 1;

    switch (arg2) {
    case 2:
        if (arg1.pos.x - v0 <= arg0.x && arg0.x < arg1.pos.x + v0 && arg1.pos.y - v1 <= arg0.y && arg0.y < arg1.pos.y + v1) {
            return TRUE;
        }

        break;

    case 1:
        if (arg1.pos.x - v0 <= arg0.x && arg0.x <= arg1.pos.x + v0 && arg1.pos.y - v1 <= arg0.y && arg0.y <= arg1.pos.y + v1) {
            return TRUE;
        }

        break;

    default:
    case 0:
        if (arg1.pos.x - v0 < arg0.x && arg0.x < arg1.pos.x + v0 && arg1.pos.y - v1 < arg0.y && arg0.y < arg1.pos.y + v1) {
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
    fx32 v0 = arg1.unk_00.x - arg0.unk_00.x;
    fx32 v1 = arg1.unk_00.y - arg0.unk_00.y;

    if (sub_02007254(v0, v1) <= arg0.unk_08 + arg1.unk_08) {
        if (arg2 != NULL) {
            arg2->x = arg0.unk_00.x + FX32_DIV(FX32_MUL(v0, arg0.unk_08), arg0.unk_08 + arg1.unk_08);
            arg2->y = arg0.unk_00.y + FX32_DIV(FX32_MUL(v1, arg0.unk_08), arg0.unk_08 + arg1.unk_08);
        }

        return TRUE;
    }

    return FALSE;
}

BOOL sub_02006238(UnkStruct_02006164 arg0, UnkStruct_02006238 arg1)
{
    UnkStruct_02006164 v0 = {
        .unk_00 = {
            .x = arg1.unk_00,
            .y = arg1.unk_04,
        },
        .unk_08 = arg1.unk_08,
    };

    if (sub_02006164(arg0, v0, NULL)) {
        s32 v1 = FX_Atan2Idx(arg0.unk_00.y - v0.unk_00.y, arg0.unk_00.x - v0.unk_00.x);

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

BOOL sub_02006764(PointPair2D arg0, UnkStruct_02006164 arg1, Point2D *arg2, s32 arg3)
{
    Point2D v0 = arg1.unk_00 - arg0.p1;
    Point2D v1 = arg0.p2 - arg0.p1;
    u32 v2 = 0;

    if (arg3 > 8) {
        arg3 = 8;
    }

    for (int i = 0; i < arg3; ++i) {
        v2 |= 1 << i;
    }

    if (sub_020072C4(&v1, &v0) < 0) {
        if (FX32_RoundUp(sub_02007254(v0.x, v0.y), v2) < arg1.unk_08) {
            if (arg2 != NULL) {
                *arg2 = arg0.p1;
            }

            return TRUE;
        }
    } else {
        v0 = arg1.unk_00 - arg0.p2;
        v1 = arg0.p1 - arg0.p2;

        if (sub_020072C4(&v1, &v0) < 0) {
            if (FX32_RoundUp(sub_02007254(v0.x, v0.y), v2) < arg1.unk_08) {
                if (arg2 != NULL) {
                    *arg2 = arg0.p2;
                }

                return TRUE;
            }
        } else {
            if (v1.x == 0) {
                fx32 v3 = MATH_ABS(arg1.unk_00.x - arg0.p1.x);

                if (v3 < arg1.unk_08) {
                    if (arg2 != NULL) {
                        arg2->x = arg0.p1.x;
                        arg2->y = arg1.unk_00.y;
                    }

                    return TRUE;
                }
            } else if (v1.y == 0) {
                fx32 v4 = MATH_ABS(arg1.unk_00.y - arg0.p1.y);

                if (v4 < arg1.unk_08) {
                    if (arg2 != NULL) {
                        arg2->x = arg1.unk_00.x;
                        arg2->y = arg0.p1.y;
                    }

                    return TRUE;
                }
            } else {
                fx32 v5 = MATH_ABS(FX32_MUL(v1.y, v0.x) - FX32_MUL(v1.x, v0.y));
                fx32 v6 = FX32_RoundUp(FX32_DIV(v5, sub_02007254(v1.x, v1.y)), v2);

                if (v6 < arg1.unk_08) {
                    if (arg2 != NULL) {
                        fx32 v7 = sub_02007254(v0.x, v0.y);
                        fx32 v8 = FX_Sqrt(FX32_POW2(v7) - FX32_POW2(v6));

                        fx32 v9 = sub_02007254(v1.x, v1.y);
                        fx32 v10 = FX32_DIV(v8, v9);

                        v1.x = FX32_MUL(v1.x, v10);
                        v1.y = FX32_MUL(v1.y, v10);

                        *arg2 = arg0.p2 + v1;
                    }

                    return TRUE;
                }
            }
        }
    }

    return FALSE;
}

s8 sub_02006AE0(PointPair2D arg0, Point2D arg1)
{
    fx32 v0 = FX32_MUL(arg0.p2.x - arg0.p1.x, arg1.y - arg0.p1.y) - FX32_MUL(arg0.p2.y - arg0.p1.y, arg1.x - arg0.p1.x);

    if (v0 < 0) {
        return 1;
    } else if (v0 > 0) {
        return -1;
    } else {
        return 0;
    }
}

BOOL RectanglesOverlap(Rectangle rect1, Rectangle rect2)
{
    fx32 left1 = rect1.pos.x - (rect1.size.x >> 1);
    fx32 top1 = rect1.pos.y - (rect1.size.y >> 1);
    fx32 left2 = rect2.pos.x - (rect2.size.x >> 1);
    fx32 right2 = left2 + rect2.size.x;
    fx32 top2 = rect2.pos.y - (rect2.size.y >> 1);
    fx32 bottom2 = top1 + rect1.size.y;
    fx32 right1 = left1 + rect1.size.x;
    fx32 bottom1 = top2 + rect2.size.y;

    fx32 minLeft = (left1 < left2) ? left1 : left2;
    fx32 maxRight = (right1 > right2) ? right1 : right2;
    fx32 minTop = (top1 < top2) ? top1 : top2;
    fx32 maxBottom = (bottom2 > bottom1) ? bottom2 : bottom1;

    return maxRight - minLeft < rect1.size.x + rect2.size.x && maxBottom - minTop < rect1.size.y + rect2.size.y;
}

BOOL sub_02006C04(PointPair2D arg0, Rectangle arg1, Point2D *arg2)
{
    if (sub_02006000(arg0.p1, arg1, 1)) {
        if (arg2 != NULL) {
            *arg2 = arg0.p1;
        }

        return TRUE;
    }

    PointPair2D v0 = {
        .p1 = {
            .x = arg1.pos.x - (arg1.size.x >> 1),
            .y = arg1.pos.y - (arg1.size.y >> 1),
        },
        .p2 = {
            .x = arg1.pos.x + (arg1.size.x >> 1),
            .y = arg1.pos.y - (arg1.size.y >> 1),
        },
    };

    PointPair2D v1 = {
        .p1 = {
            .x = arg1.pos.x - (arg1.size.x >> 1),
            .y = arg1.pos.y + (arg1.size.y >> 1),
        },
        .p2 = {
            .x = arg1.pos.x + (arg1.size.x >> 1),
            .y = arg1.pos.y + (arg1.size.y >> 1),
        },
    };

    PointPair2D v2 = {
        .p1 = {
            .x = arg1.pos.x - (arg1.size.x >> 1),
            .y = arg1.pos.y - (arg1.size.y >> 1),
        },
        .p2 = {
            .x = arg1.pos.x - (arg1.size.x >> 1),
            .y = arg1.pos.y + (arg1.size.y >> 1),
        },
    };

    PointPair2D v3 = {
        .p1 = {
            .x = arg1.pos.x + (arg1.size.x >> 1),
            .y = arg1.pos.y - (arg1.size.y >> 1),
        },
        .p2 = {
            .x = arg1.pos.x + (arg1.size.x >> 1),
            .y = arg1.pos.y + (arg1.size.y >> 1),
        },
    };

    PointPair2D v4 = arg0;
    Point2D v5;
    BOOL res = FALSE;

    if (sub_02006350(v4, v0, &v5, TRUE)) {
        v4.p2 = v5;
        res = TRUE;
    }

    if (sub_02006350(v4, v1, &v5, TRUE)) {
        v4.p2 = v5;
        res = TRUE;
    }

    if (sub_02006350(v4, v2, &v5, TRUE)) {
        v4.p2 = v5;
        res = TRUE;
    }

    if (sub_02006350(v4, v3, &v5, TRUE)) {
        v4.p2 = v5;
        res = TRUE;
    }

    if (res && arg2 != NULL) {
        *arg2 = v4.p2;
    }

    return res;
}

BOOL sub_02006E30(UnkStruct_02006164 arg0, Rectangle arg1, Point2D *arg2, s32 arg3)
{
    if (MATH_ABS(arg0.unk_00.x - arg1.pos.x) >= arg0.unk_08 + (arg1.size.x >> 1) || MATH_ABS(arg0.unk_00.y - arg1.pos.y) >= arg0.unk_08 + (arg1.size.y >> 1)) {
        return FALSE;
    }

    BOOL v0 = FALSE;
    BOOL v1 = FALSE;

    fx32 v2;
    fx32 v3;

    fx32 v4 = arg1.pos.x - (arg1.size.x >> 1);
    fx32 v5 = arg1.pos.x + (arg1.size.x >> 1);
    fx32 v6 = arg1.pos.y - (arg1.size.y >> 1);
    fx32 v7 = arg1.pos.y + (arg1.size.y >> 1);

    if (arg0.unk_00.x < arg1.pos.x) {
        v2 = v4 - arg0.unk_00.x;
        v0 = TRUE;
    } else {
        v2 = arg0.unk_00.x - v5;
    }

    if (arg0.unk_00.y < arg1.pos.y) {
        v3 = v6 - arg0.unk_00.y;
        v1 = TRUE;
    } else {
        v3 = arg0.unk_00.y - v7;
    }

    PointPair2D v8;

    if ((v3 < 0 || v2 < v3) && v2 >= 0) {
        if (v0) {
            v8.p2.x = v4;
            v8.p1.x = v4;
            v8.p1.y = v6;
            v8.p2.y = v7;
        } else {
            v8.p2.x = v5;
            v8.p1.x = v5;
            v8.p1.y = v6;
            v8.p2.y = v7;
        }
    } else {
        if (v1) {
            v8.p1.x = v4;
            v8.p2.x = v5;
            v8.p2.y = v6;
            v8.p1.y = v6;
        } else {
            v8.p1.x = v4;
            v8.p2.x = v5;
            v8.p2.y = v7;
            v8.p1.y = v7;
        }
    }

    return sub_02006764(v8, arg0, arg2, arg3);
}

BOOL sub_02006F80(UnkStruct_02006164 arg0, Rectangle arg1)
{
    if (MATH_ABS(arg0.unk_00.x - arg1.pos.x) >= arg0.unk_08 + (arg1.size.x >> 1) || MATH_ABS(arg0.unk_00.y - arg1.pos.y) >= arg0.unk_08 + (arg1.size.y >> 1)) {
        return FALSE;
    }

    fx32 v0 = arg1.pos.x - (arg1.size.x >> 1);

    if (arg0.unk_00.x >= v0) {
        v0 = arg1.pos.x + (arg1.size.x >> 1);

        if (arg0.unk_00.x <= v0) {
            v0 = arg0.unk_00.x;
        }
    }

    fx32 v1 = arg1.pos.y - (arg1.size.y >> 1);

    if (arg0.unk_00.y >= v1) {
        v1 = arg1.pos.y + (arg1.size.y >> 1);

        if (arg0.unk_00.y <= v1) {
            v1 = arg0.unk_00.y;
        }
    }

    fx32 v2 = MATH_ABS(arg0.unk_00.x - v0);
    fx32 v3 = MATH_ABS(arg0.unk_00.y - v1);

    if (FX32_POW2(v2) + FX32_POW2(v3) > FX32_POW2(arg0.unk_08)) {
        return FALSE;
    }

    return TRUE;
}
