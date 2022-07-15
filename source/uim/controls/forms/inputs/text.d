module uim.controls.forms.inputs.text;

@safe: 
import uim.controls;

class DUIMTextInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMTextInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"text"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }


}
mixin(ControlCalls!("UIMTextInputControl", "DUIMTextInputControl"));
mixin(ControlCalls!("UIMTextInput", "DUIMTextInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMTextInput);

    auto control = UIMTextInput;
  }
}
