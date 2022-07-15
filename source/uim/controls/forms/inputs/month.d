module uim.controls.forms.inputs.month;

@safe: 
import uim.controls;

class DUIMMonthInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMMonthInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"month"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMMonthInputControl", "DUIMMonthInputControl"));
mixin(ControlCalls!("UIMMonthInput", "DUIMMonthInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMMonthInput);

    auto control = UIMMonthInput;
  }
}
