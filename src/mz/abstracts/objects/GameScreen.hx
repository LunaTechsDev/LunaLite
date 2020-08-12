package mz.abstracts.objects;

import mz.objects.Game_Screen;

abstract GameScreen(Game_Screen) from Game_Screen to Game_Screen {
 public inline function new() {
  this = new Game_Screen();
 }
}
