module web.controls.feeds.input;

@safe:
import web.controls;

class DUIMFeedInputControl : DUIMControl {
  mixin(ControlThis!("UIMFeedInputControl"));
  
  override void initialize() {
    super.initialize;
    
    this
      .classes("feed-input");
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
mixin(ControlCalls!("UIMFeedInputControl", "DUIMFeedInputControl"));
mixin(ControlCalls!("UIMFeedInput", "DUIMFeedInputControl"));

version(test_uim_controls) { unittest {
  assert(UIMFeedInput);
  assert(UIMFeedInput.noId == `<div class="feed-input"></div>`);
}}
