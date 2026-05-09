#include "UnkClass_02003718.hpp"

extern "C" {
BOOL sub_02006B60(UnkStruct_02006B60_arg arg0, UnkStruct_02006B60_arg arg1);

extern UnkStruct_02006B60_arg DAT_020842f8;
}

UnkClass_02003718::UnkClass_02003718()
{
    sub_02003730();
}

UnkClass_02003718::~UnkClass_02003718()
{
}

void UnkClass_02003718::sub_02003730()
{
    unk_1C = FX32_CONST(0);
    unk_20 = FX32_CONST(0);
    unk_26 = 22;
    unk_28 = 2;

    sub_02003788(FX32_CONST(0), FX32_CONST(GX_LCD_SIZE_Y), FX32_CONST(0), FX32_CONST(GX_LCD_SIZE_X), FX32_CONST(-1024), FX32_CONST(1024), FX32_CONST(16));
}

void UnkClass_02003718::sub_02003788(fx32 arg0, fx32 arg1, fx32 arg2, fx32 arg3, fx32 arg4, fx32 arg5, fx32 arg6)
{
    unk_00 = arg0;
    unk_04 = arg1;
    unk_08 = arg2;
    unk_0C = arg3;
    unk_10 = arg4;
    unk_14 = arg5;
    unk_18 = arg6;
}

void UnkClass_02003718::sub_020037B4()
{
    G3_ViewPort(0, 0, GX_LCD_SIZE_X - 1, GX_LCD_SIZE_Y - 1);
    G3_OrthoW(unk_00, unk_04, unk_08, unk_0C, unk_10, unk_14, unk_18, NULL);
    G3_MtxMode(GX_MTXMODE_POSITION);
}

void UnkClass_02003718::sub_0200381C()
{
    G3_Translate(unk_1C + FX32_CONST(GX_LCD_SIZE_X / 2), unk_20 + FX32_CONST(GX_LCD_SIZE_Y / 2), FX32_CONST(0));

    fx32 scale = 1 << unk_26;
    G3_Scale(scale, scale, scale);

    MtxFx33 mtx;
    MTX_RotZ33(&mtx, FX_SinIdx(unk_24), FX_CosIdx(unk_24));
    G3_MultMtx33(&mtx);
}

BOOL UnkClass_02003718::sub_020038A8(UnkStruct_02006B60_arg *arg0, fx32 arg1)
{
    UnkStruct_02006B60_arg v0 = DAT_020842f8;

    v0.unk_00 = -unk_1C;
    v0.unk_04 = -unk_20;

    if (arg1 != FX32_CONST(1)) {
        v0.unk_08 = (v0.unk_08 * (fx64)arg1) >> FX32_SHIFT;
        v0.unk_0C = (v0.unk_0C * (fx64)arg1) >> FX32_SHIFT;
    }

    return sub_02006B60(v0, *arg0);
}
