package rm.windows;

import rm.core.Bitmap;
import rm.types.RM.TextState;

@:native("Window_Message")
extern class Window_Message extends Window_Base {
 private var _positionType: Int;
 private var _background: Int;
 private var _waitCount: Int;
 private var _faceBitmap: Bitmap;
 private var _textState: TextState;
 private var _pauseSkip: Bool;
 private var _showFast: Bool;
 private var _lineShowFast: Bool;

 private var _goldWindow: Window_Gold;
 private var _choiceWindow: Window_ChoiceList;
 private var _numberWindow: Window_NumberInput;
 private var _itemWindow: Window_EventItem;

 #if compileMV
 public function initialize(): Void;

 public function initMembers(): Void;

 /**
  * Processes normal characters displayed within the message window.
  * @param textState
  */
 public function processNormalCharacter(textState: String): Void;
 #else
 #end

 /**
  * Returns the sub windows attached to the message window.
  *
  * @returns {Array<Window_Base>}
  * @memberof Window_Message
  */
 public function subWindows(): Array<Window_Base>;

 /**
  * Creates the sub windows for the message window.
  *
  * @memberof Window_Message
  */
 public function createSubWindows(): Void;

 /**
  * Returns the width of the window.
  *
  * @returns {number}
  * @memberof Window_Message
  */
 public function windowWidth(): Int;

 /**
  * Returns the height of the window.
  *
  * @returns {number}
  * @memberof Window_Message
  */
 public function windowHeight(): Int;

 /**
  * Returns the number of visible rows within the message window.
  *
  * @returns {number}
  * @memberof Window_Message
  */
 public function numVisibleRows(): Int;

 public function checkToNotClose(): Void;

 /**
  * Returns true if the message window can start.
  *
  * @returns {boolean}
  * @memberof Window_Message
  */
 public function canStart(): Bool;

 /**
  * Starts the displaying of the message within the message window.
  *
  * @memberof Window_Message
  */
 public function startMessage(): Void;

 /**
  * Updates the placement of the message window.
  *
  * @memberof Window_Message
  */
 public function updatePlacement(): Void;

 /**
  * Clears the message window flags for
  * fast text, pause skip, and line show fast
  */
 public function clearFlags(): Void;

 /**
  * Sets the background type of the window in terms
  * of transparency.
  * 0,
  * 1,
  * 2
  */
 public function setBackgroundType(backgroundType: Int): Void;

 /**
  * Processes the escape characters in the message window.
  * @param code
  * @param textState
  */
 public function processEscapeCharacter(code: String, textState: String): Void;

 /**
  * Starts the wait count for the message window.
  * @param count
  */
 public function startWait(count: Int): Void;

 /**
  * Starts the pause for the window.
  * Sets the wait count to 10 and pauses
  * the window.
  */
 public function startPause(): Void;

 /**
  * Updates the background of the message window.
  *
  * @memberof Window_Message
  */
 public function updateBackground(): Void;

 /**
  * Terminates the message and closes the gold and message window.
  *
  * @memberof Window_Message
  */
 public function terminateMessage(): Void;

 /**
  * Updates the wait of the message window.
  *
  * @returns {Bool}
  * @memberof Window_Message
  */
 public function updateWait(): Bool;

 public function updateLoading(): Bool;

 /**
  * Updates input when the message window is processing.
  *
  * @returns {Bool}
  * @memberof Window_Message
  */
 public function updateInput(): Bool;

 /**
  * Returns true if any sub window is active.
  *
  * @returns {Bool}
  * @memberof Window_Message
  */
 public function isAnySubWindowActive(): Bool;

 /**
  * Updates the message.
  *
  * @returns {Bool}
  * @memberof Window_Message
  */
 public function updateMessage(): Bool;

 /**
  * Handler for when there is no text left to display within
  * the message window.
  * @memberof Window_Message
  */
 public function onEndOfText(): Void;

 public function startInput(): Bool;

 /**
  * Returns true if the ok or cancel inputs have been triggered
  * multiple times.
  * @returns {Bool}
  * @memberof Window_Message
  */
 public function isTriggered(): Bool;

 /**
  * Returns true if the message window still has text
  * and settings have not changed.
  * @returns {Bool}
  * @memberof Window_Message
  */
 public function doesContinue(): Bool;

 /**
  * Returns true if the message window settings have been changed.
  *
  * @returns {Bool}
  * @memberof Window_Message
  */
 public function areSettingsChanged(): Bool;

 public function updateShowFast(): Void;
 public function newPage(textState: TextState): Void;
 public function loadMessageFace(): Void;
 public function drawMessageFace(): Void;
 public function newLineX(): Int;
 public function processNewLine(textState: TextState): Void;
 public function processNewPage(textState: TextState): Void;
}
