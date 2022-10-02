module uim.controls.empties.title;

@safe: 
import uim.controls;

class DUIMEmptyTitleControl : DUIMEmptyItemControl {
  mixin(ControlThis!("UIMEmptyTitleControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["empty-title"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5P(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMEmptyTitleControl", "DUIMEmptyTitleControl"));
mixin(ControlCalls!("UIMEmptyTitle", "DUIMEmptyTitleControl"));

version(test_uim_controls) { unittest {
  assert(UIMEmptyTitle);
  assert(UIMEmptyTitle.noId == `<p class="empty-title"></p>`);
}}
