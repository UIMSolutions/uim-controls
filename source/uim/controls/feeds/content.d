module uim.controls.feeds.content;

@safe:
import uim.controls;

class DUIMFeedContentControl : DUIMControl {
  mixin(ControlThis!("UIMFeedContentControl"));
  
  override void initialize() {
    super.initialize;

    this
      .classes("feed-content");
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
mixin(ControlCalls!("UIMFeedContentControl", "DUIMFeedContentControl"));
mixin(ControlCalls!("UIMFeedContent", "DUIMFeedContentControl"));

version(test_uim_controls) { unittest {
    assert(UIMFeedContent);
  }
}
