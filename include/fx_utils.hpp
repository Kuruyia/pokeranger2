#ifndef POKERANGER2_FX_UTILS_HPP
#define POKERANGER2_FX_UTILS_HPP

#define FX32_MUL(a, b) (fx32)(((fx64)(a) * (b)) >> FX32_SHIFT)
#define FX32_DIV(a, b) (fx32)(((fx64)(a) << FX32_SHIFT) / (b))
#define FX32_POW2(a)   FX32_MUL(a, a)

#endif // POKERANGER2_FX_UTILS_HPP
