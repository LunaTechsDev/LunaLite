package mz.abstracts.managers;

import mz.managers.BattleManager;

@:forward
@:forwardStatics
abstract BattleMgr(BattleManager) from BattleManager to BattleManager {
}
