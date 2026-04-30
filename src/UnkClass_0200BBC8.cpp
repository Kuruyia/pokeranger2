#include "UnkClass_0200BBC8.hpp"

#include "CGame_0024.hpp"
#include "file/CNCGRFile.hpp"
#include "file/CNCLRFile.hpp"
#include "file/CSmartNNSFndArchive.hpp"

extern "C" {
BOOL sub_02034C44(void *, u32);

extern char s_ICN_0208a9c8;
extern char s_data_interface_i058_LZ_bin_0208a9cc;
extern char s_ICN_i058_00_NCGR_0208a9e8;
extern char s_ICN_i058_NCLR_0208a9fc;
}

UnkClass_0200BBC8::UnkClass_0200BBC8()
{
    unk_0000 = 0;
    unk_1604 = 0;
    unk_1608 = 0;
    unk_160C = 0;
    unk_1610 = 0;

    for (int i = 0; i < 4; ++i) {
        unk_1620[i] = 0x1000;
    }

    unk_1614 = 0;
    unk_1618 = 0;
    unk_161C = 0;
    unk_1630 = 0x10;
    unk_1634 = 0x4000;
    unk_1638 = 0;
}

void UnkClass_0200BBC8::sub_0200BC64(CGame_0024 *arg0, UnkClass_02001C04 *arg1, CTouchPanel *arg2, void *arg3, u32 arg4, u32 arg5, u32 arg6)
{
    unk_1630 = arg4;
    unk_1634 = arg5;
    unk_1638 = arg6;

    if (arg0 != NULL) {
        unk_0000 = arg0;
    }

    if (arg1 != NULL) {
        unk_1614 = arg1;
    }

    if (arg2 != NULL) {
        unk_1618 = arg2;
    }

    if (arg3 != NULL) {
        unk_161C = arg3;
    }

    sub_0200BCF4();

    for (int i = 0; i < 0x80; ++i) {
        unk_0004[i].sub_0200B714(&unk_0000[i]);
    }
}

void UnkClass_0200BBC8::sub_0200BCF4()
{
    CSmartNNSFndArchive *archive = new CSmartNNSFndArchive(&s_ICN_0208a9c8, &s_data_interface_i058_LZ_bin_0208a9cc, 1, 1, 0, 0, 0);

    CNCGRFile *ncgrFile = new CNCGRFile(&s_ICN_i058_00_NCGR_0208a9e8, 1, 0, 0);
    MI_CpuCopyFast(ncgrFile->unk_B8->pRawData, (void *)(HW_OBJ_VRAM + unk_1634), ncgrFile->unk_B8->szByte);

    if (ncgrFile != NULL) {
        delete ncgrFile;
    }

    CNCLRFile *nclrFile = new CNCLRFile(&s_ICN_i058_NCLR_0208a9fc, 1, 0, 0);
    MI_CpuCopyFast(nclrFile->unk_B8->pRawData, (void *)(HW_OBJ_PLTT + unk_1638), nclrFile->unk_B8->szByte);

    if (nclrFile != NULL) {
        delete nclrFile;
    }

    delete archive;
}

void UnkClass_0200BBC8::sub_0200BE28(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    GX_SetVisiblePlane(GX_GetVisiblePlane() | GX_PLANEMASK_OBJ);

    for (int i = 0; i < 0x80; ++i) {
        if (unk_0004[i].unk_10 == 0) {
            unk_0004[i].sub_0200B818(arg0, arg1, arg2, arg3, unk_1630, unk_1634, unk_1638);
            return;
        }
    }
}

void UnkClass_0200BBC8::sub_0200BEBC()
{
    for (int i = 0; i < 4; ++i) {
        s16 v0 = unk_1620[i] / 16;
        CGame_0024 *ptr = &unk_0000[i * 4];

        ptr[0].unk_06 = v0;
        ptr[1].unk_06 = 0;
        ptr[2].unk_06 = 0;
        ptr[3].unk_06 = v0;
    }

    if (unk_1604 == 1) {
        sub_0200C0C8();
    }

    for (int i = 0; i < 0x80; ++i) {
        if (unk_0004[i].unk_10 == 1) {
            unk_0004[i].sub_0200B744();
        }
    }
}

void UnkClass_0200BBC8::sub_0200BF58()
{
    for (int i = 0; i < 0x80; ++i) {
        unk_0004[i].sub_0200B714(&unk_0000[i]);
    }

    for (int i = 0; i < 4; ++i) {
        unk_1620[i] = 0x1000;
    }
}

void UnkClass_0200BBC8::sub_0200BFB4()
{
    for (int i = 0; i < 0x80; ++i) {
        switch (unk_0004[i].unk_04) {
        case 0:
        case 1:
        case 15:
        case 16:
            unk_0004[i].sub_0200B714(&unk_0000[i]);
            break;

        default:
            if (unk_0004[i].unk_0C == 0x18 || unk_0004[i].unk_0C == 0xA8) {
                unk_0004[i].unk_0C -= 0x10;
            } else {
                unk_0004[i].sub_0200B714(&unk_0000[i]);
            }

            break;
        }
    }
}

void UnkClass_0200BBC8::sub_0200C060()
{
    sub_0200BE28(0xF, 0x20, 0x40, 1);
    sub_0200BE28(0x10, 0xA0, 0x40, 1);

    unk_1604 = 1;
    unk_1608 = 1;
    unk_160C = 0;
    unk_1610 = 10;
}

void UnkClass_0200BBC8::sub_0200C0C8()
{
    if (unk_1608 == 2) {
        if (unk_1610 != 0) {
            if (unk_1610 == 40) {
                unk_1620[1] = 0x1400;
            } else if (unk_1610 == 36) {
                unk_1620[1] = 0x1000;
            }

            --unk_1610;
            return;
        }

        unk_1604 = 0;
        unk_1608 = 0;
        return;
    }

    if (unk_1610 != 0) {
        --unk_1610;
        return;
    }

    if ((u16)(unk_1614->unk_0002 & 1) != 0) {
        // "A" physical button press
        unk_1608 = 2;
        unk_160C = 0;
        unk_1610 = 0x28;

        if (!sub_0200C36C(6)) {
            sub_0200C36C(0x43);
        }
    } else if ((u16)(unk_1614->unk_0002 & 2) != 0) {
        // "B" physical button press
        unk_1608 = 2;
        unk_160C = 1;
        unk_1610 = 0x28;

        if (!sub_0200C36C(8)) {
            sub_0200C36C(0x44);
        }
    } else if (unk_1618->unk_04 != 0) {
        if (unk_1618->unk_0C >= 0x40 && unk_1618->unk_0C <= 0x80 && unk_1618->unk_0A >= 0x20 && unk_1618->unk_0A <= 0x60) {
            // "Yes" virtual button touch
            unk_1608 = 2;
            unk_160C = 0;
            unk_1610 = 0x28;

            if (!sub_0200C36C(6)) {
                sub_0200C36C(0x43);
            }
        } else if (unk_1618->unk_0C >= 0x40 && unk_1618->unk_0C <= 0x80 && unk_1618->unk_0A >= 0xA0 && unk_1618->unk_0A <= 0xE0) {
            // "No" virtual button touch
            unk_1608 = 2;
            unk_160C = 1;
            unk_1610 = 0x28;

            if (!sub_0200C36C(8)) {
                sub_0200C36C(0x44);
            }
        }
    }

    if (unk_1608 == 2) {
        sub_0200C2C4();
    }
}

void UnkClass_0200BBC8::sub_0200C2C4()
{
    for (int i = 0; i < 0x80; ++i) {
        if (unk_0004[i].unk_10 == 1 && unk_0004[i].unk_04 == 0xF) {
            if (unk_160C == 0) {
                unk_0004[i].unk_24 = 1;
            } else {
                unk_0004[i].sub_0200B714(&unk_0000[i]);
            }
        } else if (unk_0004[i].unk_10 == 1 && unk_0004[i].unk_04 == 0x10) {
            if (unk_160C == 1) {
                unk_0004[i].unk_24 = 1;
            } else {
                unk_0004[i].sub_0200B714(&unk_0000[i]);
            }
        }
    }
}

BOOL UnkClass_0200BBC8::sub_0200C36C(int index)
{
    if (unk_161C != 0) {
        return sub_02034C44(unk_161C, index);
    }

    return FALSE;
}
