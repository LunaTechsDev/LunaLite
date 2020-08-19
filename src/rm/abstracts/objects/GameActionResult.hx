package rm.abstracts.objects;

import rm.objects.Game_ActionResult;

@:forward
@:forwardStatics
abstract GameActionResult(Game_ActionResult) from Game_ActionResult
 to Game_ActionResult {
 public inline function new() {
  this = new Game_ActionResult();
 }
}
