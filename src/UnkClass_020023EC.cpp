#include "UnkClass_020023EC.hpp"

#include <nitro.h>
#include <nnsys.h>

#include "file/CBGNCGRFile.hpp"
#include "file/CNCLRFile.hpp"
#include "file/CNSCRFile.hpp"
#include "file/CSmartNNSFndArchive.hpp"
#include "heap.hpp"

extern "C" {
extern NNS_GFD_DST_TYPE DAT_02084288[8][3];
extern char s_BGF_0208a418;
extern char s_data_system_BGFontLZ_bin_0208a41c;
extern char s_BGF_BGFontNCGRLZ_bin_0208a438;
extern char s_BGF_BGFontNSCRLZ_bin_0208a450;
extern char s_BGF_BGFontNCLRLZ_bin_0208a468;
}

UnkClass_020023EC::UnkClass_020023EC()
{
    unk_20 = (u16 *)Heap_AllocSecondary(0x600);

    MI_CpuFill8(&unk_10, 0, sizeof(unk_10));
    unk_10[0] = FX32_CONST(0);
    unk_10[1] = FX32_CONST(0);
    unk_10[2] = FX32_CONST(32);
    unk_10[3] = FX32_CONST(24);
}

void UnkClass_020023EC::sub_02002434(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    CSmartNNSFndArchive *archive = new CSmartNNSFndArchive(&s_BGF_0208a418, &s_data_system_BGFontLZ_bin_0208a41c, 1, 1, 0, 0, 0);

    CBGNCGRFile *ncgrFile = new CBGNCGRFile(&s_BGF_BGFontNCGRLZ_bin_0208a438, 1, 1, 0);
    CNSCRFile *nscrFile = new CNSCRFile(&s_BGF_BGFontNSCRLZ_bin_0208a450, 1, 1, 0);
    CNCLRFile *nclrFile = new CNCLRFile(&s_BGF_BGFontNCLRLZ_bin_0208a468, 1, 1, 0);

    ((u16 *)nclrFile->unk_B8->pRawData)[0] = 0;
    unk_0C = arg1 >> 5;
    unk_00 = arg0;

    switch (arg0) {
    case 0: {
        GXBg01Control bgCtrl = G2_GetBG0Control();
        unk_04 = bgCtrl.screenBase;
        unk_08 = bgCtrl.charBase;

        break;
    }

    case 1: {
        GXBg01Control bgCtrl = G2_GetBG1Control();
        unk_04 = bgCtrl.screenBase;
        unk_08 = bgCtrl.charBase;

        break;
    }

    case 2: {
        GXBg23ControlText bgCtrl = G2_GetBG2ControlText();
        unk_04 = bgCtrl.screenBase;
        unk_08 = bgCtrl.charBase;

        break;
    }

    case 3: {
        GXBg23ControlText bgCtrl = G2_GetBG3ControlText();
        unk_04 = bgCtrl.screenBase;
        unk_08 = bgCtrl.charBase;

        break;
    }
    case 4: {
        GXBg01Control bgCtrl = G2S_GetBG0Control();
        unk_04 = bgCtrl.screenBase;
        unk_08 = bgCtrl.charBase;

        break;
    }

    case 5: {
        GXBg01Control bgCtrl = G2S_GetBG1Control();
        unk_04 = bgCtrl.screenBase;
        unk_08 = bgCtrl.charBase;

        break;
    }

    case 6: {
        GXBg23ControlText bgCtrl = G2S_GetBG2ControlText();
        unk_04 = bgCtrl.screenBase;
        unk_08 = bgCtrl.charBase;

        break;
    }

    case 7: {
        GXBg23ControlText bgCtrl = G2S_GetBG3ControlText();
        unk_04 = bgCtrl.screenBase;
        unk_08 = bgCtrl.charBase;

        break;
    }

    default:
        break;
    }

    NNS_GfdRegisterNewVramTransferTask(sub_02002AD4(arg0, 0), arg1, ncgrFile->unk_B8->pRawData, ncgrFile->unk_B8->szByte);
    NNS_GfdRegisterNewVramTransferTask(sub_02002AD4(arg0, 1), arg2, nscrFile->unk_B8->rawData, nscrFile->unk_B8->szByte);
    NNS_GfdRegisterNewVramTransferTask(sub_02002AD4(arg0, 2), arg3, nclrFile->unk_B8->pRawData, 0xC0);
    NNS_GfdDoVramTransfer();

    delete nclrFile;
    delete nscrFile;
    delete ncgrFile;
    delete archive;
}

void UnkClass_020023EC::sub_020027E8()
{
    if (FX_Whole(unk_10[2]) == 0) {
        return;
    }

    if (FX_Whole(unk_10[3]) == 0) {
        return;
    }

    u16 *v0;

    if (unk_00 >= 0 && unk_00 <= 3) {
        v0 = (u16 *)(HW_BG_VRAM + (unk_04 << 0xB));
    } else {
        v0 = (u16 *)(HW_DB_BG_VRAM + (unk_04 << 0xB));
    }

    int i = 0;
    u32 v1 = FX_Whole(unk_10[2]) << 1;

    for (; i < FX_Whole(unk_10[3]); ++i) {
        u32 v2 = FX_Whole(unk_10[0]) + ((i + FX_Whole(unk_10[1])) << 5);

        DC_FlushRange(&unk_20[v2], v1);
        MI_DmaCopy32(0, &unk_20[v2], &v0[v2], v1);
    }

    sub_020029E4();
}

int UnkClass_020023EC::sub_020028A4(s32 arg0, u32 arg1, char *arg2, ...)
{
    va_list vlist;
    va_start(vlist, arg2);

    int v0 = OS_VSNPrintf((char *)&unk_28, sizeof(unk_28), arg2, vlist);

    for (int i = 0; i < v0; ++i) {
        if (arg0 + i >= (int)sizeof(unk_28) - 1) {
            v0 = i;
            break;
        }

        sub_0200296C(arg0 + i, arg1, unk_28[i]);
    }

    sub_02002A04(arg0, arg1, v0, 1, unk_24);

    unk_10[0] = FX32_CONST(0);
    unk_10[1] = FX32_CONST(0);
    unk_10[2] = FX32_CONST(32);
    unk_10[3] = FX32_CONST(24);

    va_end(vlist);
    return v0;
}

void UnkClass_020023EC::sub_0200296C(s32 arg0, u32 arg1, char arg2)
{
    u16 *v0 = unk_20 + arg0 + (arg1 * 0x20);
    *v0 = unk_0C + sub_02002998(arg2);
}

u16 UnkClass_020023EC::sub_02002998(s32 arg0)
{
    u32 v0;

    if (arg0 >= 0x41 && arg0 <= 0x5F) {
        v0 = arg0 - 0x21;
    } else if (arg0 >= 0x61 && arg0 <= 0x7A) {
        v0 = arg0 - 0x21;
    } else if (arg0 >= 0x20 && arg0 <= 0x3F) {
        v0 = arg0 - 0x20;
    } else {
        v0 = 0x3E;
    }

    return v0;
}

void UnkClass_020023EC::sub_020029E4()
{
    unk_10[0] = FX32_CONST(32);
    unk_10[1] = FX32_CONST(24);
    unk_10[2] = FX32_CONST(0);
    unk_10[3] = FX32_CONST(0);
}

void UnkClass_020023EC::sub_02002A04(u32 arg0, u32 arg1, int arg2, int arg3, u32 arg4)
{
    for (int i = 0; i < arg3; ++i) {
        for (int j = 0; j < arg2; ++j) {
            u32 v10 = (i + arg1) * 0x20;
            u16 *v0 = unk_20 + v10 + (j + arg0);

            *v0 = (*v0 & 0xFFF) | (arg4 << 0xC);
        }
    }
}

void UnkClass_020023EC::sub_02002A78(u32 arg0, u32 arg1, u32 arg2, s32 arg3)
{
    int i = 0;
    u32 size = arg2 * 2;

    for (; i < arg3; ++i) {
        MI_DmaFill16(3, unk_20 + (i + arg1) * 0x20 + arg0, 0, size);
    }
}

NNS_GFD_DST_TYPE UnkClass_020023EC::sub_02002AD4(u32 arg0, u32 arg1)
{
    return DAT_02084288[arg0][arg1];
}
