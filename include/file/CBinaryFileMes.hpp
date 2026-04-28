#ifndef POKERANGER2_FILE_CBINARYFILE_MES_HPP
#define POKERANGER2_FILE_CBINARYFILE_MES_HPP

#include <nitro.h>

#include "common.hpp"
#include "file/CBinaryFile.hpp"

class CBinaryFileMes : public CBinaryFile {
public:
    CBinaryFileMes(char *path, u32 arg1);
    virtual ~CBinaryFileMes();
};

STATIC_SIZE_ASSERT(CBinaryFileMes, 0xB8);

#endif // POKERANGER2_FILE_CBINARYFILE_MES_HPP
