#include "primitive/CSoftwareSprite.hpp"

#include <nitro.h>
#include <nnsys.h>

extern "C" {
extern NNSGfdPlttKey MAIN_BSS_020AF320;
extern NNSG2dImagePaletteProxy MAIN_BSS_020AF324;
}

// NOTE: This needs to be a u32 array for .data to be ordered correctly.
static u32 DAT_0208A7B4[] = {
    0xFFFFFFFF,
    0xFFFFFFFF,
    0xFFFFFFFF,
    0xFFFFFFFF,
    0xFFFFFFFF,
    0xFFFFFFFF,
    0xFFFFFFFF,
    0xFFFFFFFF,
};

static NNSG2dPaletteData DAT_0208A7A4 = {
    .fmt = GX_TEXFMT_PLTT16,
    .bExtendedPlt = FALSE,
    .szByte = sizeof(DAT_0208A7B4),
    .pRawData = DAT_0208A7B4,
};

u32 CSoftwareSprite::sub_020050C8()
{
    MAIN_BSS_020AF320 = NNS_GfdAllocLnkPlttVram(sizeof(DAT_0208A7B4), FALSE, 0);
    NNS_G2dInitImagePaletteProxy(&MAIN_BSS_020AF324);
    NNS_G2dLoadPalette(&DAT_0208A7A4, (MAIN_BSS_020AF320 << 16) >> 13, NNS_G2D_VRAM_TYPE_3DMAIN, &MAIN_BSS_020AF324);

    return 1;
}

u32 CSoftwareSprite::sub_02005120()
{
    if (MAIN_BSS_020AF320 != NNS_GFD_ALLOC_ERROR_PLTTKEY) {
        NNS_GfdFreeLnkPlttVram(MAIN_BSS_020AF320);
        MAIN_BSS_020AF320 = NNS_GFD_ALLOC_ERROR_PLTTKEY;
    }

    return 1;
}

CSoftwareSprite::CSoftwareSprite()
{
    unk_2C = NULL;
    unk_30 = NULL;
    unk_34 = NULL;
    unk_38 = NULL;
    m_cellDataIdx = 0;

    SetTransformParams(FX32_CONST(0), FX32_CONST(0), FX32_CONST(1), FX32_CONST(1), 0, FX32_CONST(0));

    unk_3C = FALSE;
    m_clipping.y2 = 0;
    m_clipping.y1 = 0;
    m_clipping.x2 = 0;
    m_clipping.x1 = 0;
    m_clipping.enabled = FALSE;
}

CSoftwareSprite::~CSoftwareSprite()
{
}

void CSoftwareSprite::SetTransformParams(fx32 posX, fx32 posY, fx32 scaleX, fx32 scaleY, u16 rotAngle, fx32 posZ)
{
    m_coords[0] = posX;
    m_coords[1] = posY;

    m_scale[0] = scaleX;
    m_scale[1] = scaleY;

    m_rotAngle = rotAngle;
    m_z = posZ;
}

u32 CSoftwareSprite::Render(CPrimitive_Render_arg *arg0)
{
    if (m_alpha == 0) {
        return 0;
    }

    u16 v0 = 0;

    if (unk_2C != NULL) {
        v0 += sub_0200527C(arg0);
    } else if (unk_30 != NULL) {
        v0 += sub_020058BC(arg0);
    }

    return v0;
}

u16 CSoftwareSprite::sub_0200527C(CPrimitive_Render_arg *arg0)
{
    UnkClass_CPrimitive_ImagePaletteProxy *v3;
    UnkClass_CPrimitive_ImageProxy *v4;

    const NNSG2dCellData *cellData = NNS_G2dGetCellDataByIdx(unk_38->unk_B8, m_cellDataIdx);

    if (cellData == NULL) {
        OS_Terminate();
    }

    u16 v1 = arg0->unk_28;

    G3_RestoreMtx(0);
    G3_Translate(FX_Whole(m_coords[0]) << v1, FX_Whole(m_coords[1]) << v1, 0);

    if (m_scale[0] != FX32_CONST(1) || m_scale[1] != FX32_CONST(1) || m_rotAngle != 0) {
        MtxFx33 v2;
        MTX_RotZ33(&v2, FX_SinIdx(m_rotAngle), FX_CosIdx(m_rotAngle));
        G3_MultMtx33(&v2);
        G3_Scale(m_scale[0], m_scale[1], FX32_CONST(1));
    }

    v4 = unk_2C;
    v3 = unk_34;

    G3_TexImageParam(v4->imageProxy.attr.fmt, GX_TEXGEN_TEXCOORD, v4->imageProxy.attr.sizeS, v4->imageProxy.attr.sizeT, GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, v4->imageProxy.attr.plttUse, NNS_G2dGetImageLocation((NNSG2dImageProxy *)&v4->imageProxy.vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_3DMAIN], NNS_G2D_VRAM_TYPE_3DMAIN));
    G3_Color(m_color);
    G3_PolygonAttr(GX_LIGHTMASK_NONE, m_polygonMode, GX_CULL_NONE, m_polygonID, m_alpha, GX_POLYGON_ATTR_MISC_NONE);

    G3_Begin(GX_BEGIN_QUADS);

    s16 v6 = 0;

    for (u16 i = 0; i < cellData->numOAMAttrs; ++i) {
        GXOamAttr oamAttr;
        NNS_G2dCopyCellAsOamAttr(cellData, i, &oamAttr);
        u16 charNo = oamAttr.charNo;

        s16 objPosX = FixObjPosX(GetObjPosX(&oamAttr));
        s16 objPosY = FixObjPosY(GetObjPosY(&oamAttr));

        GXOamShape oamShape = NNS_G2dGetOAMSize(&oamAttr);
        u16 objSizeX = NNS_G2dGetOamSizeX(&oamShape);
        u16 objSizeY = NNS_G2dGetOamSizeY(&oamShape);

        fx32 objTexX1 = (charNo % 32) << 3 << FX32_SHIFT;
        fx32 objTexY1 = (charNo / 32) << 3 << FX32_SHIFT;
        fx32 objTexX2 = objTexX1 + (objSizeX << FX32_SHIFT);
        fx32 objTexY2 = objTexY1 + (objSizeY << FX32_SHIFT);

        if (oamAttr.flipH) {
            fx32 tmp = objTexX1;
            objTexX1 = objTexX2 - 1;
            objTexX2 = tmp - 1;
        }

        if (oamAttr.flipV) {
            fx32 tmp = objTexY1;
            objTexY1 = objTexY2 - 1;
            objTexY2 = tmp - 1;
        }

        if (m_clipping.enabled) {
            if (objPosX >= m_clipping.x2 || objPosX + objSizeX <= m_clipping.x1 || objPosY >= m_clipping.y2 || objPosY + objSizeY <= m_clipping.y1) {
                continue;
            }

            if (objPosX < m_clipping.x1) {
                s16 delta = m_clipping.x1 - objPosX;
                objPosX += delta;
                objSizeX -= delta;

                objTexX1 += (oamAttr.flipH)
                    ? -(delta << FX32_SHIFT)
                    : (delta << FX32_SHIFT);
            }

            if (objPosX + objSizeX > m_clipping.x2) {
                s16 delta = (objPosX + objSizeX) - m_clipping.x2;
                objSizeX -= delta;

                objTexX2 += (oamAttr.flipH)
                    ? (delta << FX32_SHIFT)
                    : -(delta << FX32_SHIFT);
            }

            if (objPosY < m_clipping.y1) {
                s16 delta = m_clipping.y1 - objPosY;
                objPosY += delta;
                objSizeY -= delta;

                objTexY1 += (oamAttr.flipV)
                    ? -(delta << FX32_SHIFT)
                    : (delta << FX32_SHIFT);
            }

            if (objPosY + objSizeY > m_clipping.y2) {
                s16 delta = (objPosY + objSizeY) - m_clipping.y2;
                objSizeY -= delta;

                objTexY2 += (oamAttr.flipV)
                    ? (delta << FX32_SHIFT)
                    : -(delta << FX32_SHIFT);
            }
        }

        if (unk_3C != TRUE) {
            u8 oamPlttNo = oamAttr.cParam;
            G3_TexPlttBase(NNS_G2dGetImagePaletteLocation(&v3->imagePlttProxy, NNS_G2D_VRAM_TYPE_3DMAIN) + oamPlttNo * 32, v4->imageProxy.attr.fmt);
        } else {
            G3_TexPlttBase(NNS_G2dGetImagePaletteLocation(&MAIN_BSS_020AF324, NNS_G2D_VRAM_TYPE_3DMAIN), v4->imageProxy.attr.fmt);
        }

        G3_TexCoord(objTexX1, objTexY1);
        G3_Vtx(objPosX << v1, objPosY << v1, v6 + m_z);

        G3_TexCoord(objTexX1, objTexY2);
        G3_VtxXY(objPosX << v1, (objPosY + objSizeY) << v1);

        G3_TexCoord(objTexX2, objTexY2);
        G3_VtxXY((objPosX + objSizeX) << v1, (objPosY + objSizeY) << v1);

        G3_TexCoord(objTexX2, objTexY1);
        G3_VtxXY((objPosX + objSizeX) << v1, objPosY << v1);

        --v6;
    }

    G3_End();
    G3_PopMtx(0);

    return cellData->numOAMAttrs;
}

u16 CSoftwareSprite::sub_020058BC(CPrimitive_Render_arg *arg0)
{
    UnkClass_CPrimitive_ImagePaletteProxy *v3;
    UnkClass_CPrimitive_ImageProxy *v4;

    const NNSG2dCellData *cellData = NNS_G2dGetCellDataByIdx(unk_38->unk_B8, m_cellDataIdx);

    u16 v1 = arg0->unk_28;

    G3_RestoreMtx(0);
    G3_Translate(FX_Whole(m_coords[0]) << v1, FX_Whole(m_coords[1]) << v1, 0);

    if (m_scale[0] != FX32_CONST(1) || m_scale[1] != FX32_CONST(1) || m_rotAngle != 0) {
        MtxFx33 rotMtx;
        MTX_RotZ33(&rotMtx, FX_SinIdx(m_rotAngle), FX_CosIdx(m_rotAngle));
        G3_MultMtx33(&rotMtx);

        G3_Scale(m_scale[0], m_scale[1], FX32_CONST(1));
    }

    v3 = unk_34;
    v4 = unk_30->unk_00;

    G3_Color(m_color);
    G3_PolygonAttr(GX_LIGHTMASK_NONE, m_polygonMode, GX_CULL_NONE, m_polygonID, m_alpha, GX_POLYGON_ATTR_MISC_NONE);

    G3_Begin(GX_BEGIN_QUADS);

    s16 v6 = 0;
    s32 texAddrOffset = 0;

    for (u16 i = 0; i < cellData->numOAMAttrs; ++i) {
        GXOamAttr oamAttr;
        NNS_G2dCopyCellAsOamAttr(cellData, i, &oamAttr);

        s16 objPosX = FixObjPosX(GetObjPosX(&oamAttr));
        s16 objPosY = FixObjPosY(GetObjPosY(&oamAttr));

        GXOamShape oamShape = NNS_G2dGetOAMSize(&oamAttr);
        u16 objRenderSizeX = (s16)NNS_G2dGetOamSizeX(&oamShape);
        u16 objRenderSizeY = (s16)NNS_G2dGetOamSizeY(&oamShape);

        u16 objSizeX = objRenderSizeX;
        u16 objSizeY = objRenderSizeY;

        fx32 objTexX1 = 0;
        fx32 objTexY1 = 0;
        fx32 objTexX2 = objRenderSizeX << FX32_SHIFT;
        fx32 objTexY2 = objRenderSizeY << FX32_SHIFT;

        if (oamAttr.flipH) {
            objTexX1 = objTexX2 - 1;
            objTexX2 = -1;
        }

        if (oamAttr.flipV) {
            objTexY1 = objTexY2 - 1;
            objTexY2 = -1;
        }

        if (m_clipping.enabled) {
            if (objPosX >= m_clipping.x2 || objPosX + objRenderSizeX <= m_clipping.x1 || objPosY >= m_clipping.y2 || objPosY + objRenderSizeY <= m_clipping.y1) {
                texAddrOffset += (objRenderSizeX * objRenderSizeY) >> 1;
                continue;
            }

            if (objPosX < m_clipping.x1) {
                s16 delta = m_clipping.x1 - objPosX;
                objPosX += delta;
                objRenderSizeX -= delta;

                objTexX1 += (oamAttr.flipH)
                    ? -(delta << FX32_SHIFT)
                    : (delta << FX32_SHIFT);
            }

            if (objPosX + objRenderSizeX > m_clipping.x2) {
                s16 delta = (objPosX + objRenderSizeX) - m_clipping.x2;
                objRenderSizeX -= delta;

                objTexX2 += (oamAttr.flipH)
                    ? (delta << FX32_SHIFT)
                    : -(delta << FX32_SHIFT);
            }

            if (objPosY < m_clipping.y1) {
                s16 delta = m_clipping.y1 - objPosY;
                objPosY += delta;
                objRenderSizeY -= delta;

                objTexY1 += (oamAttr.flipV)
                    ? -(delta << FX32_SHIFT)
                    : (delta << FX32_SHIFT);
            }

            if (objPosY + objRenderSizeY > m_clipping.y2) {
                s16 delta = (objPosY + objRenderSizeY) - m_clipping.y2;
                objRenderSizeY -= delta;

                objTexY2 += (oamAttr.flipV)
                    ? (delta << FX32_SHIFT)
                    : -(delta << FX32_SHIFT);
            }
        }

        NNSG2dImageAttr *imgAttr = &v4->imageProxy.attr;
        G3_TexImageParam(imgAttr->fmt, GX_TEXGEN_TEXCOORD, (GXTexSizeS)ObjSizeToTexSize(objSizeX), (GXTexSizeT)ObjSizeToTexSize(objSizeY), GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, imgAttr->plttUse, unk_30->GetUnk08() + texAddrOffset);

        if (unk_3C != 1) {
            u8 oamPlttNo = oamAttr.cParam;
            G3_TexPlttBase(NNS_G2dGetImagePaletteLocation(&v3->imagePlttProxy, NNS_G2D_VRAM_TYPE_3DMAIN) + oamPlttNo * 32, imgAttr->fmt);
        } else {
            G3_TexPlttBase(NNS_G2dGetImagePaletteLocation(&MAIN_BSS_020AF324, NNS_G2D_VRAM_TYPE_3DMAIN), imgAttr->fmt);
        }

        G3_TexCoord(objTexX1, objTexY1);
        G3_Vtx(objPosX << v1, objPosY << v1, v6 + m_z);

        G3_TexCoord(objTexX1, objTexY2);
        G3_VtxXY(objPosX << v1, (objPosY + objRenderSizeY) << v1);

        G3_TexCoord(objTexX2, objTexY2);
        G3_VtxXY((objPosX + objRenderSizeX) << v1, (objPosY + objRenderSizeY) << v1);

        G3_TexCoord(objTexX2, objTexY1);
        G3_VtxXY((objPosX + objRenderSizeX) << v1, objPosY << v1);

        --v6;
        texAddrOffset += (objSizeX * objSizeY) >> 1;
    }

    G3_End();
    G3_PopMtx(0);

    return cellData->numOAMAttrs;
}

s16 CSoftwareSprite::GetObjPosX(const GXOamAttr *oamAttr)
{
    u32 x;
    u32 y;

    G2_GetOBJPosition(oamAttr, &x, &y);
    return x;
}

s16 CSoftwareSprite::GetObjPosY(const GXOamAttr *oamAttr)
{
    u32 x;
    u32 y;

    G2_GetOBJPosition(oamAttr, &x, &y);
    return y;
}

s16 CSoftwareSprite::FixObjPosX(s16 objPosX)
{
    if (objPosX > (GX_OAM_ATTR01_X_MASK >> GX_OAM_ATTR01_X_SHIFT >> 1)) {
        objPosX |= 0xFF00;
    }

    return objPosX;
}

s16 CSoftwareSprite::FixObjPosY(s16 objPosY)
{
    if (objPosY > (GX_OAM_ATTR01_Y_MASK >> GX_OAM_ATTR01_Y_SHIFT >> 1)) {
        objPosY |= 0xFF00;
    }

    return objPosY;
}

u32 CSoftwareSprite::ObjSizeToTexSize(u16 objSize)
{
    switch (objSize) {
    case 0x8:
        return 0;

    case 0x10:
        return 1;

    case 0x20:
        return 2;

    case 0x40:
        return 3;

    case 0x80:
        return 4;

    case 0x100:
        return 5;

    case 0x200:
        return 6;

    case 0x400:
        return 7;
    }
}

u16 CSoftwareSprite::GetCellNumOAMAttrs(u16 cellIdx)
{
    if (unk_38 == NULL) {
        return 0;
    }

    const NNSG2dCellData *cellData = NNS_G2dGetCellDataByIdx(unk_38->unk_B8, cellIdx);
    return cellData->numOAMAttrs;
}
