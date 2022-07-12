module uim.controls.tiles.slide;

@safe: 
import uim.controls;

class DUIMTileSlideControl : DUIMContainerControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results;
  }
}
auto UIMTileSlideControl() { return new DUIMTileSlideControl; } 
auto UIMTileSlide() { return new DUIMTileSlideControl; } 

version(test_uim_controls) {
  unittest {
    assert(UIMTileSlide);
    auto control = UIMTileSlide;
  }
}
