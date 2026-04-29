#ifndef POKERANGER2_UNKCLASS_0200BBC8_HPP
#define POKERANGER2_UNKCLASS_0200BBC8_HPP

#include <nitro.h>

#include "common.hpp"

class UnkClass_0200BBC8 {
public:
    UnkClass_0200BBC8();

    void sub_0200BEBC();
    BOOL sub_0200BF58();
    BOOL sub_0200BFB4();
    void sub_0200C060();

public:
    u8 unk_0000[0x1608];
    u32 unk_1608;
    u32 unk_160C;
    u8 unk_1610[0x2C];
};

STATIC_SIZE_ASSERT(UnkClass_0200BBC8, 0x163C);

#endif // POKERANGER2_UNKCLASS_0200BBC8_HPP
