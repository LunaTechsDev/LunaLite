package mz.types;

typedef Dict = {key:String}

typedef MetaData = {
	note:String,
	meta:Dict
}

typedef Map = {
	> MetaData,

	/**
	 * The map's display name
	 */
	var displayName:String;

	/**
	 * The map's tile set
	 */
	var tilesetId:Int;

	/**
	 * The map's width
	 */
	var width:Int;

	/**
	 * The maps height
	 */
	var height:Int;

	/**
	 * The scroll type (0: No Loop, 1:Vertical Loop, 2:Horizontal Loop, 3:Both Loop)
	 */
	var scrollType:Int;

	/**
	 * The truth value indicating whether the battle background
	 * specification is enabled.
	 */
	var specifyBattleback:Bool;

	/**
	 * The file name of the wall graphic if the battle background
	 * specification is enabled.
	 */
	var battleback1Name:String;

	/**
	 * The file name of the wall graphic if the battle background
	 * specification is enabled.
	 */
	var battleback2_name:String;

	/**
	 * The truth value indicating whether BGM autoswitching
	 * is enabled.
	 */
	var autoplayBgm:Bool;

	/**
	 * The name of the BGM {RPG.AudioFile} if BGM autoswitching
	 * is enabled.
	 */
	var bgm:AudioFile;

	/**
	 * The truth value indicating whether BGS autoswitching
	 * is enabled.
	 */
	var autoplayBgs:Bool;

	/**
	 * The truth value of the [Disable Dashing] option.
	 */
	var disableDashing:Bool;

	/**
	 * An encounter list. A RPG.Map.Encounter ID array.
	 */
	var encounterList:Array<MapEncounter>;

	/**
	 * The average Int of steps between encounters.
	 */
	var encounterStep:Int;

	/**
	 * The file name of the parallax background's graphic.
	 */
	var parallaxName:String;

	/**
	 * The truth value of the [Loop Horizontal] option for the parallax background.
	 */
	var parallaxLoopX:Bool;

	/**
	 * The truth value of the [Loop Vertical] option for the parallax background.
	 */
	var parallaxLoopY:Bool;

	/**
	 * The automatic x-axis scrolling speed for the parallax background.
	 */
	var parallaxSx:Int;

	/**
	 * The automatic y-axis scrolling speed for the parallax background.
	 */
	var parallaxSy:Int;

	/**
	 * The truth value of the [Show in the Editor] option for the parallax background.
	 */
	var parallaxShow:Bool;

	/**
	 * The map data. A 3-dimensional tile ID array (Table).
	 */
	var data:Array<Int>;

	/**
	 * The array of RPG.Event data.
	 */
	var events:Array<Event>;
}

typedef AudioFile = {};

typedef MapEncounter = {
	/**
	 * The enemy Troop ID.
	 */
	var troopId:Int;

	/**
	 * Weight/chance  among enemies on the map that you'll
	 * meet this enemy.
	 */
	var weight:Int;

	/**
	 * An array containing Region IDs.
	 */
	var regionSet:Array<Int>;
}

/**
 * The data class for map information.
 */
typedef MapInfo = {
	/**
	 * The map name.
	 */
	var name:String;

	/**
	 * The parent map ID.
	 */
	var parentId:Int;

	/**
	 * The map tree display order, which is used internally.
	 */
	var order:Int;
}

/**
 * The data class for map events.
 */
typedef Event = {
	> MetaData,

	/**
	 * The event ID.
	 */
	var id:Int;

	/**
	 * The event name.
	 */
	var name:String;

	/**
	 * The event's x-coordinate on the map.
	 */
	var x:Int;

	/**
	 * The event's y-coordinate on the map.
	 */
	var y:Int;

	/**
	 * The event pages. RPG.EventPage array.
	 */
	var pages:Array<EventPage>;
}

/**
 * The data class for the event page.
 */
typedef EventPage = {
	/**
	 * The event condition (RPG.EventPage.Condition).
	 */
	var conditions:EventPageConditions;

	/**
	 * The event graphic (RPG.EventPage.Image) .
	 */
	var image:EventPageImage;

	/**
	 * The type of movement (0: fixed, 1: random, 2: approach, 3: custom).
	 */
	var moveType:Int;

	/**
	 * The movement speed (1: x8 slower, 2: x4 slower, 3: x2 slower, 4: normal, 5: x2 faster, 6: x4 faster).
	 */
	var moveSpeed:Int;

	/**
	 * The movement frequency (1: lowest, 2: lower, 3: normal, 4: higher, 5: highest).
	 */
	var moveFrequency:Int;

	/**
	 * The movement route (RPG.MoveRoute). Referenced only when the movement type is set to custom.
	 */
	var moveRoute:Array<MoveRoute>;

	/**
	 * The truth value of the [Walking Animation] option.
	 */
	var walkAnime:Bool;

	/**
	 * The truth value of the [Stepping Animation] option.
	 */
	var stepAnime:Bool;

	/**
	 * The truth value of the [Direction Fix] option.
	 */
	var directionFix:Bool;

	/**
	 * The truth value of the [Through] option.
	 */
	var through:Bool;

	/**
	 * The priority type (0: below characters, 1: same as characters, 2: above characters).
	 */
	var priorityType:Int;

	/**
	 * The event trigger (0: action button, 1: player touch, 2: event touch, 3: autorun, 4: parallel).
	 */
	var trigger:Int;

	/**
	 * A list of event commands. An RPG.EventCommand array.
	 */
	var list:Array<EventCommand>;
}

/**
 * The data class for the event page conditions.
 */
typedef EventPageConditions = {
	/**
	 * The truth value indicating whether the first [Switch] condition is valid.
	 */
	var switch1Valid:Bool;

	/**
	 * The truth value indicating whether the second [Switch] condition is valid.
	 */
	var switch2Valid:Bool;

	/**
	 * The truth value indicating whether the [Variable] condition is valid.
	 */
	var variableValid:Bool;

	/**
	 * The truth value indicating whether the [Self Switch] condition is valid.
	 */
	var selfSwitchValid:Bool;

	/**
	 * The truth value indicating whether the [Item] condition is valid.
	 */
	var itemValid:Bool;

	/**
	 * The truth value indicating whether the [Actor] condition is valid.
	 */
	var actorValid:Bool;

	/**
	 * The ID of that switch if the first [Switch] condition is valid.
	 */
	var switch1Id:Int;

	/**
	 * The ID of that switch if the second [Switch] condition is valid.
	 */
	var switch2Id:Int;

	/**
	 * The ID of that variable if the [Variable] condition is valid.
	 */
	var variableId:Int;

	/**
	 * The standard value of that variable (x and greater) if the [Variable] condition is valid.
	 */
	var variableValue:Int;

	/**
	 * The letter of that self switch ("A".."D") if the [Self Switch] condition is valid.
	 */
	var selfSwitchCh:String;

	/**
	 * The ID of that item if the [Item] condition is valid.
	 */
	var itemId:String;

	/**
	 * The ID of that actor if the [Actor] condition is valid.
	 */
	var actorId:String;
}

/**
 * The data class for the Event page [Graphics].
 */
typedef EventPageImage = {
	/**
	 * The tile ID. If the specified graphic is not a tile, this value is 0.
	 */
	var tileId:Int;

	/**
	 * The file name of the character's graphic.
	 */
	var characterName:String;

	/**
	 * The index of the character's graphic file (0..7).
	 */
	var characterIndex:Int;

	/**
	 * The direction in which the character is facing (2: down, 4: left, 6: right, 8: up).
	 */
	var direction:Int;

	/**
	 * The character's pattern (0..2).
	 */
	var pattern:Int;
}

/**
 * The data class for the Event command.
 */
typedef EventCommand = {
	/**
	 * The event code.
	 */
	var code:Int;

	/**
	 * The indent depth. Usually 0. The [Conditional Branch] command, among others, adds 1 with every step deeper.
	 */
	var indent:Int;

	/**
	 * An array containing the Event command's arguments. The contents vary for each command.
	 */
	var parameters:Array<Any>;
}

/**
 * The data class for the Move route.
 */
typedef MoveRoute = {
	/**
	 * The truth value of the [Repeat Action] option.
	 */
	var repeat:Bool;

	/**
	 * The truth value of the [Skip If Cannot Move] option.
	 */
	var skippable:Bool;

	/**
	 * The truth value of the [Wait for Completion] option.
	 */
	var wait:Bool;

	/**
	 * Program contents. An RPG.MoveCommand array.
	 */
	var list:Array<MoveCommand>;
}

/**
 * The data class for the Move command.
 */
typedef MoveCommand = {
	/**
	 * Move command code.
	 */
	var code:Int;

	/**
	 * An array containing the Move command's arguments. The contents vary for each command.
	 */
	var parameters:Array<Any>;
}

/**
 * The data class for damage.
 */
typedef Damage = {
	/**
	 * The type of damage.
	 *
	 * 0: None
	 * 1: HP damage
	 * 2: MP damage
	 * 3: HP recovery
	 * 4: MP recovery
	 * 5: HP drain
	 * 6: MP drain
	 */
	var type:Int;

	/**
	 * The element ID.
	 */
	var elementId:Int;

	/**
	 * The formula.
	 */
	var formula:String;

	/**
	 * The degree of variability.
	 */
	var variance:Int;

	/**
	 * Critical hit (true/false).
	 */
	var critical:Bool;
}

 typedef Trait = {
  /**
   * The trait code.
   */
  var code: Int;

  /**
   * The ID of the data (such as elements or states) according to the type of the trait.
   */
  var dataId: Int;

  /**
   * The value set according to the type of the trait.
   */
  var value: Int;

  /**
   * The map tree expansion flag, which is used internally.
   */
  var expanded: Bool;

  /**
   * The x-axis scroll position, which is used internally.
   */
  var scrollX: Int;

  /**
   * The y-axis scroll position, which is used internally.
   */
  var scrollY: Int;
}


/**
 * The data class for use effects.
 */
typedef Effect = {
	/**
	 * The use effect code.
	 */
	var code:Int;

	/**
	 * The ID of data (state, parameter, and so on) according to the type of use effect.
	 */
	var dataId:Int;

	/**
	 * Value 1 set according to the type of use effect.
	 */
	var value1:Int;

	/**
	 * Value 2 set according to the type of use effect.
	 */
	var value2:Int;
}

/**
 * A superclass of actor, class, skill, item, weapon, armor, enemy, and state.
 *
 * Some items are unnecessary depending on the type of data, but they are included for convenience sake.
 */
typedef BaseItem = {
	> MetaData,

	/**
	 * The item ID.
	 */
	var id:Int;

	/**
	 * The item name.
	 */
	var name:String;

	/**
	 * The icon number.
	 */
	var iconIndex:Int;

	/**
	 * The description text.
	 */
	var description:String;
}

typedef UsableItem = {
	> BaseItem,

	/**
	 * The scope of effects.
	 *
	 * 0: None
	 * 1: One Enemy
	 * 2: All Enemies
	 * 3: One Random Enemy
	 * 4: Two Random Enemies
	 * 5: Three Random Enemies
	 * 6: Four Random Enemies
	 * 7: One Ally
	 * 8: All Allies
	 * 9: One Ally (Dead)
	 * 10: All Allies (Dead)
	 * 11: The User
	 */
	var scope:Int;

	/**
	 * When the item/skill may be used.
	 *
	 * 0: Always
	 * 1: Only in battle
	 * 2: Only from the menu
	 * 3: Never
	 */
	var occasion:Int;

	/**
	 * The speed correction.
	 */
	var speed:Int;

	/**
	 * The success rate.
	 */
	var successRate:Float;

	/**
	 * The number of repeats.
	 */
	var repeats:Int;

	/**
	 * The number of TP gained.
	 */
	var tpGain:Int;

	/**
	 * The type of hit.
	 *
	 * 0: Certain hit
	 * 1: Physical attack
	 * 2: Magical attack
	 */
	var hitType:Int;

	/**
	 * The animation ID.
	 */
	var animationId:Int;

	/**
	 * Damage (RPG.Damage).
	 */
	var damage:Damage;

	/**
	 * A list of use effects. An RPG.Effect array.
	 */
	var effects:Array<Effect>;
}

/**
 * The data class for skills.
 */
typedef Skill = {
	> UsableItem,

	/**
	 * Skill type ID.
	 */
	var stypeId:Int;

	/**
	 * Number of MP consumed.
	 */
	var mpCost:Int;

	/**
	 * Number of TP consumed
	 */
	var tpCost:Int;

	/**
	 * The use message.
	 */
	var message1:String;

	/**
	 * The use message.
	 */
	var message2:String;

	/**
	 * Weapon type required.
	 */
	var requiredWtypeId1:Int;

	/**
	 * Weapon type required.
	 */
	var requiredWtypeId2:Int;
}

/**
 * The data class for items.
 */
typedef Item = {
	> UsableItem,

	/**
	 * The item type ID.
	 *
	 * 1: Regular item
	 * 2: Key item
	 */
	var itypeId:Int;

	/**
	 * The item's price.
	 */
	var price:Int;

	/**
	 * The truth value indicating whether the item disappears when used.
	 */
	var consumable:Bool;
}

/**
 * A superclass of weapons and armor.
 */
typedef EquipItem = {
	> BaseItem,

	/**
	 * The price of the weapon or armor.
	 */
	var price:Int;

	/**
	 * The type of weapon or armor.
	 *
	 * 0: Weapon
	 * 1: Shield
	 * 2: Head
	 * 3: Body
	 * 4: Accessory
	 */
	var etypeId:Int;

	/**
	 * The amount of parameter change. An array of integers using the following IDs as subscripts:
	 *
	 * 0: Maximum hit points
	 * 1: Maximum magic points
	 * 2: Attack power
	 * 3: Defense power
	 * 4: Magic attack power
	 * 5: Magic defense power
	 * 6: Agility
	 * 7: Luck
	 */
	var params:Array<Int>;

	/**
	 * The array of Trait data.
	 */
	var traits:Array<Trait>;
}

/**
 * The data class for weapons.
 */
typedef Weapon = {
	> EquipItem,

	/**
	 * The weapon type ID.
	 */
	var wtypeId:Int;

	/**
	 * The animation ID when using the weapon.
	 */
	var animationId:Int;
}

/**
 * The data class for armor.
 */
typedef Armor = {
	> EquipItem,

	/**
	 * The armor type ID.
	 */
	var atypeId:Int;
}
