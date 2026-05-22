#ifndef POKERANGER2_INTERPOLATION_HPP
#define POKERANGER2_INTERPOLATION_HPP

#include <nitro.h>

fx32 LinearInterpolate(fx32 p0, fx32 p1, s32 p, s32 n);
fx32 QuadraticInterpolate(fx32 p0, fx32 p1, fx32 p2, s32 p, s32 n);
fx32 CubicInterpolate(fx32 p0, fx32 p1, fx32 p2, fx32 p3, s32 p, s32 n);

#endif // POKERANGER2_INTERPOLATION_HPP
