#include "UnkClass_02007770.hpp"

#include <nnsys.h>

#include "UnkClass_020074D4.hpp"
#include "file/CNCERFile.hpp"
#include "heap.hpp"

#define GET_OAM_SHAPE(attr) (u8)(((attr)->attr0 & 0xC000) >> 0xE)
#define GET_OAM_SIZE(attr)  (u8)(((attr)->attr1 & 0xC000) >> 0xE)

extern "C" {
extern u32 DAT_02084308[4][4];
extern u32 DAT_02084348[4][4];
extern u32 DAT_02084388[4][4];
}

UnkClass_02007770::UnkClass_02007770()
{
    sub_02007798();
}

UnkClass_02007770::~UnkClass_02007770()
{
    sub_020077B4();
}

void UnkClass_02007770::sub_02007798()
{
    unk_00 = NULL;
    unk_04 = NULL;
    unk_10 = 0;
    unk_14 = NULL;
    unk_08 = 0;
}

void UnkClass_02007770::sub_020077B4()
{
    sub_02007848();
    sub_02007854();
}

void UnkClass_02007770::sub_020077CC(UnkClass_020074D4 *arg0)
{
    sub_02007848();
    unk_00 = arg0;
}

void UnkClass_02007770::sub_020077E4(CNCERFile *arg0)
{
    sub_02007854();
    unk_04 = arg0;

    u32 v0 = 0;

    for (u16 i = 0;; ++i) {
        const NNSG2dCellData *cellData = NNS_G2dGetCellDataByIdx(arg0->unk_B8, i);

        if (cellData == NULL) {
            break;
        }

        u32 v1 = sub_02007880(cellData);

        if (v0 < v1) {
            v0 = v1;
        }
    }

    unk_10 = v0 * 32;
    unk_14 = (u8 *)Heap_Alloc(unk_10);
}

void UnkClass_02007770::sub_02007848()
{
    unk_00 = NULL;
}

void UnkClass_02007770::sub_02007854()
{
    if (unk_14 != NULL) {
        Heap_Free(unk_14);
        unk_14 = NULL;
    }

    unk_04 = NULL;
}

u32 UnkClass_02007770::sub_02007880(const NNSG2dCellData *cellData)
{
    u32 res = 0;
    NNSG2dCellOAMAttrData *iter = cellData->pOamAttrArray;

    for (int i = 0; i < cellData->numOAMAttrs; ++i) {
        res += DAT_02084348[GET_OAM_SHAPE(iter)][GET_OAM_SIZE(iter)];
        ++iter;
    }

    return res;
}

u32 UnkClass_02007770::sub_020078E4(u16 arg0)
{
    if (unk_04 == NULL) {
        return 0;
    }

    const NNSG2dCellData *cellData = NNS_G2dGetCellDataByIdx(unk_04->unk_B8, arg0);

    if (cellData == NULL) {
        return 0;
    }

    u32 res = 0;
    int i = 0;
    NNSG2dCellOAMAttrData *iter = cellData->pOamAttrArray;

    for (; i < cellData->numOAMAttrs; ++i) {
        res += sub_020079B8(&unk_14[res], GET_OAM_SHAPE(iter), GET_OAM_SIZE(iter), iter->attr2 & GX_OAM_ATTR2_NAME_MASK);
        ++iter;
    }

    DC_FlushRange(unk_14, unk_10);
    unk_0C = arg0;

    return res;
}

u32 UnkClass_02007770::sub_020079B8(u8 *arg0, u8 arg1, u8 arg2, u16 arg3)
{
    unsigned res = 0;
    u32 v0;
    u32 v1 = (DAT_02084308[arg1][arg2] * 8) / 2;
    u32 v2 = unk_00->unk_04->szByte;
    u8 *v3 = unk_00->func0();
    u8 *v4 = (v3 + ((arg3 % 32) * 4)) + ((((arg3 & 0xFFFF) / 32) * unk_00->unk_32) * 4);
    v0 = DAT_02084388[arg1][arg2] * 8;

    for (int i = 0; i < v0; ++i) {
        if (v4 - v3 < v2) {
            MI_CpuCopy8(v4, arg0, v1);
        } else {
            MI_CpuClear8(arg0, v1);
        }

        arg0 += v1;
        res += v1;

        v4 += unk_00->unk_32 >> 1;
    }

    return res;
}

u32 UnkClass_02007770::sub_02007A94(u32 arg0)
{
    u32 v0 = unk_08;
    unk_08 = arg0;

    return v0;
}
