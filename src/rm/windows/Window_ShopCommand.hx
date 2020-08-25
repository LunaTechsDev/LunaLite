package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_ShopCommand
 *
 * The window for selecting buy/sell on the shop screen.
 * @class Window_ShopCommand
 */
@:expose("Window_ShopCommand")
@:native("Window_ShopCommand")
extern class Window_ShopCommand extends Window_HorzCommand {
 private var _windowWidth: Int;

 /**
  * Determines if the shop is purchase only.
  *
  * @protected
  * @type {boolean}
  * @memberof Window_ShopCommand
  */
 private var _purchaseOnly: Bool;

 @:native("_purchaseOnly")
 public var isPurchaseOnly: Bool;

 /**
  * Determines the width of the shop buy/sell window;
  * also determines if the shop is purchase only.
  * @param {number} width
  * @param {boolean} purchaseOnly
  * @memberof Window_ShopCommand
  */
 public function initialize(width: Int, purchaseOnly: Bool): Void;
}
