package rm.abstracts.objects;

import rm.objects.Game_Follower;

@:forward
@:forwardStatics
abstract GameFollower(Game_Follower) from Game_Follower to Game_Follower {
 public inline function new(memberIndex: Int) {
  this = new Game_Follower(memberIndex);
 }
}
