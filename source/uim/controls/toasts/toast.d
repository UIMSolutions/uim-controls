module uim.controls.toasts.toast;

@safe: 
import uim.controls;

class DUIMToastControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMToastControl", "DUIMToastControl"));
mixin(ControlCalls!("UIMToast", "DUIMToastControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMToast);

    auto control = UIMToast;
    // TODO
  }
}
