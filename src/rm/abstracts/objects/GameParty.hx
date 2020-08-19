package rm.abstracts.objects;

import rm.objects.Game_Party;

@:forward
@:forwardStatics
abstract GameParty(Game_Party) from Game_Party to Game_Party {
 public inline function new() {
  this = new Game_Party();
 }
}
