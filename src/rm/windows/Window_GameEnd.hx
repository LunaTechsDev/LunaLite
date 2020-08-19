package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_GameEnd
 *
 * The window for selecting "Go to Title" on the game end screen.
 * @class Window_GameEnd
 */
@:native("Window_GameEnd")
extern class Window_GameEnd extends Window_Base {
 public function new();

 public function updatePlacement(): Void;
}
