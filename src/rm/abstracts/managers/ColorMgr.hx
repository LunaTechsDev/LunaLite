package rm.abstracts.managers;

import rm.managers.ColorManager;

@:forward
@:forwardStatics
abstract ColorMgr(ColorManager) from ColorManager to ColorManager {
}
