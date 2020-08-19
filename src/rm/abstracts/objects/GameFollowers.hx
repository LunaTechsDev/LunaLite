package rm.abstracts.objects;

import rm.objects.Game_Followers;
import rm.objects.Game_Follower;

@:forward
@:forwardStatics
abstract GameFollowers(Game_Followers) from Game_Followers to Game_Followers {
 public inline function new() {
  this = new Game_Followers();
 }
}
