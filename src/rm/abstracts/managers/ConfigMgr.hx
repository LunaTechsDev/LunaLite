package rm.abstracts.managers;

import rm.managers.ConfigManager;

@:forward
@:forwardStatics
abstract ConfigMgr(ConfigManager) from ConfigManager to ConfigManager {
}
