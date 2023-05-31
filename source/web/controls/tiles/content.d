module web.controls.tiles.content;

@safe: 
import web.controls;

class DUIMTileContentControl : DUIMControl {
  mixin(ControlThis!("UIMTileContent"));

  override void initialize() {
    super.initialize;

    this
      .classes(["tile-content"]);
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTileContentControl", "DUIMTileContentControl")); 
mixin(ControlCalls!("UIMTileContent", "DUIMTileContentControl")); 

version(test_uim_controls) { unittest {
  assert(UIMTileContent);
  assert(UIMTileContent.noId == `<div class="tile-content"></div>`);
}}
