module uim.controls.forms.inputs.week;

@safe: 
import uim.controls;

class DUIMWeekInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMWeekInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"week"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMWeekInputControl", "DUIMWeekInputControl"));
mixin(ControlCalls!("UIMWeekInput", "DUIMWeekInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMWeekInput);

    auto control = UIMWeekInput;
  }
}
