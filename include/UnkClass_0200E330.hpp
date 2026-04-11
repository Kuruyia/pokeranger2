#ifndef POKERANGER2_UNKCLASS_0200E330_HPP
#define POKERANGER2_UNKCLASS_0200E330_HPP

#include <nitro.h>

// Size: 0xC7C
class UnkClass_0200E330 {
public:
    inline BOOL func0()
    {
        return unk_0000 & 0x8 ? TRUE : FALSE;
    }

public:
    u16 unk_0000;
    u8 unk_0002;
    u8 unk_0003[0x19];
    u8 unk_001C;
    u8 unk_001D[0x3];
    u16 *unk_0020;
    u8 unk_0024[0x83C];
    u16 unk_0860[2][0x107];
};

#endif // POKERANGER2_UNKCLASS_0200E330_HPP
