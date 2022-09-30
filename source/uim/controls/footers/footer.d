module uim.controls.footers.footer;

@safe: 
import uim.controls;

class DUIMFooterControl : DUIMDivControl {
  mixin(ControlThis!("UIMFooterControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("footer");
  }

  mixin(OProperty!("string", "fixed"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (fixed) myClasses ~= "fixed-"~fixed;
  }
}
mixin(ControlCalls!("UIMFooterControl", "DUIMFooterControl"));
mixin(ControlCalls!("UIMFooter", "DUIMFooterControl"));

version(test_uim_controls) { unittest {
  assert(UIMFooter);
  assert(UIMFooter.noId == `<div class="footer"></div>`);
}}
