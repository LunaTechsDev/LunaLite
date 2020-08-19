package rm.abstracts.managers;

import rm.managers.AudioManager;

@:forward
@:forwardStatics
abstract AudioMgr(AudioManager) from AudioManager to AudioManager {
}
