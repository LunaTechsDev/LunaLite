package mz.scenes;

import mz.windows.Window_Options;

/**
 * Scene class of the options screen.
 */
@:native("Scene_Options")
extern class Scene_Options extends Scene_MenuBase {
  private var _optionsWindow: Window_Options;

  public function createOptionsWindow(): Void;
}