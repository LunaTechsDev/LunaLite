package mz.abstracts.objects;

import mz.objects.Game_Party;
import mz.objects.Game_Map;

abstract GameMap(Game_Map) from Game_Map to Game_Map {
 public function new() {
  this = new Game_Map();
 }
}
