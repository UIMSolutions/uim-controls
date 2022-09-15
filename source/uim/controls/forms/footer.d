module uim.controls.forms.footer;

@safe: 
import uim.controls;

class DUIMFormFooterControl : DUIMCardFooterControl {
  mixin(ControlThis!("UIMFormFooterControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-footer"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMFormFooterControl", "DUIMFormFooterControl"));
mixin(ControlCalls!("UIMFormFooter", "DUIMFormFooterControl"));

version(test_uim_controls) { unittest {
  assert(UIMFormFooter);
  assert(UIMFormFooter.noId == `<div class="form-footer"></div>`);
}}
