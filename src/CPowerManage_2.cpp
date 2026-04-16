#include <nitro.h>

#include "CPowerManage.hpp"

extern "C" {
extern CPowerManage sPowerManage;
}

BOOL CPowerManage::sub_0200F9E0()
{
    sPowerManage.Init();
    return TRUE;
}

void CPowerManage::sub_0200F9F8()
{
    sPowerManage.sub_0200F8BC();
}
