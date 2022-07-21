module uim.controls.forms.inputs.checkbox;

@safe: 
import uim.controls;

class DUIMCheckboxControl : DUIMInputControl {
  mixin(ControlThis!("UIMCheckboxControl"));

  mixin(OProperty!("bool", "checked"));
  mixin(OProperty!("bool", "inline"));
  // mixin(OProperty!("bool", "disabled"));
  mixin(OProperty!("string", "label"));
  mixin(OProperty!("string", "description"));
  mixin(OProperty!("bool", "descriptionTop"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-check-input"])
      .attributes(["type":"checkbox"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    myClasses = myClasses.remove!(`a == "form-control"`);
    if (checked) myAttributes["checked"] = "checked";
    if (disabled) myAttributes["disabled"] = "disabled";
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Div(["form-check"]~(inline ? "form-check-inline" : null), 
        H5Input(myId, myClasses, myAttributes),
        (label ? H5Label(["form-check-label"], ["for":myId], label) : null))].toH5;
  }
}

mixin(ControlCalls!("UIMCheckboxControl", "DUIMCheckboxControl"));
mixin(ControlCalls!("UIMCheckbox", "DUIMCheckboxControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMCheckbox);

    auto control = UIMCheckbox;
  }
}
