module uim.controls.tiles.slide;

@safe: 
import uim.controls;

class DUIMTileSlideControl : DUIMControl {
  mixin(ControlThis!("UIMTileSlide"));

  override void initialize() {
    super.initialize;
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results;
  }
}
mixin(ControlCalls!("UIMTileSlideControl", "DUIMTileSlideControl")); 
mixin(ControlCalls!("UIMTileSlide", "DUIMTileSlideControl")); 

version(test_uim_controls) { unittest {
    assert(UIMTileSlide);

    auto control = UIMTileSlide;
    // TODO
  }
}
