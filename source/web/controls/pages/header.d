module web.controls.pages.header;

@safe:
import web.controls;

class DUIMPageHeaderControl : DUIMDivControl {
  mixin(ControlThis!("UIMPageHeaderControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("page-header");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);    
  }
}
mixin(ControlCalls!("UIMPageHeaderControl", "DUIMPageHeaderControl"));
mixin(ControlCalls!("UIMPageHeader", "DUIMPageHeaderControl"));

version(test_uim_controls) { unittest {
  assert(UIMPageHeader);
  assert(UIMPageHeader.noId == `<div class="page-header"></div>`);
}}