#include "UnkClass_020091E8.hpp"

#include <nitro.h>
#include <nnsys.h>

#include "file/CBGNCGRFile.hpp"
#include "file/CNCLRFile.hpp"
#include "file/CNSCRFile.hpp"
#include "file/CSmartNNSFndArchive.hpp"

extern "C" {
void sub_0200BC64(UnkClass_0200BBC8 *, u32, u32, u32, u32, u32, u32, u32);

extern char s_BGT_0208a848;
extern char s_data_interface_i059_LZ_bin_0208a84c;
extern char s_BGT_i059_00_NCGR_0208a868;
extern char s_BGT_i059_00_NSCR_0208a87c;
extern char s_BGT_i059_NCLR_0208a890;
extern char s_BGT_i059_00_NCLR_0208a8a0;
extern char s_data_font_prs_jp_NCLR_0208a8b4;
}

UnkClass_020091E8::UnkClass_020091E8()
{
    sub_020093B4();

    unk_088 = 0;
    unk_08C = 0;
    unk_14C = new UnkClass_0200BBC8();
    unk_090 = 0;
    unk_02C = NULL;
    unk_070 = 0;
    unk_074 = 2;
    unk_084 = NULL;
    unk_004 = 0;
    unk_008 = 0;
    unk_00C = 0;
    unk_010 = 0;
    unk_014 = 0;
    unk_018 = -1;
    unk_01C = -1;
    unk_020 = -1;
    unk_024 = -1;
    unk_028 = -1;
    unk_150 = 0;
    unk_154 = 0;
}

void UnkClass_020091E8::sub_02009274()
{
    if (unk_084 == NULL) {
        return;
    }

    // TODO: This is certainly a "delete unk_084;"
    if (unk_084 != NULL) {
        unk_084->func1();
    }

    unk_084 = NULL;
}

void UnkClass_020091E8::sub_020092A4()
{
    sub_0200AC90();
    sub_0200AED0();
    sub_0200B12C();
    sub_0200B36C();
    sub_0200B59C();
}

void UnkClass_020091E8::sub_020092D4()
{
    sub_02009274();
    sub_020092A4();
    sub_020093B4();

    unk_088 = 0;
    unk_08C = 0;
    unk_090 = 0;

    if (unk_02C == NULL) {
        return;
    }

    delete unk_02C;
    unk_02C = NULL;
}

void UnkClass_020091E8::sub_02009328(u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5, u32 arg6, u32 arg7, u32 arg8)
{
    sub_020092D4();

    unk_0F4 = arg2;
    unk_088 = arg0;
    unk_08C = arg1;
    unk_000 = arg3;
    unk_090 = arg5;

    sub_02009430();
    sub_020095D0();
    sub_02009670();
    sub_0200BC64(unk_14C, arg4, unk_088, unk_08C, unk_090, arg6, arg7, arg8);
}

void UnkClass_020091E8::sub_020093B4()
{
    unk_050 = 0;
    unk_054 = 0;
    unk_058 = 0;
    unk_05C = 0;
    unk_060 = 0x1E;
    unk_064 = 0;
    unk_068 = 0;
    unk_06C = 0x3C;
    unk_04C = 0;
    unk_07C = 0;
    unk_048 = 0;
    unk_09C = unk_074;
    unk_0A0 = 0;
    unk_078 = 0;
    unk_084 = NULL;
    unk_004 = 0;
    unk_008 = 0;
    unk_00C = 0;
    unk_010 = 0;
    unk_014 = 0;
    unk_018 = -1;
    unk_01C = -1;
    unk_020 = -1;
    unk_024 = -1;
    unk_028 = -1;
}

void UnkClass_020091E8::sub_02009430()
{
    CSmartNNSFndArchive *archive = new CSmartNNSFndArchive(&s_BGT_0208a848, &s_data_interface_i059_LZ_bin_0208a84c, 1, 1, 0, 0, 0);

    CBGNCGRFile *ncgrFile = new CBGNCGRFile(&s_BGT_i059_00_NCGR_0208a868, 1, 0, 0);
    CNSCRFile *nscrFile = new CNSCRFile(&s_BGT_i059_00_NSCR_0208a87c, 1, 0, 0);
    CNCLRFile *nclrFile = new CNCLRFile(&s_BGT_i059_NCLR_0208a890, 1, 0, 0);

    if (unk_02C == NULL) {
        unk_02C = new CNCLRFile(&s_BGT_i059_00_NCLR_0208a8a0, 0, 0, 0);
    }

    NNS_G2dBGSetupEx(NNS_G2D_BGSELECT_MAIN1, nscrFile->unk_B8, ncgrFile->unk_B8, nclrFile->unk_B8, NULL, NULL, GX_BG_SCRBASE_0x3000, GX_BG_CHARBASE_0x00000);

    delete nclrFile;
    delete nscrFile;
    delete ncgrFile;
    delete archive;
}

void UnkClass_020091E8::sub_020095D0()
{
    G2_SetBG1Control(GX_BG_SCRSIZE_TEXT_256x256, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x3000, GX_BG_CHARBASE_0x00000, GX_BG_EXTPLTT_01);
    sub_020095F4();
}

void UnkClass_020091E8::sub_020095F4()
{
    CNCLRFile *nclrFile = new CNCLRFile(&s_data_font_prs_jp_NCLR_0208a8b4, 1, 0, 0);
    DC_FlushRange(nclrFile->unk_B8->pRawData, 0x20);
    GX_LoadBGPltt(nclrFile->unk_B8->pRawData, 0x1E0, 0x20);

    delete nclrFile;
}

void UnkClass_020091E8::sub_02009670()
{
    u8 *bgCharPtr = (u8 *)G2_GetBG1CharPtr();

    unk_0F8.func0(&bgCharPtr[0xC00], 0x1C, 0x4, 0x2, 0x19, 0x60, &unk_0F4);
    unk_120.func0(&bgCharPtr[0x1C00], 0xE, 0x2, 0x0, 0x1E, 0xE0, &unk_0F4);

    MIi_CpuClearFast(0x33333333, unk_0F8.unk_00.charBase, 0xE00);
    MIi_CpuClearFast(0x33333333, unk_120.unk_00.charBase, 0x380);
}
