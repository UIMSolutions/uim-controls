module web.controls.feeds.feed;

@safe:
import web.controls;

class DUIMFeedControl : DUIMControl {
  mixin(ControlThis!("UIMFeedControl"));
  
  override void initialize() {
    super.initialize;

    this
      .classes("feed");
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
  assert(UIMFeed.noId == `<div class="feed"></div>`);
}}
