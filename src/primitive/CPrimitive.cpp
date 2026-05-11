#include "primitive/CPrimitive.hpp"

CPrimitive::CPrimitive()
{
    m_color = GX_RGB(31, 31, 31);
    m_polygonMode = GX_POLYGONMODE_MODULATE;
    m_polygonID = 0;
    m_alpha = 31;
    m_z = 0;
}

CPrimitive::~CPrimitive()
{
}
