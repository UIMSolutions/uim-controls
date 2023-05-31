module web.controls.inputs.button;

@safe: 
import web.controls;

class DUIMButtonInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMButtonInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"button"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMButtonInputControl", "DUIMButtonInputControl"));
mixin(ControlCalls!("UIMButtonInput", "DUIMButtonInputControl"));

version(test_uim_controls) { unittest {
  assert(UIMButtonInput);
  assert(UIMButtonInput.noId == `<input class="form-control" type="button">`);
}}
