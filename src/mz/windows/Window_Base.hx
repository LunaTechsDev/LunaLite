package mz.windows;

import utils.Fn;


@:native("Window_Base")
extern class Window_Base {
  
  public function setBackgroundType(type:Int):Void;

  public function showBackgroundDimmer():Void;

  public function obtainEscapeParam(textState:String):Any;
}
