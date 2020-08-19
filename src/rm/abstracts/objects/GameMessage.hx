package rm.abstracts.objects;

import rm.objects.Game_Message;

@:forward
@:forwardStatics
abstract GameMessage(Game_Message) from Game_Message to Game_Message {
 public function new() {
  this = new Game_Message();
 }
}
