module web.controls.inputs.password;

@safe: 
import web.controls;

class DUIMPasswordInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMPasswordInputControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-control"])
      .attributes(["type":"password"]);
  }
  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMPasswordInputControl", "DUIMPasswordInputControl"));
mixin(ControlCalls!("UIMPasswordInput", "DUIMPasswordInputControl"));

version(test_uim_controls) { unittest {
  assert(UIMPasswordInput);
  assert(UIMPasswordInput.noId == `<input class="form-control" type="password">`);
}}

