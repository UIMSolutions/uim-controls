module uim.controls.forms.inputs.radio;

@safe: 
import uim.controls;

class DUIMRadioInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMRadioInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"radio"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMRadioInputControl", "DUIMRadioInputControl"));
mixin(ControlCalls!("UIMRadioInput", "DUIMRadioInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMRadioInput);

    auto control = UIMRadioInput;
  }
}
