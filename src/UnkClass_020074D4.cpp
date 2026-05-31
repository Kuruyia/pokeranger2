#include "UnkClass_020074D4.hpp"

#include "CGame.hpp"
#include "file/CNCGRFile.hpp"

UnkClass_020074D4::UnkClass_020074D4()
{
    sub_0200755C();
}

UnkClass_020074D4::UnkClass_020074D4(const char *arg0, u32 arg1, u32 arg2)
{
    sub_0200755C();
    sub_02007590(arg0, arg1, arg2, 0);
}

UnkClass_020074D4::UnkClass_020074D4(NNSG2dCharacterData *arg0)
{
    sub_0200755C();
    sub_0200763C(arg0);
}

UnkClass_020074D4::~UnkClass_020074D4()
{
    sub_020076B0();
}

void UnkClass_020074D4::sub_0200755C()
{
    unk_00 = NULL;
    unk_04 = NULL;

    NNS_G2dInitImageProxy(&unk_08);

    unk_30 = 0;
    unk_32 = 0;
    unk_34 = 0;
    unk_38 = 0;
}

void UnkClass_020074D4::sub_02007590(const char *arg0, u32 arg1, u32 arg2, u32 arg3)
{
    sub_020076B0();
    unk_00 = new CNCGRFile(arg0, arg3, arg1, arg2);
    NNS_G2dInitImageProxy(&unk_08);

    unk_30 = 0;
    unk_04 = unk_00->unk_B8;

    unk_08.attr.fmt = unk_04->pixelFmt;
    unk_08.attr.bExtendedPlt = FALSE;
    unk_08.attr.plttUse = GX_TEXPLTTCOLOR0_TRNS;
    unk_08.attr.mappingType = unk_04->mapingType;

    unk_38 = unk_04->szByte;
    unk_32 = unk_04->W * 8;
    unk_34 = unk_04->H * 8;
}

void UnkClass_020074D4::sub_0200763C(NNSG2dCharacterData *arg0)
{
    sub_020076B0();
    NNS_G2dInitImageProxy(&unk_08);

    unk_30 = 0;
    unk_04 = arg0;

    unk_08.attr.fmt = unk_04->pixelFmt;
    unk_08.attr.bExtendedPlt = FALSE;
    unk_08.attr.plttUse = GX_TEXPLTTCOLOR0_TRNS;
    unk_08.attr.mappingType = unk_04->mapingType;

    unk_38 = unk_04->szByte;
    unk_32 = unk_04->W * 8;
    unk_34 = unk_04->H * 8;
}

void UnkClass_020074D4::sub_020076B0()
{
    if (unk_00 != NULL) {
        delete unk_00;
        unk_00 = NULL;
    }

    unk_04 = NULL;
}

void UnkClass_020074D4::sub_020076E8(u32 arg0)
{
    NNS_G2dLoadImage2DMapping(unk_04, arg0, NNS_G2D_VRAM_TYPE_3DMAIN, &unk_08);
    unk_2C = arg0;
    unk_30 = 1;
}

void UnkClass_020074D4::sub_02007714(u32 arg0)
{
    unk_30 = 0;
    unk_2C = arg0;
    s_game->sub_020100E4(sub_02007744, this);
}

void UnkClass_020074D4::sub_02007744(void *data)
{
    UnkClass_020074D4 *v0 = (UnkClass_020074D4 *)data;

    if (v0 == NULL) {
        return;
    }

    NNS_G2dLoadImage2DMapping(v0->unk_04, v0->unk_2C, NNS_G2D_VRAM_TYPE_3DMAIN, &v0->unk_08);
    v0->unk_30 = 1;
}
