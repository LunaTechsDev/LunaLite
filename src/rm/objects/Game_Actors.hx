package rm.objects;

@:expose("Game_Actors")
@:native("Game_Actors")
extern class Game_Actors {
 private var _data: Array<Game_Actor>;

 public function new(): Void;
 public function initialize(): Void;

 /**
  * Returns the actor with the specified id.
  *
  * @param {number} actorId
  * @returns {Game_Actor}
  * @memberof Game_Actors
  */
 public function actor(actorId: Int): Game_Actor;
}
