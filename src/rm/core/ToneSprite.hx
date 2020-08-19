package rm.core;

import pixi.core.renderers.canvas.CanvasRenderer;
import pixi.core.renderers.webgl.Renderer;
import pixi.core.display.Container;

@:native("ToneSprite")
extern class ToneSprite extends Container {
 /**
  * The sprite which changes the screen color in 2D canvas mode.
  *
  * @class ToneSprite
  * @constructor
  */
 public function new(): Void;

 /**
  * Clears the tone.
  *
  * @method reset
  */
 public function clear(): Void;

 /**
  * Sets the tone.
  *
  * @method setTone
  * @param {Number} r The red strength in the range (-255, 255)
  * @param {Number} g The green strength in the range (-255, 255)
  * @param {Number} b The blue strength in the range (-255, 255)
  * @param {Number} gray The grayscale level in the range (0, 255)
  */
 public function setTone(r: Int, g: Int, b: Int, gray: Int): Void;

 private var _red: Int;
 private var _green: Int;
 private var _blue: Int;
 private var _gray: Int;

 /**
  * @method _renderCanvas
  * @param {PIXI.CanvasRenderer} renderer
  * @private
  */
 private function _renderCanvas(renderer: CanvasRenderer): Void;

 /**
  * @method _renderWebGL
  * @param {PIXI.WebGLRenderer} renderer
  * @private
  */
 private function _renderWebGL(renderer: Renderer): Void;
}
