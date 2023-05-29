module uim.controls.tiles.tile;

@safe: 
import uim.controls;

class DUIMTileControl : DUIMControl {
  mixin(ControlThis!("UIMTile"));

  mixin(OProperty!("string", "additionalTooltip")); // Tooltip text which is added at the tooltip
  mixin(OProperty!("string", "appShortcut")); // Link to app
  mixin(OProperty!("string", "icon"));
  mixin(OProperty!("string", "bgColor"));
  mixin(OProperty!("string", "bgImage"));
  mixin(OProperty!("string", "errorText"));
  mixin(OProperty!("string", "header"));
  mixin(OProperty!("string", "headerImage"));
  mixin(OProperty!("string", "imageDescription"));

  mixin(OProperty!("bool", "hasNavbar"));
  mixin(OProperty!("bool", "navbarText"));

  mixin(OProperty!("DUIMTileContentControl", "tileContent"));

  override void initialize() {
    super.initialize;

    this
      .classes(["tile"]);
//      .tileContent(UIMTileContent);
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Div(myId, myClasses, myAttributes, myContent~tileContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTileControl", "DUIMTileControl")); 
mixin(ControlCalls!("UIMTile", "DUIMTileControl")); 

version(test_uim_controls) { unittest {
  assert(UIMTile);
  assert(UIMTile.noId == `<div class="tile"></div>`);
}}
