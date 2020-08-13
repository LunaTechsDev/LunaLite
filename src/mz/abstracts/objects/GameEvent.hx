package mz.abstracts.objects;

import mz.objects.Game_Enemy;
import mz.objects.Game_Event;

@:forward
@:forwardStatics
abstract GameEvent(Game_Event) from Game_Event to Game_Event {
 public inline function new(mapId: Int, eventId: Int) {
  this = new Game_Event(mapId, eventId);
 }
}
