module web.controls.footers.footer;

@safe: 
import web.controls;

class DUIMFooterControl : DUIMDivControl {
  mixin(ControlThis!("UIMFooterControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("footer");
  }

  mixin(OProperty!("string", "fixed"));
  mixin(OProperty!("bool", "transparent"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (fixed) myClasses ~= "fixed-"~fixed;
    if (transparent) myClasses ~= "footer-transparent";
  }
}
mixin(ControlCalls!("UIMFooterControl", "DUIMFooterControl"));
mixin(ControlCalls!("UIMFooter", "DUIMFooterControl"));

version(test_uim_controls) { unittest {
  assert(UIMFooter);
  assert(UIMFooter.noId == `<div class="footer"></div>`);
  assert(UIMFooter.noId.transparent(true) == `<div class="footer footer-transparent"></div>`);
}}
