#ifndef POKERANGER2_UNKCLASS_0200BBC8_HPP
#define POKERANGER2_UNKCLASS_0200BBC8_HPP

#include <nitro.h>

#include "CGame_0024.hpp"
#include "CTouchPanel.hpp"
#include "UnkClass_02001C04.hpp"
#include "UnkClass_0200BBC0.hpp"
#include "common.hpp"

class UnkClass_0200BBC8 {
public:
    UnkClass_0200BBC8();

    void sub_0200BC64(CGame_0024 *arg0, UnkClass_02001C04 *arg1, CTouchPanel *arg2, void *arg3, u32 arg4, u32 arg5, u32 arg6);
    void sub_0200BCF4();
    void sub_0200BE28(u32 arg0, u32 arg1, u32 arg2, u32 arg3);
    void sub_0200BEBC();
    void sub_0200BF58();
    void sub_0200BFB4();
    void sub_0200C060();
    void sub_0200C0C8();
    void sub_0200C2C4();
    BOOL sub_0200C36C(int index);

public:
    CGame_0024 *unk_0000;
    UnkClass_0200BBC0 unk_0004[0x80];
    u32 unk_1604;
    u32 unk_1608;
    u32 unk_160C;
    u32 unk_1610;
    UnkClass_02001C04 *unk_1614;
    CTouchPanel *unk_1618;
    void *unk_161C;
    u32 unk_1620[4];
    u32 unk_1630;
    u32 unk_1634;
    u32 unk_1638;
};

STATIC_SIZE_ASSERT(UnkClass_0200BBC8, 0x163C);

#endif // POKERANGER2_UNKCLASS_0200BBC8_HPP
