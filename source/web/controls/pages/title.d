module uim.controls.pages.title;

@safe:
import uim.controls;

class DUIMPageTitleControl : DUIMDivControl {
  mixin(ControlThis!("UIMPageTitleControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("page-title");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);    
  }
}
mixin(ControlCalls!("UIMPageTitleControl", "DUIMPageTitleControl"));
mixin(ControlCalls!("UIMPageTitle", "DUIMPageTitleControl"));

version(test_uim_controls) { unittest {
  assert(UIMPageTitle);
  assert(UIMPageTitle.noId == `<div class="page-title"></div>`);
}}