module web.controls.inputs.image;

@safe: 
import web.controls;

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

version(test_uim_controls) { unittest {
  assert(UIMImageInput);
  assert(UIMImageInput.noId == `<input class="form-control" type="image">`);
}}
