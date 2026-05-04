#include "CTPEmulator.hpp"

#include <nitro.h>

extern "C" {
fx32 sub_02007068(fx32, u32, u16, u16);
}

CTPEmulator::CTPEmulator()
{
}

CTPEmulator::~CTPEmulator()
{
}

void CTPEmulator::func0()
{
    switch (unk_30) {
    case 0:
    case 1:
    default:
        break;

    case 2:
        ++unk_40;

        unk_38 = sub_02007068(unk_44, unk_4C, unk_40, unk_42);
        unk_3C = sub_02007068(unk_48, unk_50, unk_40, unk_42);

        if (unk_40 >= unk_42) {
            unk_30 = 1;
        }
    }

    unk_0A.x = FX_Whole(unk_38) + (GX_LCD_SIZE_X / 2);
    unk_0A.y = FX_Whole(unk_3C) + (GX_LCD_SIZE_Y / 2);

    unk_04 = unk_34;
    unk_05 = unk_35;
    unk_06 = unk_36;

    unk_34 = 0;
    unk_36 = 0;
}

void CTPEmulator::sub_0200215C(fx32 arg0, fx32 arg1)
{
    unk_38 = arg0;
    unk_3C = arg1;
    unk_34 = 1;
    unk_35 = 1;
    unk_30 = 1;
}

void CTPEmulator::sub_02002178()
{
    unk_34 = 0;
    unk_35 = 0;
    unk_37 = 0;
    unk_36 = 1;
    unk_30 = 0;
}

void CTPEmulator::sub_02002198(u32 arg0, u32 arg1, u16 arg2)
{
    unk_40 = 0;
    unk_42 = arg2;
    unk_44 = unk_38;
    unk_48 = unk_3C;
    unk_4C = arg0;
    unk_50 = arg1;
    unk_30 = 2;
}
