package rm.abstracts.objects;

import rm.objects.Game_Party;
import rm.objects.Game_Map;

@:forward
@:forwardStatics
abstract GameMap(Game_Map) from Game_Map to Game_Map {
 public function new() {
  this = new Game_Map();
 }
}
