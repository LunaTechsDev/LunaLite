package rm.abstracts.objects;

import rm.objects.Game_Battler;

@:forward
@:forwardStatics
abstract GameBattler(Game_Battler) from Game_Battler to Game_Battler {
 public function new() {
  this = new Game_Battler();
 }
}
