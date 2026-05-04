#ifndef POKERANGER2_CTPEMULATOR_HPP
#define POKERANGER2_CTPEMULATOR_HPP

#include <nitro.h>

#include "CTouchPanel.hpp"
#include "common.hpp"

class CTPEmulator : public CTouchPanel {
public:
    CTPEmulator();
    virtual ~CTPEmulator();

    virtual void func0();

    void sub_0200215C(fx32 arg0, fx32 arg1);
    void sub_02002178();
    void sub_02002198(u32 arg0, u32 arg1, u16 arg2);

public:
    u32 unk_30;
    u8 unk_34;
    u8 unk_35;
    u8 unk_36;
    u8 unk_37;
    fx32 unk_38;
    fx32 unk_3C;
    u16 unk_40;
    u16 unk_42;
    fx32 unk_44;
    fx32 unk_48;
    u32 unk_4C;
    u32 unk_50;
};

STATIC_SIZE_ASSERT(CTPEmulator, 0x54);

#endif // POKERANGER2_CTPEMULATOR_HPP
