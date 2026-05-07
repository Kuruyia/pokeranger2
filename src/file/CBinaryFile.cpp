#include "file/CBinaryFile.hpp"

// This is required to match the while-loop in sub_02002DD0.
// This doesn't affect any other function.
#pragma optimization_level 2

CBinaryFile::CBinaryFile()
{
    sub_02002C9C();
}

CBinaryFile::CBinaryFile(const char *path, u32 arg1, u32 arg2, u32 arg3, void *arg4, u32 arg5)
{
    sub_02002C9C();
    void *v0 = sub_02002CB4(path, arg1, arg2, arg3, arg4, arg5);

    if (v0 == NULL) {
        sub_02002C9C();
    }
}
