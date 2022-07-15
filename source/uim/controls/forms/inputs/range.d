module uim.controls.forms.inputs.range;

@safe: 
import uim.controls;

class DUIMRangeInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMRangeInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"range"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMRangeInputControl", "DUIMRangeInputControl"));
mixin(ControlCalls!("UIMRangeInput", "DUIMRangeInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMRangeInput);

    auto control = UIMRangeInput;
  }
}
