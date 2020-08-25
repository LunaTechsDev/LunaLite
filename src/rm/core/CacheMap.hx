package rm.core;

import rm.managers.ImageManager;

@:expose("CacheMap")
@:native("CacheMap")
extern class CacheMap {
 /**
  * Cache for images, audio, or any other kind of resource
  * @param manager
  * @constructor
  */
 public function new(manager: ImageManager);

 /**
  * checks ttl of all elements and removes dead ones
  */
 public function checkTTL(): Void;

 /**
  * cache item
  * @param key url of cache element
  * @returns {*|null}
  */
 public function getItem(key: String): Any;

 public function clear(): Void;
 public function setItem(key: String, item: Any): CacheEntry;
 public function update(ticks: Int, delta: Float): Void;
}
