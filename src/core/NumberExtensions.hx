package core;

import Math;

class NumberExtensions {
 public static inline function clampf(num: Float, min: Float,
   max: Float): Float {
  return Math.min(Math.max(num, min), max);
 }

 public static inline function clamp(num: Int, min: Int, max: Int): Int {
  return Math.round(Math.min(Math.max(num, min), max));
 }

 public static inline function withinRange(num: Int, min: Int,
   max: Int): Bool {
  return num >= min && num <= max;
 }

 public static inline function withinRangef(num: Float, min: Float,
   max: Float) {
  return num >= min && num <= max;
 }

 public static inline function negate(num: Int) {
  return -num;
 }

 public static inline function negatef(num: Float) {
  return -num;
 }
}
