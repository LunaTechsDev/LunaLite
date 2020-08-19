package rm.objects;

/**
 * -----------------------------------------------------------------------------
 * Game_Followers
 *
 * The wrapper declare class for a follower array.
 * @class Game_Followers
 */
@:native("Game_Followers")
extern class Game_Followers {
 private var _visible: Bool;
 private var _gathering: Bool;
 private var _data: Array<Game_Follower>;

 public function new(): Void;

 public function initialize(): Void;

 /**
  * Returns true if the followers are visible.
  *
  * @returns {Bool}
  * @memberof Game_Followers
  */
 public function isVisible(): Bool;

 /**
  * Shows  the followers.
  *
  * @memberof Game_Followers
  */
 public function show(): Void;

 /**
  * Hides the followers.
  *
  * @memberof Game_Followers
  */
 public function hide(): Void;

 /**
  * Returns the followers at the specified index.
  *
  * @param {number} index
  * @returns {Game_Follower}
  * @memberof Game_Followers
  */
 public function follower(index: Int): Game_Follower;

 public function forEach(callback: () -> Void, thisObject: Any): Void;
 public function reverseEach(callback: () -> Void, thisObject: Any): Void;

 /**
  * Refreshes the game followers.
  *
  * @memberof Game_Followers
  */
 public function refresh(): Void;

 /**
  * Updates the game followers.
  *
  * @memberof Game_Followers
  */
 public function update(): Void;

 /**
  * Updates the movement of game followers.
  *
  * @memberof Game_Followers
  */
 public function updateMove(): Void;

 public function jumpAll(): Void;
 public function synchronize(x: Int, y: Int, d: Int): Void;

 /**
  * Gathers the followers.
  *
  * @memberof Game_Followers
  */
 public function gather(): Void;

 /**
  * Returns true if the followers are gathering.
  *
  * @returns {Bool}
  * @memberof Game_Followers
  */
 public function areGathering(): Bool;

 /**
  * Returns the visible followers.
  *
  * @returns {Array<Game_Follower>}
  * @memberof Game_Followers
  */
 public function visibleFollowers(): Array<Game_Follower>;

 /**
  * Returns true if the followers are moving.
  *
  * @returns {Bool}
  * @memberof Game_Followers
  */
 public function areMoving(): Bool;

 /**
  * Returns true if the followers are gathered.
  *
  * @returns {Bool}
  * @memberof Game_Followers
  */
 public function areGathered(): Bool;

 /**
  * Returns true if the specified follower is collided at the specified x and y
  *coordinate.
  *
  * @param {number} x
  * @param {number} y
  * @returns {Bool}
  * @memberof Game_Followers
  */
 public function isSomeoneCollided(x: Int, y: Int): Bool;
}
