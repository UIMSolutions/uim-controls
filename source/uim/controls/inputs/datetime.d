module uim.controls.inputs.datetime;

@safe: 
import uim.controls;

class DUIMDatetimeInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMDatetimeInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"datetime-local"]);
  }

  alias value = DUIMInputControl.value;
  O value(this O)(DateTime newValue) {
    auto txt = "%s-";
    txt ~= newValue.month < 10 ? "0%s-" : "%s-";
    txt ~= newValue.day < 10 ? "0%s" : "%s";
    txt ~= newValue.hour < 10 ? "T0%s:" : "T%s:";
    txt ~= newValue.minute < 10 ? "0%s:" : "%s:";
    txt ~= newValue.second < 10 ? "0%s" : "%s";
    this.value(txt.format(newValue.year, cast(int)newValue.month, newValue.day, newValue.hour, newValue.minute, newValue.second));
    return cast(O)this;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMDatetimeInputControl", "DUIMDatetimeInputControl"));
mixin(ControlCalls!("UIMDatetimeInput", "DUIMDatetimeInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMDatetimeInput);

    auto control = UIMDatetimeInput;
  }
}
