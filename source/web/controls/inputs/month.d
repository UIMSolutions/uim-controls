module web.controls.inputs.month;

@safe: 
import web.controls;

class DUIMMonthInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMMonthInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"month"]);
  }

  alias value = DUIMInputControl.value;
  O value(this O)(Date newValue) {
    if (newValue.month < 10)
      this.value("%s-0%s".format(newValue.year, cast(int)newValue.month));
    else 
      this.value("%s-%s".format(newValue.year, cast(int)newValue.month));
    return cast(O)this;
  }

  O value(this O)(DateTime newValue) {
    if (newValue.month < 10)
      this.value("%s-0%s".format(newValue.year, cast(int)newValue.month));
    else 
      this.value("%s-%s".format(newValue.year, cast(int)newValue.month));
    return cast(O)this;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMMonthInputControl", "DUIMMonthInputControl"));
mixin(ControlCalls!("UIMMonthInput", "DUIMMonthInputControl"));

version(test_uim_controls) { unittest {
  assert(UIMMonthInput);
  assert(UIMMonthInput.noId == `<input class="form-control" type="month">`);
}}
