module uim.controls.tiles.slide;

@safe: 
import uim.controls;

class DUIMTileSlideControl : DUIMControl {
  mixin(ControlThis!("UIMTileSlide"));

  override void initialize() {
    super.initialize;

    this
      .classes("tile-slide");
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTileSlideControl", "DUIMTileSlideControl")); 
mixin(ControlCalls!("UIMTileSlide", "DUIMTileSlideControl")); 

version(test_uim_controls) { unittest {
  assert(UIMTileSlide);
  assert(UIMTileSlide.noId == `<div class="tile-slide"></div>`);
}}
