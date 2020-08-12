package mz.abstracts.objects;

import mz.objects.Game_Picture;

abstract GamePicture(Game_Picture) from Game_Picture to Game_Picture {
 public inline function new() {
  this = new Game_Picture();
 }
}
