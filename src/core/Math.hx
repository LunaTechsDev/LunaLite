package core;

typedef SMath = std.Math;

@:forwardStatics
abstract Math(SMath) {

  /**
   * Returns a random integer within 0 - 1
   * @return Int
   */
  public static function randomInt():Int {
    return SMath.round(SMath.random());
  }

  /**
   * Returns a random integer in range start, end
   * @param start 
   * @param end 
   * @return Int
   */
  public static inline function randomRangeInt(start:Int, end:Int):Int {
    var rand = [for (i in start...end) i];
    return rand[randomInt() * rand.length];
  } 
}