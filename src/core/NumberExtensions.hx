package core;

import Math;

inline function clampf(num: Float, min: Float, max: Float): Float {
 return Math.min(Math.max(num, min), max);
}

inline function clamp(num: Int, min: Int, max: Int): Int {
 return Math.round(Math.min(Math.max(num, min), max));
}
