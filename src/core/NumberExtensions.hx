package core;

import Math;

inline function clampf(num: Float, min: Float, max: Float): Float {
 return Math.min(Math.max(num, min), max);
}

inline function clamp(num: Int, min: Int, max: Int): Int {
 return Math.round(Math.min(Math.max(num, min), max));
}

inline function withinRange(num: Int, min: Int, max: Int): Bool {
 return num >= min && num <= max;
}

inline function withinRangef(num: Float, min: Float, max: Float) {
 return num >= min && num <= max;
}

inline function negate(num: Int) {
 return -num;
}

inline function negatef(num: Float) {
 return -num;
}
