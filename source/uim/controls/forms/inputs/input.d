public import uim.controls.forms.inputs.input;

@safe: 
import uim.controls;

class DUIMFormInputControl : DUIMControl {
  mixin(ControlThis!("UIMFormInputControl"));

  mixin(OProperty!("string", "size"));
  mixin(OProperty!("string", "value"));
  mixin(OProperty!("bool", "disabled"));
  mixin(OProperty!("bool", "readonly"));
  mixin(OProperty!("bool", "plaintext"));

  mixin(OProperty!("DOOPEntity", "entity"));
  mixin(OProperty!("string", "entityField"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-control"]);
  }
  
  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (plaintext) myClasses = ["form-control-plaintext"];
    if (size) myClasses ~= "form-control-"~size.toLower;
    if (disabled) myAttributes["disabled"] = "disabled";

    if (value) myAttributes["value"] = value;
    if (entity && entityField) myAttributes["value"] = entity[entityField];
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Input(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMFormInputControl", "DUIMFormInputControl"));
mixin(ControlCalls!("UIMFormInput", "DUIMFormInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMFormInput);

    auto control = UIMFormInput;
  }
}
