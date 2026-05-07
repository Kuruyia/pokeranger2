#include "file/CBinaryFileMes.hpp"

#include "CGame.hpp"

extern "C" {
CGame *sub_0201001C(void);
extern char *ptr_s_jp_mes_0208a4d4_0208a534[12];
extern char s_s_s_0208a568;
}

char *CBinaryFileMes::sub_02003124()
{
    sub_0201001C();
    return ptr_s_jp_mes_0208a4d4_0208a534[1];
}

CBinaryFileMes::CBinaryFileMes(const char *path, u32 arg1)
{
    char v0[0x40];
    OS_SPrintf(v0, &s_s_s_0208a568, path, sub_02003124());

    void *v1 = sub_02002CB4(v0, arg1, 0, 0, 0, 0);

    if (v1 == NULL) {
        sub_02002C9C();
    }
}
