#include "primitive/CPrimitiveSPHERE.hpp"

#include <nitro.h>

CPrimitiveSPHERE::CPrimitiveSPHERE()
{
    MI_CpuFill8(&m_coords, 0, sizeof(m_coords));
}

CPrimitiveSPHERE::~CPrimitiveSPHERE()
{
}
