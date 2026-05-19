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
