module uim.controls.inputs.time;

@safe: 
import uim.controls;

class DUIMTimeInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMTimeInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"time"]);
  }

  alias value = DUIMInputControl.value;
  O value(this O)(DateTime newValue) {
    auto txt = "";
    txt ~= newValue.hour < 10 ? "0%s:" : "%s:";
    txt ~= newValue.minute < 10 ? "0%s:" : "%s:";
    txt ~= newValue.second < 10 ? "0%s" : "%s";
    this.value(txt.format(newValue.hour, newValue.minute, newValue.second));
    return cast(O)this;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMTimeInputControl", "DUIMTimeInputControl"));
mixin(ControlCalls!("UIMTimeInput", "DUIMTimeInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMTimeInput);

    auto control = UIMTimeInput;
  }
}
