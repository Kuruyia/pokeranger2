#ifndef POKERANGER2_FILE_CARCHIVEGUARD_HPP
#define POKERANGER2_FILE_CARCHIVEGUARD_HPP

#include <nitro.h>
#include <nnsys.h>

#include "common.hpp"
#include "file/CBinaryFile.hpp"

class CArchiveGuard {
public:
    CArchiveGuard(const char *arcName, const char *arg1, u32 arg2, u32 arg3, u32 arg4, void *arg5, u32 arg6);
    ~CArchiveGuard();

public:
    NNSFndArchive archive;
    CBinaryFile *unk_68;
};

STATIC_SIZE_ASSERT(CArchiveGuard, 0x6C);

#endif // POKERANGER2_FILE_CARCHIVEGUARD_HPP
