package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_TitleCommand
 *
 * The window for selecting New Game/Continue on the title screen.
 * @class Window_TitleCommand
 */
@:native("Window_TitleCommand")
extern class Window_TitleCommand extends Window_Command {
 private static var _lastCommandSymbol: String;

 public function new();

 public function updatePlacement(): Void;
 public function isContinueEnabled(): Bool;
 public function initCommandPosition(): Void;
 public function selectLast(): Void;
}
