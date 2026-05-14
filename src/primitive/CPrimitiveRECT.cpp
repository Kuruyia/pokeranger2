#include "primitive/CPrimitiveRECT.hpp"

#include <nitro.h>
#include <nnsys.h>

CPrimitiveRECT::CPrimitiveRECT()
{
    MI_CpuFill8(&m_rectangle, 0, sizeof(m_rectangle));
    MI_CpuFill8(&m_texCoords, 0, sizeof(m_texCoords));

    unk_38 = NULL;
    unk_3C = NULL;
}

CPrimitiveRECT::~CPrimitiveRECT()
{
}

void CPrimitiveRECT::SetRectangle(fx32 x, fx32 y, fx32 w, fx32 h, fx32 z)
{
    m_rectangle.x = x;
    m_rectangle.y = y;
    m_rectangle.w = w;
    m_rectangle.h = h;
    m_z = z;
}

void CPrimitiveRECT::sub_02003C00(UnkClass_CPrimitiveRECT_02003C00 *arg0, CPrimitiveRECT *arg1)
{
    volatile UnkClass_CPrimitiveRECT_02003C00 v0;
    fx32 v1 = arg1->m_rectangle.x;
    fx32 v2 = arg1->m_rectangle.y;

    v0.unk_00 = v1;
    arg0->unk_00 = v1;

    v0.unk_04 = v2;
    arg0->unk_04 = v2;
}

u32 CPrimitiveRECT::Render(CPrimitive_Render_arg *arg0)
{
    if (unk_38 != NULL && unk_3C != NULL) {
        return RenderWithTexture(arg0);
    } else {
        return RenderWithoutTexture(arg0);
    }
}

u32 CPrimitiveRECT::RenderWithTexture(CPrimitive_Render_arg *arg0)
{
    UnkClass_CPrimitive_ImagePaletteProxy *v0 = unk_3C;
    UnkClass_CPrimitive_ImageProxy *v1 = unk_38;
    u16 v2 = arg0->unk_28;

    fx32 halfW = m_rectangle.w >> 1;
    fx32 halfH = m_rectangle.h >> 1;

    G3_TexImageParam(v1->imageProxy.attr.fmt, GX_TEXGEN_TEXCOORD, v1->imageProxy.attr.sizeS, v1->imageProxy.attr.sizeT, GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, v1->imageProxy.attr.plttUse, NNS_G2dGetImageLocation((NNSG2dImageProxy *)&v1->imageProxy.vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_3DMAIN], NNS_G2D_VRAM_TYPE_3DMAIN));
    G3_TexPlttBase(NNS_G2dGetImagePaletteLocation(&v0->imagePlttProxy, NNS_G2D_VRAM_TYPE_3DMAIN), v1->imageProxy.attr.fmt);

    G3_Color(m_color);
    G3_PolygonAttr(GX_LIGHTMASK_NONE, m_polygonMode, GX_CULL_NONE, m_polygonID, m_alpha, GX_POLYGON_ATTR_MISC_NONE);

    G3_Begin(GX_BEGIN_QUADS);

    G3_TexCoord(m_texCoords.x1, m_texCoords.y1);
    G3_Vtx(FX_Whole(m_rectangle.x - halfW) << v2, FX_Whole(m_rectangle.y - halfH) << v2, m_z);

    G3_TexCoord(m_texCoords.x1, m_texCoords.y2);
    G3_VtxXY(FX_Whole(m_rectangle.x - halfW) << v2, FX_Whole(m_rectangle.y + halfH) << v2);

    G3_TexCoord(m_texCoords.x2, m_texCoords.y2);
    G3_VtxXY(FX_Whole(m_rectangle.x + halfW) << v2, FX_Whole(m_rectangle.y + halfH) << v2);

    G3_TexCoord(m_texCoords.x2, m_texCoords.y1);
    G3_VtxXY(FX_Whole(m_rectangle.x + halfW) << v2, FX_Whole(m_rectangle.y - halfH) << v2);

    G3_End();
    G3_PopMtx(0);

    return 1;
}

u32 CPrimitiveRECT::RenderWithoutTexture(CPrimitive_Render_arg *arg0)
{
    u16 v0 = arg0->unk_28;

    fx32 halfW = m_rectangle.w / 2;
    fx32 halfH = m_rectangle.h / 2;

    G3_TexImageParam(GX_TEXFMT_NONE, GX_TEXGEN_TEXCOORD, GX_TEXSIZE_S8, GX_TEXSIZE_T8, GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, GX_TEXPLTTCOLOR0_USE, 0);

    G3_Color(m_color);
    G3_PolygonAttr(GX_LIGHTMASK_NONE, m_polygonMode, GX_CULL_NONE, m_polygonID, m_alpha, GX_POLYGON_ATTR_MISC_NONE);

    G3_Begin(GX_BEGIN_QUADS);

    G3_Vtx(FX_Whole(m_rectangle.x - halfW) << v0, FX_Whole(m_rectangle.y - halfH) << v0, m_z);
    G3_VtxXY(FX_Whole(m_rectangle.x - halfW) << v0, FX_Whole(m_rectangle.y + halfH) << v0);
    G3_VtxXY(FX_Whole(m_rectangle.x + halfW) << v0, FX_Whole(m_rectangle.y + halfH) << v0);
    G3_VtxXY(FX_Whole(m_rectangle.x + halfW) << v0, FX_Whole(m_rectangle.y - halfH) << v0);

    G3_End();
    G3_PopMtx(0);

    return 1;
}
