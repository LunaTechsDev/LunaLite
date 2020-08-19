package rm.abstracts.objects;

import rm.objects.Game_Screen;

@:forward
@:forwardStatics
abstract GameScreen(Game_Screen) from Game_Screen to Game_Screen {
 public inline function new() {
  this = new Game_Screen();
 }
}
