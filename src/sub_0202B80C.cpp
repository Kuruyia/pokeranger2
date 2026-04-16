#include "sub_0202B80C.hpp"

#include <nitro.h>

#include "CardBackupInfo.hpp"

extern "C" {
extern CardBackupInfo sCardBackupInfo;
}

BOOL sub_0202B80C(void)
{
    s32 lockID = OS_GetLockID();
    sCardBackupInfo.valid = FALSE;

    if (lockID == OS_LOCK_ID_ERROR) {
        return FALSE;
    }

    CARD_Init();
    CARD_LockBackup(lockID);
    CARD_IdentifyBackup(CARD_BACKUP_TYPE_FLASH_2MBITS);
    CARDResult cardRes = CARD_GetResultCode();
    CARD_UnlockBackup(lockID);

    if (cardRes == CARD_RESULT_SUCCESS) {
        sCardBackupInfo.pageSize = CARD_GetBackupPageSize();
        sCardBackupInfo.totalSize = CARD_GetBackupTotalSize();
        sCardBackupInfo.valid = TRUE;
    }

    OS_ReleaseLockID(lockID);
    return sCardBackupInfo.valid;
}
