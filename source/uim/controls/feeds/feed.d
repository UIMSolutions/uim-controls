module uim.controls.feeds.feed;

@safe:
import uim.controls;

class DUIMFeedControl : DUIMControl {
  mixin(ControlThis!("UIMFeedControl"));
  
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
mixin(ControlCalls!("UIMFeedControl", "DUIMFeedControl"));
mixin(ControlCalls!("UIMFeed", "DUIMFeedControl"));

version(test_uim_controls) { unittest {
    assert(UIMFeed);
  }
}
