public import uim.controls.forms.inputs.text;

@safe: 
import uim.controls;

class DUIMFormColorInputControl : DUIMFormInputControl {
  mixin(ControlThis!("UIMFormColorInputControl"));

  mixin(OProperty!("string", "placeholder"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-control"])
      .attributes(["type":"text"]);
  }
  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (name) myAttributes[name] = name;
    if (placeholder) myAttributes[placeholder] = placeholder;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Input(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMFormColorInputControl", "DUIMFormColorInputControl"));
mixin(ControlCalls!("UIMFormColorInput", "DUIMFormColorInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMFormColorInput);

    auto control = UIMFormColorInput;
  }
}
