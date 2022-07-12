module uim.controls.tiles.tile;

@safe: 
import uim.controls;

class DUIMTileControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("string", "additionalTooltip")); // Tooltip text which is added at the tooltip
  mixin(OProperty!("string", "appShortcut")); // Link to app
  mixin(OProperty!("string", "ariaLabel"));
  mixin(OProperty!("string", "ariaRole"));
  mixin(OProperty!("string", "icon"));
  mixin(OProperty!("string", "ariaRoleDescription"));
  mixin(OProperty!("string", "bgColor"));
  mixin(OProperty!("string", "bgImage"));
  mixin(OProperty!("string", "errorText"));
  mixin(OProperty!("string", "header"));
  mixin(OProperty!("string", "headerImage"));
  mixin(OProperty!("string", "imageDescription"));

  mixin(OProperty!("bool", "hasNavigation"));
  mixin(OProperty!("bool", "navigationText"));

  override void initialize() {
    super.initialize;
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results;
  }
}
auto UIMTileControl() { return new DUIMTileControl; } 
auto UIMTile() { return new DUIMTileControl; } 

version(test_uim_controls) {
  unittest {
    assert(UIMTile);
    auto control = UIMTile;
  }
}
