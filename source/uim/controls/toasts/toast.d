module uim.controls.toasts.toast;

@safe: 
import uim.controls;

class DUIMToastControl : DUIMControl {
  mixin(ControlThis!("UIMToast"));

  override void initialize() {
    super.initialize;

    this
      .classes("toast");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMToastControl", "DUIMToastControl"));
mixin(ControlCalls!("UIMToast", "DUIMToastControl"));

version(test_uim_controls) { unittest {
  assert(UIMToast);
  assert(UIMToast.noId == `<div class="toast"></div>`);
}}
