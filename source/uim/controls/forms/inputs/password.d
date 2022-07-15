module uim.controls.forms.inputs.password;

@safe: 
import uim.controls;

class DUIMFormPasswordInputControl : DUIMFormInputControl {
  mixin(ControlThis!("UIMFormPasswordInputControl"));

  mixin(OProperty!("string", "placeholder"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-control"])
      .attributes(["type":"password"]);
  }
  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (placeholder) myAttributes["placeholder"] = placeholder;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Input(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMFormPasswordInputControl", "DUIMFormPasswordInputControl"));
mixin(ControlCalls!("UIMFormPasswordInput", "DUIMFormPasswordInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMFormPasswordInput);

    auto control = UIMFormPasswordInput;
  }
}
