#include "interpolation.hpp"

#include <nitro.h>

#include "fx_utils.hpp"

static fx32 CalculateBezierCurveInterpolant(s32 p, s32 n);

fx32 LinearInterpolate(fx32 p0, fx32 p1, s32 p, s32 n)
{
    fx32 t = CalculateBezierCurveInterpolant(p, n);
    fx32 invT = FX32_CONST(1) - t;

    return FX32_MUL(p0, invT) + FX32_MUL(p1, t);
}

fx32 QuadraticInterpolate(fx32 p0, fx32 p1, fx32 p2, s32 p, s32 n)
{
    fx32 t = CalculateBezierCurveInterpolant(p, n);
    fx32 invT = FX32_CONST(1) - t;

    fx32 b0 = FX32_POW2(invT);
    fx32 b1 = FX32_MUL(invT, FX32_MUL(t, FX32_CONST(2)));
    fx32 b2 = FX32_POW2(t);

    fx32 res = 0;

    res += FX32_MUL(p0, b0);
    res += FX32_MUL(p1, b1);
    res += FX32_MUL(p2, b2);

    return res;
}

fx32 CubicInterpolate(fx32 p0, fx32 p1, fx32 p2, fx32 p3, s32 p, s32 n)
{
    fx32 t = CalculateBezierCurveInterpolant(p, n);
    fx32 invT = FX32_CONST(1) - t;

    fx32 b0 = FX32_POW3(invT);
    fx32 b1 = FX32_MUL(FX32_MUL(t, FX32_POW2(invT)), FX32_CONST(3));
    fx32 b2 = FX32_MUL(FX32_MUL(invT, FX32_POW2(t)), FX32_CONST(3));
    fx32 b3 = FX32_POW3(t);

    fx32 res = 0;

    res += FX32_MUL(p0, b0);
    res += FX32_MUL(p1, b1);
    res += FX32_MUL(p2, b2);
    res += FX32_MUL(p3, b3);

    return res;
}

fx32 CalculateBezierCurveInterpolant(s32 p, s32 n)
{
    if (p <= 0) {
        return FX32_CONST(0);
    } else if (p >= n) {
        return FX32_CONST(1);
    }

    return FX32_DIV(p << FX32_SHIFT, n << FX32_SHIFT);
}
