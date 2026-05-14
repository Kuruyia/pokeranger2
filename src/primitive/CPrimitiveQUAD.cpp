#include "primitive/CPrimitiveQUAD.hpp"

#include <nitro.h>
#include <nnsys.h>

CPrimitiveQUAD::CPrimitiveQUAD()
{
    MI_CpuFill8(&m_vtxCoords, 0, sizeof(m_vtxCoords));
    MI_CpuFill8(&m_texCoords, 0, sizeof(m_texCoords));

    unk_58 = NULL;
    unk_5C = NULL;
}

CPrimitiveQUAD::~CPrimitiveQUAD()
{
}

void CPrimitiveQUAD::SetVertexCoordinates(fx32 x1, fx32 y1, fx32 x2, fx32 y2, fx32 x3, fx32 y3, fx32 x4, fx32 y4, fx32 z)
{
    m_vtxCoords.x1 = x1;
    m_vtxCoords.y1 = y1;
    m_vtxCoords.x2 = x2;
    m_vtxCoords.y2 = y2;
    m_vtxCoords.x3 = x3;
    m_vtxCoords.y3 = y3;
    m_vtxCoords.x4 = x4;
    m_vtxCoords.y4 = y4;
    m_z = z;
}

u32 CPrimitiveQUAD::Render(CPrimitive_Render_arg *arg0)
{
    if (unk_58 != NULL && unk_5C != NULL) {
        return RenderWithTexture(arg0);
    } else {
        return RenderWithoutTexture(arg0);
    }
}

u32 CPrimitiveQUAD::RenderDL(CPrimitive_Render_arg *arg0, GXDLInfo *arg1)
{
    if (unk_58 != NULL && unk_5C != NULL) {
        return RenderWithTextureDL(arg0, arg1);
    } else {
        return RenderWithoutTextureDL(arg0, arg1);
    }
}

u32 CPrimitiveQUAD::RenderWithTexture(CPrimitive_Render_arg *arg0)
{
    UnkClass_CPrimitive_ImagePaletteProxy *v0 = unk_5C;
    UnkClass_CPrimitive_ImageProxy *v1 = unk_58;
    u16 v2 = arg0->unk_28;

    G3_TexImageParam(v1->imageProxy.attr.fmt, GX_TEXGEN_TEXCOORD, v1->imageProxy.attr.sizeS, v1->imageProxy.attr.sizeT, GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, v1->imageProxy.attr.plttUse, NNS_G2dGetImageLocation((NNSG2dImageProxy *)&v1->imageProxy.vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_3DMAIN], NNS_G2D_VRAM_TYPE_3DMAIN));
    G3_TexPlttBase(NNS_G2dGetImagePaletteLocation(&v0->imagePlttProxy, NNS_G2D_VRAM_TYPE_3DMAIN), v1->imageProxy.attr.fmt);

    G3_PolygonAttr(GX_LIGHTMASK_NONE, m_polygonMode, GX_CULL_NONE, m_polygonID, m_alpha, GX_POLYGON_ATTR_MISC_NONE);

    G3_Begin(GX_BEGIN_QUADS);
    G3_Color(m_color);

    G3_TexCoord(m_texCoords.x1, m_texCoords.y1);
    G3_Vtx(FX_Whole(m_vtxCoords.x1) << v2, FX_Whole(m_vtxCoords.y1) << v2, m_z);

    G3_TexCoord(m_texCoords.x2, m_texCoords.y2);
    G3_VtxXY(FX_Whole(m_vtxCoords.x2) << v2, FX_Whole(m_vtxCoords.y2) << v2);

    G3_TexCoord(m_texCoords.x3, m_texCoords.y3);
    G3_VtxXY(FX_Whole(m_vtxCoords.x3) << v2, FX_Whole(m_vtxCoords.y3) << v2);

    G3_TexCoord(m_texCoords.x4, m_texCoords.y4);
    G3_VtxXY(FX_Whole(m_vtxCoords.x4) << v2, FX_Whole(m_vtxCoords.y4) << v2);

    G3_End();
    G3_PopMtx(0);

    return 1;
}

u32 CPrimitiveQUAD::RenderWithoutTexture(CPrimitive_Render_arg *arg0)
{
    u16 v0 = arg0->unk_28;

    G3_TexImageParam(GX_TEXFMT_NONE, GX_TEXGEN_TEXCOORD, GX_TEXSIZE_S8, GX_TEXSIZE_T8, GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, GX_TEXPLTTCOLOR0_USE, 0);
    G3_PolygonAttr(GX_LIGHTMASK_NONE, m_polygonMode, GX_CULL_NONE, m_polygonID, m_alpha, GX_POLYGON_ATTR_MISC_NONE);

    G3_Begin(GX_BEGIN_QUADS);
    G3_Color(m_color);

    G3_Vtx(FX_Whole(m_vtxCoords.x1) << v0, FX_Whole(m_vtxCoords.y1) << v0, m_z);
    G3_VtxXY(FX_Whole(m_vtxCoords.x2) << v0, FX_Whole(m_vtxCoords.y2) << v0);
    G3_VtxXY(FX_Whole(m_vtxCoords.x3) << v0, FX_Whole(m_vtxCoords.y3) << v0);
    G3_VtxXY(FX_Whole(m_vtxCoords.x4) << v0, FX_Whole(m_vtxCoords.y4) << v0);

    G3_End();
    G3_PopMtx(0);

    return 1;
}

u32 CPrimitiveQUAD::RenderWithTextureDL(CPrimitive_Render_arg *arg0, GXDLInfo *arg1)
{
    UnkClass_CPrimitive_ImagePaletteProxy *v0 = unk_5C;
    UnkClass_CPrimitive_ImageProxy *v1 = unk_58;
    u16 v2 = arg0->unk_28;

    G3C_TexImageParam(arg1, v1->imageProxy.attr.fmt, GX_TEXGEN_TEXCOORD, v1->imageProxy.attr.sizeS, v1->imageProxy.attr.sizeT, GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, v1->imageProxy.attr.plttUse, NNS_G2dGetImageLocation((NNSG2dImageProxy *)&v1->imageProxy.vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_3DMAIN], NNS_G2D_VRAM_TYPE_3DMAIN));
    G3C_TexPlttBase(arg1, NNS_G2dGetImagePaletteLocation(&v0->imagePlttProxy, NNS_G2D_VRAM_TYPE_3DMAIN), v1->imageProxy.attr.fmt);

    G3C_PolygonAttr(arg1, GX_LIGHTMASK_NONE, m_polygonMode, GX_CULL_NONE, m_polygonID, m_alpha, GX_POLYGON_ATTR_MISC_NONE);

    G3C_Begin(arg1, GX_BEGIN_QUADS);
    G3C_Color(arg1, m_color);

    G3C_TexCoord(arg1, m_texCoords.x1, m_texCoords.y1);
    G3C_Vtx(arg1, FX_Whole(m_vtxCoords.x1) << v2, FX_Whole(m_vtxCoords.y1) << v2, m_z);

    G3C_TexCoord(arg1, m_texCoords.x2, m_texCoords.y2);
    G3C_VtxXY(arg1, FX_Whole(m_vtxCoords.x2) << v2, FX_Whole(m_vtxCoords.y2) << v2);

    G3C_TexCoord(arg1, m_texCoords.x3, m_texCoords.y3);
    G3C_VtxXY(arg1, FX_Whole(m_vtxCoords.x3) << v2, FX_Whole(m_vtxCoords.y3) << v2);

    G3C_TexCoord(arg1, m_texCoords.x4, m_texCoords.y4);
    G3C_VtxXY(arg1, FX_Whole(m_vtxCoords.x4) << v2, FX_Whole(m_vtxCoords.y4) << v2);

    G3C_End(arg1);
    G3C_PopMtx(arg1, 0);

    return 1;
}

u32 CPrimitiveQUAD::RenderWithoutTextureDL(CPrimitive_Render_arg *arg0, GXDLInfo *arg1)
{
    u16 v0 = arg0->unk_28;

    G3C_TexImageParam(arg1, GX_TEXFMT_NONE, GX_TEXGEN_TEXCOORD, GX_TEXSIZE_S8, GX_TEXSIZE_T8, GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, GX_TEXPLTTCOLOR0_USE, 0);
    G3C_PolygonAttr(arg1, GX_LIGHTMASK_NONE, m_polygonMode, GX_CULL_NONE, m_polygonID, m_alpha, GX_POLYGON_ATTR_MISC_NONE);

    G3C_Begin(arg1, GX_BEGIN_QUADS);
    G3C_Color(arg1, m_color);

    G3C_Vtx(arg1, FX_Whole(m_vtxCoords.x1) << v0, FX_Whole(m_vtxCoords.y1) << v0, m_z);
    G3C_VtxXY(arg1, FX_Whole(m_vtxCoords.x2) << v0, FX_Whole(m_vtxCoords.y2) << v0);
    G3C_VtxXY(arg1, FX_Whole(m_vtxCoords.x3) << v0, FX_Whole(m_vtxCoords.y3) << v0);
    G3C_VtxXY(arg1, FX_Whole(m_vtxCoords.x4) << v0, FX_Whole(m_vtxCoords.y4) << v0);

    G3C_End(arg1);
    G3C_PopMtx(arg1, 0);

    return 1;
}
