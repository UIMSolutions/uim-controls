module uim.controls.forms.inputs.search;

@safe: 
import uim.controls;

class DUIMSearchInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMSearchInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"search"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMSearchInputControl", "DUIMSearchInputControl"));
mixin(ControlCalls!("UIMSearchInput", "DUIMSearchInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMSearchInput);

    auto control = UIMSearchInput;
  }
}
