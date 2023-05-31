module web.controls.inputs.email;

@safe: 
import web.controls;

class DUIMEmailInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMEmailInputControl"));

  mixin(OProperty!("bool", "multiple"));
  
  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"email"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (multiple) myAttributes["multiple"] = "multiple";
  }
}
mixin(ControlCalls!("UIMEmailInputControl", "DUIMEmailInputControl"));
mixin(ControlCalls!("UIMEmailInput", "DUIMEmailInputControl"));

version(test_uim_controls) { unittest {
  assert(UIMEmailInput);
  assert(UIMEmailInput.noId == `<input class="form-control" type="email">`);
}}
