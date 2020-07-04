package mz.windows;

import js.lib.Object;
import utils.Fn;


@:native("Window_Base")
extern class Window_Base  extends Object{

  public function initialize():Void;
  
  public function setBackgroundType(type:Int):Void;

  public function showBackgroundDimmer():Void;

  public function obtainEscapeParam(textState:String):Any;
}
