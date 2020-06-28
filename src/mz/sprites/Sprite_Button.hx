package mz.sprites;

import mz.core.Sprite;


@:native("Sprite_Button")
extern class Sprite_Button extends Sprite{
  private var _touching:Bool;
  // private var _coldFrame:Rectangle;

  private var _clickHandler: () -> Void;

  public function updateFrame():Void;
  public function setColdFrame(x:Int, y:Int, width:Int, height:Int):Void;
  public function setHotFrame(x:Int, y:Int, width:Int, height:Int):Void;

  public function setClickHandler(method:()->Void):Void;
  public function callClickHandler():Void;

  public function processTouch():Void;
}