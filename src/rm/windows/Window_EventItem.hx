package rm.windows;

import rm.types.RPG.BaseItem;

/**
 * -----------------------------------------------------------------------------
 * Window_EventItem
 *
 * The window used for the event command [Select Item].
 * @class Window_EventItem
 */
@:native("Window_EventItem")
extern class Window_EventItem extends Window_ItemList {
 private var _messageWindow: Window_Message;

 public function new(messageWindow: Window_Message);

 /**
  * Returns the height off the window.
  *
  * @returns {number}
  * @memberof Window_EventItem
  */
 public function windowHeight(): Int;

 /**
  * Returns the number of visible rows.
  *
  * @returns {number}
  * @memberof Window_EventItem
  */
 public function numVisibleRows(): Int;

 /**
  * Starts the event item window.
  *
  * @memberof Window_EventItem
  */
 public function start(): Void;

 public function updatePlacement(): Void;
 public function includes(item: BaseItem): Bool;
 public function isEnabled(item: BaseItem): Bool;
 public function onOk(): Void;
 public function onCancel(): Void;
}
