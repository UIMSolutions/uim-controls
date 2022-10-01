module uim.controls.forms.check;

@safe: 
import uim.controls;

class DUIMFormCheckControl : DUIMControl {
  mixin(ControlThis!("UIMFormCheckControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-check"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMFormCheckControl", "DUIMFormCheckControl"));
mixin(ControlCalls!("UIMFormCheck", "DUIMFormCheckControl"));

version(test_uim_controls) { unittest {
  assert(UIMFormCheck);
  assert(UIMFormCheck.noId == `<div class="form-check"></div>`);
}}
