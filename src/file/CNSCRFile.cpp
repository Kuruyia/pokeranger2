#include "file/CNSCRFile.hpp"

#include <nitro.h>
#include <nnsys.h>

CNSCRFile::CNSCRFile(const char *path, u32 arg1, u32 arg2, u32 arg3)
{
    void *v0 = sub_02002CB4(path, arg1, arg2, arg3, NULL, 0);

    if (v0 == NULL) {
        return;
    }

    BOOL v1 = NNS_G2dGetUnpackedScreenData(unk_4C, &unk_B8);

    if (!v1) {
        sub_020030D4();
        return;
    }
}
