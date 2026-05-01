#ifndef POKERANGER2_CGAME_0024_HPP
#define POKERANGER2_CGAME_0024_HPP

#include <nitro.h>

#include "common.hpp"

class CGame_0024 {
public:
    inline void func0(s32 arg0, s16 arg1)
    {
        unk_00 = arg0;
        unk_04 = arg1;
    }

public:
    s32 unk_00;
    s16 unk_04;
    s16 unk_06;
};

STATIC_SIZE_ASSERT(CGame_0024, 0x8);

#endif // POKERANGER2_CGAME_0024_HPP
