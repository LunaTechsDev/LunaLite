package nodes.windows;

import core.Math;
import rm.core.Rectangle;
import rm.windows.Window_Base;

@:native("LTWindowBase")
class LTWindowBase extends Window_Base {
 public var innerWidthLT(get, null): Int;
 public var innerHeightLT(get, null): Int;

 public function new(x: Int, y: Int, width: Int, height: Int) {
  #if compileMV
  super(x, y, width, height);
  #else
  var rect = new Rectangle(x, y, width, height);
  super(rect);
  #end
 }

 public function drawTextExLT(text: String, x: Int, y: Int, ?width: Int): Int {
  #if compileMV
  return super.drawTextEx(text, x, y);
  #else
  return super.drawTextEx(text, x, y, width);
  #end
 }

 public function destroyContentsLT() {
  #if compileMV
  this.contents.baseTexture.destroy();
  this.contents.baseTexture = null;
  this.contents.canvas.width = 0;
  this.contents.canvas.height = 0;
  this.contents.canvas = null;
  // MZ also destroys the back sprite
  #else
  super.destroyContents();
  #end
 }

 private function get_innerWidthLT(): Int {
  return cast Math.max(0, this._width - this._padding * 2);
 }

 private function get_innerHeightLT(): Int {
  return cast Math.max(0, this._height - this._padding * 2);
 }
}
