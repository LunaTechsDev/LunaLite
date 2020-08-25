package rm.scenes;

import rm.core.Rectangle;
import rm.windows.Window_Options;

/**
 * Scene class of the options screen.
 */
@:expose("Scene_Options")
@:native("Scene_Options")
extern class Scene_Options extends Scene_MenuBase {
 private var _optionsWindow: Window_Options;

 public function createOptionsWindow(): Void;

 #if !compileMV
 public function optionsWindowRect(): Rectangle;
 public function maxCommands(): Int;
 public function maxVisibleCommands(): Int;
 #end
}
