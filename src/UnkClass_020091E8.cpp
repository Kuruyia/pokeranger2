#include "UnkClass_020091E8.hpp"

#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "UnkClass_020B26A0.hpp"
#include "UnkUnion_020843E0.hpp"
#include "file/CBGNCGRFile.hpp"
#include "file/CNCLRFile.hpp"
#include "file/CNSCRFile.hpp"
#include "file/CSmartNNSFndArchive.hpp"

extern "C" {
void sub_0200BC64(UnkClass_0200BBC8 *, u32, u32, u32, void *, u32, u32, u32);
extern void sub_0200BE28(UnkClass_0200BBC8 *, u32, u32, u32, u32);
extern void sub_0200C060(UnkClass_0200BBC8 *);
extern u8 *sub_02018B10(void *, u32);
extern u8 *sub_02018B2C(void *, u32);
extern u8 *sub_02018B48(void *, u32);
extern u8 *sub_02018B64(void *, u32);
extern u8 *sub_02018B80(void *, u32);
extern void sub_02034CF4(void *, u32, u32);

extern char s_BGT_0208a848;
extern char s_data_interface_i059_LZ_bin_0208a84c;
extern char s_BGT_i059_00_NCGR_0208a868;
extern char s_BGT_i059_00_NSCR_0208a87c;
extern char s_BGT_i059_NCLR_0208a890;
extern char s_BGT_i059_00_NCLR_0208a8a0;
extern char s_data_font_prs_jp_NCLR_0208a8b4;
extern UnkClass_020B26A0 MAIN_BSS_020B26A0;
extern UnkUnion_020843E0 DAT_020843e0;
extern char s_d_0208a8cc;
extern u8 DAT_020843c8;
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

void UnkClass_020091E8::sub_02009328(u32 arg0, u32 arg1, u32 arg2, void *arg3, u32 arg4, void *arg5, u32 arg6, u32 arg7, u32 arg8)
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

void UnkClass_020091E8::sub_0200978C(u32 arg0)
{
    u32 v0 = 0;

    switch (arg0) {
    case 0:
        v0 = unk_070;
        break;

    case 1:
        v0 = 9;
        break;

    case 2:
        v0 = 0xA;
        break;
    }

    NNS_GfdRegisterNewVramTransferTask(NNS_GFD_DST_2D_BG_PLTT_MAIN, 0xC0, (u8 *)unk_02C->unk_B8->pRawData + v0 * 0x20, 0x20);
    NNS_GfdRegisterNewVramTransferTask(NNS_GFD_DST_2D_BG1_CHAR_MAIN, 0, (u8 *)(HW_BG_VRAM + (v0 + 1) * 0x100), 0x100);
}

void UnkClass_020091E8::sub_020097FC(size_t arg0, u32 arg1)
{
    unk_0B4[arg0] = arg1;
}

u32 UnkClass_020091E8::sub_02009808(size_t arg0)
{
    return unk_0B4[arg0];
}

BOOL UnkClass_020091E8::sub_02009814(u32 arg0)
{
    switch (arg0 - 0x42) {
    case 0:
        if (!unk_0A4) {
            unk_078 = 1;
        }

        ++unk_07C;
        return FALSE;

    case 3:
        if (!unk_0A8) {
            unk_0A4 = 0;
            unk_0A8 += unk_080;
        } else {
            unk_0A4 = 0;
            unk_0B0 = 0;
            unk_050 = 3;

            sub_0200BE28(unk_14C, 0, 0xF0, ((unk_094 * 0x12 + 1) * 8) + 0x10, 1);
        }

        ++unk_07C;
        unk_078 = 0;

        return FALSE;

    case 16:
        unk_050 = 4;
        sub_0200BE28(unk_14C, 0, 0xF0, ((unk_094 * 0x12 + 1) * 8) + 0x10, 1);

        ++unk_07C;
        unk_078 = 0;

        return FALSE;

    case 15:
        unk_050 = 9;
        sub_0200C060(unk_14C);

        return FALSE;

    case 11:
        unk_048 = ++unk_07C;
        unk_07C = &MAIN_BSS_020B26A0.unk_87E3;
        unk_04C = 1;

        return FALSE;

    case 1: {
        ++unk_07C;

        UnkUnion_020843E0 v0 = DAT_020843e0;
        unk_0AC = v0.raw[*unk_07C & 0xF];

        ++unk_07C;
        ++unk_07C;

        return TRUE;
    }

    case 14: {
        ++unk_07C;
        u32 v0 = sub_02009808(*unk_07C & 0xF);

        ++unk_07C;
        unk_048 = ++unk_07C;
        unk_07C = sub_02018B10(unk_000, v0);

        unk_04C = 1;
        return FALSE;
    }

    case 20: {
        ++unk_07C;
        u32 v0 = sub_02009808(*unk_07C & 0xF);

        ++unk_07C;
        ++unk_07C;
        sub_02034CF4(unk_090, v0, 0x40);

        return FALSE;
    }

    case 7: {
        ++unk_07C;
        u32 v0 = sub_02009808(*unk_07C & 0xF);

        ++unk_07C;
        unk_048 = ++unk_07C;
        unk_07C = sub_02018B2C(unk_000, v0);

        unk_04C = 1;
        return FALSE;
    }

    case 23: {
        ++unk_07C;
        u32 v0 = sub_02009808(*unk_07C & 0xF);

        ++unk_07C;
        unk_048 = ++unk_07C;
        unk_07C = sub_02018B48(unk_000, v0);

        unk_04C = 1;
        return FALSE;
    }

    case 12: {
        ++unk_07C;
        u32 v0 = sub_02009808(*unk_07C & 0xF);

        ++unk_07C;
        unk_048 = ++unk_07C;
        unk_07C = sub_02018B64(unk_000, v0);

        unk_04C = 1;
        return FALSE;
    }

    case 9: {
        ++unk_07C;
        u32 v0 = sub_02009808(*unk_07C & 0xF);

        ++unk_07C;
        ++unk_07C;
        OS_SPrintf(unk_030, &s_d_0208a8cc, v0);

        unk_048 = unk_07C;
        unk_07C = (u8 *)&unk_030;
        unk_04C = 1;

        return FALSE;
    }

    case 13: {
        ++unk_07C;
        u8 v0 = *(unk_07C++);
        u8 v1 = *unk_07C;
        u32 v2 = ((v0 & 0xF) * 0xA) + (v1 & 0xF);

        ++unk_07C;
        unk_048 = ++unk_07C;
        unk_07C = &DAT_020843c8;
        unk_04C = 1;

        u32 v3 = unk_0A4 + 0xE;
        u32 v4 = unk_0A8 + ((((unk_094 * 0x12) + 1) * 8) - 2);

        sub_0200BE28(unk_14C, v2, v3, v4, 1);
        return FALSE;
    }

    case 21: {
        ++unk_07C;
        u32 v0 = *(unk_07C++);
        u32 v1 = *unk_07C;

        u32 v2 = (v1 & 0xF) + ((v0 & 0xF) * 0xA);
        ++unk_07C;
        ++unk_07C;

        if (v2 == 0) {
            unk_09C = unk_074;
            unk_054 = 0;
        } else {
            unk_09C = v2;
            unk_054 = 1;
        }

        return TRUE;
    }

    case 17:
        ++unk_07C;
        ++unk_07C;
        ++unk_07C;
        ++unk_07C;
        ++unk_07C;

        return TRUE;

    case 4: {
        ++unk_07C;
        u32 v0 = sub_02009808(*unk_07C & 0xF);

        ++unk_07C;
        unk_048 = ++unk_07C;
        unk_07C = sub_02018B80(unk_000, v0);

        unk_04C = 1;
        return FALSE;
    }

    default:
        return TRUE;
    }
}
