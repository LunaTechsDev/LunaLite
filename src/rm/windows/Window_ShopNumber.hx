package rm.windows;

import rm.sprites.Sprite_Button;
import rm.types.RPG.BaseItem;

/**
 * -----------------------------------------------------------------------------
 * Window_ShopNumber
 *
 * The window for inputting quantity of items to buy or sell on the shop
 * screen.
 * @class Window_ShopNumber
 */
@:expose("Window_ShopNumber")
@:native("Window_ShopNumber")
extern class Window_ShopNumber extends Window_Selectable {
 /**
  * The current item being bought/sold.
  *
  * @private var
  * @type {RPG.BaseItem}
  * @memberof Window_ShopNumber
  */
 private var _item: BaseItem;

 /**
  * Returns the maximum number of the item
  * that can be bought/sold.
  * @private var
  * @type {number}
  * @memberof Window_ShopNumber
  */
 private var _max: Int;

 /**
  * The current price of the items.
  *
  * @private var
  * @type {number}
  * @memberof Window_ShopNumber
  */
 private var _price: Int;

 private var _number: Int;

 /**
  * Returns the currency unit of the game.
  *
  * @private var
  * @type {String}
  * @memberof Window_ShopNumber
  */
 private var _currencyUnit: String;

 /**
  * The buttons to input quantity
  * for the quantity of the item to be bought/sold.
  * @private var
  * @type {Array<Sprite_Button>}
  * @memberof Window_ShopNumber
  */
 private var _buttons: Array<Sprite_Button>;

 /**
  * Creates an instance of Window_ShopNumber.
  * @param {number} x
  * @param {number} y
  * @param {number} height
  * @memberof Window_ShopNumber
  */
 public function new(x: Int, y: Int, height: Int);

 /**
  * Returns the width of the window.
  *
  * @returns {number}
  * @memberof Window_ShopNumber
  */
 public function windowWidth(): Int;

 public function number(): Int;

 public function setup(item: BaseItem, max: Int, price: Int): Void;

 public function setCurrencyUnit(currencyUnit: String): Void;

 public function createButtons(): Void;

 public function placeButtons(): Void;

 public function updateButtonsVisiblity(): Void;

 /**
  * Shows the quantity input buttons.
  *
  * @memberof Window_ShopNumber
  */
 public function showButtons(): Void;

 /**
  * Hides the quantity input buttons.
  *
  * @memberof Window_ShopNumber
  */
 public function hideButtons(): Void;

 public function drawMultiplicationSign(): Void;

 /**
  * Draws the number.
  */
 public function drawNumber(): Void;

 /**
  * Draws the total price of the selected
  * quantity of item.
  * @memberof Window_ShopNumber
  */
 public function drawTotalPrice(): Void;

 /**
  * Item y position.
  * @return Int
  */
 public function itemY(): Int;

 /**
  * Y position of the price.
  * @return Int
  */
 public function priceY(): Int;

 /**
  * Y position of the button.
  * @return Int
  */
 public function buttonY(): Int;

 /**
  * Returns the width of the cursor.
  *
  * @returns {number}
  * @memberof Window_ShopNumber
  */
 public function cursorWidth(): Int;

 /**
  * Cursor x position.
  * @return Int
  */
 public function cursorX(): Int;

 /**
  * The max number of digits for the shop number display
  * window.
  */
 public function maxDigits(): Int;

 /**
  * Processes the change in quantity.
  *
  * @memberof Window_ShopNumber
  */
 public function processNumberChange(): Void;

 /**
  * Changes the quantity, given a number.
  *
  * @param {number} amount
  * @memberof Window_ShopNumber
  */
 public function changeNumber(amount: Int): Void;

 /**
  * Handle for button up event.
  */
 public function onButtonUp(): Void;

 /**
  * Handler for button up event 2.
  */
 public function onButtonUp2(): Void;

 /**
  * Handler for button down event.
  */
 public function onButtonDown(): Void;

 /**
  * Handler for button down event.
  */
 public function onButtonDown2(): Void;

 /**
  * Handler for button ok event.
  */
 public function onButtonOk(): Void;
}
