module uim.controls.empties.image;

@safe: 
import uim.controls;

class DUIMEmptyImageControl : DUIMEmptyItemControl {
  mixin(ControlThis!("UIMEmptyImageControl"));

  override void initialize() {
    super.initialize;


    this
      .classes(["empty-image"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMEmptyImageControl", "DUIMEmptyImageControl"));
mixin(ControlCalls!("UIMEmptyImage", "DUIMEmptyImageControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMEmptyImage);

    auto control = UIMEmptyImage;
    // TODO 
  }
}