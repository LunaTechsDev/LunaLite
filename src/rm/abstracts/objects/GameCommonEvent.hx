package rm.abstracts.objects;

import rm.objects.Game_CommonEvent;

@:forward
@:forwardStatics
abstract GameCommonEvent(Game_CommonEvent) from Game_CommonEvent
 to Game_CommonEvent {
 public inline function new(eventId: Int) {
  this = new Game_CommonEvent(eventId);
 }
}
