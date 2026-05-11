#include "primitive/CPrimitiveLINE.hpp"

#include <nitro.h>

CPrimitiveLINE::CPrimitiveLINE()
{
    MI_CpuFill8(&m_coords, 0, sizeof(m_coords));
}

CPrimitiveLINE::~CPrimitiveLINE()
{
}

u32 CPrimitiveLINE::Render(CPrimitive_Render_arg *arg0)
{
    u16 v0 = arg0->unk_28;

    G3_TexImageParam(GX_TEXFMT_NONE, GX_TEXGEN_TEXCOORD, GX_TEXSIZE_S8, GX_TEXSIZE_T8, GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, GX_TEXPLTTCOLOR0_USE, 0);
    G3_PolygonAttr(GX_LIGHTMASK_NONE, m_polygonMode, GX_CULL_NONE, m_polygonID, m_alpha, GX_POLYGON_ATTR_MISC_DISP_1DOT);

    G3_Begin(GX_BEGIN_TRIANGLES);

    G3_Color(m_color);
    G3_Vtx(FX_Whole(m_coords.x1) << v0, FX_Whole(m_coords.y1) << v0, m_z);
    G3_VtxXY(FX_Whole(m_coords.x2) << v0, FX_Whole(m_coords.y2) << v0);
    G3_VtxXY(FX_Whole(m_coords.x2) << v0, FX_Whole(m_coords.y2) << v0);

    G3_End();
    G3_PopMtx(0);

    return 1;
}
