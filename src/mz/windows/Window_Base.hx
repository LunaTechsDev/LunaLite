package mz.windows;

import js.lib.Object;
import mz.core._Window;
import utils.Fn;


@:native("Window_Base")
extern class Window_Base  extends _Window {

  public function initialize():Void;
  
  public function setBackgroundType(type:Int):Void;

  public function showBackgroundDimmer():Void;

  public function obtainEscapeParam(textState:String):Any;
}
