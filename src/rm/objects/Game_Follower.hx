package rm.objects;

/**
 * -----------------------------------------------------------------------------
 * Game_Follower
 *
 * The game object declare class for a follower. A follower is an allied character,
 * other than the front character, displayed in the party.
 * @class Game_Follower
 */
@:expose("Game_Follower")
@:native("Game_Follower")
extern class Game_Follower extends Game_Character {
 @:native("_memberIndex")
 public var __memberIndex: Int;
 private var _memberIndex: Int;

 public function new(memberIndex: Int);

 public function refresh(): Void;

 /**
  * Returns the current actor.
  *
  * @returns {Game_Actor}
  * @memberof Game_Follower
  */
 public function actor(): Game_Actor;

 /**
  * Returns true if the follower is visible.
  *
  * @returns {Bool}
  * @memberof Game_Follower
  */
 public function isVisible(): Bool;

 /**
  * Updates the game follower.
  *
  * @memberof Game_Follower
  */
 public function update(): Void;

 /**
  * Has the follower chase a game actor.
  *
  * @param {Game_Character} character
  * @memberof Game_Follower
  */
 public function chaseCharacter(character: Game_Character): Void;
}
