module uim.controls.feeds.listitems.action;

@safe:
import uim.controls;

class DUIMFeedListitemActionControl : DUIMControl {
  mixin(ControlThis!("UIMFeedListitemActionControl"));
  
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
mixin(ControlCalls!("UIMFeedListitemActionControl", "DUIMFeedListitemActionControl"));
mixin(ControlCalls!("UIMFeedListitemAction", "DUIMFeedListitemActionControl"));

version(test_uim_controls) { unittest {
    assert(UIMFeedListitemAction);
  }
}
