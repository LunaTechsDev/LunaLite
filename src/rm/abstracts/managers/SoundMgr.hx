package rm.abstracts.managers;

import rm.managers.SoundManager;

@:forward
@:forwardStatics
abstract SoundMgr(SoundManager) from SoundManager to SoundManager {
}
