package mz.abstracts.managers;

import mz.managers.StorageManager;

@:forward
@:forwardStatics
abstract StorageMgr(StorageManager) from StorageManager to StorageManager {
}
