module uim.controls.forms.inputs.submit;

@safe: 
import uim.controls;

class DUIMSubmitInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMSubmitInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"submit"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMSubmitInputControl", "DUIMSubmitInputControl"));
mixin(ControlCalls!("UIMSubmitInput", "DUIMSubmitInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMSubmitInput);

    auto control = UIMSubmitInput;
  }
}
