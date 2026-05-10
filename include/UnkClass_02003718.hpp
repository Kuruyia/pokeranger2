#ifndef POKERANGER2_UNKCLASS_02003718_HPP
#define POKERANGER2_UNKCLASS_02003718_HPP

#include <nitro.h>

#include "common.hpp"
#include "sub_02006B60.hpp"

class UnkClass_02003718 {
public:
    UnkClass_02003718();
    ~UnkClass_02003718();

    void sub_02003730();
    void sub_02003788(fx32 arg0, fx32 arg1, fx32 arg2, fx32 arg3, fx32 arg4, fx32 arg5, fx32 arg6);
    void sub_020037B4();
    void sub_0200381C();
    BOOL sub_020038A8(Rectangle *arg0, fx32 arg1);

public:
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    fx32 unk_14;
    fx32 unk_18;
    fx32 unk_1C;
    fx32 unk_20;
    u16 unk_24;
    u16 unk_26;
    u16 unk_28;
};

STATIC_SIZE_ASSERT(UnkClass_02003718, 0x2C);

#endif // POKERANGER2_UNKCLASS_02003718_HPP
