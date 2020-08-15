package mz.types;

@:forward
@:forwardStatics
enum abstract StateId(Int) from Int to Int {
}

@:forward
@:forwardStatics
enum abstract BuffId(Int) from Int to Int {
}

@:forward
@:forwardStatics
enum abstract BalloonId(Int) from Int to Int {
 public inline var EXCLAMATION = 0;
 public inline var QUESTION = 1;
 public inline var MUSIC_NOTE = 2;
 public inline var HEART = 3;
 public inline var ANGER = 4;
 public inline var SWEAT = 5;
 public inline var COBWEB = 6;
 public inline var SILENCE = 7;
 public inline var LIGHT_BULB = 8;
 public inline var ZZZ = 9;
 // Extra Balloon IDs would be user defined
}

@:forward
@:forwardStatics
enum abstract AnimationSpeed(Int) from Int to Int {
}

@:forward
@:forwardStatics
enum abstract WeaponImageId(Int) from Int to Int {
}

/**
 * Character pattern represents the in-editor character
 * pattern.
 */
@:forward
@:forwardStatics
enum abstract CharacterPattern(Int) from Int to Int {
}

/**
 * Motion Type used for Sprite Actors
 * on different scenes in MV/MZ.
 */
enum abstract MotionType(String) from String to String {
 public inline var WALK = "walk";
 public inline var WAIT = "wait";
 public inline var CHANT = "chant";
 public inline var GUARD = "guard";
 public inline var DAMAGE = "damage";
 public inline var EVADE = "evade";
 public inline var THRUST = "thrust";
 public inline var MISSLE = "missle";
 public inline var SKILL = "SKILL";
 public inline var SPELL = "spell";
 public inline var ITEM = "item";
 public inline var ESCAPE = "escape";
 public inline var VICTORY = "victory";
 public inline var DYING = "dying";
 public inline var ABNORMAL = "abnormal";
 public inline var SLEEP = "sleep";
 public inline var DEAD = "dead";
}

/**
 * The Move Types of Characters/Event in RPGMaker MV/MZ
 */
@:forward
@:forwardStatics
enum abstract MoveType(Int) from Int to Int {
 public inline var FIXED = 0;
 public inline var RANDOM = 1;
 public inline var APPROACH = 2;
 public inline var CUSTOM = 3;
}

/**
 * The Move Speed Types of Characters/Events in RPGMaker MV/MZ
 */
@:forward
@:forwardStatics
enum abstract MoveSpeed(Int) from Int to Int {
 public inline var X8SLOWER = 1;
 public inline var X4SLOWER = 2;
 public inline var X2SLOWER = 3;
 public inline var NORMAL = 4;
 public inline var X2FASTER = 5;
 public inline var X4FASTER = 6;
}

/**
 *  Move frequency for Characters/Events
 * in RPGMaker MV/MZ.
 */
@:forward
@:forwardStatics
enum abstract MoveFrequency(Int) from Int to Int {
 public inline var LOWEST = 1;
 public inline var LOWER = 2;
 public inline var NORMAL = 3;
 public inline var HIGHER = 4;
 public inline var HIGHEST = 5;
}

/**
 * Character/Events priority in RPGMaker MV/MZ.
 * This will determine if they're shown above or below or
 * on the same level as characters on the map.
 */
@:forward
@:forwardStatics
enum abstract CharacterPriority(Int) from Int to Int {
 public inline var BELOW_CHARACTERS = 0;
 public inline var SAME_AS_CHARACTERS = 1;
 public inilne var ABOVE_CHARACTERS = 2;
}

@:forward
@:forwardStatics
enum abstract Color(String) from String to String {
}

@:forward
@:forwardStatics
enum abstract DamageColorType(Int) from Int to Int {
 public inline var HP_DAMAGE = 0;
 public inline var HP_RECOVER = 1;
 public inline var MP_DAMAGE = 2;
 public inline var MP_RECOVER = 3;

 /**
  * Default can be any number
  */
 public inline var DEFAULT = 4;
}
