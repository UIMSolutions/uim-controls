module uim.controls.tiles.content;

@safe: 
import uim.controls;

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

    return results ~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMTileContentControl", "DUIMTileContentControl")); 
mixin(ControlCalls!("UIMTileContent", "DUIMTileContentControl")); 

version(test_uim_controls) { unittest {
    assert(UIMTileContent);

    auto control = UIMTileContent;
    // TODO
  }
}
