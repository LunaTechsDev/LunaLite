package mz.abstracts.managers;

import mz.managers.DataManager;

@:forward
@:forwardStatics
abstract DataMgr(DataManager) from DataManager to DataManager {
}
