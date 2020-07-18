package core;

typedef SMath = std.Math;

@:forwardStatics
abstract Math(SMath) {
 /**
  * Returns a random integer within 0 - 1
  * @return Int
  */
 public static function randomInt(): Int {
  return SMath.round(SMath.random());
 }

 /**
  * Returns a random integer in range start, end
  * @param start
  * @param end
  * @return Int
  */
 public static inline function randomRangeInt(start: Int, end: Int): Int {
  var rand = [for (i in start...end) i];
  return rand[randomInt() * rand.length];
 }

 public static inline function clampf(num: Float, min: Float, max: Float): Float {
  return Math.min(Math.max(num, min), max);
 }

 public static inline function clamp(num: Int, min: Int, max: Int): Int {
  return Math.round(Math.min(Math.max(num, min), max));
 }
}
