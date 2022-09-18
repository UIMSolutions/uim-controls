module uim.controls.feeds.listitems.action;

@safe:
import uim.controls;

class DUIMFeedListItemActionControl : DUIMControl {
  mixin(ControlThis!("UIMFeedListItemActionControl"));
  
  override void initialize() {
    super.initialize;

    this
      .classes("feed-listitem-action");
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
mixin(ControlCalls!("UIMFeedListItemActionControl", "DUIMFeedListItemActionControl"));
mixin(ControlCalls!("UIMFeedListItemAction", "DUIMFeedListItemActionControl"));

version(test_uim_controls) { unittest {
  assert(UIMFeedListItemAction);
  assert(UIMFeedListItemAction.noId == `<div class="feed-listitem-action"></div>`)
}}
