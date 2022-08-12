module uim.controls.inputs.hidden;

@safe: 
import uim.controls;

class DUIMHiddenInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMHiddenInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"hidden"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMHiddenInputControl", "DUIMHiddenInputControl"));
mixin(ControlCalls!("UIMHiddenInput", "DUIMHiddenInputControl"));

version(test_uim_controls) { unittest {
    assert(UIMHiddenInput);

    auto control = UIMHiddenInput;
  }
}
