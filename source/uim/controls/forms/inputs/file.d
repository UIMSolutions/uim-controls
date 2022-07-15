module uim.controls.forms.inputs.file;

@safe: 
import uim.controls;

class DUIMFormFileInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMFormFileInputControl"));

  mixin(OProperty!("bool", "multiple"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-control"])
      .attributes(["type":"file"]);
  }
  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (multiple) myAttributes["multiple"] = "multiple";
  }
}
mixin(ControlCalls!("UIMFormFileInputControl", "DUIMFormFileInputControl"));
mixin(ControlCalls!("UIMFormFileInput", "DUIMFormFileInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMFormFileInput);

    auto control = UIMFormFileInput;
  }
}
