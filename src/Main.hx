import mz.scenes.Scene_Base;
import js.Syntax;
import utils.FnUtils;
class Main {

  public static function main() {
    //Haxe Way of overwriting a prototype
    var SceneBase = Syntax.plainCode("  {
      stat:{}
    }");

    // var SceneBase:Dynamic = Scene_Base;

    FnUtils.setProp(SceneBase, "stat", (self) -> {
        var scene:Scene_Base = FnUtils.jsThis(); 
        scene.start();
        trace("Hello World");
      });
  }
}