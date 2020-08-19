package rm.abstracts.managers;

import rm.managers.TextManager;

@:forward
@:forwardStatics
abstract TextMgr(TextManager) from TextManager to TextManager {
}
