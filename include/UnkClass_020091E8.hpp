#ifndef POKERANGER2_UNKCLASS_020091E8_HPP
#define POKERANGER2_UNKCLASS_020091E8_HPP

#include <nitro.h>

#include "CTouchPanel.hpp"
#include "UnkClass_02001C04.hpp"
#include "UnkClass_0200BBC8.hpp"
#include "common.hpp"
#include "file/CNCLRFile.hpp"

// TODO: Figure out what this really is
class UnkClass_020091E8_004_08 {
public:
    u32 unk_00;
    u8 *unk_04;
};

// TODO: Figure out what this really is
class UnkClass_020091E8_004 {
public:
    u32 unk_00;
    u32 unk_04;
    UnkClass_020091E8_004_08 *unk_08;
};

// TODO: Figure out what this really is
class UnkClass_020091E8_084 {
public:
    virtual void func0();
    virtual void func1();
};

class UnkClass_020091E8_0F8 {
public:
    inline void func0(void *charBase, int areaWidth, int areaHeight, int areaLeft, int areaTop, int charNo, NNSG2dFont **arg6)
    {
        NNS_G2dCharCanvasInitForBG(&unk_00, charBase, areaWidth, areaHeight, NNS_G2D_CHARA_COLORMODE_16);

        NNSG2dFont *v0 = *arg6;
        unk_18 = &unk_00;
        unk_1C = v0;
        unk_20 = 0;
        unk_24 = 4;

        NNS_G2dMapScrToCharText(G2_GetBG1ScrPtr(), areaWidth, areaHeight, areaLeft, areaTop, NNS_G2D_TEXT_BG_WIDTH_256, charNo, 0xF);
    }

public:
    NNSG2dCharCanvas unk_00;
    NNSG2dCharCanvas *unk_18;
    NNSG2dFont *unk_1C;
    u32 unk_20;
    u32 unk_24;
};

class UnkClass_020091E8 {
public:
    UnkClass_020091E8();

    void sub_02009274();
    void sub_020092A4();
    void sub_020092D4();
    void sub_02009328(UnkClass_02001C04 *arg0, CTouchPanel *arg1, NNSG2dFont *arg2, void *arg3, u32 arg4, void *arg5, u32 arg6, u32 arg7, u32 arg8);
    void sub_020093B4();
    void sub_02009430();
    void sub_020095D0();
    void sub_020095F4();
    void sub_02009670();
    void sub_0200978C(u32 arg0);
    void sub_020097FC(size_t arg0, u32 arg1);
    u32 sub_02009808(size_t arg0);
    BOOL sub_02009814(u32 arg0);
    void sub_02009D8C(u8 *arg0, u32 arg1, u32 arg2, u32 arg3);
    BOOL sub_02009ECC();
    void sub_02009F28();
    BOOL sub_02009FB0(u32 arg0, u32 arg1);
    void sub_0200A088(u32 arg0);
    u32 sub_0200A110();
    u32 sub_0200A118();
    u32 sub_0200A804(int arg0);
    BOOL sub_0200A84C();
    BOOL sub_0200A97C();
    BOOL sub_0200A9C0();
    void sub_0200AA04(s32 arg0);
    void sub_0200AA14();
    void sub_0200AA28(s32 arg0);
    void sub_0200AA38();
    void sub_0200AA48(s32 arg0);
    void sub_0200AA58();
    BOOL sub_0200AA68(u32 arg0);
    void sub_0200AA84(u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4);
    void sub_0200AB28(s32 arg0, u32 arg1);
    void sub_0200AC90();
    void sub_0200AD34(u32 arg0, u32 arg1, u32 arg2, u32 arg3);
    void sub_0200AD80(s32 arg0, u32 arg1);
    void sub_0200AED0();
    void sub_0200AF74(u32 arg0, u32 arg1, u32 arg2, u32 arg3);
    void sub_0200AFC0(s32 arg0, u32 arg1);
    void sub_0200B12C();
    void sub_0200B1D0(u32 arg0, u32 arg1, u32 arg2, u32 arg3);
    void sub_0200B21C(s32 arg0, u32 arg1);
    void sub_0200B36C();
    void sub_0200B410(u32 arg0, u32 arg1, u32 arg2, u32 arg3);
    void sub_0200B45C(s32 arg0, u32 arg1);
    void sub_0200B59C();
    void sub_0200B640(u32 arg0, u32 arg1, u32 arg2, u32 arg3);
    void sub_0200B68C();
    BOOL sub_0200B6A4(u32 arg0);
    u32 sub_0200B6D4();

public:
    // TODO: What is this?
    void *unk_000;
    UnkClass_020091E8_004 *unk_004;
    UnkClass_020091E8_004 *unk_008;
    UnkClass_020091E8_004 *unk_00C;
    UnkClass_020091E8_004 *unk_010;
    UnkClass_020091E8_004 *unk_014;
    u32 unk_018;
    u32 unk_01C;
    u32 unk_020;
    u32 unk_024;
    u32 unk_028;
    CNCLRFile *unk_02C;
    // TODO: Size not definitive
    char unk_030[0x18];
    u8 *unk_048;
    u32 unk_04C;
    u32 unk_050;
    u32 unk_054;
    u32 unk_058;
    u32 unk_05C;
    u32 unk_060;
    u32 unk_064;
    u32 unk_068;
    u32 unk_06C;
    u32 unk_070;
    u32 unk_074;
    u32 unk_078;
    u8 *unk_07C;
    u32 unk_080;
    UnkClass_020091E8_084 *unk_084;
    UnkClass_02001C04 *unk_088;
    CTouchPanel *unk_08C;
    // TODO: What is this?
    void *unk_090;
    u32 unk_094;
    u32 unk_098;
    s32 unk_09C;
    s32 unk_0A0;
    s32 unk_0A4;
    s32 unk_0A8;
    s32 unk_0AC;
    s32 unk_0B0;
    // TODO: Size not definitive
    u32 unk_0B4[0x10];
    NNSG2dFont *unk_0F4;
    UnkClass_020091E8_0F8 unk_0F8;
    UnkClass_020091E8_0F8 unk_120;
    u32 unk_148;
    UnkClass_0200BBC8 *unk_14C;
    u32 unk_150;
    u32 unk_154;
};

STATIC_SIZE_ASSERT(UnkClass_020091E8, 0x158);

#endif // POKERANGER2_UNKCLASS_020091E8_HPP
