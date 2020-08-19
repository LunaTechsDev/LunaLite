package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_ChoiceList
 *
 * The window used for the event command [Show Choices].
 * @class Window_ChoiceList
 */
@:native("Window_ChoiceList")
extern class Window_ChoiceList extends Window_Command {
 private var _messageWindow: Window_Message;
 private var _background: Int;

 #if compileMV
 public function new(messageWindow: Window_Message);
 public function initialize(messageWindow: Window_Message): Void;
 #else
 public function new();
 public function initialize(): Void;
 public function setMessageWindow(messageWindow: Window_Message): Void;
 public function windowY(): Int;
 public function windowX(): Int;
 public function needsCancelButton(): Bool;
 public function maxLines(): Int;
 #end

 public function start(): Void;
 public function selectDefault(): Void;
 public function updatePlacement(): Void;
 public function updateBackground(): Void;
 public function maxChoiceWidth(): Int;
 public function textWidthEx(text: String): Int;
}
