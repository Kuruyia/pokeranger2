#ifndef POKERANGER2_FILE_CNCERFILE_HPP
#define POKERANGER2_FILE_CNCERFILE_HPP

#include <nitro.h>
#include <nnsys.h>

#include "CBinaryFile.hpp"
#include "common.hpp"

class CNCERFile : public CBinaryFile {
public:
    CNCERFile(const char *path, u32 arg1, u32 arg2, u32 arg3);
    virtual ~CNCERFile();

public:
    NNSG2dCellDataBank *unk_B8;
};

STATIC_SIZE_ASSERT(CNCERFile, 0xBC);

#endif // POKERANGER2_FILE_CNCERFILE_HPP
