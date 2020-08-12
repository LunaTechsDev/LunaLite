package mz.abstracts.objects;

import mz.objects.Game_Party;

abstract GameParty(Game_Party) from Game_Party to Game_Party {
 public inline function new() {
  this = new Game_Party();
 }
}
