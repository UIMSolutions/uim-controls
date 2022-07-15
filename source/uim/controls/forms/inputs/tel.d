module uim.controls.forms.inputs.telephone;

@safe: 
import uim.controls;

class DUIMTelephoneInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMTelephoneInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"telephone"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMTelephoneInputControl", "DUIMTelephoneInputControl"));
mixin(ControlCalls!("UIMTelephoneInput", "DUIMTelephoneInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMTelephoneInput);

    auto control = UIMTelephoneInput;
  }
}
