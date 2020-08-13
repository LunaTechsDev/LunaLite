package mz.abstracts.objects;

import mz.objects.Game_Battler;
import mz.objects.Game_Action;

@:forward
@:forwardStatics
abstract GameAction(Game_Action) from Game_Action to Game_Action {
 public inline function new(subject: Game_Battler, forcing: Bool) {
  this = new Game_Action(subject, forcing);
 }
}
