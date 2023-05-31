module web.controls.tiles.container;

@safe: 
import web.controls;

class DUIMTileContainerControl : DUIMControl {
  mixin(ControlThis!("UIMTileContainer"));

  override void initialize() {
    super.initialize;

    this
      .classes("tile-container");
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTileContainerControl", "DUIMTileContainerControl")); 
mixin(ControlCalls!("UIMTileContainer", "DUIMTileContainerControl")); 

version(test_uim_controls) { unittest {
  assert(UIMTileContainer);
  assert(UIMTileContainer.noId == `<div class="tile-container"></div>`);
}}
