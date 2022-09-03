module uim.controls.feeds.input;

@safe:
import uim.controls;

class DUIMFeedListitemControl : DUIMControl {
  mixin(ControlThis!("UIMFeedListitemControl"));
  
  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);
    
    return [
      H5Div(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
mixin(ControlCalls!("UIMFeedListitemControl", "DUIMFeedListitemControl"));
mixin(ControlCalls!("UIMFeedListitem", "DUIMFeedListitemControl"));

version(test_uim_controls) { unittest {
    assert(UIMFeedListitem);
  }
}
