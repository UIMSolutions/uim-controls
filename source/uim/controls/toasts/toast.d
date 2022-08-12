module uim.controls.toasts.toast;

@safe: 
import uim.controls;

class DUIMToastControl : DUIMControl {
  mixin(ControlThis!("UIMToast"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMToastControl", "DUIMToastControl"));
mixin(ControlCalls!("UIMToast", "DUIMToastControl"));

version(test_uim_controls) { unittest {
    assert(UIMToast);

    auto control = UIMToast;
    // TODO
  }
}
