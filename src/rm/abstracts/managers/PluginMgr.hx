package rm.abstracts.managers;

import rm.managers.PluginManager;

@:forward
@:forwardStatics
abstract PluginMgr(PluginManager) from PluginManager to PluginManager {
}
