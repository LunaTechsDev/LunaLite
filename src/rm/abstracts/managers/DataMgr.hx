package rm.abstracts.managers;

import rm.managers.DataManager;

@:forward
@:forwardStatics
abstract DataMgr(DataManager) from DataManager to DataManager {
}
