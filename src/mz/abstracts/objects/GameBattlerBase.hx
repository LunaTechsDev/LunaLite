package mz.abstracts.objects;

import mz.objects.Game_BattlerBase;

@:forward
@:forwardStatics
abstract GameBattlerBase(Game_BattlerBase) from Game_BattlerBase
 to Game_BattlerBase {
 public inline function new() {
  this = new Game_BattlerBase();
 }
}
