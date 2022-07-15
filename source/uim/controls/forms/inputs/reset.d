module uim.controls.forms.inputs.reset;

@safe: 
import uim.controls;

class DUIMResetInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMResetInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"reset"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMResetInputControl", "DUIMResetInputControl"));
mixin(ControlCalls!("UIMResetInput", "DUIMResetInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMResetInput);

    auto control = UIMResetInput;
  }
}
