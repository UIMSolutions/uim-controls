public import uim.controls.forms.inputs.text;

@safe: 
import uim.controls;

class DUIMFormTextInputControl : DUIMFormInputControl {
  mixin(ControlThis!("UIMFormTextInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control-color"])
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
mixin(ControlCalls!("UIMFormTextInputControl", "DUIMFormTextInputControl"));
mixin(ControlCalls!("UIMFormTextInput", "DUIMFormTextInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMFormTextInput);

    auto control = UIMFormTextInput;
  }
}
