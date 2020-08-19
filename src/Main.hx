import rm.Globals.GameVariables;
import js.Syntax;
import js.html.Window;
import js.lib.Function;
import rm.scenes.Scene_Base;
import utils.Fn;
import utils.Comment;
import macros.MacroTools;

class Main {
 public static function main() {
  MacroTools.includeJsLib("test.js");
  Comment.singleLine(MacroTools.generateBuildDate());
  Comment.title("Kiniitta");
  Comment.pluginParams("@author Kino
    @plugindesc This plugin allows you to use Haxe in your RPGMakerMV code.
    @param haxeVersion");
  Comment.singleLine("This is a test of the watcher");
  var sceneTitleStart: Function = Fn.getPrProp(Scene_Base, "start");
  Fn.setPrProp(Scene_Base, "start", () -> {
   var self: Scene_Base = Fn.self;
   sceneTitleStart.call(self);
   GameVariables.setValue(1, 3);
   Fn.setField(Window, "Haxe", "Version 4.2.0");
   trace("Running Console Log From Haxe Added haxe Version");
  });
 }
}
