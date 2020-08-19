package rm.abstracts.objects;

import rm.objects.Game_Battler;
import rm.objects.Game_Action;

@:forward
@:forwardStatics
abstract GameAction(Game_Action) from Game_Action to Game_Action {
 public inline function new(subject: Game_Battler, forcing: Bool) {
  this = new Game_Action(subject, forcing);
 }
}
