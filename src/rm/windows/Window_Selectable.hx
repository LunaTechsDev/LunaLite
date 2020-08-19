package rm.windows;

import rm.core.Rectangle;

@:native("Window_Selectable")
#if compileMV
extern class Window_Selectable extends Window_Base {
#else
extern class Window_Selectable extends Window_Scrollable {
#end

/**
 * The index property of Window_Selectable; this is used
 * to select items from the list within the window.
 * @private var
 * @type {number}
 * @memberof Window_Selectable
 */
private var _index: Int;

/**
 * The boolean property that determines if the cursor is
 * fixed(locked to a position).
 * @private var
 * @type {boolean}
 * @memberof Window_Selectable
 */
private var _cursorFixed: Bool;

private var _cursorAll: Bool;
private var _stayCount: Int;
private var _helpWindow: Window_Help;
private var _handlers: Any;
private var _touching: Bool;
#if compileMV
private var _scrollX: Float;
private var _scrollY: Float;
public function new(x: Int, y: Int, width: Int, height: Int): Void;
public function initialize(x: Int, y: Int, height: Int, width: Int): Void;
#else
public function new(rect: Rectangle);
public function initialize(rect: Rectangle): Void;

/**
 * Forcefully selects the index and cursor
 * visibility is set to false.
 * @param index
 */
public function forceSelect(index: Int): Void;

/**
 * Smoothly scrolls to the index.
 * Cursor visibility is set to true.
 * @param index
 */
public function smoothSelect(index: Int): Void;

public function itemRectWithPadding(index: Int): Rectangle;

/**
 * Return the rectangle for the line item with padding.
 * @param index
 */
public function itemLineRect(index: Int): Rectangle;

/**
 * Overwrite this or add to it to add your own draw functions.
 */
public function paint(): Void;

/**
 * Refreshes the cursor.
 */
public function refreshCursor(): Void;

/**
 * Refreshes cursor for selecting all items.
 */
public function refreshCursorForAll(): Void;

/**
 * Returns true by default.
 * Determines if hover support is enabled.
 * @return Bool
 */
public function isHoverEnabled(): Bool;

/**
 * Handler for Touching okay in the window.
 */
public function onTouchOk(): Void;

/**
 * Handler for selecting in the window.
 */
public function onTouchSelect(): Void;

/**
 * Handler for touching and processing cancel in
 * the window.
 */
public function onTouchCancel(): Void;
#end

/**
 * Returns the current position of the _index property.
 *
 * @returns {Int}
 * @memberof Window_Selectable
 */
public function index(): Int;

/**
 * Returns true if the _cursorFixed property is true;
 * this means the cursor is locked to a position.
 * @returns {boolean}
 * @memberof Window_Selectable
 */
public function cursorFixed(): Bool;

/**
 * Sets the _cursorFixed property of the
 * window.
 * @param {boolean} cursorFixed
 * @memberof Window_Selectable
 */
public function setCursorFixed(cursorFixed: Bool): Void;

public function cursorAll(): Bool;
public function setCursorAll(cursorAll: Bool): Void;

/**
 * Returns the maximum number of columns
 * for the window.
 * @returns {number}
 * @memberof Window_Selectable
 */
public function maxCols(): Int;

/**
 * Returns the maximum number of items within the window;
 * useful to overwrite when creating a new window.
 * This method is used to calculate the number of rows and more.
 * @returns {number}
 * @memberof Window_Selectable
 */
public function maxItems(): Int;

public function spacing(): Float;

/**
 * Returns the width of an item within the window;
 * determines the width of a column.
 * @returns {number}
 * @memberof Window_Selectable
 */
public function itemWidth(): Float;

/**
 * Returns the height of an item within the window;
 * determines the height of a row.
 * @returns {number}
 * @memberof Window_Selectable
 */
public function itemHeight(): Float;

/**
 * Selects the current index within the window given a number.
 *
 * @param {number} index
 * @memberof Window_Selectable
 */
public function select(index: Int): Void;

/**
 * Deselects the currently selected index.
 *
 * @memberof Window_Selectable
 */
public function deselect(): Void;

/**
 * Reselects the index based on the window's _index property.
 *
 * @memberof Window_Selectable
 */
public function reselect(): Void;

public function row(): Int;
public function topRow(): Int;
public function maxTopRow(): Int;

/**
 * Sets the current top row of the given a number.
 * The top row will then be moved to an index
 * of the window.
 * @param {number} row
 * @memberof Window_Selectable
 */
public function setTopRow(row: Int): Void;

public function resetScroll(): Void;
public function maxPageRows(): Int;
public function maxPageItems(): Int;

/**
 * Returns true if the window is horizontal;
 * means the window only has a single row.
 * @returns {boolean}
 * @memberof Window_Selectable
 */
public function isHorizontal(): Bool;

public function bottomRow(): Int;
public function setBottomRow(row: Int): Void;

/**
 * Creates a new rectangle based on itemWidth and itemHeight.
 * The rectangle is mainly used for positioning items within
 * the selectable window.
 * @param {number} index
 * @returns {Rectangle}
 * @memberof Window_Selectable
 */
public function itemRect(index: Int): Rectangle;

/**
 * Creates a new rectangle based on itemWidth and itemHeight
 * The rectangle is used for positioning text within
 * the selectable window.
 * @param {number} index
 * @returns {Rectangle}
 * @memberof Window_Selectable
 */
public function itemRectForText(index: Int): Rectangle;

public function setHelpWindow(helpWindow: Window_Help): Void;

/**
 * Shows the attached help window.
 *
 * @memberof Window_Selectable
 */
public function showHelpWindow(): Void;

/**
 * Hides the attached help window.
 *
 * @memberof Window_Selectable
 */
public function hideHelpWindow(): Void;

/**
 * Creates a new handler with the symbol as the handler name
 * and a method (JS function) bound to it.
 * @param {string} symbol
 * @param {*} method
 * @memberof Window_Selectable
 */
public function setHandler(symbol: String, method: Any): Void;

public function isHandled(symbol: String): Bool;
public function callHandler(symbol: String): Void;
public function isOpenAndActive(): Bool;
public function isCursorMovable(): Bool;

/**
 * Moves the cursor down; if wrap is passed
 * as true, then it will return to the top when
 * at the end of the list.
 * @param {boolean} wrap
 * @memberof Window_Selectable
 */
public function cursorDown(wrap: Bool): Void;

/**
 * Moves the cursor up; if wrap is passed
 * as true, then it will return to the bottom
 * when at the top of the list.
 * @param {boolean} wrap
 * @memberof Window_Selectable
 */
public function cursorUp(wrap: Bool): Void;

public function cursorRight(wrap: Bool): Void;
public function cursorLeft(wrap: Bool): Void;
public function cursorPagedown(): Void;
public function cursorPageup(): Void;
public function scrollDown(): Void;
public function scrollUp(): Void;
public function updateArrows(): Void;

/**
 * Handles the processing of cursor movement.
 *
 * @memberof Window_Selectable
 */
public function processCursorMove(): Void;

/**
 * Handles the process of attached handlers.
 *
 * @memberof Window_Selectable
 */
public function processHandling(): Void;

/**
 * Handles the processing of the scroll wheel within
 * the window.
 * @memberof Window_Selectable
 */
public function processWheel(): Void;

/**
 * Handles the processing of touch input.
 *
 * @memberof Window_Selectable
 */
public function processTouch(): Void;

public function isTouchedInsideFrame(): Bool;
public function onTouch(triggered: Bool): Void;
public function hitTest(x: Float, y: Float): Float;
public function isContentsArea(x: Float, y: Float): Bool;

/**
 * Determines if touch ok is enabled as an option;
 * this means whether you can confirm the selection
 * of an item within the window with touch input.
 * @returns {boolean}
 * @memberof Window_Selectable
 */
public function isTouchOkEnabled(): Bool;

/**
 * Determines if ok is enabled as an option;
 * this means whether you can confirm selection
 * of an item within the window.
 * @returns {boolean}
 * @memberof Window_Selectable
 */
public function isOkEnabled(): Bool;

public function isCancelEnabled(): Bool;
public function isOkTriggered(): Bool;
public function isCancelTriggered(): Bool;
public function processOk(): Void;
public function callOkHandler(): Void;
public function processCancel(): Void;
public function callCancelHandler(): Void;
public function processPageup(): Void;
public function processPagedown(): Void;
public function updateInputData(): Void;
public function updateCursor(): Void;

/**
 * Determines if the cursor is visible within
 * the window.
 * @returns {boolean}
 * @memberof Window_Selectable
 */
public function isCursorVisible(): Bool;

public function ensureCursorVisible(): Void;
public function callUpdateHelp(): Void;
public function updateHelp(): Void;
public function setHelpWindowItem(item: Any): Void;
public function isCurrentItemEnabled(): Bool;

/**
 * Draws all items within the window; this method
 * cals drawItem multiple times.
 * @memberof Window_Selectable
 */
public function drawAllItems(): Void;

public function drawItem(index: Int): Void;
public function clearItem(index: Int): Void;
public function redrawItem(index: Int): Void;
public function redrawCurrentItem(): Void;

/**
 * Refreshes the window contents.
 *
 * @memberof Window_Selectable
 */
public function refresh(): Void;
}
