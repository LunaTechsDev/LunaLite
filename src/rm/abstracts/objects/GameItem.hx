package rm.abstracts.objects;

import rm.types.RPG.BaseItem;
import rm.objects.Game_Item;

@:forward
@:forwardStatics
abstract GameItem(Game_Item) from Game_Item to Game_Item {
 public inline function new(item: BaseItem) {
  this = new Game_Item(item);
 }
}
