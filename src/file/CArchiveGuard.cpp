#include "file/CArchiveGuard.hpp"

#include <nitro.h>
#include <nnsys.h>

#include "file/CBinaryFile.hpp"

CArchiveGuard::CArchiveGuard(const char *arcName, const char *arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5, u32 arg6)
{
    unk_68 = new CBinaryFile(arg1, arg2, arg3, arg4, arg5, arg6);

    if (unk_68->unk_4C == NULL) {
        return;
    }

    NNS_FndMountArchive(&archive, arcName, unk_68->unk_4C);
}

CArchiveGuard::~CArchiveGuard()
{
    NNS_FndUnmountArchive(&archive);

    if (unk_68 != NULL) {
        delete unk_68;
        unk_68 = NULL;
    }
}
