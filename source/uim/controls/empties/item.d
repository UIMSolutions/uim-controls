module uim.controls.empties.item;

@safe: 
import uim.controls;

class DUIMEmptyItemControl : DUIMControl {
  mixin(ControlThis!("UIMEmptyItemControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMEmptyItemControl", "DUIMEmptyItemControl"));
mixin(ControlCalls!("UIMEmptyItem", "DUIMEmptyItemControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMEmptyItem);

    auto control = UIMEmptyItem;
    // TODO
  }
}