#ifndef POKERANGER2_FILE_CNANRFILE_HPP
#define POKERANGER2_FILE_CNANRFILE_HPP

#include <nitro.h>
#include <nnsys.h>

#include "CBinaryFile.hpp"
#include "common.hpp"

class CNANRFile : public CBinaryFile {
public:
    CNANRFile(const char *path, u32 arg1, u32 arg2, u32 arg3);
    virtual ~CNANRFile();

public:
    NNSG2dAnimBankData *unk_B8;
};

STATIC_SIZE_ASSERT(CNANRFile, 0xBC);

#endif // POKERANGER2_FILE_CNANRFILE_HPP
