package mz.abstracts.managers;

import mz.managers.ConfigManager;

@:forward
@:forwardStatics
abstract ConfigMgr(ConfigManager) from ConfigManager to ConfigManager {
}
