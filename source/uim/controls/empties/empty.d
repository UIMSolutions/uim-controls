module uim.controls.empties.empty;

@safe: 
import uim.controls;

class DUIMEmptyControl : DUIMControl {
  mixin(ControlThis!("UIMEmptyControl"));

  mixin(OProperty!("DUIMControl[]", "items"));

  override void initialize() {
    super.initialize;

    this
      .classes(["empty"]);
  }

  mixin(AddContent!("Icon", "UIMEmptyIconControl"));
  mixin(AddContent!("Title", "UIMEmptyTitleControl"));
  mixin(AddContent!("Header", "UIMEmptyHeaderControl"));
  mixin(AddContent!("Subtitle", "UIMEmptySubtitleControl"));
  mixin(AddContent!("Action", "UIMEmptyActionControl"));
  mixin(AddContent!("Image", "UIMEmptyImageControl"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent~items.map!(item => item.toH5(options)).join);
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
