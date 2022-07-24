module uim.controls.inputs.url;

@safe: 
import uim.controls;

class DUIMUrlInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMUrlInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"url"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMUrlInputControl", "DUIMUrlInputControl"));
mixin(ControlCalls!("UIMUrlInput", "DUIMUrlInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMUrlInput);

    auto control = UIMUrlInput;
  }
}
