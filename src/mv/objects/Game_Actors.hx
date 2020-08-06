package mv.objects;

@:native("Game_Actors")
extern class Game_Actors {
 private var _data: Array<Game_Actor>;

 /**
  * Returns the actor with the specified id.
  *
  * @param {number} actorId
  * @returns {Game_Actor}
  * @memberof Game_Actors
  */
 public function actor(actorId: Int): Game_Actor;
}
