#include "primitive/CPrimitiveSPHERE.hpp"

#include <nitro.h>

CPrimitiveSPHERE::CPrimitiveSPHERE()
{
    MI_CpuFill8(&m_circle, 0, sizeof(m_circle));
}

CPrimitiveSPHERE::~CPrimitiveSPHERE()
{
}
