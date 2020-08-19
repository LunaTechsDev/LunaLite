package rm.abstracts.managers;

import rm.managers.StorageManager;

@:forward
@:forwardStatics
abstract StorageMgr(StorageManager) from StorageManager to StorageManager {
}
