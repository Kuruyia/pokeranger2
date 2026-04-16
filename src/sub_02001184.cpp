#include "sub_02001184.hpp"

#include <nitro.h>

#include "UnkClass_0208F300.hpp"
#include "sub_02010448.hpp"

extern "C" {
extern UnkClass_0208F300 MAIN_BSS_0208F300;
}

void sub_02001184(void)
{
    GX_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);
    GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);

    GX_SetVisiblePlane(GX_GetVisiblePlane() | GX_PLANEMASK_OBJ);
    GXS_SetVisiblePlane(GXS_GetVisiblePlane() | GX_PLANEMASK_OBJ);

    sub_02010448(MAIN_BSS_0208F300.game);
}
