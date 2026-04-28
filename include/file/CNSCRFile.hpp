#ifndef POKERANGER2_FILE_CNSCRFILE_HPP
#define POKERANGER2_FILE_CNSCRFILE_HPP

#include <nitro.h>
#include <nnsys.h>

#include "CBinaryFile.hpp"
#include "common.hpp"

class CNSCRFile : public CBinaryFile {
public:
    CNSCRFile(char *path, u32 arg1, u32 arg2, u32 arg3);
    virtual ~CNSCRFile();

public:
    NNSG2dScreenData *unk_B8;
};

STATIC_SIZE_ASSERT(CNSCRFile, 0xBC);

#endif // POKERANGER2_FILE_CNSCRFILE_HPP
