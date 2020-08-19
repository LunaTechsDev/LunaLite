package rm.windows;

import rm.core.Rectangle;

#if !compileMV
@native("Window_Scrollable")
extern class Window_Scrollable extends Window_Base {
 private var _scrollX: Int;
 private var _ScrollY: Int;
 private var _scrollBaseX: Int;
 private var _scrollBaseY: Int;
 private var _scrollAccelX: Int;
 private var _scrollAccelY: Int;
 private var _scrollTouching: Bool;
 private var _scrollLastTouchX: Int;
 private var _scrollLastTouchY: Int;
 private var _scrollLastCursorVisible: Bool;

 /**
  * Constructor for Window_Scrollable
  * @param rect
  */
 public function new(rect: Rectangle): Void;

 /**
  * Initializes the scrollable window with a rectangle
  * called internally by new operator.
  * @param rect
  */
 public function initialize(rect: Rectangle): Void;

 public function clearScrollStatus(): Void;

 public function scrollX(): Int;

 public function scrollY(): Int;

 public function scrollBaseX(): Int;

 public function scrollBaseY(): Int;

 public function scrollTo(x: Int, y: Int): Void;

 public function scrollBy(x: Int, y: Int): Void;

 public function smoothScrollTo(x: Int, y: Int): Void;

 public function setScrollAccel(x: Int, y: Int): Void;

 /**
  *
  * Overall width of the window.
  * @return Int
  */
 public function overallWidth(): Int;

 /**
  * Overall height of the window.
  * @return Int
  */
 public function overallHeight(): Int;

 public function maxScrollX(): Int;

 public function maxScrollY(): Int;

 public function scrollBlockWidth(): Int;

 public function scrollBlockHeight(): Int;

 /**
  * Smoothly scrolls down to the number by the
  * height of each item.
  * @param num
  * @return Int
  */
 public function smoothScrollDown(num: Int): Int;

 /**
  * Smoothly scrolls up to the number by the height
  * of each item.
  * @param num
  * @return Int
  */
 public function smoothScrollUp(num: Int): Int;

 /**
  * Process wheel scrolling with the TouchInput wheel.
  * @return Int
  */
 public function processWheelScroll(): Void;

 /**
  * Processes touch input scrolling.
  */
 public function processTouchScroll(): Void;

 /**
  * Defaults to isScrollEnabled();
  * Determines if wheel scroll is enabled.
  * @return Bool
  */
 public function isWheelScrollEnabled(): Bool;

 /**
  * Defaults to isScrollEnabled();
  * Determines if touch scroll is enabled.
  * @return Bool
  */
 public function isTouchScrollEnabled(): Bool;

 /**
  * Whether scrolling is enabled; default to true.
  * @return Bool
  */
 public function isScrollEnable(): Bool;

 /**
  * Returns true if the window is touched
  * within the frame.
  * @return Bool
  */
 public function isTouchedInsideFrame(): Bool;

 /**
  * Handler for when touch scroll is started.
  */
 public function onTouchScrollStart(): Void;

 /**
  * Handler for when touch scrolling.
  */
 public function onTouchScroll(): Void;

 /**
  * Handler for when touch scroll is ending.
  */
 public function onTouchScrollEnd(): Void;

 /**
  * Update function for smooth scrolling.
  */
 public function updateSmoothScroll(): Void;

 /**
  * Update function for scroll accelleration.
  */
 public function updateScrollAccel(): Void;

 /**
  * Update function for the scrolling arrows.
  */
 public function updateArrows(): Void;

 /**
  * Update function for the origin when scrolling.
  */
 public function updateOrigin(): Void;

 /**
  * Update function for the Scroll Base.
  */
 public function updateScrollBase(): Void;

 /**
  * Function to be overriden for your personal use.
  */
 public function paint(): Void;
}
#else
#end
