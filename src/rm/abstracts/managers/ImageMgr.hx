package rm.abstracts.managers;

import rm.managers.ImageManager;

@:forward
@:forwardStatics
abstract ImageMgr(ImageManager) from ImageManager to ImageManager {
}
