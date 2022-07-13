module uim.controls.tiles.content;

@safe: 
import uim.controls;

class DUIMTileContentControl : DUIMControl {
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
mixin(ControlCalls!("UIMTileContentControl", "DUIMTileContentControl")); 
mixin(ControlCalls!("UIMTileContent", "DUIMTileContentControl")); 

version(test_uim_controls) {
  unittest {
    assert(UIMTileContent);

    auto control = UIMTileContent;
    // TODO
  }
}
