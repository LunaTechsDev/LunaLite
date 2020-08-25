package rm.windows;

import rm.objects.Game_Actor;
import rm.types.RPG.EquipItem;

/**
 * -----------------------------------------------------------------------------
 * Window_EquipItem
 *
 * The window for selecting an equipment item on the equipment screen.
 * @class Window_EquipItem
 */
@:expose("Window_EquipItem")
@:native("Window_EquipItem")
extern class Window_EquipItem {
 private var _actor: Game_Actor;
 private var _slotId: Int;
 private var _statusWindow: Window_EquipStatus;
 public function new(x: Int, y: Int, width: Int, height: Int): Void;
 public function setActor(actor: Game_Actor): Void;
 public function setSlotId(slotId: Int): Void;
 public function includes(item: EquipItem): Bool;
 public function isEnabled(item: EquipItem): Bool;
 public function setStatusWindow(statusWindow: Window_EquipStatus): Void;
}
