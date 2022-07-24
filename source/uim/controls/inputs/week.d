module uim.controls.inputs.week;

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

  alias value = DUIMInputControl.value;
  O value(this O)(Date newValue) {
    this.value("%s-W%s".format(newValue.year, newValue.isoWeek));
    return cast(O)this;
  }

  O value(this O)(DateTime newValue) {
    this.value("%s-W%s".format(newValue.year, newValue.isoWeek));
    return cast(O)this;
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
