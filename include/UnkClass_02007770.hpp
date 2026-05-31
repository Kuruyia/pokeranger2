#ifndef POKERANGER2_UNKCLASS_02007770_HPP
#define POKERANGER2_UNKCLASS_02007770_HPP

#include <nitro.h>

#include "UnkClass_020074D4.hpp"
#include "common.hpp"
#include "file/CNCERFile.hpp"

class UnkClass_02007770 {
public:
    UnkClass_02007770();
    ~UnkClass_02007770();

    void sub_02007798();
    void sub_020077B4();
    void sub_020077CC(UnkClass_020074D4 *arg0);
    void sub_020077E4(CNCERFile *arg0);
    void sub_02007848();
    void sub_02007854();
    u32 sub_02007880(const NNSG2dCellData *cellData);
    u32 sub_020078E4(u16 arg0);
    u32 sub_020079B8(u8 *arg0, u8 arg1, u8 arg2, u16 arg3);
    u32 sub_02007A94(u32 arg0);

public:
    UnkClass_020074D4 *unk_00;
    CNCERFile *unk_04;
    u32 unk_08;
    u16 unk_0C;
    u32 unk_10;
    u8 *unk_14;
};

STATIC_SIZE_ASSERT(UnkClass_02007770, 0x18);

#endif // POKERANGER2_UNKCLASS_02007770_HPP
