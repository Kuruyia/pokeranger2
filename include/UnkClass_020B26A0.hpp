#ifndef POKERANGER2_UNKCLASS_020B26A0_HPP
#define POKERANGER2_UNKCLASS_020B26A0_HPP

#include <nitro.h>

class UnkClass_020B26A0 {
public:
    void sub_0201630C(RTCTime *time, RTCDate *date);

public:
    u8 unk_0000[0x87D4];
    u32 unk_87D4;
    u8 unk_87D8;
    u8 unk_87D9;
    u8 unk_87DA;
    u8 unk_87DB[0x3A9];
    RTCDate unk_8B84;
    RTCTime unk_8B94;
    // TODO: Confirm this class is that big.
    // Not 100% sure, but very likely. This size is needed to match functions
    // sub_0200F8BC and ov0_0214F830.
    u8 unk_8B98[0x8B99];
};

#endif // POKERANGER2_UNKCLASS_020B26A0_HPP
