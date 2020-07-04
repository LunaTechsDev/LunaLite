package mz.windows;

@:native("Window_Message")
extern class Window_Message extends Window_Base {
  private var _positionType:Int;

  /**
   * Returns the sub windows of Window_Message
   * goldWindow, choiceWindow, numberWindow, and itemWindow
   * in that order
   * @return Array<Any>
   */
  public function subWindows():Array<Any>;
  public function createSubWindows():Void;
  /**
   * Clears the message window flags for
   * fast text, pause skip, and line show fast
   */
  public function clearFlags():Void;

  /**
   * Returns the number of visible rows.
   * defaults to 4
   * @return Int
   */
  public function numVisibleRows():Int;

  /**
   * Determines if the message window can start
   * displaying text.
   * @return Bool
   */
  public function canStart():Bool;

  /**
   * Starts displaying message content in the window.
   */
  public function startMessage():Void;

  /**
   * Sets the background type of the window in terms
   * of transparency.
   * 0,
   * 1,
   * 2
   */
  public function setBackgroundType(backgroundType:Int):Void;

  public function updateBackground():Void;

  public function terminateMessage():Void;

  /**
   * Updates the wait count for displaying text content.
   */
  public function updateWait():Bool;

  
  /**
   * Processes the escape characters in the message window.
   * @param code 
   * @param textState 
   */
  public function processEscapeCharacter(code:String, textState:String):Void;

  /**
   * Processes normal characters displayed within the message window.
   * @param textState 
   */
  public function processNormalCharacter(textState:String):Void;
  

  /**
   * Updates the loading and display of the face graphic.
   */
  public function updateLoading():Void;

  /**
   * Starts the wait count for the message window.
   * @param count 
   */
  public function startWait(count:Int):Void;

  /**
   * Starts the pause for the window.
   * Sets the wait count to 10 and pauses
   * the window.
   */
  public function startPause():Void;
}