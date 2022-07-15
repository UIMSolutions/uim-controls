module uim.controls.forms.inputs.checkbox;

@safe: 
import uim.controls;

class DUIMCheckboxInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMCheckboxInputControl"));

  mixin(OProperty!("string", "checked"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-check"])
      .attributes(["type":"checkbox"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (checked) myAttributes["checked"] = "checked";
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Div(myClasses,
        H5Input(myId, ["form-check-input"], myAttributes),
        H5Label(["form-check-label"], ["for":myId], title))].toH5;
  }
}
mixin(ControlCalls!("UIMCheckboxInputControl", "DUIMCheckboxInputControl"));
mixin(ControlCalls!("UIMCheckboxInput", "DUIMCheckboxInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMCheckboxInput);

    auto control = UIMCheckboxInput;
  }
}
