#include "sub_02007254.hpp"

#include <nitro.h>

#include "fx_utils.hpp"
#include "sub_02006000.hpp"

fx32 sub_02007254(fx32 arg0, fx32 arg1)
{
    arg0 = MATH_ABS(arg0);
    arg1 = MATH_ABS(arg1);

    if (arg0 < arg1) {
        fx32 tmp = arg0;
        arg0 = arg1;
        arg1 = tmp;
    }

    return arg0 + FX32_MUL(FX32_DIV(FX32_POW2(arg1), arg0), FX32_CONST(0.429));
}

fx32 sub_020072C4(Point2D *arg0, Point2D *arg1)
{
    return FX32_MUL(arg0->x, arg1->x) + FX32_MUL(arg0->y, arg1->y);
}

fx32 sub_020072F8(Point2D *arg0, Point2D *arg1)
{
    return FX32_MUL(arg0->x, arg1->y) - FX32_MUL(arg0->y, arg1->x);
}

void sub_0200732C(Point2D *arg0, Circle *arg1, Point2D *arg2)
{
    Point2D v0 = arg1->pos - *arg2;
    Point2D v1;

    if (v0.x == 0) {
        v1 = *arg2;

        if (v0.y > 0) {
            v1.y += arg1->r;
        } else if (v0.y < 0) {
            v1.y -= arg1->r;
        }
    } else if (v0.y == 0) {
        v1 = *arg2;

        if (v0.x > 0) {
            v1.x += arg1->r;
        } else if (v0.x < 0) {
            v1.x -= arg1->r;
        }
    } else {
        fx32 v2 = sub_02007254(v0.x, v0.y);

        if (arg1->r > v2) {
            fx32 v3 = arg1->r - v2;

            v0 *= v3;
            v0 /= v2;

            v1 = v0;
            v1 = arg1->pos + v1;
        } else {
            v1 = arg1->pos;
        }
    }

    *arg0 = v1;
}
