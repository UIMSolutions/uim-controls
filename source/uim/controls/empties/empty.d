module uim.controls.empties.empty;

@safe: 
import uim.controls;

class DUIMEmptyControl : DUIMControl {
  mixin(ControlThis!("UIMEmptyControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["empty"]);
  }

  mixin(AddContent!("Icon", "UIMEmptyIcon"));
  mixin(AddContent!("Title", "UIMEmptyTitle"));
  mixin(AddContent!("Header", "UIMEmptyHeader"));
  mixin(AddContent!("Subtitle", "UIMEmptySubtitle"));
  mixin(AddContent!("Action", "UIMEmptyAction"));
  mixin(AddContent!("Image", "UIMEmptyImage"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMEmptyControl", "DUIMEmptyControl"));
mixin(ControlCalls!("UIMEmpty", "DUIMEmptyControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMEmpty);

    auto control = UIMEmpty;
    // TODO
  }
}
