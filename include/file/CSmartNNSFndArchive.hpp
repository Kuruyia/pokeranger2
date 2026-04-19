#ifndef POKERANGER2_FILE_CSMARTNNSFNDARCHIVE_HPP
#define POKERANGER2_FILE_CSMARTNNSFNDARCHIVE_HPP

#include <nitro.h>
#include <nnsys.h>

#include "common.hpp"

class CSmartNNSFndArchive {
public:
    CSmartNNSFndArchive(char *arcName, char *arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5, u32 arg6);
    ~CSmartNNSFndArchive();

public:
    NNSFndArchive archive;
    void *unk_068;
};

STATIC_SIZE_ASSERT(CSmartNNSFndArchive, 0x6C);

#endif // POKERANGER2_FILE_CSMARTNNSFNDARCHIVE_HPP
