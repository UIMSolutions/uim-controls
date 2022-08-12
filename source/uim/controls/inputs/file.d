module uim.controls.inputs.file;

@safe: 
import uim.controls;

class DUIMFileInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMFileInputControl"));

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
mixin(ControlCalls!("UIMFileInputControl", "DUIMFileInputControl"));
mixin(ControlCalls!("UIMFileInput", "DUIMFileInputControl"));

version(test_uim_controls) { unittest {
    assert(UIMFileInput);

    auto control = UIMFileInput;
  }
}
