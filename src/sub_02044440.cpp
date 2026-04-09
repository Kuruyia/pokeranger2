#include "sub_02044440.hpp"

#include <nitro.h>

extern "C" {
void sub_02044B38(u32, u32 *);
extern u32 MAIN_BSS_0210CED4;
extern u32 PTR_LAB_0208e334;
}

void sub_02044440(void)
{
    MAIN_BSS_0210CED4 = 0;
    sub_02044B38(0, &PTR_LAB_0208e334);
}
