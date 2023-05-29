module uim.controls.inputs.icons.icon;

@safe: 
import uim.controls;

class DUIMInputIconControl : DUIMDivControl {
  mixin(ControlThis!("UIMInputIconControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["input-icon"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMInputIconControl", "DUIMInputIconControl"));
mixin(ControlCalls!("UIMInputIcon", "DUIMInputIconControl"));

version(test_uim_controls) { unittest {
  assert(UIMInputIcon);
  assert(UIMInputIcon.noId == `<div class="input-icon"></div>`);
}}
