package mz.abstracts.managers;

import mz.managers.ImageManager;

@:forward
@:forwardStatics
abstract ImageMgr(ImageManager) from ImageManager to ImageManager {
}
