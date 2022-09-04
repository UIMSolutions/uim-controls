module uim.controls.forms.form;

@safe: 
import uim.controls;

class DUIMFormControl : DUIMControl {
  mixin(ControlThis!("UIMFormControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("form");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Form(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMFormControl", "DUIMFormControl"));
mixin(ControlCalls!("UIMForm", "DUIMFormControl"));

version(test_uim_controls) { unittest {
  assert(UIMForm);
  assert(UIMForm.noId == `<form class="form"></form>`);
}}
