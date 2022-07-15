module uim.controls.forms.inputs.image;

@safe: 
import uim.controls;

class DUIMImageInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMImageInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"image"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMImageInputControl", "DUIMImageInputControl"));
mixin(ControlCalls!("UIMImageInput", "DUIMImageInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMImageInput);

    auto control = UIMImageInput;
  }
}
