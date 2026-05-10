#ifndef POKERANGER2_PRIMITIVE_CPRIMITIVE_HPP
#define POKERANGER2_PRIMITIVE_CPRIMITIVE_HPP

#include <nitro.h>

class CPrimitive {
public:
    CPrimitive();
    virtual ~CPrimitive();

    virtual u32 Func0(u32 arg0) = 0;

public:
    u32 unk_04;
    u16 unk_08;
    u8 unk_0A[0x2];
    u32 unk_0C;
    u32 unk_10;
    u32 unk_14;
};

#endif // POKERANGER2_PRIMITIVE_CPRIMITIVE_HPP
