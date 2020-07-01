import js.html.Window;
import js.lib.Function;
import mz.scenes.Scene_Base;
import utils.Fn;
import utils.Comment;
import macros.MacroTools;

class Main {

  public static function main() {
    Comment.singleLine(MacroTools.generateBuildDate());
    Comment.titleComment("Kiniitta");
    Comment.pluginParams("@author Kino 
    @plugindesc This plugin allows you to use Haxe in your RPGMakerMV code.
    @param haxeVersion");
    Comment.singleLine("This is a test of the watcher");
    var abc = 3;
    trace(abc);
    var sceneTitleStart:Function = Fn.getPrProp(Scene_Base, "start");
    var SceneBaseFn = Fn.setPrProp(Scene_Base, "start", () -> {
      var self:Scene_Base = Fn.self;
      sceneTitleStart.call(self);
      Fn.setField(Window, "Haxe", "Version 4.2.0");
      trace("Running Console Log From Haxe Added haxe Version");
    });
  }
  
}