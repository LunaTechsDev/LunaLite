package rm.abstracts.managers;

import rm.managers.BattleManager;

@:forward
@:forwardStatics
abstract BattleMgr(BattleManager) from BattleManager to BattleManager {
}
