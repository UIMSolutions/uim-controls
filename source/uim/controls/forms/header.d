module uim.controls.forms.header;

@safe: 
import uim.controls;

class DUIMFormHeaderControl : DUIMCardHeaderControl {
  mixin(ControlThis!("UIMFormHeaderControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-header"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMFormHeaderControl", "DUIMFormHeaderControl"));
mixin(ControlCalls!("UIMFormHeader", "DUIMFormHeaderControl"));

version(test_uim_controls) { unittest {
  assert(UIMFormHeader);
  assert(UIMFormHeader.noId == `<div class="card-header form-header"></div>`);
}}
