#ifndef POKERANGER2_UNKCLASS_02001C04_HPP
#define POKERANGER2_UNKCLASS_02001C04_HPP

#include <nitro.h>

#include "common.hpp"

class UnkClass_02001C04 {
public:
    UnkClass_02001C04();
    void sub_02001C20();

public:
    u16 unk_0000;
    u16 unk_0002;
    u16 unk_0004;
    u16 unk_0006;
    u8 unk_0008;
    u8 unk_0009;
    s16 unk_000A[0x10];
    u8 unk_002A;
};

STATIC_SIZE_ASSERT(UnkClass_02001C04, 0x2C);

#endif // POKERANGER2_UNKCLASS_02001C04_HPP
