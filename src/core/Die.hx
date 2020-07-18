package core;

/**
 * A die class for rolling for random numbers
 */
class Die {
 private var sides: Array<Int>;

 public inline function new(sides: Int) {
  this.sides = [for (i in 0...sides) i + 1];
 }

 public inline function roll(): Int {
  return this.sides[Math.randomInt() * this.sides.length];
 }
}
