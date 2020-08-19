package rm.abstracts.managers;

import rm.managers.EffectManager;

#if !compileMV
@:forward
@:forwardStatics
abstract EffectMgr(EffectManager) from EffectManager to EffectManager {
}
#else
#end
