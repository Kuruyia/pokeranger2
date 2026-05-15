#include "primitive/CPrimitiveTRIANGLE.hpp"

#include <nitro.h>
#include <nnsys.h>

CPrimitiveTRIANGLE::CPrimitiveTRIANGLE()
{
    MI_CpuFill8(&m_vtxCoords, 0, sizeof(m_vtxCoords));
    MI_CpuFill8(&m_texCoords, 0, sizeof(m_texCoords));

    unk_48 = NULL;
    unk_4C = NULL;
}

CPrimitiveTRIANGLE::~CPrimitiveTRIANGLE()
{
}

u32 CPrimitiveTRIANGLE::Render(CPrimitive_Render_arg *arg0)
{
    if (unk_48 != NULL && unk_4C != NULL) {
        return RenderWithTexture(arg0);
    } else {
        return RenderWithoutTexture(arg0);
    }
}

u32 CPrimitiveTRIANGLE::RenderWithTexture(CPrimitive_Render_arg *arg0)
{
    UnkClass_CPrimitive_ImagePaletteProxy *v0 = unk_4C;
    UnkClass_CPrimitive_ImageProxy *v1 = unk_48;
    u16 v2 = arg0->unk_28;

    G3_TexImageParam(v1->imageProxy.attr.fmt, GX_TEXGEN_TEXCOORD, v1->imageProxy.attr.sizeS, v1->imageProxy.attr.sizeT, GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, v1->imageProxy.attr.plttUse, NNS_G2dGetImageLocation((NNSG2dImageProxy *)&v1->imageProxy.vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_3DMAIN], NNS_G2D_VRAM_TYPE_3DMAIN));
    G3_TexPlttBase(NNS_G2dGetImagePaletteLocation(&v0->imagePlttProxy, NNS_G2D_VRAM_TYPE_3DMAIN), v1->imageProxy.attr.fmt);

    G3_PolygonAttr(GX_LIGHTMASK_NONE, m_polygonMode, GX_CULL_NONE, m_polygonID, m_alpha, GX_POLYGON_ATTR_MISC_NONE);

    G3_Begin(GX_BEGIN_TRIANGLES);
    G3_Color(m_color);

    G3_TexCoord(m_texCoords.x1, m_texCoords.y1);
    G3_Vtx(FX_Whole(m_vtxCoords.x1) << v2, FX_Whole(m_vtxCoords.y1) << v2, m_z);

    G3_TexCoord(m_texCoords.x2, m_texCoords.y2);
    G3_VtxXY(FX_Whole(m_vtxCoords.x2) << v2, FX_Whole(m_vtxCoords.y2) << v2);

    G3_TexCoord(m_texCoords.x3, m_texCoords.y3);
    G3_VtxXY(FX_Whole(m_vtxCoords.x3) << v2, FX_Whole(m_vtxCoords.y3) << v2);

    G3_End();
    G3_PopMtx(0);

    return 1;
}

u32 CPrimitiveTRIANGLE::RenderWithoutTexture(CPrimitive_Render_arg *arg0)
{
    u16 v0 = arg0->unk_28;

    G3_TexImageParam(GX_TEXFMT_NONE, GX_TEXGEN_TEXCOORD, GX_TEXSIZE_S8, GX_TEXSIZE_T8, GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, GX_TEXPLTTCOLOR0_USE, 0);
    G3_PolygonAttr(GX_LIGHTMASK_NONE, m_polygonMode, GX_CULL_NONE, m_polygonID, m_alpha, GX_POLYGON_ATTR_MISC_NONE);

    G3_Begin(GX_BEGIN_TRIANGLES);
    G3_Color(m_color);

    G3_Vtx(FX_Whole(m_vtxCoords.x1) << v0, FX_Whole(m_vtxCoords.y1) << v0, m_z);
    G3_VtxXY(FX_Whole(m_vtxCoords.x2) << v0, FX_Whole(m_vtxCoords.y2) << v0);
    G3_VtxXY(FX_Whole(m_vtxCoords.x3) << v0, FX_Whole(m_vtxCoords.y3) << v0);

    G3_End();
    G3_PopMtx(0);

    return 1;
}
